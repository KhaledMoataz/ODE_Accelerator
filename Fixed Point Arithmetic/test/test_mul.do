vsim -gui work.multiplier
add wave -position insertpoint sim:/multiplier/*
#no overflow
force -freeze sim:/multiplier/multiplicand 0000000100000000 0
force -freeze sim:/multiplier/multiplier 1111111011000000 0
run
#overflow
force -freeze sim:/multiplier/multiplier 0000000110000000 0
force -freeze sim:/multiplier/multiplicand 0011001000000000 0
run