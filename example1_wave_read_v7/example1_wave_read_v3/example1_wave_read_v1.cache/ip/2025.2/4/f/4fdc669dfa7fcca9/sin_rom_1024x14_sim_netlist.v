// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue May 19 21:56:13 2026
// Host        : Zevin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sin_rom_1024x14_sim_netlist.v
// Design      : sin_rom_1024x14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sin_rom_1024x14,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  (* C_INIT_FILE = "sin_rom_1024x14.mem" *) 
  (* C_INIT_FILE_NAME = "sin_rom_1024x14.mif" *) 
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
EPq43WFE8UwpMjRq
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
