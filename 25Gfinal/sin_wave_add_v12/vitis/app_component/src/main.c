#include <stdio.h>
#include <math.h>
#include "xil_printf.h"
#include "xgpio.h"
#include "sleep.h"
#include "xil_io.h"

#define PI 3.14159265358979f

// =========================================================
// ⚙️ 硬件基地址与配置
// =========================================================
#define GPIO_DATA   0x41200000 
#define GPIO_LED    0x41210000 
#define GPIO_COEF1  0x41220000 
#define GPIO_COEF2  0x41230000 

#define CH1_DATA 0x00
#define CH1_DIR  0x04
#define CH2_DATA 0x08
#define CH2_DIR  0x0C

#define WRITE_REG(base, offset, val) Xil_Out32((base) + (offset), (u32)(val))
#define READ_REG(base, offset)       Xil_In32((base) + (offset))

#define NUM_POINTS 496 
u16 sweep_data[NUM_POINTS]; 
u32 freq_table[NUM_POINTS];

// =========================================================
// 🧮 数学引擎与辅助函数
// =========================================================
void delay_ms(int ms) { for (volatile int i = 0; i < ms * 20000; i++); }
float my_sin(float x) { float x3 = x*x*x; float x5 = x3*x*x; return x - (x3 / 6.0f) + (x5 / 120.0f); }

// 纯 C 语言硬件级快速开方算法 (替代 math.h 的 sqrt)
float my_sqrt(float x) {
    if (x <= 0.0f) return 0.0f;
    float res = x;
    float last;
    // 6 次牛顿迭代，精度和标准 sqrt 几乎一致，且速度极快
    for (int i = 0; i < 6; i++) {
        last = res;
        res = 0.5f * (res + x / res);
        if (last == res) break;
    }
    return res;
}


// 将数组索引映射为真实的物理频率 (1kHz ~ 100kHz, 步长 200Hz)
float get_freq_hz(int idx) {
    if (idx < 0) return 1000.0f;
    if (idx >= NUM_POINTS) return 100000.0f;
    return 1000.0f + (float)idx * 200.0f;
}

void Init_Freq_Table() {
    for (int i = 0; i < NUM_POINTS; i++) { freq_table[i] = get_freq_hz(i); }
}

// 打印扫频数组 (方便在串口工具里复制画图)
void print_sweep_array() {
    xil_printf("\r\n/* --- 📊 扫频数据导出 (1kHz~100kHz) --- */\r\n");
    xil_printf("uint16_t vpp_array[%d] = {\r\n", NUM_POINTS);
    for(int i=0; i<NUM_POINTS; i++) {
        xil_printf("%4d", sweep_data[i]);
        if (i != NUM_POINTS - 1) xil_printf(", ");
        if ((i + 1) % 15 == 0) xil_printf("\r\n");
    }
    xil_printf("\r\n};\r\n/* --------------------------------------------- */\r\n");
}

// =========================================================
// 🤖 核心 1：解算并下发 SVF 物理数字孪生参数
// =========================================================
void calc_and_send_svf(int type_code, float fc, float q_val) {
    float Fs = 1000000.0f; // ⚠️ 底层队友 SVF 的采样率：1MSPS
    
    // 限制 Q 值防止极点发散 (真实 RLC 的 Q 极少超过 20)
    if(q_val < 0.1f) q_val = 0.1f; 
    if(q_val > 20.0f) q_val = 20.0f; 

    // 物理参数 1：调谐频率 f
    float w_c = PI * fc / Fs;
    float f_val = 2.0f * my_sin(w_c); 
    
    // 物理参数 2：阻尼系数 d
    float d_val = 1.0f / q_val;

    // 转为底层的 Q16 定点数格式
    s32 f_q16 = (s32)(f_val * 65536.0f);
    s32 d_q16 = (s32)(d_val * 65536.0f);

    // 组装并下发
    u32 coef_0 = (u32)f_q16;
    u32 coef_1 = (u32)d_q16;
    u32 coef_2 = (1U << 31) | (((u32)type_code & 0x7) << 28); 

    WRITE_REG(GPIO_COEF1, CH1_DATA, coef_0);
    WRITE_REG(GPIO_COEF1, CH2_DATA, coef_1);
    WRITE_REG(GPIO_COEF2, CH1_DATA, coef_2);
    
    xil_printf("\r\n======================================================\r\n");
    xil_printf(" 🚀 [数字孪生启动] SVF IIR 滤波器重构完毕！\r\n");
    xil_printf(" 🎯 滤波器类型: %d (1:LPF, 2:HPF, 3:BPF, 4:BSF)\r\n", type_code);
    xil_printf(" ⚙️ 核心频率 Fc: %d Hz\r\n", (int)fc);
    xil_printf(" 📉 品质因数 Q : %d.%02d\r\n", (int)q_val, (int)(q_val*100)%100);
    xil_printf(" 🔧 SVF 参数  : f_q16 = %d, d_q16 = %d\r\n", f_q16, d_q16);
    xil_printf("======================================================\r\n");
}

