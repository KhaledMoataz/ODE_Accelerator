vsim -gui work.adder 
add wave -position insertpoint sim:/adder/*
#no overflow
force -freeze sim:/adder/A 0000001010100000 0
force -freeze sim:/adder/B 0000001010100000 0
run
force -freeze sim:/adder/A 1111110101100000 0
force -freeze sim:/adder/B 1111110101100000 0
run
#overfolw
force -freeze sim:/adder/A 0110010000000000 0
force -freeze sim:/adder/B 0110010000000000 0
run
force -freeze sim:/adder/A 1001110000000000 0
force -freeze sim:/adder/B 1001110000000000 0
run