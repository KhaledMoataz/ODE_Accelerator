#vdel -all -lib work > nul
set base "Fixed\ Point\ Arithmetic/src/post-synthesis/"
vlib work
vlog -reportprogress 300 -work work Synthesis/NangateOpenCellLibrary.v
vlog -reportprogress 300 -work work ${base}/multiplier_modified_booth_carry_lookahead.v
vlog -reportprogress 300 -work work ${base}/multiplier_modified_booth_testbench.v
vsim -gui work.multiplier_modified_booth_testbench
add wave -position insertpoint sim:/multiplier_modified_booth_testbench/*
run -all