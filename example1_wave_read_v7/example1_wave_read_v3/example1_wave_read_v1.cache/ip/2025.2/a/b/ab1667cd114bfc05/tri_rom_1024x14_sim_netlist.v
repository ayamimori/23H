// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri May 29 21:59:14 2026
// Host        : ayamimori running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tri_rom_1024x14_sim_netlist.v
// Design      : tri_rom_1024x14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tri_rom_1024x14,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [13:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [13:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3132 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "tri_rom_1024x14.mem" *) 
  (* C_INIT_FILE_NAME = "tri_rom_1024x14.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "14" *) 
  (* C_READ_WIDTH_B = "14" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[13:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[13:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18480)
`pragma protect data_block
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
69q1A7zaUsiZyIVT
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
