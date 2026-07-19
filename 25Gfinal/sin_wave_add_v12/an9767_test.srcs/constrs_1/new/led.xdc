# ===================================================================
# 判决结果指示灯 LED (BANK 35, 3.3V电平)
# ===================================================================
# LED1 (M14) - 点亮代表: 低通滤波器 (LPF)
set_property PACKAGE_PIN M14 [get_ports {filter_led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {filter_led[0]}]

# LED2 (M15) - 点亮代表: 高通滤波器 (HPF)
set_property PACKAGE_PIN M15 [get_ports {filter_led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {filter_led[1]}]

# LED3 (K16) - 点亮代表: 带通滤波器 (BPF)
set_property PACKAGE_PIN K16 [get_ports {filter_led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {filter_led[2]}]

# LED4 (J16) - 点亮代表: 带阻滤波器 (BSF)
set_property PACKAGE_PIN J16 [get_ports {filter_led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {filter_led[3]}]
