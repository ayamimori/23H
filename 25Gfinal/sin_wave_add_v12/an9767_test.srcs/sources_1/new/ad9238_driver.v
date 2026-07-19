`timescale 1ns / 1ps

module ad9238_driver (
    input  wire         clk,        // 采样时钟输入 (建议直接用 50MHz)
    input  wire         rst_n,      // 复位信号，低电平有效
    
    // 与 AN9238 硬件相连的引脚 (顶层模块导出到引脚)
    output wire         ad_clk,     // 输出给 ADC 的工作时钟
    input  wire [11:0]  ad_data,    // ADC 输入的12位原始数据
    input  wire         ad_otr,     // ADC 溢出标志 (可选，暂时不用也可留着)

    // 输出给 FPGA 内部逻辑的数据
    output reg signed [11:0] ad_data_out, // 转换后的有符号数据 (-2048 ~ +2047)
    output reg               data_valid   // 数据有效标志脉冲
);

    // -------------------------------------------------------------------------
    // 1. 使用 ODDR 原语输出 ADC 时钟
    // -------------------------------------------------------------------------
    // FPGA 输出时钟到外部芯片，强烈建议使用 ODDR 保证时钟对齐和信号完整性
    ODDR #(
        .DDR_CLK_EDGE  ("OPPOSITE_EDGE"),
        .INIT          (1'b0),
        .SRTYPE        ("SYNC")
    ) ODDR_ad_clk (
        .Q             (ad_clk),   // 输出到外部引脚的 ADC 时钟
        .C             (clk),      // 内部驱动时钟 (50MHz)
        .CE            (1'b1),     // 时钟使能
        .D1            (1'b1),     // 上半周期为 1
        .D2            (1'b0),     // 下半周期为 0
        .R             (1'b0),     // 复位
        .S             (1'b0)      // 置位
    );

    // -------------------------------------------------------------------------
    // 2. 采集数据并转换为有符号数 (Offset Binary 转 2's Complement)
    // -------------------------------------------------------------------------
    // AN9238 在 ad_clk 的上升沿更新数据。
    // 为了满足建立和保持时间，我们在内部 clk 的下降沿或者下一个上升沿去打拍采集。
    // 这里采用上升沿同步打两拍的方式，既消除亚稳态，又完成格式转换。
    
    reg [11:0] ad_data_r1;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ad_data_r1  <= 12'd0;
            ad_data_out <= 12'sd0;
            data_valid  <= 1'b0;
        end else begin
            // 第一拍：将外部引脚数据寄存进内部
            ad_data_r1 <= ad_data;
            
            // 第二拍：最高位取反，实现无符号到有符号（以0V为中心）的转换
            // 例如：原始输入 12'h800 (中点0V) -> 转换后变成 12'h000 (数值 0)
            ad_data_out <= {~ad_data_r1[11], ad_data_r1[10:0]};
            
            // 数据有效标志伴随数据输出
            data_valid  <= 1'b1; 
        end
    end

endmodule
