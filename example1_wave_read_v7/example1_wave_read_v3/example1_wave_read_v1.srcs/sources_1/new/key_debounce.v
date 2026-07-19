`timescale 1ns / 1ps

module key_debounce(
    input  wire clk,        // 系统时钟 50MHz
    input  wire rst_n,
    input  wire key_in,     // 外部物理按键 (低电平有效)
    output reg  key_state   // 消抖后的状态 (1表示按下，0表示松开)
);
    reg [19:0] cnt;         // 20ms 计数器
    reg key_reg1, key_reg2;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            key_reg1 <= 1'b1;
            key_reg2 <= 1'b1;
        end else begin
            key_reg1 <= key_in;
            key_reg2 <= key_reg1;
        end
    end

    wire key_edge = key_reg2 ^ key_reg1; // 捕捉边沿跳变

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt <= 20'd0;
            key_state <= 1'b0;
        end else if (key_edge) begin
            cnt <= 20'd1000_000; // 发生抖动，重新开始20ms倒计时
        end else if (cnt > 0) begin
            cnt <= cnt - 1'b1;
            if (cnt == 20'd1) 
                key_state <= ~key_in; // 倒计时结束，确认按键状态
        end
    end
endmodule
