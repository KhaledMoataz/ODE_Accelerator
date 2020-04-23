module JOIN_PIPE  #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16)
(
 input rst,
 input clk,
 input data_ready1,
 input data_ready2,
 input [DATA_SIZE-1:0] data_pipe1,
 input [DATA_SIZE-1:0] data_pipe2,
 input [DATA_SIZE-1:0] h_step,
 input clear,
 
 output return_default_state,
 output overflow_flag,
 output finished

);


          /////////// dummy  ////////////
wire carry_in = 1'b0;
wire negative;
wire carry_out;
        /////////////////////////////////
wire [DATA_SIZE-1:0] result_add;
wire [DATA_SIZE-1:0] result_mul;
wire done_mul;

wire [ADD_SIZE-1:0] pc_answer;
wire [ADD_SIZE-1:0] inc_pc_in;

reg finished_mul;

assign finished = finished_mul;

assign return_default_state = data_ready1 & data_ready2;
wire start_mul = return_default_state;

adder add(data_pipe1,data_pipe2,carry_in,result_add,carry_out,overflow_flag,negative);

multiplier multiplier_(clk, rst|clear, result_add, h_step, start_mul, result_mul, overflow_flag, done_mul);


incrementor #(ADD_SIZE) inc_pc(inc_pc_in, pc_answer);
Register #(ADD_SIZE) pc_write(clk, rst|clear, finished_mul, pc_answer, inc_pc_in);


// last parameter data2out is not connected (not needed)
// if not synthesizable add dummy wire
RAM #(ADD_SIZE,DATA_SIZE) ram(~clk, rst, finished_mul, inc_pc_in, 1'b0, result_mul); 

 always @(posedge done_mul) begin
	finished_mul <= 1'b1;
 end
 
 always @(posedge clk) begin
	if (rst) begin 
		finished_mul <= 1'b0;
	end
	else if (finished_mul) begin
		finished_mul <= 1'b0;
	end
 end
 

endmodule


// comments:

// - we have to reset register pc at first to make pc has initial value
// - pc start at postion = intial + 1 ( output of incrementor)
// - in order to make ram write at the same cycle when multiplication result is done 
// we have to make ram works with falling edge.
// - ram must be 1 entity