module TestStepModule
(
input clk, rst, init, start, read_step, 
input [15:0] step_in, 
input [3:0] x0_address, x1_address,
output done, proceed, error,
output [15:0] step_out
);

	wire [3:0] memory_address1, memory_address2;
	wire [15:0] memory_data1, memory_data2;
	
	StepModule #(.WORD_SIZE(16), .ADDRESS_WIDTH(4)) step
	(clk, rst, init, start, read_step, step_in, x0_address, x1_address, done, proceed, error, memory_address1, memory_address2, memory_data1, memory_data2, step_out);
	
	RAM #(.WORD_SIZE(16), .ADDRESS_SIZE(4)) ram (clk, rst, 1'b0, memory_address1, memory_address2, memory_data1, memory_data2);
	
endmodule

