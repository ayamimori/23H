`timescale 1ns / 1ps

module data_decimation #(
    parameter DEC_RATIO = 10,
    parameter FRAME_LEN = 1000
)(
    input  wire               clk,
    input  wire               rst_n,

    // PS 控制启动：1 开始采一帧，0 清空等待
    input  wire               start_en,

    // 来自 ADC driver 的数据
    input  wire signed [11:0] adc_data_in,
    input  wire               adc_data_valid,

    // AXI-Stream 输出到 AXI DMA S2MM
    output reg  [15:0]        m_axis_tdata,
    output reg                m_axis_tvalid,
    output reg                m_axis_tlast,
    input  wire               m_axis_tready
);

    reg [3:0] dec_cnt;
    reg [9:0] frame_cnt;

    reg running;
    reg frame_done;

    wire signed [15:0] adc_data_16;
    assign adc_data_16 = {{4{adc_data_in[11]}}, adc_data_in};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            dec_cnt       <= 4'd0;
            frame_cnt     <= 10'd0;
            running       <= 1'b0;
            frame_done    <= 1'b0;

            m_axis_tdata  <= 16'd0;
            m_axis_tvalid <= 1'b0;
            m_axis_tlast  <= 1'b0;
        end else begin

            // start_en=0：清空状态
            if (!start_en) begin
                dec_cnt       <= 4'd0;
                frame_cnt     <= 10'd0;
                running       <= 1'b0;
                frame_done    <= 1'b0;

                m_axis_tdata  <= 16'd0;
                m_axis_tvalid <= 1'b0;
                m_axis_tlast  <= 1'b0;
            end

            // start_en=1：只打一帧
            else begin
                if (!running && !frame_done) begin
                    running <= 1'b1;
                end

                // 当前有数据等待 DMA 接收
                if (m_axis_tvalid) begin
                    if (m_axis_tready) begin
                        // 当前 beat 被 DMA 接收
                        m_axis_tvalid <= 1'b0;
                        m_axis_tlast  <= 1'b0;

                        if (m_axis_tlast) begin
                            // 一帧结束
                            running    <= 1'b0;
                            frame_done <= 1'b1;
                            frame_cnt  <= 10'd0;
                            dec_cnt    <= 4'd0;
                        end else begin
                            frame_cnt <= frame_cnt + 1'b1;
                        end
                    end
                end

                // 当前没有待发送数据，按 5MHz 节拍生成新样本
                else if (running) begin
                    if (adc_data_valid) begin
                        if (dec_cnt == DEC_RATIO - 1) begin
                            dec_cnt <= 4'd0;

                            m_axis_tdata  <= adc_data_16;
                            m_axis_tvalid <= 1'b1;

                            if (frame_cnt == FRAME_LEN - 1)
                                m_axis_tlast <= 1'b1;
                            else
                                m_axis_tlast <= 1'b0;

                        end else begin
                            dec_cnt <= dec_cnt + 1'b1;
                        end
                    end
                end
            end
        end
    end

endmodule
