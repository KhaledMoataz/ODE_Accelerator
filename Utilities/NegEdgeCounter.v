module NegEdgeCounter #(parameter WORD_SIZE = 32, parameter IS_DOWN = 0)
(
input clk, rst, load, count_enable,
input [WORD_SIZE-1:0] load_data,
output [WORD_SIZE-1:0] count
);
	wire [WORD_SIZE-1:0] T, T_to_D, FF_inputs;
	
	// Create T and T_to_D for each flip flop
	assign T[0] = count_enable;
	assign T_to_D[0] = T[0] ^ count[0];
	genvar i;
	generate
		for(i = 1; i < WORD_SIZE; i = i+1)
		begin: generate_ff_inputs_count
			if(IS_DOWN)
				assign T[i] = (T[i-1] & !count[i-1]);
			else
				assign T[i] = (T[i-1] & count[i-1]);
			
			assign T_to_D[i] = T[i] ^ count[i];
		end
	endgenerate
	
	// Load or count
	assign FF_inputs = load ? load_data : T_to_D;
	
	// Create all the flip flops
	generate
		for(i = 0; i < WORD_SIZE; i = i+1)
		begin: generate_flipflops
			NegEdgeDFF DFF (clk, rst, FF_inputs[i], 1'b1, count[i]);
		end
	endgenerate
endmodule