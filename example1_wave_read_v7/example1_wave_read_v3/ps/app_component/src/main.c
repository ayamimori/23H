#include <stdio.h>
#include <stdint.h>

#include "xparameters.h"
#include "xaxidma.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xstatus.h"

// ============================================================
// 基本参数
// ============================================================
#define FRAME_LEN       1000
#define FRAME_BYTES     (FRAME_LEN * sizeof(int16_t))
#define ADC_FS_HZ       5000000.0f
#define DDS_CLK_HZ      50000000.0f
#define CAPTURE_FRAMES  8     // FFT 用: 8帧 × 1000 = 8000 → 补零到 8192
#define FFT_N           8192  // 2^13
#define FFT_LOG2N       13
#define START_FREQ_HZ   10000
#define STOP_FREQ_HZ    100000
#define PI              3.14159265358979323846f
#define TWO_PI          6.28318530717958647692f
#define HALF_PI         1.57079632679489661923f
#define WAVE_SIN        0
#define WAVE_TRI        1
#define PEAK_SEARCH_MIN_IDX  2    // 10kHz / (~305Hz) ≈ 33 bins, start at bin 33

#define GPIO_CH1_DATA   0x00
#define GPIO_CH1_TRI    0x04
#define GPIO_CH2_DATA   0x08
#define GPIO_CH2_TRI    0x0C
#define GPIO0_BASE      XPAR_AXI_GPIO_0_BASEADDR
#define GPIO1_BASE      XPAR_AXI_GPIO_1_BASEADDR
#define GPIO2_BASE      XPAR_AXI_GPIO_2_BASEADDR
#define ADC_START_BIT   0x00000001
#define PSKEY1_MASK     0x00000001
#define DMA_LOOKUP_ID   XPAR_AXI_DMA_0_BASEADDR

static XAxiDma AxiDma;
static int16_t RxBuffer[FRAME_LEN] __attribute__((aligned(64)));
static float   fft_buf[FFT_N];
static float   fft_imag[FFT_N];
static float   fft_mag[FFT_N/2];
static int     g_peaks[100];             // 全局峰列表
static int     g_peak_cnt = 0;
static float   g_freq_step;              // FFT bin 分辨率

// AN9238 时钟补偿: 实测 50k→55k, 70k→80k, 比例约 1.11
#define FREQ_CORRECTION  0.91f

typedef struct {
    float fA; float fB;
    float phaseA_deg; float phaseB_deg;
    float vppA_code; float vppB_code;
    uint8_t wave_type_A; uint8_t wave_type_B;
} sep_result_t;

static sep_result_t g_sep;

// ============================================================
// 数学函数
// ============================================================
static float my_abs(float x) { return (x >= 0.0f) ? x : -x; }

static float my_sin(float x) {
    while (x < -PI) x += TWO_PI;
    while (x > PI) x -= TWO_PI;
    float x2 = x*x, x3 = x*x2, x5 = x3*x2, x7 = x5*x2;
    return x - x3/6.0f + x5/120.0f - x7/5040.0f;
}

static float my_cos(float x) { return my_sin(x + HALF_PI); }

static float my_sqrt(float x) {
    if (x <= 0.0f) return 0.0f;
    float y = x;
    for (int i = 0; i < 12; i++) y = 0.5f * (y + x / y);
    return y;
}

static float my_atan_approx(float z) {
    float az = (z > 0.0f) ? z : -z;
    if (az <= 1.0f) return z / (1.0f + 0.28f * z * z);
    else return (z > 0.0f) ? (HALF_PI - my_atan_approx(1.0f / z))
                           : (-HALF_PI - my_atan_approx(1.0f / z));
}

static float my_atan2(float y, float x) {
    if (x > 0.0f)
        return my_atan_approx(y / x);
    else if (x < 0.0f && y >= 0.0f)
        return my_atan_approx(y / x) + PI;
    else if (x < 0.0f && y < 0.0f)
        return my_atan_approx(y / x) - PI;
    else if (x == 0.0f && y > 0.0f) return HALF_PI;
    else if (x == 0.0f && y < 0.0f) return -HALF_PI;
    return 0.0f;
}

