vsim -gui work.TestStepModule

add wave step/*
add wave step/controlFSM/current_state
add wave ram/MEM

force clk 1 0, 0 50 -r 100
force rst 1
force init 0
force start 0
run 100

force rst 0
run 100

mem load -i "Step Module/test/memory_data.mem" /ram/MEM
run 100

force init 1
run 100
force init 0
run 4000

force start 1
force x0_address 0
force x1_address 10#4
run 100

force start 0
run 2000

