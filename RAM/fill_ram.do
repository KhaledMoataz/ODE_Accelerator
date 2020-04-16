set path {sim:/testbench.RAM1};

set idx {
1
2
3
4
5
};

set contents {
32'hff
32'hff
32'hff
32'hff
32'hff
};

if {[string first {/MEM} $path] eq -1} {
	set path [concat $path/MEM];
}
if {$idx ne {}} {
	foreach i $idx word $contents {
		force $path[$i] $word;
	}
} else {
	set i 0;
	foreach word $contents {
		force $path[$i] $word;
		incr i;
	}
}
