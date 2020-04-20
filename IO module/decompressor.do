vsim -gui work.decompressor
add wave -position insertpoint sim:/decompressor/*

force -freeze sim:/decompressor/clk 0 0
force -freeze sim:/decompressor/reset 1 0
run

force -freeze sim:/decompressor/clk 1 0
force -freeze sim:/decompressor/value 110000 0
force -freeze sim:/decompressor/bit 1 0
force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/reset 0 0
run

force -freeze sim:/decompressor/clk 0 0
force -freeze sim:/decompressor/start 0 0
run

force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/clk 0 0
run

force -freeze sim:/decompressor/value 110000 0
force -freeze sim:/decompressor/bit 0 0
force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/clk 0 0
run

force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/clk 0 0
run

