`timescale 1ns / 1ps
module peak_detector (
    input  wire               clk,
    input  wire               rst_n,
    input  wire               measure_en,
    input  wire signed [11:0] data_in,
    input  wire               data_valid,
    output reg  [11:0]        vpp_out,
    output reg                vpp_valid
);
    reg measure_en_d1, measure_en_d2;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin measure_en_d1 <= 0; measure_en_d2 <= 0; end 
        else begin measure_en_d1 <= measure_en; measure_en_d2 <= measure_en_d1; end
    end

    wire start_meas =  measure_en_d1 & ~measure_en_d2; 
    wire stop_meas  = ~measure_en_d1 &  measure_en_d2; 

    reg signed [11:0] max_val;
    reg signed [11:0] min_val;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            max_val <= 12'sd0; min_val <= 12'sd0; vpp_out <= 12'd0; vpp_valid <= 1'b0;
        end else begin
            vpp_valid <= 1'b0; 
            if (start_meas) begin
                max_val <= -12'sd2048; min_val <=  12'sd2047; 
            end else if (stop_meas) begin
                vpp_out <= max_val - min_val; vpp_valid <= 1'b1; 
            end else if (measure_en_d2) begin
                if (data_valid) begin
                    if (data_in > max_val) max_val <= data_in;
                    if (data_in < min_val) min_val <= data_in;
                end
            end
        end
    end
endmodule