static float wrap_pi(float x) {
    while (x > PI) x -= TWO_PI;
    while (x < -PI) x += TWO_PI;
    return x;
}

static float rad_to_deg(float x) { return x * 180.0f / PI; }

// ============================================================
// FFT (Radix-2 DIT, in-place)
// ============================================================
static float twi_cos[FFT_N/2];
static float twi_sin[FFT_N/2];

static void fft_init_tables(void) {
    for (int i = 0; i < FFT_N/2; i++) {
        float angle = -TWO_PI * (float)i / (float)FFT_N;
        twi_cos[i] = my_cos(angle);
        twi_sin[i] = my_sin(angle);
    }
}

static uint16_t bit_reverse(uint16_t x, int bits) {
    uint16_t r = 0;
    for (int i = 0; i < bits; i++) {
        r = (r << 1) | (x & 1);
        x >>= 1;
    }
    return r;
}

static void fft(float *real_, float *imag_) {
    // Bit-reversal permutation
    for (int i = 0; i < FFT_N; i++) {
        int j = bit_reverse(i, FFT_LOG2N);
        if (i < j) {
            float tr = real_[i]; real_[i] = real_[j]; real_[j] = tr;
            float ti = imag_[i]; imag_[i] = imag_[j]; imag_[j] = ti;
        }
    }

    // Butterfly stages
    for (int s = 1; s <= FFT_LOG2N; s++) {
        int m = 1 << s;       // stage size
        int m2 = m >> 1;      // half stage
        int step = FFT_N / m; // twiddle step
        for (int k = 0; k < FFT_N; k += m) {
            for (int j = 0; j < m2; j++) {
                int idx = j * step;
                float wr = twi_cos[idx];
                float wi = twi_sin[idx];
                int a = k + j;
                int b = a + m2;
                float tr = real_[a] - (real_[b] * wr - imag_[b] * wi);
                float ti = imag_[a] - (real_[b] * wi + imag_[b] * wr);
                real_[a] = real_[a] + (real_[b] * wr - imag_[b] * wi);
                imag_[a] = imag_[a] + (real_[b] * wi + imag_[b] * wr);
                real_[b] = tr;
                imag_[b] = ti;
            }
        }
    }
}

// ============================================================
// GPIO / 外设控制
// ============================================================
static void gpio_init_all(void) {
    Xil_Out32(GPIO0_BASE + GPIO_CH1_TRI, 0x0000000F);
    Xil_Out32(GPIO0_BASE + GPIO_CH2_TRI, 0x00000000);
    Xil_Out32(GPIO0_BASE + GPIO_CH2_DATA, 0x00000000);
    Xil_Out32(GPIO1_BASE + GPIO_CH1_TRI, 0x00000000);
    Xil_Out32(GPIO1_BASE + GPIO_CH2_TRI, 0x00000000);
    Xil_Out32(GPIO1_BASE + GPIO_CH1_DATA, 0x00000000);
    Xil_Out32(GPIO1_BASE + GPIO_CH2_DATA, 0x00000000);
    Xil_Out32(GPIO2_BASE + GPIO_CH1_TRI, 0x00000000);
    Xil_Out32(GPIO2_BASE + GPIO_CH2_TRI, 0x00000000);
    Xil_Out32(GPIO2_BASE + GPIO_CH1_DATA, 0x00000000);
    Xil_Out32(GPIO2_BASE + GPIO_CH2_DATA, 0x00000000);
    xil_printf("GPIO initialized.\r\n");
}

static uint32_t read_key_state(void) { return Xil_In32(GPIO0_BASE + GPIO_CH1_DATA) & 0x0F; }
static int pskey1_is_pressed(void) { return (read_key_state() & PSKEY1_MASK) ? 1 : 0; }

static void wait_pskey1_press_release(void) {
    xil_printf("Waiting for PSKEY1...\r\n");
    while (pskey1_is_pressed());
    while (!pskey1_is_pressed());
    xil_printf("PSKEY1 pressed.\r\n");
    while (pskey1_is_pressed());
    xil_printf("PSKEY1 released, starting.\r\n");
}

static int pskey1_edge_detect(void) {
    static int last_state = 0;
    int now_state = pskey1_is_pressed();
    int edge = (now_state && !last_state) ? 1 : 0;
    last_state = now_state;
    return edge;
}

