# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\stega\\Desktop\\vibeFPGA\\example1_wave_read_v7\\example1_wave_read_v3\\vitis\\platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "C:\\Users\\stega\\Desktop\\vibeFPGA\\example1_wave_read_v7\\example1_wave_read_v3\\vitis\\platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\stega\\Desktop\\vibeFPGA\\example1_wave_read_v7\\example1_wave_read_v3\\vitis\\platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\stega\\Desktop\\vibeFPGA\\example1_wave_read_v7\\example1_wave_read_v3\\vitis\\platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
