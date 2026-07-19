############## 比赛三按键约束 ########################
# 频率调节 (N15)
set_property IOSTANDARD LVCMOS33 [get_ports key_freq]
set_property PACKAGE_PIN N15 [get_ports key_freq]
# 电压调节 (N16)
set_property IOSTANDARD LVCMOS33 [get_ports key_vpp]
set_property PACKAGE_PIN N16 [get_ports key_vpp]
# 一键启动 (T17)
set_property IOSTANDARD LVCMOS33 [get_ports key_start]
set_property PACKAGE_PIN T17 [get_ports key_start]
# 学习模式（R17）
set_property PACKAGE_PIN R17 [get_ports key_learn]
set_property IOSTANDARD LVCMOS33 [get_ports key_learn]
