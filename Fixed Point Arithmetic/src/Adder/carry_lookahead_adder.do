vdel -all -lib work > nul
set base "Fixed\ Point\ Arithmetic/src/"
vlib work
vlog -reportprogress 300 -work work ${base}/Adder/adder_testbench.v
vlog -reportprogress 300 -work work ${base}/Adder/carry_lookahead_adder.v
vsim -gui work.adder_testbench
add wave -position insertpoint sim:/adder_testbench/*
run -all