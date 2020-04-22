module StepModule #(parameter WORD_SIZE = 16, ADDRESS_WIDTH = 16)
(
input clk, rst, init, start, read_step, 
input [WORD_SIZE-1:0] step_in, 
input [ADDRESS_WIDTH-1:0] x0_address, x1_address,
input [WORD_SIZE-1:0] memory_data1, memory_data2,
output done, proceed, error_failure,
output [ADDRESS_WIDTH-1:0] memory_address1, memory_address2, 
output [WORD_SIZE-1:0] step_out
);
	// Constants
	localparam [ADDRESS_WIDTH-1:0] N_ADDRESS = 'd0, TOLERANCE_ADDRESS = 'd1, STEP_ADDRESS = 'd2;
	localparam [WORD_SIZE-1:0] STEP_CALC_CONSTANT = 'b1110011;  // Fixed point representation of 0.9
		
	
	// Wire signals
	wire step_load, n_load, tolerance_load, error_load, increment_addresses, address_load, 
		 memory_read, unused_output, adder_overflow, adder_carry_out, dividend_load,
		 loop_counter_load, error_clear, multiplier_done, divider_done, adder_negative_flag, 
		 counter_zero, adder_is_add, multiplier_overflow, divider_overflow,
		 multiplier_start, divider_start, decrement_counter, result_load;
		 
	wire [1:0] adder_inputs_selector, multiplier_inputs_selector, address_inputs_selector, 
			   step_inputs_selector;
	
	wire [WORD_SIZE-1:0] step_reg_in, error, tolerance, n, x0_data, x1_data, loop_counter, dividend,
						 multiplier_operand1, multiplier_operand2, adder_operand1, adder_operand2, 
						 adder_out, multiplier_out, divider_out, result;
						 
	wire [ADDRESS_WIDTH-1:0] address1, address2;
						 
	
	StepControlFSM controlFSM (clk, rst, init, start, multiplier_done, divider_done,
							   adder_overflow, multiplier_overflow, divider_overflow,
							   adder_negative_flag, counter_zero,			
							   error_load, n_load, tolerance_load, memory_read, step_load, 
							   adder_is_add, error_clear, done,	proceed, multiplier_start, 
							   divider_start, address_load, loop_counter_load, decrement_counter, 
							   increment_addresses, result_load, error_failure, dividend_load, 
							   adder_inputs_selector, multiplier_inputs_selector, 
							   address_inputs_selector, step_inputs_selector);
	
	// Registers 
	Register #(.WORD_SIZE(WORD_SIZE)) step_reg (clk, rst, step_load | read_step, step_reg_in, step_out);
	Register #(.WORD_SIZE(WORD_SIZE)) error_reg (clk, rst | error_clear, error_load, adder_out, error);
	Register #(.WORD_SIZE(WORD_SIZE)) tolerance_reg (clk, rst, tolerance_load, memory_data2, tolerance);
	Register #(.WORD_SIZE(WORD_SIZE)) n_reg (clk, rst, n_load, memory_data1, n);
	Register #(.WORD_SIZE(WORD_SIZE)) data1_reg (clk, rst, memory_read, memory_data1, x0_data);
	Register #(.WORD_SIZE(WORD_SIZE)) data2_reg (clk, rst, memory_read, memory_data2, x1_data);
	Register #(.WORD_SIZE(WORD_SIZE)) result_reg (clk, rst, result_load, adder_out, result);
	Register #(.WORD_SIZE(WORD_SIZE)) dividend_reg (clk, rst, dividend_load, multiplier_out, dividend);
	
	// Address registers (up counters)
	NegEdgeCounter #(.WORD_SIZE(ADDRESS_WIDTH), .IS_DOWN(0)) 
		address1_reg (clk, rst, address_load, increment_addresses, address1, memory_address1);
	NegEdgeCounter #(.WORD_SIZE(ADDRESS_WIDTH), .IS_DOWN(0)) 
		address2_reg (clk, rst, address_load, increment_addresses, address2, memory_address2);
	
	// Loop counter (down counter)
	NegEdgeCounter #(.WORD_SIZE(WORD_SIZE), .IS_DOWN(1)) 
		loop_counter_reg (clk, rst, loop_counter_load, decrement_counter, n, loop_counter);
	assign counter_zero = loop_counter == 'b0;

	//Arithmetic Units
	adder #(.N(WORD_SIZE)) 
		adder (adder_operand1, adder_operand2, ~adder_is_add, adder_out, adder_carry_out, 
			   adder_overflow, adder_negative_flag);
	multiplier multiplier(clk, rst, multiplier_operand1, multiplier_operand2, 
										 multiplier_start, multiplier_out, multiplier_overflow, 
										 multiplier_done);
	division divider(clk, rst, dividend, error, divider_start, divider_out, divider_overflow, 
					 divider_done);

	
	// Inputs selectors
	assign adder_operand1 = adder_inputs_selector == 2'b00 ? x0_data : error;
	assign adder_operand2 = adder_inputs_selector == 2'b00 ? 
							x1_data : (adder_inputs_selector == 2'b01 ? result : tolerance);
	
	assign multiplier_operand1 = multiplier_inputs_selector == 2'b00 ? step_out : dividend;
	assign multiplier_operand2 = multiplier_inputs_selector == 2'b00 ? 
								 step_out : (multiplier_inputs_selector == 2'b01 ? 
								 			 tolerance : STEP_CALC_CONSTANT);
	
	assign address1 = address_inputs_selector == 2'b00 ? 
					  N_ADDRESS : (address_inputs_selector == 2'b01 ? 
					  			   STEP_ADDRESS : x0_address);
	assign address2 = address_inputs_selector == 2'b00 ? TOLERANCE_ADDRESS : x1_address;
	assign step_reg_in = step_inputs_selector == 2'b00 ? 
						  memory_data1 : (step_inputs_selector == 2'b01 ? divider_out : step_in);

endmodule