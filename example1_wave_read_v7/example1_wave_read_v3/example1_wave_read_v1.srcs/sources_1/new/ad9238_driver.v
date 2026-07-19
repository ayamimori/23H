`timescale 1ns / 1ps

module ad9238_driver (
    input  wire        clk,         // 内部驱动时钟 (建议50MHz)
    input  wire        rst_n,       // 复位信号，低电平有效
    // 与 AN9238 硬件相连的引脚
    output wire        ad_clk,      // 输出给 ADC 的工作时钟
    input  wire [11:0] ad_data,     // ADC 输入的12位原始数据
    input  wire        ad_otr,      // ADC 溢出标志 (可选接)
    // 输出给 FPGA 内部逻辑的数据
    output reg signed [11:0] ad_data_out, // 转换后的有符号数据
    output reg               data_valid   // 数据有效标志脉冲
);

    // 使用 ODDR 原语输出 ADC 时钟
    ODDR #(
        .DDR_CLK_EDGE  ("OPPOSITE_EDGE"),
        .INIT          (1'b0),
        .SRTYPE        ("SYNC")
    ) ODDR_ad_clk (
        .Q             (ad_clk),
        .C             (clk),
        .CE            (1'b1),
        .D1            (1'b1),
        .D2            (1'b0),
        .R             (1'b0),
        .S             (1'b0)
    );

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
            ad_data_out <= {~ad_data_r1[11], ad_data_r1[10:0]};
            data_valid  <= 1'b1; 
        end
    end
endmodule
