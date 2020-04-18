vsim -gui work.InterpolationFSM
# vsim -gui work.InterpolationFSM 
# Start time: 15:16:46 on Apr 17,2020
# Loading work.InterpolationFSM
# vsim -gui work.InterpolationFSM 
# Start time: 14:51:51 on Apr 17,2020
# Loading work.InterpolationFSM
# vsim -gui work.InterpolationFSM 
# Start time: 14:41:53 on Apr 17,2020
# Loading work.InterpolationFSM
# vsim -gui work.InterpolationFSM 
# Start time: 14:34:29 on Apr 17,2020
# Loading work.InterpolationFSM
add wave -position insertpoint sim:/InterpolationFSM/*
force -freeze sim:/InterpolationFSM/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/InterpolationFSM/rst 0 0
force -freeze sim:/InterpolationFSM/init 0 0
force -freeze sim:/InterpolationFSM/alert HiZ 0
force -freeze sim:/InterpolationFSM/update 0 0
force -freeze sim:/InterpolationFSM/start 0 0
force -freeze sim:/InterpolationFSM/multipiler_done HiZ 0
force -freeze sim:/InterpolationFSM/divider_done 0 0
force -freeze sim:/InterpolationFSM/m_is_zero 0 0
force -freeze sim:/InterpolationFSM/alert 0 0
force -freeze sim:/InterpolationFSM/multipiler_done 0 0
run

# Compile of Interpolation_FSM.v was successful.
run
run
force -freeze sim:/InterpolationFSM/alert 1 0
run
force -freeze sim:/InterpolationFSM/alert 0 0
run
force -freeze sim:/InterpolationFSM/update 1 0
run
force -freeze sim:/InterpolationFSM/update 0 0
run
run
force -freeze sim:/InterpolationFSM/init 1 0
run
force -freeze sim:/InterpolationFSM/init 0 0
run
run
run
run
force -freeze sim:/InterpolationFSM/start 1 0
run
force -freeze sim:/InterpolationFSM/start 0 0
run
run
run
run
force -freeze sim:/InterpolationFSM/divider_done 0 0
run
force -freeze sim:/InterpolationFSM/divider_done 1 0
run
force -freeze sim:/InterpolationFSM/divider_done 0 0
run
run
run
run
run
run
run
run
force -freeze sim:/InterpolationFSM/multipiler_done 1 0
run
force -freeze sim:/InterpolationFSM/multipiler_done 0 0
run
run
run
run
run
run
run
run
force -freeze sim:/InterpolationFSM/multipiler_done 1 0
run
force -freeze sim:/InterpolationFSM/multipiler_done 0 0
force -freeze sim:/InterpolationFSM/m_is_zero 1 0
run
force -freeze sim:/InterpolationFSM/m_is_zero 0 0
run
run