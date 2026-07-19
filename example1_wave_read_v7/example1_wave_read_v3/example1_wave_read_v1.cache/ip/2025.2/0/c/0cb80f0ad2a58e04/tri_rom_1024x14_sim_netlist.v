// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May 30 16:42:57 2026
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
G/vO9B6o6+kYv4mdvz5UrvOCMmrsDIS+Ew==
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
