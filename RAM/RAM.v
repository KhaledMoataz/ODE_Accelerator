module RAM 
	(clk, rst, we1, we2, addr1, addr2, data1, data2);

parameter ADDRESS_SIZE = 4, // (32)
	WORD_SIZE = 32;

input clk, rst, we1, we2; // clock, asynchronous reset, Write Enable (bus 1), Write Enable (bus 2)
input [ADDRESS_SIZE-1:0] addr1, addr2;
inout [WORD_SIZE-1:0] data1, data2;

reg [WORD_SIZE-1:0] MEM [0:(1<<ADDRESS_SIZE)-1];

assign data1 = (~|we1) ? MEM[addr1] : {WORD_SIZE{1'bz}};
assign data2 = (~|we2) ? MEM[addr2] : {WORD_SIZE{1'bz}};

integer i;

always @(rst) begin
	if (rst) begin
		for (i = 0; i < (1<<ADDRESS_SIZE); i = i+1) begin
			MEM[i] = {WORD_SIZE{1'b0}};
		end
	end
end

always @(posedge clk) begin
	MEM[addr1] = (|we1) ? data1 : MEM[addr1];
	MEM[addr2] = (|we2) ? data2 : MEM[addr2];
end

endmodule