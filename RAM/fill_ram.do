
proc fill_ram {path contents {idx {}}} {
	if {[string first {/MEM} $path] eq -1} {
		set path [concat $path/MEM]
	}
	set contents [join [split $contents {, }] { }]
	set idx [join [split $idx {, }] { }]
	
	if {$idx ne {}} {
		foreach i $idx word $contents {
			if {i eq {}} {
				puts {content size larger than idx size}
			} elseif {word eq {}} {
				puts {idx size larger than content size}
			} else {
				force $path\[$i\] $word
				noforce $path\[$i\]
			}
		}
	} else {
		set i 0
		foreach word $contents {
			force $path\[$i\] $word
				noforce $path\[$i\]
			incr i
		}
	}
}
