#!/usr/bin/tclsh
source RAM/fill_ram.do

set test_dir "Step Module/test";
set test_iterations 10
set test_file_name "test.txt"
set test_generator_file_name "test_generator"
set ram_sim_path "/TestStepModule/ram/MEM";

# Generate tests file
exec $test_dir/$test_generator_file_name $test_iterations $test_dir/$test_file_name

# Open tests file
set tests_file_path $test_dir/$test_file_name; list
set tests_file [open $tests_file_path]; list
set test [read $tests_file]; list
set test [string trim $test]; list
set lines [split $test "\n"]; list

# Parse contents
lassign [split [lindex $lines 0]] n iterations
set outputs [lrange $lines 1 $iterations]; list
set ram_contents [lrange $lines 1+$iterations end]; list

# Start simulation, generate clock, and reset
vsim TestStepModule
add wave *
add wave step/controlFSM/current_state
force clk 1 0, 0 50 -r 100
force rst 1
force write_enable 0
run 100
force rst 0

# Fill the RAM with test data
mem load -filldata $ram_contents $ram_sim_path
run 100

# Initialize step module
force init 1
run 100
force init 0
run 4000

set done [examine -binary done]; list
set error [examine -binary error]; list

if { $done == 1 } {
	echo "Step Module initialized successfully"
} elseif { $error == 1 } {
	echo "Step Module initialization error"
}

# Run test iterations and check outputs
set x0_address 3; list
set x1_address [expr {$n + 3}]; list

for { set it 0}  {$it < $iterations} {incr it} {
	# Set addresses inputs and start step calculation
	force x0_address 'd$x0_address
	force x1_address 'd$x1_address
	force start 1
	run 100
	force start 0
	run 13000

	# Get expected output
	lassign [lindex $outputs $it] expected_calc_error expected_proceed expected_step_out

	# Examine outputs
	set done [examine -binary done]
	set calc_error [examine -binary error]
	set proceed [examine -binary proceed]
	set step_out [examine -binary step_out]

	# Check if the error flag is up
	if {$calc_error == 1} {
		if {$expected_calc_error == 1} {
			echo "Iteration $it test PASSED!"
		} else {
			echo "Iteration $it test FAILED!"
			echo "Unexpected calculation error"
		}
	# Otherwise check if the outputs match expected output
	} elseif {$done == 1} {
		if {$proceed == $expected_proceed && $step_out == $expected_step_out} {
			echo "Iteration $it test PASSED!";
		} else {
			echo "Iteration $it test FAILED!"
			echo "Expected: proceed = $expected_proceed, step = $expected_step_out"
			echo "Output: proceed = $proceed, step = $step_out"
		}
	} else {
		echo "Failed: step module did not finish within the expected time!"
	}

	# Update the addresses for the next iteration
	incr x0_address [expr {2*$n}]
	incr x1_address [expr {2*$n}]
}

