#path to ram module
set path {

};

set idx {

};

set contents {

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
