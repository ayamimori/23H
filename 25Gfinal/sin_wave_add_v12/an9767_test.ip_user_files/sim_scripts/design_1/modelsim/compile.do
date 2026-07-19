vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_22
vlib modelsim_lib/msim/processing_system7_vip_v1_0_24
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_37
vlib modelsim_lib/msim/xlconcat_v2_1_7
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 modelsim_lib/msim/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 modelsim_lib/msim/processing_system7_vip_v1_0_24
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 modelsim_lib/msim/axi_gpio_v2_0_37
vmap xlconcat_v2_1_7 modelsim_lib/msim/xlconcat_v2_1_7
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36

vlog -work xilinx_vip  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_ad9767_test_2_0/sim/design_1_ad9767_test_2_0.v" \

vlog -work xlconcat_v2_1_7  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_2_0/sim/design_1_axi_gpio_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_3_0/sim/design_1_axi_gpio_3_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_13/sim/bd_6f02_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_14/sim/bd_6f02_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_15/sim/bd_6f02_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_16/sim/bd_6f02_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_17/sim/bd_6f02_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_18/sim/bd_6f02_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_19/sim/bd_6f02_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_20/sim/bd_6f02_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_21/sim/bd_6f02_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_22/sim/bd_6f02_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_23/sim/bd_6f02_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_24/sim/bd_6f02_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_25/sim/bd_6f02_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_26/sim/bd_6f02_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_27/sim/bd_6f02_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_28/sim/bd_6f02_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_29/sim/bd_6f02_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_30/sim/bd_6f02_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_31/sim/bd_6f02_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_32/sim/bd_6f02_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_33/sim/bd_6f02_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_34/sim/bd_6f02_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_35/sim/bd_6f02_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_36/sim/bd_6f02_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_37/sim/bd_6f02_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_38/sim/bd_6f02_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_39/sim/bd_6f02_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_40/sim/bd_6f02_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_41/sim/bd_6f02_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_42/sim/bd_6f02_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_43/sim/bd_6f02_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_44/sim/bd_6f02_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_45/sim/bd_6f02_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_46/sim/bd_6f02_m02e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_47/sim/bd_6f02_m03s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_48/sim/bd_6f02_m03arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_49/sim/bd_6f02_m03rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_50/sim/bd_6f02_m03awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_51/sim/bd_6f02_m03wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_52/sim/bd_6f02_m03bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_53/sim/bd_6f02_m03e_0.sv" \

vcom -work smartconnect_v1_0  -93  \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_register_slice_v2_1_36  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.sv" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../an9767_test.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

