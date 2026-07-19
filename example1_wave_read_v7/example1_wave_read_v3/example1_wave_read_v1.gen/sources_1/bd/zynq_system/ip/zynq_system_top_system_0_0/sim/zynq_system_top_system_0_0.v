// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:top_system:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zynq_system_top_system_0_0 (
  sys_clk,
  rst_n,
  m_axis_tdata,
  m_axis_tvalid,
  m_axis_tlast,
  m_axis_tready,
  ps_keys,
  ps_leds,
  dds_freq_a,
  dds_phase_a,
  dds_freq_b,
  dds_phase_b,
  ad_ch1_clk,
  ad_ch1_data,
  ad_ch1_otr,
  key,
  led,
  da1_data,
  da1_clk,
  da1_wrt,
  da2_data,
  da2_clk,
  da2_wrt
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire sys_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN zynq_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [15 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
output wire [3 : 0] ps_keys;
input wire [3 : 0] ps_leds;
input wire [31 : 0] dds_freq_a;
input wire [31 : 0] dds_phase_a;
input wire [31 : 0] dds_freq_b;
input wire [31 : 0] dds_phase_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ad_ch1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ad_ch1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_system_top_system_0_0_ad_ch1_clk, INSERT_VIP 0" *)
output wire ad_ch1_clk;
input wire [11 : 0] ad_ch1_data;
input wire ad_ch1_otr;
input wire [3 : 0] key;
output wire [3 : 0] led;
output wire [13 : 0] da1_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 da1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME da1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_system_top_system_0_0_da1_clk, INSERT_VIP 0" *)
output wire da1_clk;
output wire da1_wrt;
output wire [13 : 0] da2_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 da2_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME da2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_system_top_system_0_0_da2_clk, INSERT_VIP 0" *)
output wire da2_clk;
output wire da2_wrt;

  top_system inst (
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .ps_keys(ps_keys),
    .ps_leds(ps_leds),
    .dds_freq_a(dds_freq_a),
    .dds_phase_a(dds_phase_a),
    .dds_freq_b(dds_freq_b),
    .dds_phase_b(dds_phase_b),
    .ad_ch1_clk(ad_ch1_clk),
    .ad_ch1_data(ad_ch1_data),
    .ad_ch1_otr(ad_ch1_otr),
    .key(key),
    .led(led),
    .da1_data(da1_data),
    .da1_clk(da1_clk),
    .da1_wrt(da1_wrt),
    .da2_data(da2_data),
    .da2_clk(da2_clk),
    .da2_wrt(da2_wrt)
  );
endmodule
