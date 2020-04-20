vsim -gui work.interpolationTestMain
add wave -position insertpoint sim:/interpolationTestMain/*
force -freeze sim:/interpolationTestMain/start_sg 0 0
force -freeze sim:/interpolationTestMain/alert_sg 0 0
force -freeze sim:/interpolationTestMain/update_sg 0 0
force -freeze sim:/interpolationTestMain/init_sg 0 0
force -freeze sim:/interpolationTestMain/rst 0 0
force -freeze sim:/interpolationTestMain/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/interpolationTestMain/tk_port 0000000010000000 0
force -freeze sim:/interpolationTestMain/uk_port 0000000000011110 0
force -freeze sim:/interpolationTestMain/rst 1 0
run
force -freeze sim:/interpolationTestMain/rst 0 0
mem load -i {D:/CMP 2021/VLSI/project/ODE_Accelerator/Interpolation Module/memoryDataForInterploation.mem} /interpolationTestMain/ram_module/MEM
run
force -freeze sim:/interpolationTestMain/init_sg 1 0
run
force -freeze sim:/interpolationTestMain/init_sg 0 0
run
run
run
force -freeze sim:/interpolationTestMain/alert_sg 1 0
run
force -freeze sim:/interpolationTestMain/alert_sg 0 0
run
force -freeze sim:/interpolationTestMain/start_sg 1 0
run
force -freeze sim:/interpolationTestMain/start_sg 0 0
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
run
run
run
run
run
run
force -freeze sim:/interpolationTestMain/update_sg 1 0
force -freeze sim:/interpolationTestMain/tk_port 0000000110000000 0
force -freeze sim:/interpolationTestMain/uk_port 0000000000100010 0
run
force -freeze sim:/interpolationTestMain/update_sg 0 0
run
run
force -freeze sim:/interpolationTestMain/alert_sg 1 0
run
force -freeze sim:/interpolationTestMain/alert_sg 0 0
run
force -freeze sim:/interpolationTestMain/start_sg 1 0
run
force -freeze sim:/interpolationTestMain/start_sg 0 0
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
run
run
run
run
run
run