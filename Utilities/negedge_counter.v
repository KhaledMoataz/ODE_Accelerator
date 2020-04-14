module NegEdgeCounter #(parameter WORD_SIZE = 32, parameter IS_DOWN = 1)
(
input clk, rst, load, trigger,
input [WORD_SIZE-1:0] in, 
output reg [WORD_SIZE-1:0] count
);
	// TODO: Check if implementations using +/- 1 is okay
	always @ (negedge clk)
	begin
		if (rst)
			count <= 'b0;
		else if(load)
			count <= in;
		else if(trigger)
			if (IS_DOWN)
				count <= count-1;
			else
				count <= count+1;
	end
endmodule