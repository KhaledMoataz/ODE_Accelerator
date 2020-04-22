vsim -gui work.division
add wave -position end  sim:/division/clk
add wave -position end  sim:/division/start
add wave -position end  sim:/division/rst
add wave -position end  sim:/division/dividen
add wave -position end  sim:/division/divisor
add wave -position end  sim:/division/result
add wave -position end  sim:/division/overflow_flag
add wave -position end  sim:/division/finish
add wave -position end  sim:/division/start_buffer
add wave -position end  sim:/division/working
add wave -position end  sim:/division/rem
add wave -position end  sim:/division/add_result
add wave -position end  sim:/division/B
add wave -position end  sim:/division/sign
add wave -position end  sim:/division/f
add wave -position end  sim:/division/counter
add wave -position end  sim:/division/counter_new_value
add wave -position end  sim:/division/counter_finish
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

