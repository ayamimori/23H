// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May 30 16:54:45 2026
// Host        : ayamimori running 64-bit major release  (build 9200)
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
uIKsNv6gU7nxpADhKwdoW5kgETBVyL6dMA==
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
