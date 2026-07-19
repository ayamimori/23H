`timescale 1ns / 1ps

module top_system (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst_n" *)
    input  wire        sys_clk,       
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire        rst_n,         
    
    output wire [15:0] m_axis_tdata,
    output wire        m_axis_tvalid,
    output wire        m_axis_tlast,
    input  wire        m_axis_tready,
    
    output wire [3:0]  ps_keys,       
    input  wire [3:0]  ps_leds,       
    
    input  wire [31:0] dds_freq_a,
    input  wire [31:0] dds_phase_a,
    input  wire [31:0] dds_freq_b,
    input  wire [31:0] dds_phase_b,
    
    output wire        ad_ch1_clk,
    input  wire [11:0] ad_ch1_data,
    input  wire        ad_ch1_otr,
    input  wire [3:0]  key,
    output wire [3:0]  led,

    output wire [13:0] da1_data,
    output wire        da1_clk,
    output wire        da1_wrt,
    output wire [13:0] da2_data,
    output wire        da2_clk,
    output wire        da2_wrt
);

    wire signed [11:0] adc_data;
    wire               adc_valid;

    // ADC 50MHz clock: PLL pass-through for clean clock to AN9238
    wire adc_clk_50M;
    adc_pll_65M adc_pll_inst (
        .clk_in1  (sys_clk),
        .clk_out1 (adc_clk_50M),
        .resetn   (1'b1),
        .locked   ()
    );

    // ODDR: 50MHz → AN9238 时钟脚
    ODDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT(1'b0), .SRTYPE("SYNC"))
    ODDR_ad_clk (.Q(ad_ch1_clk), .C(adc_clk_50M), .CE(1'b1), .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0));

    ad9238_driver u_ad_driver (
        .clk(sys_clk), .rst_n(rst_n), .ad_data(ad_ch1_data),
        .ad_otr(ad_ch1_otr), .ad_data_out(adc_data), .data_valid(adc_valid)
    );

    wire adc_capture_start;
    assign adc_capture_start = ps_leds[0];

    // 全线 50MHz，无需 CDC
    data_decimation #(
        .DEC_RATIO(10),
        .FRAME_LEN(1000)
    ) u_decimation (
        .clk            (sys_clk),
        .rst_n          (rst_n),
        .start_en       (adc_capture_start),
        .adc_data_in    (adc_data),
        .adc_data_valid (adc_valid),
        .m_axis_tdata   (m_axis_tdata),
        .m_axis_tvalid  (m_axis_tvalid),
        .m_axis_tlast   (m_axis_tlast),
        .m_axis_tready  (m_axis_tready)
    );

    genvar i; generate
        for(i = 0; i < 4; i = i + 1) begin : key_gen
            key_debounce u_key (.clk(sys_clk), .rst_n(rst_n), .key_in(key[i]), .key_state(ps_keys[i]));
        end
    endgenerate
    assign led = ps_leds;

    // ========================================================
    // 关键修复区：分离最高位，切断25MHz噪声源！
    // ========================================================
    wire wave_type_a = dds_freq_a[31];
    wire wave_type_b = dds_freq_b[31];
    
    // 只取低 31 位作为真正的频率控制字传给 DDS 相位累加器
    wire [31:0] real_freq_word_a = {1'b0, dds_freq_a[30:0]};
    wire [31:0] real_freq_word_b = {1'b0, dds_freq_b[30:0]};

    wire [13:0] dac_data_a;
    wire [13:0] dac_data_b;
    
    dds_generator u_dds_a (
        .clk          (sys_clk), 
        .rst_n        (rst_n), 
        .freq_word    (real_freq_word_a),   // 传入纯净的频率字
        .phase_offset (dds_phase_a), 
        .wave_type    (wave_type_a),        // 传入波形类型
        .dac_data     (dac_data_a)
    );
    
    dds_generator u_dds_b (
        .clk          (sys_clk), 
        .rst_n        (rst_n), 
        .freq_word    (real_freq_word_b),   // 传入纯净的频率字
        .phase_offset (dds_phase_b), 
        .wave_type    (wave_type_b),        // 传入波形类型
        .dac_data     (dac_data_b)
    );

    an9767_driver u_da_driver (
        .clk        (sys_clk),
        .rst_n      (rst_n),
        .dac_data_a (dac_data_a),
        .dac_data_b (dac_data_b),
        .da1_data   (da1_data),
        .da1_clk    (da1_clk),
        .da1_wrt    (da1_wrt),
        .da2_data   (da2_data),
        .da2_clk    (da2_clk),
        .da2_wrt    (da2_wrt)
    );

endmodule
