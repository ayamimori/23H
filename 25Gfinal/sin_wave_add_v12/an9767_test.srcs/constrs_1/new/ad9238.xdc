# ===================================================================
# AN9238 ADC J10 扩展口引脚约束 (BANK 34 & 35, 3.3V电平)
# ===================================================================

# -------------------------------------------------------------------
# CH1 (通道 A) - 对应 J10 的 PIN19 ~ PIN32
# -------------------------------------------------------------------
# CH1_CLK (PIN31)
set_property PACKAGE_PIN T10 [get_ports ad_ch1_clk]
set_property IOSTANDARD LVCMOS33 [get_ports ad_ch1_clk]

# CH1_DATA (12-bit)
set_property PACKAGE_PIN T16 [get_ports {ad_ch1_data[0]}]  ;# PIN20
set_property PACKAGE_PIN U17 [get_ports {ad_ch1_data[1]}]  ;# PIN19
set_property PACKAGE_PIN V17 [get_ports {ad_ch1_data[2]}]  ;# PIN22
set_property PACKAGE_PIN V18 [get_ports {ad_ch1_data[3]}]  ;# PIN21
set_property PACKAGE_PIN T14 [get_ports {ad_ch1_data[4]}]  ;# PIN24
set_property PACKAGE_PIN T15 [get_ports {ad_ch1_data[5]}]  ;# PIN23
set_property PACKAGE_PIN U13 [get_ports {ad_ch1_data[6]}]  ;# PIN26
set_property PACKAGE_PIN V13 [get_ports {ad_ch1_data[7]}]  ;# PIN25
set_property PACKAGE_PIN V12 [get_ports {ad_ch1_data[8]}]  ;# PIN28
set_property PACKAGE_PIN W13 [get_ports {ad_ch1_data[9]}]  ;# PIN27
set_property PACKAGE_PIN T12 [get_ports {ad_ch1_data[10]}] ;# PIN30
set_property PACKAGE_PIN U12 [get_ports {ad_ch1_data[11]}] ;# PIN29

set_property IOSTANDARD LVCMOS33 [get_ports {ad_ch1_data[*]}]

# CH1_OTR (PIN32 - 溢出标志，可选接)
set_property PACKAGE_PIN T11 [get_ports ad_ch1_otr]
set_property IOSTANDARD LVCMOS33 [get_ports ad_ch1_otr]

# -------------------------------------------------------------------
# CH2 (通道 B) - 对应 J10 的 PIN3 ~ PIN16
# -------------------------------------------------------------------
# CH2_CLK (PIN3)
set_property PACKAGE_PIN W19 [get_ports ad_ch2_clk]
set_property IOSTANDARD LVCMOS33 [get_ports ad_ch2_clk]

# CH2_DATA (12-bit)
set_property PACKAGE_PIN W18 [get_ports {ad_ch2_data[0]}]  ;# PIN4
set_property PACKAGE_PIN R14 [get_ports {ad_ch2_data[1]}]  ;# PIN5
set_property PACKAGE_PIN P14 [get_ports {ad_ch2_data[2]}]  ;# PIN6
set_property PACKAGE_PIN Y17 [get_ports {ad_ch2_data[3]}]  ;# PIN7
set_property PACKAGE_PIN Y16 [get_ports {ad_ch2_data[4]}]  ;# PIN8
set_property PACKAGE_PIN W15 [get_ports {ad_ch2_data[5]}]  ;# PIN9
set_property PACKAGE_PIN V15 [get_ports {ad_ch2_data[6]}]  ;# PIN10
set_property PACKAGE_PIN Y14 [get_ports {ad_ch2_data[7]}]  ;# PIN11
set_property PACKAGE_PIN W14 [get_ports {ad_ch2_data[8]}]  ;# PIN12
set_property PACKAGE_PIN P18 [get_ports {ad_ch2_data[9]}]  ;# PIN13
set_property PACKAGE_PIN N17 [get_ports {ad_ch2_data[10]}] ;# PIN14
set_property PACKAGE_PIN U15 [get_ports {ad_ch2_data[11]}] ;# PIN15

set_property IOSTANDARD LVCMOS33 [get_ports {ad_ch2_data[*]}]

# CH2_OTR (PIN16 - 溢出标志，可选接)
set_property PACKAGE_PIN U14 [get_ports ad_ch2_otr]
set_property IOSTANDARD LVCMOS33 [get_ports ad_ch2_otr]
