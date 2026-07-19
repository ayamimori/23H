// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May 30 16:54:45 2026
// Host        : ayamimori running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/stega/Desktop/example1_wave_read_v7/example1_wave_read_v3/example1_wave_read_v1.gen/sources_1/ip/sin_rom_1024x14/sin_rom_1024x14_sim_netlist.v
// Design      : sin_rom_1024x14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sin_rom_1024x14,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module sin_rom_1024x14
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [13:0]douta;
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
  (* C_HAS_ENA = "0" *) 
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
  sin_rom_1024x14_blk_mem_gen_v8_4_12 U0
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18208)
`pragma protect data_block
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
JC5V+DV+P581aEKoQAvyUhCdSL9YUkPduw==
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
