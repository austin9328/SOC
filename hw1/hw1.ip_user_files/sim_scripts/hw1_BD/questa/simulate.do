onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib hw1_BD_opt

do {wave.do}

view wave
view structure
view signals

do {hw1_BD.udo}

run -all

quit -force
