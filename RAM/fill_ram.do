set idx {

};

set contents {

};

if {$idx ne {}} {
	foreach i $idx word $contents {
		force sim:/RAM/MEM[$i] $word;
	}
} else {
	set i 0;
	foreach word $contents {
		force sim:/RAM/MEM[$i] $word;
		incr i;
	}
}
