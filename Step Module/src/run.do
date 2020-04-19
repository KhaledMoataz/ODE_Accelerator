vsim -gui work.StepModule

add wave *
add wave controlFSM/current_state

force clk 1 0, 0 50 -r 100
force rst 1
force init 0
force start 0
run 100

force rst 0
force init 1
run 100

# Read N & L
run 50
force memory_data1 10#5
force memory_data2 10#1
run 100

# Read H
force memory_data1 10#2
run 50

# Init loop
force init 0
force start 1
force x0_address 10#20
force x1_address 10#30
run 100
force start 0

# Read X[0], X[1]
run 50
force memory_data1 10#2
force memory_data2 10#3
run 50