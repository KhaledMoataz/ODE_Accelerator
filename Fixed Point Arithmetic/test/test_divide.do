vsim -gui work.division
add wave -position end  sim:/division/*
force -freeze sim:/division/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/division/start 1 0
force -freeze sim:/division/dividen 1100010111111001
force -freeze sim:/division/divisor 0000000110000000
run
force -freeze sim:/division/start 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/division/start 1 0
force -freeze sim:/division/dividen 0000110001100011
force -freeze sim:/division/divisor 0000000110000000
run
force -freeze sim:/division/start 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run