static void pl_adc_start(int en) {
    if (en) Xil_Out32(GPIO0_BASE + GPIO_CH2_DATA, ADC_START_BIT);
    else Xil_Out32(GPIO0_BASE + GPIO_CH2_DATA, 0x00000000);
}

static uint32_t freq_to_fcw(float freq, uint8_t wave_type) {
    double fcw = ((double)freq / (double)DDS_CLK_HZ) * 4294967296.0;
    if (fcw < 0.0) fcw = 0.0;
    if (fcw > 2147483647.0) fcw = 2147483647.0;
    uint32_t res = (uint32_t)(fcw + 0.5);
    if (wave_type == WAVE_TRI) res |= 0x80000000;
    return res;
}

static uint32_t phase_deg_to_word(float deg) {
    while (deg < 0.0f) deg += 360.0f;
    while (deg >= 360.0f) deg -= 360.0f;
    return (uint32_t)(((double)deg / 360.0) * 4294967296.0 + 0.5);
}

static void dds_set_A(float freq, float phase_deg, uint8_t wave_type) {
    Xil_Out32(GPIO1_BASE + GPIO_CH1_DATA, freq_to_fcw(freq, wave_type));
    Xil_Out32(GPIO1_BASE + GPIO_CH2_DATA, phase_deg_to_word(phase_deg));
}
static void dds_set_B(float freq, float phase_deg, uint8_t wave_type) {
    Xil_Out32(GPIO2_BASE + GPIO_CH1_DATA, freq_to_fcw(freq, wave_type));
    Xil_Out32(GPIO2_BASE + GPIO_CH2_DATA, phase_deg_to_word(phase_deg));
}
static void dds_stop(void) { dds_set_A(0,0,WAVE_SIN); dds_set_B(0,0,WAVE_SIN); }

// ============================================================
// DMA
// ============================================================
static int dma_init(void) {
    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DMA_LOOKUP_ID);
    if (!CfgPtr) return XST_FAILURE;
    if (XAxiDma_CfgInitialize(&AxiDma, CfgPtr) != XST_SUCCESS) return XST_FAILURE;
    if (XAxiDma_HasSg(&AxiDma)) return XST_FAILURE;
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    return XST_SUCCESS;
}

static int dma_receive_one_frame(void) {
    int timeout = 50000000;
    pl_adc_start(0);
    for (volatile int d = 0; d < 2000; d++);
    Xil_DCacheFlushRange((UINTPTR)RxBuffer, FRAME_BYTES);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, FRAME_BYTES);
    if (XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)RxBuffer,
                               FRAME_BYTES, XAXIDMA_DEVICE_TO_DMA) != XST_SUCCESS)
        return XST_FAILURE;
    pl_adc_start(1);
    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
        timeout--;
        if (timeout <= 0) { pl_adc_start(0); return XST_FAILURE; }
        if (pskey1_is_pressed()) return XST_FAILURE;  // 按键中断 DMA
    }
    pl_adc_start(0);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, FRAME_BYTES);
    return XST_SUCCESS;
}

