`timescale 1ns / 1ps
module iir_biquad (
    input  wire               clk,
    input  wire signed [11:0] x_in,
    output reg  signed [11:0] y_out,

    // PS 端传来的物理 RLC 参数
    input  wire [31:0] coef_0, // 调谐系数 f (Q16)
    input  wire [31:0] coef_1, // 阻尼系数 d (Q16)
    input  wire [31:0] coef_2  // [31]开关, [30:28]类型
);
    // 1 MSPS 稳定采样
    reg [5:0] cnt = 0;
    wire ce = (cnt == 6'd49); 
    always @(posedge clk) cnt <= ce ? 6'd0 : cnt + 1'b1;

    wire [2:0] f_type = coef_2[30:28];
    wire signed [31:0] f = $signed(coef_0); 
    wire signed [31:0] d = $signed(coef_1); 

    // 电容内部电压 (Q16.16 极限精度)
    reg signed [31:0] lp_reg = 0;
    reg signed [31:0] bp_reg = 0;
    wire signed [31:0] x_ext = { {4{x_in[11]}}, x_in, 16'd0 };

    // Chamberlin SVF 物理模型核心运算
    wire signed [63:0] p_d_bp = d * bp_reg;
    wire signed [31:0] d_bp   = p_d_bp >>> 16;
    wire signed [31:0] hp     = x_ext - lp_reg - d_bp;

    wire signed [63:0] p_f_hp = f * hp;
    wire signed [31:0] f_hp   = p_f_hp >>> 16;
    wire signed [31:0] bp_next = bp_reg + f_hp;

    wire signed [63:0] p_f_bp = f * bp_next;
    wire signed [31:0] f_bp   = p_f_bp >>> 16;
    wire signed [31:0] lp_next = lp_reg + f_bp;

    // 【修正后】：严格匹配物理RLC电路的传递函数
    wire signed [31:0] out_val = (f_type == 3'd1) ? lp_next :
                                 (f_type == 3'd2) ? hp :
                                 (f_type == 3'd3) ? d_bp :          // 修正1：带通必须乘以d，使其峰值增益为1(匹配VR)
                                 (f_type == 3'd4) ? (hp + lp_reg) : // 修正2：带阻使用lp_reg实现完美的零点对消(匹配VL+VC)
                                 x_ext;


    wire signed [31:0] out_int = out_val >>> 16;

    // ========================================================
    // 【核心修复：50倍硬件线性插值器】
    // 将 1MSPS 的阶梯信号，平滑插值为 50MSPS 的丝滑连续波形
    // ========================================================
    reg signed [11:0] y_target = 0;
    reg signed [11:0] y_prev   = 0;

    always @(posedge clk) begin
        if (ce) begin
            lp_reg <= lp_next;
            bp_reg <= bp_next;
            
            y_prev <= y_target; // 记录上一个时刻的输出点
            
            // 物理防越界饱和计算，得出当前的新目标点
            if (out_int > 32'sd2047)       y_target <= 12'sd2047;
            else if (out_int < -32'sd2048) y_target <= -12'sd2048;
            else                           y_target <= out_int[11:0];
        end
    end

    // 1. 计算两点之间的总落差
    wire signed [12:0] y_diff = y_target - y_prev;
    
    // 2. 乘以当前时钟步数 (0~49)
    wire signed [19:0] diff_mul = y_diff * $signed({1'b0, cnt});
    
    // 3. 除以 50 (近似为乘以 1311 后右移 16 位，1311/65536 ≈ 0.02)
    wire signed [31:0] diff_div50 = diff_mul * 13'sd1311;
    wire signed [15:0] interp_step = diff_div50 >>> 16;

    // 4. 将插值步进平滑地累加到输出端
    always @(posedge clk) begin
        y_out <= y_prev + interp_step[11:0];
    end

endmodule
