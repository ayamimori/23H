vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_12
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_12 modelsim_lib/msim/blk_mem_gen_v8_4_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/for_fpga/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/for_fpga/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -mfcu  "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+D:/for_fpga/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/for_fpga/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../example1_wave_read_v1.gen/sources_1/ip/sin_rom_1024x14/sim/sin_rom_1024x14.v" \

vlog -work xil_defaultlib \
"glbl.v"