// ============================================================
// 采集 + FFT + 频率识别
// ============================================================
static int capture_and_fft(void) {
    xil_printf("\r\nCapturing %d frames for FFT...\r\n", CAPTURE_FRAMES);

    // 收集多帧 → fft_buf (实部)
    int sample_idx = 0;
    for (int f = 0; f < CAPTURE_FRAMES; f++) {
        if (dma_receive_one_frame() != XST_SUCCESS) return XST_FAILURE;
        for (int i = 0; i < FRAME_LEN; i++)
            fft_buf[sample_idx++] = (float)RxBuffer[i];
    }
    // 剩余补零
    for (int i = sample_idx; i < FFT_N; i++)
        fft_buf[i] = 0.0f;

    // 去均值
    float mean = 0.0f;
    for (int i = 0; i < FFT_N; i++) mean += fft_buf[i];
    mean /= (float)FFT_N;
    for (int i = 0; i < FFT_N; i++) fft_buf[i] -= mean;

    // 虚部清零
    for (int i = 0; i < FFT_N; i++) fft_imag[i] = 0.0f;

    // FFT
    fft(fft_buf, fft_imag);

    // 幅度谱 (只取前半)
    for (int i = 0; i < FFT_N/2; i++)
        fft_mag[i] = fft_buf[i]*fft_buf[i] + fft_imag[i]*fft_imag[i];

    g_freq_step = ADC_FS_HZ / (float)FFT_N;

    // === 归一化 FFT 幅度谱 ===
    float fft_end = FFT_N/2;
    float aver = 0.0f;
    for (int i = PEAK_SEARCH_MIN_IDX; i < fft_end; i++) aver += fft_mag[i];
    aver /= (fft_end - PEAK_SEARCH_MIN_IDX);
    float norm_scale = 1.0f / (aver + 1e-9f);
    for (int i = 0; i < fft_end; i++) fft_mag[i] *= norm_scale;

    // === 找峰 → 全局 g_peaks[] ===
    g_peak_cnt = 0;
    int width = (int)(2500.0f / g_freq_step);
    if (width < 2) width = 2;
    for (int i = PEAK_SEARCH_MIN_IDX; i < fft_end; i++) {
        if (fft_mag[i] > 3.0f) {
            if (g_peak_cnt == 0 || i > g_peaks[g_peak_cnt-1] + width) {
                g_peaks[g_peak_cnt++] = i;
            } else if (fft_mag[i] > fft_mag[g_peaks[g_peak_cnt-1]]) {
                g_peaks[g_peak_cnt-1] = i;
            }
        }
    }
    if (g_peak_cnt < 2) return XST_FAILURE;

    // === 找最强两个峰 ===
    int best_a = 0, best_b = 1;
    if (fft_mag[g_peaks[0]] < fft_mag[g_peaks[1]]) { best_a = 1; best_b = 0; }
    for (int i = 2; i < g_peak_cnt; i++) {
        if (fft_mag[g_peaks[i]] > fft_mag[g_peaks[best_a]]) {
            best_b = best_a; best_a = i;
        } else if (fft_mag[g_peaks[i]] > fft_mag[g_peaks[best_b]]) {
            best_b = i;
        }
    }
    int pa = g_peaks[best_a], pb = g_peaks[best_b];
    float fa_raw = pa * g_freq_step;
    float fb_raw = pb * g_freq_step;
    if (fa_raw > fb_raw) { float t=fa_raw; fa_raw=fb_raw; fb_raw=t; }

    // === 时钟补偿 + 量化到 5kHz ===
    fa_raw *= FREQ_CORRECTION;
    fb_raw *= FREQ_CORRECTION;
    int tmp = (int)(fa_raw / 5000.0f + 0.5f);
    if (tmp < 2) tmp = 2;
    g_sep.fA = (float)(tmp * 5000);
    tmp = (int)(fb_raw / 5000.0f + 0.5f);
    if (tmp > 20) tmp = 20;
    g_sep.fB = (float)(tmp * 5000);

    xil_printf("Peaks: ");
    for (int i = 0; i < g_peak_cnt && i < 8; i++)
        xil_printf("%dk ", (int)(g_peaks[i]*g_freq_step/1000+0.5f));
    xil_printf("-> fA=%dkHz fB=%dkHz\r\n", (int)g_sep.fA/1000, (int)g_sep.fB/1000);
    return XST_SUCCESS;
}

// ============================================================
// 波形识别 (参考 get_ab 方法)
// ============================================================
// 频域求导法: 对原始 FFT 幅度开方得振幅, 乘频率得导数振幅, 再算谐波比
// 三角波导数=方波→3次谐波≈33%  vs  正弦导数=余弦→3次谐波≈0%
// 区分度比原信号高 27 倍, 对 ADC 失真不敏感
static int detect_wave_type(float freq) {
    int b1 = (int)(freq / g_freq_step + 0.5f);
    int b3 = (int)(freq * 3.0f / g_freq_step + 0.5f);
    int b5 = (int)(freq * 5.0f / g_freq_step + 0.5f);

    // 用原始(未归一化)的 fft_mag 开方得振幅
    float a1 = my_sqrt(fft_mag[b1]);
    float a3 = my_sqrt(fft_mag[b3]);
    float a5 = (b5 < FFT_N/2) ? my_sqrt(fft_mag[b5]) : 0.0f;

    // 频域乘频率: D[f] = fft_amp[f] * f  (导数频谱)
    float d1 = a1 * freq;
    float d3 = a3 * freq * 3.0f;
    float d5 = a5 * freq * 5.0f;

    // 三角波判定: D[3f]/D[f] > 0.1 (理论值 0.33), 或 D[5f]/D[f] > 0.03
    // 正弦波: 谐波 ≈ 0
    float r3 = d3 / (d1 + 1e-9f);
    float r5 = d5 / (d1 + 1e-9f);

    // 需同时满足: 3次谐波>12% 且 5次谐波>2% 才判三角
    if (r3 > 0.12f && r5 > 0.02f) return WAVE_TRI;
    else return WAVE_SIN;
}

