`timescale 1ns / 1ps
// AXI-Stream clock domain crossing: fast clk (65MHz) → slow clk (50MHz)
// Decimation outputs one sample every 200ns, plenty of margin for handshake
module axis_cdc (
    input  wire        s_clk,       // source clock (65MHz)
    input  wire        s_rst_n,
    input  wire [15:0] s_tdata,
    input  wire        s_tvalid,
    input  wire        s_tlast,
    output reg         s_tready,

    input  wire        m_clk,       // dest clock (50MHz, DMA domain)
    input  wire        m_rst_n,
    output reg  [15:0] m_tdata,
    output reg         m_tvalid,
    output reg         m_tlast,
    input  wire        m_tready
);
    // Source side: latch data when valid, then wait for ACK from dest
    reg s_has_data;
    reg [15:0] s_data_hold;
    reg        s_last_hold;

    always @(posedge s_clk or negedge s_rst_n) begin
        if (!s_rst_n) begin
            s_has_data  <= 1'b0;
            s_data_hold <= 16'd0;
            s_last_hold <= 1'b0;
            s_tready    <= 1'b1;
        end else begin
            if (src_ack && s_has_data) begin
                s_has_data <= 1'b0;
            end else if (s_tvalid && s_tready && !s_has_data) begin
                s_data_hold <= s_tdata;
                s_last_hold <= s_tlast;
                s_has_data  <= 1'b1;
            end
            s_tready <= !s_has_data;
        end
    end

    // Synchronize: s_has_data (65MHz) → dest_req (50MHz)
    reg [1:0] req_sync;
    wire      dest_req = req_sync[1];

    always @(posedge m_clk or negedge m_rst_n) begin
        if (!m_rst_n)
            req_sync <= 2'b00;
        else
            req_sync <= {req_sync[0], s_has_data};
    end

    // Dest side: wait for request, output to DMA
    reg dest_sent;

    always @(posedge m_clk or negedge m_rst_n) begin
        if (!m_rst_n) begin
            m_tdata   <= 16'd0;
            m_tvalid  <= 1'b0;
            m_tlast   <= 1'b0;
            dest_sent <= 1'b0;
        end else begin
            if (m_tvalid && m_tready) begin
                // DMA accepted the beat
                m_tvalid <= 1'b0;
                dest_sent <= 1'b1;
            end
            if (dest_req && !dest_sent && !m_tvalid) begin
                // New data from source side
                m_tdata  <= s_data_hold;
                m_tlast  <= s_last_hold;
                m_tvalid <= 1'b1;
            end
            if (!dest_req)
                dest_sent <= 1'b0;
        end
    end

    // ACK back to source (50MHz → 65MHz): dest_sent → s_has_data clear
    reg [1:0] ack_sync;
    wire      src_ack = ack_sync[1];

    always @(posedge s_clk or negedge s_rst_n) begin
        if (!s_rst_n)
            ack_sync <= 2'b00;
        else
            ack_sync <= {ack_sync[0], dest_sent};
    end

endmodule
