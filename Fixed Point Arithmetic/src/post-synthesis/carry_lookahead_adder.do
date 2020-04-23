vdel -all -lib work > nul
set base "Fixed\ Point\ Arithmetic/src/post-synthesis/"
vlib work
vlog -reportprogress 300 -work work Synthesis/NangateOpenCellLibrary.v
vlog -reportprogress 300 -work work ${base}/adder_testbench.v
vlog -reportprogress 300 -work work ${base}/carry_lookahead_adder.v
vsim -gui work.adder_testbench
add wave -position insertpoint sim:/adder_testbench/*
run -all