static void detect_two_wave_types(void) {
    g_sep.wave_type_A = detect_wave_type(g_sep.fA);
    g_sep.wave_type_B = detect_wave_type(g_sep.fB);
    xil_printf("Wave: A=%s B=%s\r\n",
               g_sep.wave_type_A == WAVE_SIN ? "SIN" : "TRI",
               g_sep.wave_type_B == WAVE_SIN ? "SIN" : "TRI");
}

// ============================================================
// 相位测量 (单频 DFT)
// ============================================================
static float measure_phase(float freq) {
    float omega = TWO_PI * freq / ADC_FS_HZ;
    float re = 0.0f, im = 0.0f;
    // 只用 fft_buf 实际数据 (不用补零部分)
    int valid_samples = CAPTURE_FRAMES * FRAME_LEN;
    float phase = 0.0f;
    for (int n = 0; n < valid_samples; n++) {
        if ((n & 0x7F) == 0) {
            float raw = omega * (float)n;
            int k = (int)(raw * (1.0f/TWO_PI));
            phase = raw - (float)k * TWO_PI;
        }
        float c = my_cos(phase), s = my_sin(phase);
        re += fft_buf[n] * c;
        im -= fft_buf[n] * s;
        phase += omega;
        if (phase > PI) phase -= TWO_PI;
    }
    return rad_to_deg(wrap_pi(my_atan2(im, re) + HALF_PI));
}

// ============================================================
// 重建 + 追踪
// ============================================================
static int configure_reconstruction(void) {
    g_sep.phaseA_deg = measure_phase(g_sep.fA);
    g_sep.phaseB_deg = measure_phase(g_sep.fB);
    detect_two_wave_types();

    dds_set_A(g_sep.fA, g_sep.phaseA_deg, g_sep.wave_type_A);
    dds_set_B(g_sep.fB, g_sep.phaseB_deg, g_sep.wave_type_B);

    xil_printf("\r\nDDS reconstruction:\r\n");
    xil_printf("A': f=%d Hz, phase=%d deg, type=%s\r\n",
               (int)g_sep.fA, (int)g_sep.phaseA_deg,
               g_sep.wave_type_A == WAVE_SIN ? "SIN" : "TRI");
    xil_printf("B': f=%d Hz, phase=%d deg, type=%s\r\n",
               (int)g_sep.fB, (int)g_sep.phaseB_deg,
               g_sep.wave_type_B == WAVE_SIN ? "SIN" : "TRI");
    return XST_SUCCESS;
}

static int full_capture_and_rebuild(void) {
    dds_stop();
    if (capture_and_fft() != XST_SUCCESS) return XST_FAILURE;
    if (configure_reconstruction() != XST_SUCCESS) return XST_FAILURE;
    return XST_SUCCESS;
}

static float track_phase(float freq) {
    if (dma_receive_one_frame() != XST_SUCCESS) return 0.0f;
    // 用单帧简易 DFT
    float omega = TWO_PI * freq / ADC_FS_HZ;
    float re = 0.0f, im = 0.0f, phase = 0.0f;
    for (int i = 0; i < FRAME_LEN; i++) {
        float val = (float)RxBuffer[i];
        if ((i & 0x7F) == 0) {
            float raw = omega * (float)i;
            int k = (int)(raw * (1.0f/TWO_PI));
            phase = raw - (float)k * TWO_PI;
        }
        re += val * my_cos(phase);
        im -= val * my_sin(phase);
        phase += omega;
        if (phase > PI) phase -= TWO_PI;
    }
    return rad_to_deg(wrap_pi(my_atan2(im, re) + HALF_PI));
}

