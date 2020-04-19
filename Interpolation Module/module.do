vsim -gui work.InterpolationModule
add wave -position insertpoint sim:/InterpolationModule/*
force -freeze sim:/InterpolationModule/start_sg 0 0
force -freeze sim:/InterpolationModule/alert_sg 0 0
force -freeze sim:/InterpolationModule/update_sg 0 0
force -freeze sim:/InterpolationModule/init_sg 1 0
force -freeze sim:/InterpolationModule/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/InterpolationModule/rst 1 0
force -freeze sim:/InterpolationModule/alert_sg 0 0
force -freeze sim:/InterpolationModule/init_sg 0 0
force -freeze sim:/InterpolationModule/tk_port 0000000000000000 0
force -freeze sim:/InterpolationModule/ram_data1 0000000000000000 0
force -freeze sim:/InterpolationModule/ram_data2 0000000000000000 0
run
force -freeze sim:/InterpolationModule/rst 0 0
force -freeze sim:/InterpolationModule/init_sg 1 0
run
force -freeze sim:/InterpolationModule/init_sg 0 0
run
run
force -freeze sim:/InterpolationModule/ram_data1 0000000000000001 0
run
run
#till here for testing init
force -freeze sim:/InterpolationModule/tk_port 0000000000000000 0
force -freeze sim:/InterpolationModule/uk_port 0000000000011110 0
force -freeze sim:/InterpolationModule/alert_sg 1 0
run
force -freeze sim:/InterpolationModule/alert_sg 0 0
run
force -freeze sim:/InterpolationModule/tk_port 0000000000000010 0
force -freeze sim:/InterpolationModule/alert_sg 1 0
run
force -freeze sim:/InterpolationModule/alert_sg 0 0
run
force -freeze sim:/InterpolationModule/update_sg 1 0
force -freeze sim:/InterpolationModule/ram_data1 0000000000000011 0
run
run
run
force -freeze sim:/InterpolationModule/update_sg 0 0
run
run
run
run
run
force -freeze sim:/InterpolationModule/start_sg 1 0
run
force -freeze sim:/InterpolationModule/start_sg 0 0
force -freeze sim:/InterpolationModule/ram_data1 0000000000000001 0
run
#now at Start2

#################################

vsim -gui work.InterpolationModule
add wave -position insertpoint sim:/InterpolationModule/*
force -freeze sim:/InterpolationModule/start_sg 0 0
force -freeze sim:/InterpolationModule/alert_sg 0 0
force -freeze sim:/InterpolationModule/update_sg 0 0
force -freeze sim:/InterpolationModule/init_sg 1 0
force -freeze sim:/InterpolationModule/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/InterpolationModule/rst 1 0
force -freeze sim:/InterpolationModule/alert_sg 0 0
force -freeze sim:/InterpolationModule/init_sg 0 0
force -freeze sim:/InterpolationModule/tk_port 0000000000000000 0
force -freeze sim:/InterpolationModule/ram_data1 0000000000000000 0
force -freeze sim:/InterpolationModule/ram_data2 0000000000000000 0
run
force -freeze sim:/InterpolationModule/rst 0 0
force -freeze sim:/InterpolationModule/init_sg 1 0
run
force -freeze sim:/InterpolationModule/init_sg 0 0
run
run
force -freeze sim:/InterpolationModule/ram_data1 0000000000000001 0
run
run
#till here for testing init
force -freeze sim:/InterpolationModule/tk_port 0000000000000000 0
force -freeze sim:/InterpolationModule/uk_port 0000000000011110 0
force -freeze sim:/InterpolationModule/alert_sg 1 0
run
force -freeze sim:/InterpolationModule/alert_sg 0 0
run
force -freeze sim:/InterpolationModule/tk_port 0000000000000010 0
force -freeze sim:/InterpolationModule/alert_sg 1 0
run
force -freeze sim:/InterpolationModule/alert_sg 0 0
run
force -freeze sim:/InterpolationModule/update_sg 1 0
force -freeze sim:/InterpolationModule/ram_data1 0000000000000011 0
run
run
run
force -freeze sim:/InterpolationModule/update_sg 0 0
run
run
run
run
run
force -freeze sim:/InterpolationModule/start_sg 1 0
run
force -freeze sim:/InterpolationModule/start_sg 0 0
force -freeze sim:/InterpolationModule/ram_data1 0000000010000000 0
run
#now at Start2
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/InterpolationModule/ram_data2 0000000000000010 0
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/InterpolationModule/m_is_zero 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/InterpolationModule/m_is_zero 1 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
