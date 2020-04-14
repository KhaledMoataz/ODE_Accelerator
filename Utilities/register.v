module Register #(parameter WORD_SIZE = 32)
(
input clk, rst, load, 
input [WORD_SIZE-1:0] data_in, 
output reg [WORD_SIZE-1:0] data_out
);
	always @ (posedge clk, rst)
	begin
		if(rst)
			data_out <= 'b0;
		else if(load)
			data_out <= data_in;
	end
endmodule
  
 