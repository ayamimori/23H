// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May 30 16:42:57 2026
// Host        : ayamimori running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top tri_rom_1024x14 -prefix
//               tri_rom_1024x14_ tri_rom_1024x14_sim_netlist.v
// Design      : tri_rom_1024x14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tri_rom_1024x14,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module tri_rom_1024x14
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
  tri_rom_1024x14_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17920)
`pragma protect data_block
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
uqb9ALxmUz9vT+nFF8l26+/Kl395Zg==
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
