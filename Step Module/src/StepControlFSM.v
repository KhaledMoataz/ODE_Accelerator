module StepControlFSM 
(
input clk, rst, init, start, multiplier_done, divider_done, adder_overflow, multiplier_overflow, 
	  divider_overflow,adder_negative_flag, counter_zero,
output error_load, n_load, tolerance_load, memory_read, step_load, adder_is_add, error_clear, 
		done, proceed, multiplier_start, divider_start, address_load, loop_counter_load, 
		decrement_counter, increment_addresses, result_inputs_selector, result_load, error_failure,
output [1:0] adder_inputs_selector, multiplier_inputs_selector, address_inputs_selector, 
	    step_inputs_selector
);
	reg [4:0] current_state;
	reg is_negative;
	wire calculation_error;

	//States
	localparam IDLE = 5'd0, READ_N_L = 5'd1, READ_H = 5'd2, DONE_INIT = 5'd3, INIT_ERROR_CALC = 5'd4,
			   SUB_X  = 5'd6, ACCUMULATE_ERROR = 5'd7, IS_TOLERABLE = 5'd8, DONE_PROCEED = 5'd9,
			   INIT_CALC_STEP1 = 5'd10, WAIT_FOR_CALC_STEP1 = 5'd11,
			   INIT_CALC_STEP2 = 5'd12, WAIT_FOR_CALC_STEP2 = 5'd13,
			   INIT_CALC_STEP3 = 5'd14, WAIT_FOR_CALC_STEP3 = 5'd15,
			   INIT_CALC_STEP4 = 5'd16, WAIT_FOR_CALC_STEP4 = 5'd17,
			   DONE_NO_PROCEED = 5'd18, ERROR = 5'd19;

	assign calculation_error = (adder_overflow & 
							   (current_state == SUB_X | 
							    current_state == ACCUMULATE_ERROR | 
								current_state == IS_TOLERABLE)) |
							   (multiplier_overflow &
							   (current_state == WAIT_FOR_CALC_STEP1 |
							    current_state == WAIT_FOR_CALC_STEP2 |
								current_state == WAIT_FOR_CALC_STEP3)) |
							   (divider_overflow &
							    (current_state == WAIT_FOR_CALC_STEP4));
	
	// Control signals
	assign error_load = current_state == ACCUMULATE_ERROR;
	assign decrement_counter = current_state == ACCUMULATE_ERROR;
	assign increment_addresses = current_state == ACCUMULATE_ERROR;
	assign n_load = current_state == READ_N_L;
	assign tolerance_load = current_state == READ_N_L;
	assign memory_read = current_state == READ_H | current_state == READ_N_L | 
						 current_state == INIT_ERROR_CALC | current_state == ACCUMULATE_ERROR;
	assign step_load = (current_state == WAIT_FOR_CALC_STEP4 & divider_done) | 
						current_state == READ_H;
	assign adder_is_add = current_state == ACCUMULATE_ERROR ? !is_negative : 0;
	assign error_clear = current_state == INIT_ERROR_CALC;
	assign done = current_state == DONE_INIT | current_state == DONE_NO_PROCEED | 
				  current_state == DONE_PROCEED;
	assign proceed = current_state == DONE_PROCEED;
	assign multiplier_start = current_state == INIT_CALC_STEP1 | current_state == INIT_CALC_STEP2 | 
							  current_state == INIT_CALC_STEP3;
	assign divider_start = current_state == INIT_CALC_STEP4;
	assign loop_counter_load = current_state == INIT_ERROR_CALC;
	assign address_load = current_state == READ_H | current_state == READ_N_L | 
						  current_state == INIT_ERROR_CALC;
	assign result_load = ((current_state == WAIT_FOR_CALC_STEP1 | current_state == WAIT_FOR_CALC_STEP2 | 
						   current_state == WAIT_FOR_CALC_STEP3) & multiplier_done) |
						   current_state == SUB_X  | current_state == IS_TOLERABLE;
	assign error_failure = current_state == ERROR;

	
	// Inputs selectors
	assign adder_inputs_selector = current_state == SUB_X  ? 
								   2'b00 : (current_state == ACCUMULATE_ERROR ? 2'b01 : 2'b10);
	assign multiplier_inputs_selector = current_state == INIT_CALC_STEP1 ? 
										2'b00 : (current_state == INIT_CALC_STEP2 ? 2'b01 : 2'b10);
	assign address_inputs_selector = current_state == READ_N_L ? 
									 2'b00 : (current_state == READ_H ? 2'b01 : 2'b10);
	assign step_inputs_selector = current_state == READ_H ? 
								  2'b00 : (current_state == WAIT_FOR_CALC_STEP4 ? 2'b01 : 2'b10);
	assign result_inputs_selector = current_state == WAIT_FOR_CALC_STEP1 | 
									current_state == WAIT_FOR_CALC_STEP2 | 
									current_state == WAIT_FOR_CALC_STEP3;
	
			
	// State transitions
	always @(posedge clk) 
	begin
		is_negative <= adder_negative_flag;
		if(rst)
			current_state <= IDLE;
		else if(calculation_error)
			current_state <= ERROR;
		else
		begin
			case(current_state)
				IDLE: 
				begin
					if(init)
						current_state <= READ_N_L;
				end
				READ_N_L:
				begin
					current_state <= READ_H;
				end
				READ_H:
				begin
					current_state <= DONE_INIT;
				end
				DONE_INIT:
				begin
					if(start)
						current_state <= INIT_ERROR_CALC;
				end
				INIT_ERROR_CALC:
				begin
					current_state <= SUB_X; 
				end
				SUB_X: 
				begin
					current_state <= ACCUMULATE_ERROR;
				end
				ACCUMULATE_ERROR:
				begin
					if(counter_zero)
						current_state <= IS_TOLERABLE;
					else
						current_state <= SUB_X; 
				end
				IS_TOLERABLE:
				begin
					if(adder_negative_flag)
						current_state <= DONE_PROCEED;
					else
						current_state <= INIT_CALC_STEP1;
				end
				DONE_PROCEED:
				begin
					if(start)
						current_state <= INIT_ERROR_CALC;
				end
				INIT_CALC_STEP1:
				begin
					current_state <= WAIT_FOR_CALC_STEP1;
				end
				WAIT_FOR_CALC_STEP1:
				begin
					if(multiplier_done)
						current_state <= INIT_CALC_STEP2;
				end
				INIT_CALC_STEP2:
				begin
					current_state <= WAIT_FOR_CALC_STEP2;
				end
				WAIT_FOR_CALC_STEP2:
				begin
					if(multiplier_done)
						current_state <= INIT_CALC_STEP3;
				end
				INIT_CALC_STEP3:
				begin
					current_state <= WAIT_FOR_CALC_STEP3;
				end
				WAIT_FOR_CALC_STEP3:
				begin
					if(multiplier_done)
						current_state <= INIT_CALC_STEP4;
				end
				INIT_CALC_STEP4:
				begin
					current_state <= WAIT_FOR_CALC_STEP4;
				end
				WAIT_FOR_CALC_STEP4:
				begin
					if(divider_done)
						current_state <= DONE_NO_PROCEED;
				end
				DONE_NO_PROCEED:
				begin
					if(start)
						current_state <= INIT_ERROR_CALC;
				end
				ERROR:
				begin
					if(init)
						current_state <= READ_N_L;
					else if(start)
						current_state <= INIT_ERROR_CALC;
				end
			endcase
		end
	end
endmodule