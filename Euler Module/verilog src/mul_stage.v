module mul_stage #(parameter DATA_SIZE=16)
(
input clk,
input rst,
input start_mul,
input[DATA_SIZE-1:0] data1,
input [DATA_SIZE-1:0] data2,
output done_mul,
output[DATA_SIZE-1:0] out,
output overflow_flag
);

multiplier multiplier_(clk, rst, data1, data2, start_mul, out, overflow_flag, done_mul);

endmodule
