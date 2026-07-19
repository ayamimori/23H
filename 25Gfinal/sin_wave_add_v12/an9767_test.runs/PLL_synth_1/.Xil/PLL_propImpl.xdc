set_property SRC_FILE_INFO {cfile:d:/Project/XILINX/sin_wave_add_v1/an9767_test.gen/sources_1/ip/PLL/PLL.xdc rfile:../../../an9767_test.gen/sources_1/ip/PLL/PLL.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.200
