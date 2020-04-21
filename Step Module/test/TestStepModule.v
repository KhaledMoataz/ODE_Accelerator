module TestStepModule #(parameter WORD_SIZE = 16, ADDRESS_SIZE = 16)
(
input clk, rst, init, start, read_step, 
input [WORD_SIZE-1:0] step_in, 
input [ADDRESS_SIZE-1:0] x0_address, x1_address,
output done, proceed, error,
output [WORD_SIZE-1:0] step_out
);
	wire [ADDRESS_SIZE-1:0] memory_address1, memory_address2;
	wire [WORD_SIZE-1:0] memory_data1, memory_data2;
	wire write_enable;
	
	StepModule #(.WORD_SIZE(WORD_SIZE), .ADDRESS_WIDTH(ADDRESS_SIZE)) step
	(clk, rst, init, start, read_step, step_in, x0_address, x1_address, done, proceed,
	 error, memory_address1, memory_address2, memory_data1, memory_data2, step_out);
	
	RAM #(.WORD_SIZE(WORD_SIZE), .ADDRESS_SIZE(ADDRESS_SIZE)) ram (clk, rst, write_enable, memory_address1, 
												  memory_address2, memory_data1, memory_data2);
	
endmodule

