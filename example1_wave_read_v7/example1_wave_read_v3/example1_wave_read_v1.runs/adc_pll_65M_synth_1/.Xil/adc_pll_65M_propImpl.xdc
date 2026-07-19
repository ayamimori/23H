set_property SRC_FILE_INFO {cfile:c:/Users/stega/Desktop/vibeFPGA/example1_wave_read_v7/example1_wave_read_v3/example1_wave_read_v1.gen/sources_1/ip/adc_pll_65M/adc_pll_65M.xdc rfile:../../../example1_wave_read_v1.gen/sources_1/ip/adc_pll_65M/adc_pll_65M.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.200
