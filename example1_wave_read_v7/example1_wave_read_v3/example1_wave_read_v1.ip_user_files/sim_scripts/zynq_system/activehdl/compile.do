transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_22
vlib activehdl/processing_system7_vip_v1_0_24
vlib activehdl/xil_defaultlib
vlib activehdl/axi_datamover_v5_1_37
vlib activehdl/axi_sg_v4_1_21
vlib activehdl/axi_dma_v7_1_37
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/fifo_generator_v13_2_14
vlib activehdl/axi_data_fifo_v2_1_36
vlib activehdl/axi_protocol_converter_v2_1_37
vlib activehdl/axi_clock_converter_v2_1_35
vlib activehdl/blk_mem_gen_v8_4_12
vlib activehdl/axi_dwidth_converter_v2_1_37

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 activehdl/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 activehdl/processing_system7_vip_v1_0_24
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_datamover_v5_1_37 activehdl/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 activehdl/axi_sg_v4_1_21
vmap axi_dma_v7_1_37 activehdl/axi_dma_v7_1_37
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_14 activehdl/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 activehdl/axi_data_fifo_v2_1_36
vmap axi_protocol_converter_v2_1_37 activehdl/axi_protocol_converter_v2_1_37
vmap axi_clock_converter_v2_1_35 activehdl/axi_clock_converter_v2_1_35
vmap blk_mem_gen_v8_4_12 activehdl/blk_mem_gen_v8_4_12
vmap axi_dwidth_converter_v2_1_37 activehdl/axi_dwidth_converter_v2_1_37

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_processing_system7_0_0/sim/zynq_system_processing_system7_0_0.v" \
"../../../bd/zynq_system/ip/zynq_system_top_system_0_0/sim/zynq_system_top_system_0_0.v" \

vcom -work axi_datamover_v5_1_37 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_37 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/7f6a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/zynq_system/ip/zynq_system_axi_dma_0_0/sim/zynq_system_axi_dma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/zynq_system/ip/zynq_system_axi_gpio_0_0/sim/zynq_system_axi_gpio_0_0.vhd" \
"../../../bd/zynq_system/ip/zynq_system_axi_gpio_1_0/sim/zynq_system_axi_gpio_1_0.vhd" \
"../../../bd/zynq_system/ip/zynq_system_axi_gpio_2_0/sim/zynq_system_axi_gpio_2_0.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_1/sim/bd_5e13_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_2/sim/bd_5e13_arinsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_3/sim/bd_5e13_rinsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_4/sim/bd_5e13_awinsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_5/sim/bd_5e13_winsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_6/sim/bd_5e13_binsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_7/sim/bd_5e13_aroutsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_8/sim/bd_5e13_routsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_9/sim/bd_5e13_awoutsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_10/sim/bd_5e13_woutsw_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_11/sim/bd_5e13_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_12/sim/bd_5e13_arni_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_13/sim/bd_5e13_rni_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_14/sim/bd_5e13_awni_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_15/sim/bd_5e13_wni_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_16/sim/bd_5e13_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_17/sim/bd_5e13_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_18/sim/bd_5e13_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_19/sim/bd_5e13_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_20/sim/bd_5e13_s00a2s_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_21/sim/bd_5e13_sarn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_22/sim/bd_5e13_srn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_23/sim/bd_5e13_sawn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_24/sim/bd_5e13_swn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_25/sim/bd_5e13_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_26/sim/bd_5e13_m00s2a_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_27/sim/bd_5e13_m00arn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_28/sim/bd_5e13_m00rn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_29/sim/bd_5e13_m00awn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_30/sim/bd_5e13_m00wn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_31/sim/bd_5e13_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_32/sim/bd_5e13_m00e_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_33/sim/bd_5e13_m01s2a_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_34/sim/bd_5e13_m01arn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_35/sim/bd_5e13_m01rn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_36/sim/bd_5e13_m01awn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_37/sim/bd_5e13_m01wn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_38/sim/bd_5e13_m01bn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_39/sim/bd_5e13_m01e_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_40/sim/bd_5e13_m02s2a_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_41/sim/bd_5e13_m02arn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_42/sim/bd_5e13_m02rn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_43/sim/bd_5e13_m02awn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_44/sim/bd_5e13_m02wn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_45/sim/bd_5e13_m02bn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_46/sim/bd_5e13_m02e_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_47/sim/bd_5e13_m03s2a_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_48/sim/bd_5e13_m03arn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_49/sim/bd_5e13_m03rn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_50/sim/bd_5e13_m03awn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_51/sim/bd_5e13_m03wn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_52/sim/bd_5e13_m03bn_0.sv" \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/ip/ip_53/sim/bd_5e13_m03e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/bd_0/sim/bd_5e13.v" \

vcom -work smartconnect_v1_0 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_smc_0/sim/zynq_system_axi_smc_0.sv" \

vcom -work xil_defaultlib -93  \
"../../../bd/zynq_system/ip/zynq_system_rst_ps7_0_50M_0/sim/zynq_system_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_37  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/d98a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_mem_intercon_imp_auto_pc_0/sim/zynq_system_axi_mem_intercon_imp_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_35  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/e059/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_12  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_37  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/21f8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/ec67/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/9a25/hdl" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../example1_wave_read_v1.gen/sources_1/bd/zynq_system/ipshared/00fe/hdl/verilog" "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l blk_mem_gen_v8_4_12 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/zynq_system/ip/zynq_system_axi_mem_intercon_imp_auto_us_0/sim/zynq_system_axi_mem_intercon_imp_auto_us_0.v" \
"../../../bd/zynq_system/sim/zynq_system.v" \

vlog -work xil_defaultlib \
"glbl.v"

