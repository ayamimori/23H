`timescale 1ns / 1ps

module an9767_driver (
    input  wire        clk,            
    input  wire        rst_n,          
    input  wire [13:0] dac_data_a,     
    input  wire [13:0] dac_data_b,     

    output wire [13:0] da1_data,
    output wire        da1_clk,
    output wire        da1_wrt,

    output wire [13:0] da2_data,
    output wire        da2_clk,
    output wire        da2_wrt
);

    reg [13:0] da1_data_reg;
    reg [13:0] da2_data_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            da1_data_reg <= 14'h2000;   
            da2_data_reg <= 14'h2000;
        end else begin
            da1_data_reg <= dac_data_a; 
            da2_data_reg <= dac_data_b; 
        end
    end

    assign da1_data = da1_data_reg;
    assign da2_data = da2_data_reg;

    // DA1 时钟与写信号 (使用独立ODDR，绝不互相连接)
    ODDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT(1'b0), .SRTYPE("SYNC"))
    oddr_da1_clk (.Q(da1_clk), .C(clk), .CE(1'b1), .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0));

    ODDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT(1'b0), .SRTYPE("SYNC"))
    oddr_da1_wrt (.Q(da1_wrt), .C(clk), .CE(1'b1), .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0));

    // DA2 时钟与写信号 (使用独立ODDR，绝不互相连接)
    ODDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT(1'b0), .SRTYPE("SYNC"))
    oddr_da2_clk (.Q(da2_clk), .C(clk), .CE(1'b1), .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0));

    ODDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT(1'b0), .SRTYPE("SYNC"))
    oddr_da2_wrt (.Q(da2_wrt), .C(clk), .CE(1'b1), .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0));

endmodule
