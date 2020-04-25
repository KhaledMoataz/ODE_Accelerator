vdel -all -lib work
vlib work

vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Adder/full_adder.v"
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Adder/which_adder.v"
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Adder/adder_block.v"
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Adder/carry_select_adder.v"
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Division/fixed_point_division.v"
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Division/fixed_point_division_testbench.v"

vsim -gui division_testbench
add wave -position end  sim:/division_testbench/*
run -all