// =========================================================
// 🧠 核心 2：全频段最小二乘法 (MSE) 物理参数拟合引擎
// =========================================================
void fit_rlc_params(int type_code, float *best_fc, float *best_q, u16 start_vpp, u16 end_vpp, u16 max_vpp) {
    float min_err = 1e30f;
    float opt_fc = 1000.0f;
    float opt_q = 0.5f;

    // 自动推断输入基准电压 (V_in)
    float V_in = 2000.0f; 
    if (type_code == 1) V_in = start_vpp;                   // LPF：低频段无衰减，等于 V_in
    else if (type_code == 2) V_in = end_vpp;                // HPF：高频段无衰减，等于 V_in
    else if (type_code == 3) V_in = max_vpp;                // BPF：带通滤波器如果Q足够大，谐振峰顶应该接近Vin
    else if (type_code == 4) V_in = (start_vpp > end_vpp) ? start_vpp : end_vpp; // BSF：取两端最大值

    // 针对比赛 RLC 范围 (L:1mH~10mH, C:10nF~100nF)
    // 理论 f_n 极值在 5.03kHz ~ 50.3kHz。此处放大搜索范围到 2kHz ~ 70kHz
    // 理论 Q 极值在 0.01 ~ 1.0。此处搜索 0.05 ~ 3.0
    for (float test_fc = 2000.0f; test_fc <= 70000.0f; test_fc += 250.0f) {
        for (float test_q = 0.05f; test_q <= 3.0f; test_q += 0.05f) {
            float err = 0;
            
            // 均匀抽取 48 个点进行快速曲线形态匹配 (步长10，避开首尾极高极低频的可能噪声)
            for (int i = 5; i < 490; i += 10) {
                float f = (float)freq_table[i];
                float fn_ratio = f / test_fc;
                float fn_ratio_sq = fn_ratio * fn_ratio;
                
                float real_part = 1.0f - fn_ratio_sq;
                float imag_part = fn_ratio / test_q;
                
                // 计算理论分母 (双精度计算防溢出)
                // 替换为
                float denom = my_sqrt(real_part * real_part + imag_part * imag_part);

                
                float mag = 0;
                if (type_code == 1)      mag = 1.0f / denom;             // LPF 理论传递函数
                else if (type_code == 2) mag = fn_ratio_sq / denom;      // HPF 理论传递函数
                else if (type_code == 3) mag = imag_part / denom;        // BPF 理论传递函数
                else if (type_code == 4) mag = (float)fabs((double)real_part) / denom; // BSF 理论传递函数
                
                float pred_vpp = V_in * mag;
                float diff = pred_vpp - sweep_data[i];
                err += diff * diff; // 累加平方误差
            }
            
            // 记录误差最小的最佳拟合参数
            if (err < min_err) {
                min_err = err;
                opt_fc = test_fc;
                opt_q = test_q;
            }
        }
    }
    
    *best_fc = opt_fc;
    *best_q = opt_q;
}

