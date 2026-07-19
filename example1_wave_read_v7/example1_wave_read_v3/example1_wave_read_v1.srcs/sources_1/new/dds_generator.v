`timescale 1ns / 1ps

module dds_generator(
    input  wire        clk,          // 50MHz
    input  wire        rst_n,
    input  wire [31:0] freq_word,    // 真正的频率控制字 (最高位已被 top_system 剥离，很干净)
    input  wire [31:0] phase_offset, // 相位偏移字
    input  wire        wave_type,    // 0: 正弦波, 1: 三角波
    output reg  [13:0] dac_data      // 输出数据
);
    reg [31:0] phase_acc;
    
    // 相位累加器
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) phase_acc <= 32'd0;
        else       phase_acc <= phase_acc + freq_word;
    end

    // 目标相位
    wire [31:0] phase_target = phase_acc + phase_offset;
    
    // -----------------------------------------------------
    // 1. 正弦波处理
    // (假设你的 sin_rom 之前没改过配置，仍保留 ena 引脚)
    // -----------------------------------------------------
    wire [9:0]  sin_rom_addr = phase_target[31:22];
    wire [13:0] sin_data;
    
    sin_rom_1024x14 u_sin_rom (
        .clka  (clk),
      //  .ena   (1'b1),        // 正弦波保留 ena
        .addra (sin_rom_addr),
        .douta (sin_data)
    );
    
    // -----------------------------------------------------
    // 2. 三角波处理 (带有 90 度相位矫正)
    // -----------------------------------------------------
    wire [31:0] tri_phase_target = phase_target - 32'h40000000;
    wire [9:0]  tri_rom_addr = tri_phase_target[31:22];
    wire [13:0] tri_data;

    tri_rom_1024x14 u_tri_rom (
        .clka  (clk),
        // .ena (1'b1),       // <--- 已删除！匹配你 "Always Enabled" 的设置
        .addra (tri_rom_addr),
        .douta (tri_data)
    );

    // -----------------------------------------------------
    // 3. 波形选择与输出打拍
    // -----------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            dac_data <= 14'h2000; // 默认中点电压
        else begin
            if (wave_type == 1'b1)
                dac_data <= tri_data;  // 1: 输出三角波
            else
                dac_data <= sin_data;  // 0: 输出正弦波
        end
    end
endmodule
