#vdel -all -lib work > nul
set base "Fixed\ Point\ Arithmetic/src/"
vlib work
vlog -reportprogress 300 -work work ${base}/Multiplier/multiplier_modified_booth.v
vlog -reportprogress 300 -work work ${base}/Multiplier/multiplier_modified_booth_testbench.v
vlog -reportprogress 300 -work work ${base}/Adder/carry_select_adder.v
vlog -reportprogress 300 -work work ${base}/Adder/full_adder.v
vlog -reportprogress 300 -work work ${base}/Adder/which_adder.v
vlog -reportprogress 300 -work work ${base}/Adder/adder_block.v
vsim -gui work.multiplier_modified_booth_testbench
add wave -position insertpoint sim:/multiplier_modified_booth_testbench/*
run -all