// 相位误差(处理 360° 环绕)
static float phase_error_deg(float measured, float target) {
    float e = measured - target;
    while (e > 180.0f) e -= 360.0f;
    while (e < -180.0f) e += 360.0f;
    return e;
}

// 单帧相位测量(轻量, 用于追踪)
static float quick_phase(float freq) {
    float omega = TWO_PI * freq / ADC_FS_HZ;
    float re = 0.0f, im = 0.0f, ph = 0.0f;
    for (int i = 0; i < FRAME_LEN; i++) {
        if ((i & 0x7F) == 0) {
            float raw = omega * (float)i;
            int k = (int)(raw * (1.0f/TWO_PI));
            ph = raw - (float)k * TWO_PI;
        }
        float v = (float)RxBuffer[i];
        re += v * my_cos(ph);
        im -= v * my_sin(ph);
        ph += omega; if (ph > PI) ph -= TWO_PI;
    }
    return rad_to_deg(wrap_pi(my_atan2(im, re) + HALF_PI));
}

static int tracking_loop(void) {
    uint32_t frame_id = 0;
    float pll_phaseA = g_sep.phaseA_deg;
    float pll_phaseB = g_sep.phaseB_deg;
    const float Ki = 0.02f;
    xil_printf("\r\n[PLL] PSKEY1=重采\r\n");

    float sumA = 0.0f, sumB = 0.0f;
    int avg_cnt = 0;
    const int AVG_FRAMES = 20;

    while (1) {
        if (pskey1_is_pressed()) { while (pskey1_is_pressed()); return 1; }
        if (dma_receive_one_frame() != XST_SUCCESS) {
            if (pskey1_is_pressed()) { while (pskey1_is_pressed()); return 1; }
            continue;
        }

        sumA += quick_phase(g_sep.fA);
        sumB += quick_phase(g_sep.fB);
        avg_cnt++;

        if (avg_cnt >= AVG_FRAMES) {
            float pA_avg = sumA / (float)avg_cnt;
            float pB_avg = sumB / (float)avg_cnt;
            sumA = 0.0f; sumB = 0.0f; avg_cnt = 0;

            float errA = phase_error_deg(pA_avg, pll_phaseA);
            pll_phaseA += errA * Ki;
            while (pll_phaseA > 360.0f) pll_phaseA -= 360.0f;
            while (pll_phaseA < 0.0f)    pll_phaseA += 360.0f;

            float errB = phase_error_deg(pB_avg, pll_phaseB);
            pll_phaseB += errB * Ki;
            while (pll_phaseB > 360.0f) pll_phaseB -= 360.0f;
            while (pll_phaseB < 0.0f)    pll_phaseB += 360.0f;

            Xil_Out32(GPIO1_BASE + GPIO_CH2_DATA, phase_deg_to_word(pll_phaseA));
            Xil_Out32(GPIO2_BASE + GPIO_CH2_DATA, phase_deg_to_word(pll_phaseB));

            if ((frame_id % 50) == 0) {
                xil_printf("\r\n[%u] A:%dkHz S%d in%d→out%d | B:%dkHz S%d in%d→out%d\r\n",
                           frame_id,
                           (int)g_sep.fA/1000, g_sep.wave_type_A, (int)pA_avg, (int)pll_phaseA,
                           (int)g_sep.fB/1000, g_sep.wave_type_B, (int)pB_avg, (int)pll_phaseB);
            }
        }
        frame_id++;
    }
}

int main(void) {
    gpio_init_all();
    if (dma_init() != XST_SUCCESS) return XST_FAILURE;
    fft_init_tables();

    wait_pskey1_press_release();

    while (1) {
        if (full_capture_and_rebuild() != XST_SUCCESS) {
            xil_printf("\r\nCapture failed. Press PSKEY1 to retry.\r\n");
            wait_pskey1_press_release();
            continue;
        }
        tracking_loop();
        xil_printf("\r\nNew capture cycle.\r\n");
    }
    return 0;
}
