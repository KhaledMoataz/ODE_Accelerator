vdel -all -lib work > nul
vlib work
vlog -reportprogress 300 -work work "Step Module/post-synthesis/StepModule.syn.v"
vlog -reportprogress 300 -work work "Step Module/test/TestStepModule.v"
vlog -reportprogress 300 -work work "RAM/src/RAM.v"
vlog -reportprogress 300 -work work "Synthesis/NangateOpenCellLibrary.v"
