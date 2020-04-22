#!/usr/bin/tclsh

# Parameters
set test_dir "Interpolation Module/Test";
set test_iterations 10
set test_file_name "Interpolation_test_cases.txt"

set ram_sim_path "/interpolationTestMain/ram_module/MEM";



# Open tests file
set tests_file_path $test_dir/$test_file_name; list
set tests_file [open $tests_file_path]; list
set test [read $tests_file]; list
set test [string trim $test]; list
set lines [split $test "\n"]; list

# Parse contents
set m [lindex $lines 0]; list
set U_num [lindex $lines 1]; list
set end_of_ram_content [lindex $lines 2];
set ram_contents [lrange $lines 3 $end_of_ram_content]; list
set outputs [lrange $lines 1+$end_of_ram_content end]; list

# Start simulation, generate clock, and reset
vsim interpolationTestMain
add wave *
force clk 1 0, 0 50 -r 100
force rst 1
force alert_sg 0
force update_sg 0
force start_sg 0
force init_sg 0
run 100
force rst 0

# Fill the RAM with test data
mem load -filldata $ram_contents $ram_sim_path
run 100

# Initialize step module
force init_sg 1
run 100
force init_sg 0
run 200

set done_sg [examine -binary done_sg]; list
set overflow [examine -binary overflow]; list

if { $done_sg == 1 } {
	echo "Interploation module initialized successfully"
} elseif { $overflow == 1 } {
	echo "Interploation Module initialization overflow"
}

# Run test iterations and check outputs
set uk_address 250; list

for { set it 0}  {$it < $U_num} {incr it} {
	# Set Uk and Tk ports values and start
	force uk_port 'd$uk_address
	force tk_port [lindex $outputs $it]
	run 100
	
	force alert_sg 1
	run 100
	force alert_sg 0

	set done_sg [examine -binary done_sg]; list
	set overflow [examine -binary overflow]; list

	if { $done_sg == 1 } {
		echo "Interploation module alert successfully"
	} elseif { $overflow == 1 } {
		echo "Interploation Module alert overflow"
	}

	if {$it != 0} {
		run 100;

		force update_sg 1
		run 100
		force update_sg 0
		run 100
		set done_sg [examine -binary done_sg]; list
		set overflow [examine -binary overflow]; list

		if { $done_sg == 1 } {
			echo "Interploation module Updated successfully"
		} elseif { $overflow == 1 } {
			echo "Interploation Module Updat overflow"
		}
	}

	run 100

	force start_sg 1
	run 100
	force start_sg 0
	run 100
	# stay in while loop until done_sg or overflow
	set cond 0 
	while {$cond < 1 } {
		run 100
		set done_sg [examine -binary done_sg]; list
		set overflow [examine -binary overflow]; list

		if { $done_sg == 1 } {
			echo "Interploation module initialized successfully";
			set cond 1
		} elseif { $overflow == 1 } {
			echo "Step Module initialization overflow";
			set cond 1
		}
	}

	

	# Examine outputs
	set starting_add [expr { $U_num + $it*$m } ];
	set passed 1
	for { set i 0} {$i < $m} {incr i} {
		set index [ expr { $i + $starting_add } ]
		set file_out [lindex $outputs $index ]
		set ram_out [examine {ram_module/MEM[ $uk_address + $i ] } ]
		if {$ram_out == $file_out} {
			echo "Value $i of Uk no. $it is Correct!"
		} else {
			set passed 0
		}
	}

	if {$passed == 0} {
		echo "Uk  no. $it is not correct "
	}

}
