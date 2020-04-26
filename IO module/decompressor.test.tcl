vsim -gui work.decompressor
add wave -position insertpoint sim:/decompressor/*



force -freeze sim:/decompressor/clk 0 0
force -freeze sim:/decompressor/reset 1 0
run

force -freeze sim:/decompressor/clk 1 0
force -freeze sim:/decompressor/value 000100 0
force -freeze sim:/decompressor/bit 1 0
force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/reset 0 0

set work [ examine sim:/decompressor/work]

if { $work == 0 } {
	echo "decompressor should start working"
}

run
force -freeze sim:/decompressor/clk 0 0
run
force -freeze sim:/decompressor/start 0 0
force -freeze sim:/decompressor/clk 1 0
run



force -freeze sim:/decompressor/clk 0 0
run



force -freeze sim:/decompressor/value 001000 0
force -freeze sim:/decompressor/bit 0 0
force -freeze sim:/decompressor/clk 1 0

set work [ examine sim:/decompressor/work]

if { $work == 0 } {
	echo "decompressor should start working"
}


run
force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/clk 0 0
run
force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/start 0 0
force -freeze sim:/decompressor/clk 0 0
run


force -freeze sim:/decompressor/clk 1 0
run


force -freeze sim:/decompressor/clk 0 0
run

force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/value 010100 0
force -freeze sim:/decompressor/bit 1 0
force -freeze sim:/decompressor/clk 1 0

run


force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/clk 0 0
run


force -freeze sim:/decompressor/clk 1 0
run


set data [ examine -binary sim:/decompressor/out]

if { $data != "11111111111111111111000000001111" } {
	echo "decompressor wrongly decompressed"
}



force -freeze sim:/decompressor/start 0 0
force -freeze sim:/decompressor/clk 0 0
run


force -freeze sim:/decompressor/clk 1 0
run


force -freeze sim:/decompressor/clk 0 0
run

force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/value 101000 0
force -freeze sim:/decompressor/bit 1 0
force -freeze sim:/decompressor/clk 1 0

run


force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/clk 0 0
run


force -freeze sim:/decompressor/clk 1 0
run



force -freeze sim:/decompressor/start 0 0
force -freeze sim:/decompressor/clk 0 0
run



force -freeze sim:/decompressor/clk 1 0
run

force -freeze sim:/decompressor/value 011000 0
force -freeze sim:/decompressor/bit 0 0
force -freeze sim:/decompressor/clk 1 0

run


force -freeze sim:/decompressor/start 1 0
force -freeze sim:/decompressor/clk 0 0
run


force -freeze sim:/decompressor/clk 1 0
run


set data [ examine -binary sim:/decompressor/out]

if { $data != "00000000000000000000000011111111" } {
	echo "decompressor wrongly decompressed"
}



force -freeze sim:/decompressor/start 0 0
force -freeze sim:/decompressor/clk 0 0
run


force -freeze sim:/decompressor/clk 1 0
run


force -freeze sim:/decompressor/clk 0 0
run



