onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib tri_rom_1024x14_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {tri_rom_1024x14.udo}

run 1000ns

quit -force
