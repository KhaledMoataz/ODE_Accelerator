module acc_stage #(parameter DATA_SIZE)
(
input clk, 
input rst,
input rst_sync,
input done_mul,
input[DATA_SIZE-1:0] data,
output[DATA_SIZE-1:0] out_data,
output overflow
);

wire rst_new;
PosEdgeDFF delay_cycle(clk, rst, rst_sync, 1'b1, rst_new);
ACCUMULATOR_EULAR #(DATA_SIZE) accumulator(clk, rst_new, rst, data, out_data, overflow);

endmodule
