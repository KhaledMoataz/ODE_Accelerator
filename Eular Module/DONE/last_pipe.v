module LAST_PIPE  #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16)
(
 input rst,
 input clk,
 input start_mul,
 input [DATA_SIZE-1:0] data_pipe1,
 input [DATA_SIZE-1:0] data_pipe2,
 input [DATA_SIZE-1:0] h_step,
//  inout [DATA_SIZE-1:0] result,
 input first_time,
 output carry_out,
 output overflow_flag,
 output negative
);

wire carry_in = 1'b0;
wire [DATA_SIZE-1:0] result_add;
wire [DATA_SIZE-1:0] result_mul;
wire done_mul;

wire [ADD_SIZE-1:0] pc_answer;
wire [ADD_SIZE-1:0] inc_pc_in;

carry_select_adder add(data_pipe1,data_pipe2,carry_in,result_add,carry_out,overflow_flag,negative);

multiplier_modified_booth multiplier(clk, rst, result_add, h_step, start_mul, result_mul, overflow_flag, done_mul);


incrementor #(ADD_SIZE) inc_pc(inc_pc_in, pc_answer);
Register #(ADD_SIZE) pc_write(clk, rst, done_mul, pc_answer, inc_pc_in);

ass

// last parameter data2out is not connected (not needed)
// if not synthesizable add dummy wire
RAM #(ADD_SIZE,DATA_SIZE) ram(~clk, rst, done_mul, pc_answer, 1'b0, result_mul); 


endmodule


// comments:

// - we have to reset register pc at first to make pc has initial value
// - pc start at postion = intial + 1 ( output of incrementor)
// - in order to make ram write at the same cycle when multiplication result is done 
// we have to make ram works with falling edge.
// - ram must be 1 entity