// =========================================================================
// 🚀 系统主循环
// =========================================================================
int main() {
    setvbuf(stdout, NULL, _IONBF, 0); 
    Init_Freq_Table(); 
    
    WRITE_REG(GPIO_DATA,  CH1_DIR, 0x0); WRITE_REG(GPIO_DATA,  CH2_DIR, 0xFFFFFFFF);   
    WRITE_REG(GPIO_LED,   CH1_DIR, 0x0); WRITE_REG(GPIO_COEF1, CH1_DIR, 0x0);
    WRITE_REG(GPIO_COEF1, CH2_DIR, 0x0); WRITE_REG(GPIO_COEF2, CH1_DIR, 0x0);
    
    // 开机强制关闭克隆模式，恢复正常发波
    WRITE_REG(GPIO_COEF2, CH1_DATA, 0); 

    // 开机特效 (LED 闪 3 次)
    for(int i=0; i<3; i++) { WRITE_REG(GPIO_LED, CH1_DATA, 0xF); delay_ms(200); WRITE_REG(GPIO_LED, CH1_DATA, 0x0); delay_ms(200); }

    xil_printf("\r\n======================================================\r\n");
    xil_printf("  🏆 滤波器模型探究终端 (纯物理数字孪生极速版) \r\n");
    xil_printf("======================================================\r\n");
    xil_printf(" [指令] 请按下板载【R17 学习键】开始扫频...\r\n");
    xil_printf(" [警告] 硬件扫频需要约 15 秒，期间请耐心等待！\r\n");

    int is_cloning = 0; 
    int wait_tick = 0;

    while(1) {
        // 持续读取 AXI GPIO 状态
        u32 in_status = READ_REG(GPIO_DATA, CH2_DATA);
        
        // 🌟 【终极触发】：当底层 sweep_done 标志(Bit 12)稳稳拉高时触发！
        if (((in_status & 0x1000) != 0) && is_cloning == 0) { 
            
            xil_printf("\r\n\r\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\r\n");
            xil_printf("✅ [捕捉成功] 15秒硬件扫频结束！正在高速抽取 496 个频点...\r\n");
            
            u16 max_vpp = 0, min_vpp = 4095;

            for(int i = 0; i < NUM_POINTS; i++) { 
                WRITE_REG(GPIO_DATA, CH1_DATA, i); 
                for(volatile int nop=0; nop<10; nop++); // 极微小延时等数据稳定
                u32 raw_data = READ_REG(GPIO_DATA, CH2_DATA);
                sweep_data[i] = raw_data & 0x0FFF; 
            }
            WRITE_REG(GPIO_DATA, CH1_DATA, 0); // 释放总线
            
            // 掐头去尾提取特征，完美避开 1kHz 继电器噪声和 100kHz 高频底噪
            for(int i = 5; i < 490; i++) { 
                if(sweep_data[i] > max_vpp) { max_vpp = sweep_data[i]; }
                if(sweep_data[i] < min_vpp) { min_vpp = sweep_data[i]; }
            }

            u16 dyn_range = max_vpp - min_vpp;
            u16 start_vpp = sweep_data[5];   // 稳定起点 (2kHz)
            u16 end_vpp   = sweep_data[490]; // 稳定终点 (99kHz)
            
            xil_printf("[分析] Max: %d mV | Min: %d mV | 跌落: %d mV\r\n", max_vpp, min_vpp, dyn_range);

            u8 led_status = 0; int type_code = 0; float fc = 1000.0f; float q_val = 0.5f;

            // 🎯 【AI 分类与精细化参数提取 (MSE数字孪生)】
            if (dyn_range < 100) {
                led_status = 0xF; xil_printf("❌ 判定错误: 无有效信号 (可能未接入电路)！\r\n");
            } 
            // 📉 LPF: 终点低，起点高
            else if (end_vpp < start_vpp * 0.3f && start_vpp > dyn_range * 0.1f) {
                led_status = 0x1; type_code = 1; xil_printf("✅ 判定结果: 低通滤波器 (LPF)\r\n");
            } 
            // 📈 HPF: 起点低，终点高
            else if (start_vpp < end_vpp * 0.3f && end_vpp > dyn_range * 0.1f) {
                led_status = 0x2; type_code = 2; xil_printf("✅ 判定结果: 高通滤波器 (HPF)\r\n");
            } 
            // 🏔️ BPF: 两头都很低
            else if (start_vpp < max_vpp * 0.5f && end_vpp < max_vpp * 0.5f) {
                led_status = 0x4; type_code = 3; xil_printf("✅ 判定结果: 带通滤波器 (BPF)\r\n"); 
            } 
            // 🕳️ BSF: 两头都很高
            else if (start_vpp > max_vpp * 0.5f && end_vpp > max_vpp * 0.5f) {
                led_status = 0x8; type_code = 4; xil_printf("✅ 判定结果: 带阻滤波器 (BSF)\r\n"); 
            } else {
                led_status = 0xF; xil_printf("⚠️ 无法识别拓扑结构！\r\n");
            }
            
            // ✨ 替代简陋 -3dB 算法：执行全频段最小二乘法拟合，提取隐藏在波形中的真实物理参数
            if (type_code != 0) {
                xil_printf("⚙️ 正在执行全频段数字孪生曲线拟合，请稍候...\r\n");
                fit_rlc_params(type_code, &fc, &q_val, start_vpp, end_vpp, max_vpp);
            }
            
            // 打印数据阵列 (可选)
            print_sweep_array();

            WRITE_REG(GPIO_LED, CH1_DATA, led_status);
            if (type_code != 0) {
                calc_and_send_svf(type_code, fc, q_val);
                is_cloning = 1; // 只有成功识别，才进入克隆模式
            } else {
                WRITE_REG(GPIO_COEF2, CH1_DATA, 0); // 识别失败，强制关闭 PL 端滤波
                is_cloning = 1; // 同样锁定，等待用户重新按键
            }
            
            xil_printf("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\r\n\r\n");

        }
        
        // 🌟 自动复位机制：当底层 Done 标志变回 0 时（说明用户【再次按下了物理按键】）
        // 立刻退出克隆模式，恢复底层 DAC 输出正弦波，准备重新扫频！
        else if (((in_status & 0x1000) == 0) && is_cloning == 1) {
            WRITE_REG(GPIO_COEF2, CH1_DATA, 0); 
            WRITE_REG(GPIO_LED, CH1_DATA, 0); 
            is_cloning = 0; 
            wait_tick = 0;
            xil_printf("\r\n--- 🔁 硬件重新开始扫频，已重置系统，请耐心等待 15 秒... ---\r\n");
        }

        // 每 1 秒打印一个点，证明 ARM 没死机
        if (wait_tick % 20 == 0 && is_cloning == 0) {
            xil_printf("."); 
        }

        delay_ms(50); // 降耗
        wait_tick++;
    }
    return 0;
}
