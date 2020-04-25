vdel -all -lib work
vlib work

vlog -reportprogress 300 -work work Synthesis/NangateOpenCellLibrary.v
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/post-synthesis/division_carry_lookahead.v"
vlog -reportprogress 300 -work work "Fixed Point Arithmetic/src/Division/fixed_point_division_testbench.v"

vsim -gui division_testbench
add wave -position end  sim:/division_testbench/*
run -all