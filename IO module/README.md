# IO Module

## Schematic Desgin
![](Capture.JPG)

## Run Module
Make sure that your base directory is ODE_Accelerator. Then, run the following commands:
1. Run CPU simulation
  - source CPU/CPU.tcl
	- The clock cycle time and input data file should be set.
	- It produces 3 output files for debugging: 
		- outputs_raw.txt: Contains the bitstream of the original data.
		- outputs_compressed.txt: Contains the encoded bitstream that will be sent to the IO module.
		- outputs_logs.txt: Conatains the data being written to memory for comparison with outputs_raw.txt.
2. Run testbenches For subModules
  - do IO\ module/decompressor.test.tcl
  - Simulate IO\ module/io_fsm_testbench.v
  - Simulate IO\ module/memory_manage_testbench.v
Only error messages are printed in console.
