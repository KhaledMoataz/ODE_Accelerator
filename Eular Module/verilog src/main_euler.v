module Main_Euler #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16, parameter MAX_DIM = 6)
(
input clk,
input rst,
input start,
input[DATA_SIZE-1:0] h_step,
output reg finish
);

reg [MAX_DIM-1:0] shape1_0 = 6'b10, shape1_1 = 6'b10, shape2_0 = 6'b10, shape2_1 = 6'b11;

wire return_default_state, data_ready1, data_ready2, overflow1, overflow2, overflow3;
wire [DATA_SIZE-1:0] data1, data2;
// change when add count rows
reg FINAL_DONE = 0;
Pipeline #(ADD_SIZE, DATA_SIZE, MAX_DIM) pipeline1(clk, rst, start, FINAL_DONE, return_default_state, shape1_0, shape1_1, data_ready1, data1, overflow1);
Pipeline #(ADD_SIZE, DATA_SIZE, MAX_DIM) pipeline2(clk, rst, start, FINAL_DONE, return_default_state, shape2_0, shape2_1, data_ready2, data2, overflow2);

JOIN_PIPE  #(ADD_SIZE, DATA_SIZE) join_pipe(rst, clk, data_ready1, data_ready2, data1, data2, h_step, return_default_state, overflow3);

endmodule