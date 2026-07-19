`timescale 1ns / 1ps
module sweep_controller(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_sweep,
    output reg  [31:0] sweep_fcw,
    output reg         measure_en,
    input  wire [11:0] vpp_result,
    input  wire        vpp_done,
    output reg         sweep_done,
    input  wire [8:0]  ps_read_addr,
    output reg  [11:0] ps_read_data
);
    // 496 个点 BRAM (1kHz ~ 100kHz, 步长 200Hz)
    reg [11:0] vpp_ram [0:495]; 
    always @(posedge clk) ps_read_data <= vpp_ram[ps_read_addr];

    localparam S_IDLE=0, S_SET_FREQ=1, S_WAIT=2, S_MEASURE=3, S_SAVE=4, S_NEXT=5, S_DONE=6;
    reg [2:0] state = S_IDLE;
    reg [8:0] freq_idx = 0;      
    reg [23:0] delay_cnt = 0;    

    // 在 125MHz DDS 下，1kHz = 34360, 200Hz = 6872
    localparam [31:0] FREQ_1KHZ  = 32'd34360;
    localparam [31:0] STEP_200HZ = 32'd6872;

    always @(posedge clk) begin
        if (state == S_IDLE) begin
            sweep_done <= 0;
            if (start_sweep) begin
                freq_idx <= 0; sweep_fcw <= FREQ_1KHZ; state <= S_SET_FREQ;
            end
        end
        else if (state == S_SET_FREQ) begin delay_cnt <= 0; state <= S_WAIT; end
        else if (state == S_WAIT) begin
            if (delay_cnt < 500000) delay_cnt <= delay_cnt + 1; // 10ms 稳定
            else begin delay_cnt <= 0; measure_en <= 1; state <= S_MEASURE; end
        end
        else if (state == S_MEASURE) begin
            if (delay_cnt < 1000000) delay_cnt <= delay_cnt + 1; // 20ms 测量
            else begin measure_en <= 0; if (vpp_done) state <= S_SAVE; end
        end
        else if (state == S_SAVE) begin
            vpp_ram[freq_idx] <= vpp_result; state <= S_NEXT;
        end
        else if (state == S_NEXT) begin
            if (freq_idx >= 495) state <= S_DONE; // 496 个点扫完
            else begin
                freq_idx <= freq_idx + 1;
                sweep_fcw <= sweep_fcw + STEP_200HZ; // 极其暴力的纯线性递增！
                state <= S_SET_FREQ;
            end
        end
        else if (state == S_DONE) begin
            sweep_done <= 1;
            //if (!start_sweep) state <= S_IDLE;
            if (start_sweep) state <= S_IDLE;
        end
    end
endmodule
