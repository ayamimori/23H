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


// IP VLNV: xilinx.com:module_ref:ad9767_test:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ad9767_test_2_0 (
  sys_clk,
  key_freq,
  key_vpp,
  key_start,
  key_learn,
  da1_clk,
  da1_wrt,
  da1_data,
  da2_clk,
  da2_wrt,
  da2_data,
  ad_ch1_clk,
  ad_ch1_data,
  ad_ch1_otr,
  ps_read_addr,
  ps_read_data,
  ps_sweep_done,
  iir_coef_0,
  iir_coef_1,
  iir_coef_2
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clk, INSERT_VIP 0" *)
input wire sys_clk;
input wire key_freq;
input wire key_vpp;
input wire key_start;
input wire key_learn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 da1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME da1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ad9767_test_2_0_da1_clk, INSERT_VIP 0" *)
output wire da1_clk;
output wire da1_wrt;
output wire [13 : 0] da1_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 da2_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME da2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ad9767_test_2_0_da2_clk, INSERT_VIP 0" *)
output wire da2_clk;
output wire da2_wrt;
output wire [13 : 0] da2_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ad_ch1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ad_ch1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ad9767_test_2_0_ad_ch1_clk, INSERT_VIP 0" *)
output wire ad_ch1_clk;
input wire [11 : 0] ad_ch1_data;
input wire ad_ch1_otr;
input wire [8 : 0] ps_read_addr;
output wire [11 : 0] ps_read_data;
output wire ps_sweep_done;
input wire [31 : 0] iir_coef_0;
input wire [31 : 0] iir_coef_1;
input wire [31 : 0] iir_coef_2;

  ad9767_test inst (
    .sys_clk(sys_clk),
    .key_freq(key_freq),
    .key_vpp(key_vpp),
    .key_start(key_start),
    .key_learn(key_learn),
    .da1_clk(da1_clk),
    .da1_wrt(da1_wrt),
    .da1_data(da1_data),
    .da2_clk(da2_clk),
    .da2_wrt(da2_wrt),
    .da2_data(da2_data),
    .ad_ch1_clk(ad_ch1_clk),
    .ad_ch1_data(ad_ch1_data),
    .ad_ch1_otr(ad_ch1_otr),
    .ps_read_addr(ps_read_addr),
    .ps_read_data(ps_read_data),
    .ps_sweep_done(ps_sweep_done),
    .iir_coef_0(iir_coef_0),
    .iir_coef_1(iir_coef_1),
    .iir_coef_2(iir_coef_2)
  );
endmodule
