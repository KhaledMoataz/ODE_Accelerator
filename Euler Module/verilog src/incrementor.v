module incrementor #(parameter SIZE = 16)
(input[SIZE-1:0] in, output[SIZE-1:0] out);
wire C[SIZE-1:0];
assign C[0] = 1'b1;
assign out[0] = C[0] ^ in[0];
genvar j; 
generate
	for(j = 1; j < SIZE; j = j+1)
	begin : assign_out
		assign C[j] = in[j-1]&C[j-1];
		assign out[j] = C[j]^in[j];
	end
endgenerate
endmodule

