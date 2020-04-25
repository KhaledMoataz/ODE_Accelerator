#namespace import ::tcl::mathfunc::int

proc int {num} {
	set endI [expr {[string first {.} $num] - 1}]
	if {$endI < 0} {
		set endI end
	}
	set res [string range $num 0 $endI]
	if {$res eq {-0}} {
		return {0}
	}
	return $res
}

proc dec2bin {dec {max_len 6}} {
	set bin {}
	
	set i $max_len
	while {$i > 0} {
		set bin [concat [expr {$dec & 1}]$bin]
		set dec [expr {$dec >> 1}]
		incr i -1
	}
	
	return $bin
}

proc dec2fixedp {dec {mem_width 32}} {
	set parts [concat [split $dec "."] {{}}]
	set int {}
	foreach part $parts {
		if {$part eq {}} {
			set part 0
		}
		if {$int eq {}} {
			set dec_int $part
			set int {1}
		} elseif {$int eq {1}} {
			set dec_frac 0.$part
			set int {2}
		}
	}
	
	set bin {}
	
	set i $mem_width
	while {$i > 7} {
		set bin [concat [expr {$dec_int & 1}]$bin]
		set dec_int [expr {$dec_int >> 1}]
		incr i -1
	}
	
	while {$i > 0} {
		set dec_frac [expr {$dec_frac * 2}]
		set bin [concat $bin[expr {$dec_frac >= 1}]]
		set dec_frac [string replace $dec_frac 0 0 0]
		incr i -1
	}
	
	return $bin;
}

proc encode {word {max_len 6}} {
	set code {}
	set i 0
	set cnt 0
	set char "."
	while {$i < [string length $word]} {
		set crnt [string index $word end-$i]
		if {$crnt eq $char} {
			incr cnt
		} elseif {$char ne "."} {
			set code [concat $code $cnt $char]
			set cnt 1
			set char $crnt
		} elseif {$char eq "."} {
			set cnt 1
			set char $crnt
		}
		if {$cnt eq [expr {(1<<$max_len)-1}]} {
			set code [concat $code $cnt]
			set cnt 0
		}
		
		incr i
	}
	if {$cnt ne 0} {
		set code [concat $code $cnt $char]
	}
	
	set bin_code {}
	
	foreach {cnt bit} $code {
		puts -nonewline $cnt
		puts -nonewline {+}
		puts $bit
		set bin_code [concat $bin_code $bit[dec2bin $cnt $max_len]]
	}
	
	return $bin_code
}
