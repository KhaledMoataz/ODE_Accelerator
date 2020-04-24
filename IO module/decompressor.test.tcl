vsim -gui work.decomp2
add wave -position insertpoint sim:/decomp2/*



force -freeze sim:/decomp2/clk 0 0
force -freeze sim:/decomp2/reset 1 0
run

force -freeze sim:/decomp2/clk 1 0
force -freeze sim:/decomp2/value 000100 0
force -freeze sim:/decomp2/bit 1 0
force -freeze sim:/decomp2/start 1 0
force -freeze sim:/decomp2/reset 0 0

set work [ examine sim:/decomp2/work]

if { $work == 0 } {
	echo "decomp2 should start working"
}

run

force -freeze sim:/decomp2/clk 0 0
force -freeze sim:/decomp2/start 0 0
run

force -freeze sim:/decomp2/value 001000 0
force -freeze sim:/decomp2/bit 0 0
force -freeze sim:/decomp2/start 1 0
force -freeze sim:/decomp2/clk 1 0

set work [ examine sim:/decomp2/work]

if { $work == 0 } {
	echo "decomp2 should start working"
}

run

force -freeze sim:/decomp2/clk 0 0
run

force -freeze sim:/decomp2/value 010100 0
force -freeze sim:/decomp2/bit 1 0
force -freeze sim:/decomp2/start 1 0
force -freeze sim:/decomp2/clk 1 0

run

set data [ examine -binary sim:/decomp2/out]

if { $data != "11111111111111111111000000001111" } {
	echo "decompressor wrongly decompressed"
}


force -freeze sim:/decomp2/start 0 0
force -freeze sim:/decomp2/clk 0 0
run

force -freeze sim:/decomp2/clk 1 0
run

force -freeze sim:/decomp2/clk 0 0
run
