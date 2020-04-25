source cpu_procs.tcl

set clk 100
set mem_width 32
set max_len 6

set num_clks 1000
set half_clk [expr {$clk >> 1}]
if {$mem_width eq 16} {
	set max_len 5
}

set input_file {sample_input.txt}

# read input
set fp [open $input_file "r"]
set input_data [read $fp]
close $fp

puts $input_data
set input_data [split $input_data "\n"]

# parse input
foreach line $input_data {
	# remove excess characters from lines
	set data [join [string trim [join [split $line {[,:\"]{}}]]]]
	puts $data
	
	# get the name of the data
	set test [string range $data 0 [expr {[string first { } $data] -1}]]
	switch $test {
		N {
			set N [string range $data [expr {[string first { } $data] + 1}] end]
		}
		M {
			set M [string range $data [expr {[string first { } $data] + 1}] end]
		}
		Mode {
			set Mode [string range $data [expr {[string first { } $data] + 1}] end]
		}
		H {
			set H [string range $data [expr {[string first { } $data] + 1}] end]
		}
		Err {
			set Err [string range $data [expr {[string first { } $data] + 1}] end]
		}
		Fixedpoint {
			set Fixedpoint [string range $data [expr {[string first { } $data] + 1}] end]
		}
		Count {
			set Count [string range $data [expr {[string first { } $data] + 1}] end]
		}
		A {
			set A [string range $data [expr {[string first { } $data] + 1}] end]
		}
		B {
			set B [string range $data [expr {[string first { } $data] + 1}] end]
		}
		X0 {
			set X0 [string range $data [expr {[string first { } $data] + 1}] end]
		}
		T {
			set T [string range $data [expr {[string first { } $data] + 1}] end]
		}
		U0 {
			set U0 [string range $data [expr {[string first { } $data] + 1}] end]
		}
		Us {
			set Us [string range $data [expr {[string first { } $data] + 1}] end]
		}
		default {
		}
	}
}

set a_code {}
set a_eob {}
foreach a $A {
	set a_code [concat [dec2fixedp $a $mem_width]$a_code]
	set a_eob [concat $a_eob 0]
}
set a_eob [string replace $a_eob end end {1}]

set b_code {}
set b_eob {}
foreach b $B {
	set b_code [concat [dec2fixedp $b $mem_width]$b_code]
	set b_eob [concat $b_eob 0]
}
set b_eob [string replace $b_eob end end {1}]

# Us : M T U0 Us
set Us_code {}
#change to int and change size
	set Us_code [concat [dec2fixedp $M $mem_width]$Us_code]
set u_eob {0}
foreach t $T {
	set Us_code [concat [dec2fixedp $t $mem_width]$Us_code]
	set u_eob [concat $u_eob {0}]
}
set u_eob [string replace $u_eob end end {1}]
foreach u $U0 {
	set Us_code [concat [dec2fixedp $u $mem_width]$Us_code]
	set u_eob [concat $u_eob {0}]
}
foreach u $Us {
	set Us_code [concat [dec2fixedp $u $mem_width]$Us_code]
	set u_eob [concat $u_eob {0}]
}
set u_eob [string replace $u_eob end end {1}]

# others order : N M Mode Fixedpoint Count Err H X0
set others_eob {}
#change to int and change size
	set others_code [concat [dec2fixedp $N $mem_width]]
	set others_code [concat [dec2fixedp $M $mem_width]$others_code]
	set others_code [concat $Mode$others_code]
	set others_code [concat $Fixedpoint$others_code]
	set others_code [concat [string repeat {0} [expr {$mem_width -2}]]$others_code]
	set others_code [concat [dec2fixedp $Count $mem_width]$others_code]
set others_code [concat [dec2fixedp $H $mem_width]$others_code]
set others_code [concat [dec2fixedp $Err $mem_width]$others_code]
foreach x $X0 {
	set others_code [concat [dec2fixedp $x $mem_width]$others_code]
	set others_eob [concat $others_eob {0}]
}
set others_eob [string replace $others_eob end end {1}]

# encode
set a_encoded [encode $a_code $max_len]
set b_encoded [encode $b_code $max_len]
set Us_encoded [encode $Us_code $max_len]
set others_encoded [encode $others_code $max_len]

# logs
# write raw output (without compression)
set fp [open "output_raw.txt" "w+"]
puts $fp $a_code
puts $fp $b_code
puts $fp $Us_code
puts $fp $others_code
close $fp

puts {}
# write encoded output
set fp [open "output_compressed.txt" "w+"]
puts $fp a_encoded
puts $fp b_encoded
puts $fp Us_encoded
puts $fp others_encoded
close $fp

# write to logs file
set fp [open "output_logs.txt" "w+"]

set a_test {}
set a_i 0
set b_test {}
set b_i 0
set u_test {}
set u_i 0
set others_test {}
set o_i 0

# start the communication with the chip
force clk 0 0, 1 $half_clk ps -r $clk
force reset 0
run $clk
force reset 1
run $half_clk
force reset 0
force int 1
force process 0
force eob 0
run $half_clk
force int 0
foreach a $a_encoded b $b_encoded u $Us_encoded o $others_encoded ea $a_eob eb $b_eob eu $u_eob eo $others_eob {
	# fix data if empty
	if {$a eq {}} {
		set a [string repeat {0} $max_len]
	}
	if {$b eq {}} {
		set b [string repeat {0} $max_len]
	}
	if {$u eq {}} {
		set u [string repeat {0} $max_len]
	}
	if {$o eq {}} {
		set o [string repeat {0} $max_len]
	}
	# load data
	force data 0${o}0${u}0${b}0${a}
	# a cycle
	force eob $ea
	run $clk
	
	# save values to be stored in ram to compare later
	if {[examine d1/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {A:}
		puts $fp [concat {expected output:} [string range $a_code end-$start end-$finish]]
		puts $fp [concat {actual output:} [examine d1/out]]
		incr a_i
	}
	if {[examine d2/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {B:}
		puts $fp [concat {expected output:} [string range $b_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d2/out]]
		incr b_i
	}
	if {[examine d3/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {U:}
		puts $fp [concat {expected output:} [string range $Us_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d3/out]]
		incr u_i
	}
	if {[examine d4/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {Control signals:}
		puts $fp [concat {expected output:} [string range $others_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d4/out]]
		incr o_i
	}
	#noforce data
	
	# process data
	force process 1
	# b cycle
	force eob $eb
	run $clk
	# save values to be stored in ram to compare later
	if {[examine d1/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {A:}
		puts $fp [concat {expected output:} [string range $a_code end-$start end-$finish]]
		puts $fp [concat {actual output:} [examine d1/out]]
		incr a_i
	}
	if {[examine d2/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {B:}
		puts $fp [concat {expected output:} [string range $b_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d2/out]]
		incr b_i
	}
	if {[examine d3/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {U:}
		puts $fp [concat {expected output:} [string range $Us_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d3/out]]
		incr u_i
	}
	if {[examine d4/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {Control signals:}
		puts $fp [concat {expected output:} [string range $others_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d4/out]]
		incr o_i
	}
	
	# u cycle
	force eob $eu
	run $clk
	# save values to be stored in ram to compare later
	if {[examine d1/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {A:}
		puts $fp [concat {expected output:} [string range $a_code end-$start end-$finish]]
		puts $fp [concat {actual output:} [examine d1/out]]
		incr a_i
	}
	if {[examine d2/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {B:}
		puts $fp [concat {expected output:} [string range $b_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d2/out]]
		incr b_i
	}
	if {[examine d3/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {U:}
		puts $fp [concat {expected output:} [string range $Us_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d3/out]]
		incr u_i
	}
	if {[examine d4/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {Control signals:}
		puts $fp [concat {expected output:} [string range $others_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d4/out]]
		incr o_i
	}
	
	# others cycle
	force eob $eo
	run $clk
	# save values to be stored in ram to compare later
	if {[examine d1/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {A:}
		puts $fp [concat {expected output:} [string range $a_code end-$start end-$finish]]
		puts $fp [concat {actual output:} [examine d1/out]]
		incr a_i
	}
	if {[examine d2/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {B:}
		puts $fp [concat {expected output:} [string range $b_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d2/out]]
		incr b_i
	}
	if {[examine d3/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {U:}
		puts $fp [concat {expected output:} [string range $Us_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d3/out]]
		incr u_i
	}
	if {[examine d4/store] eq 1} {
		set start [expr {$mem_width * ($b_i + 1)}]
		set finish [expr {$mem_width * $b_i}]
		puts $fp {Control signals:}
		puts $fp [concat {expected output:} [string range $others_code end-$start end-$finish]]
		puts $fp [concat {acutal output:} [examine d4/out]]
		incr o_i
	}
	
}
close $fp

#if {$a_code eq $a_test} {
#	puts {A is stored correctly}
#} else {
#	puts {A was NOT stored correctly}
#}
#if {$b_code eq $b_test} {
#	puts {B is stored correctly}
#} else {
#	puts {B was NOT stored correctly}
#}
#if {$Us_code eq $u_test} {
#	puts {U is stored correctly}
#} else {
#	puts {U was NOT stored correctly}
#}
#if {$others_code eq $others_test} {
#	puts {Control signals are stored correctly}
#} else {
#	puts {Control signals were NOT stored correctly}
#}

# wait for calculations

#run [expr {$num_clks * $clk}]
#force ready 1
#set i 0
#set result {}
#while {$i < $N} {
#	set result [concat $result [bin2dec [examine data] $mem_width]]
#}

# write results

#set fp [open "results.txt" "w+"]
#foreach res $result {
#	puts $fp $res
#}
#close $fp
