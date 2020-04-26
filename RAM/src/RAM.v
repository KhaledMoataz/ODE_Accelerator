module RAM 
	(clk, rst, we1, addr1, addr2, data1, data2);

parameter ADDRESS_SIZE = 4,
	WORD_SIZE = 32;

input clk, rst, we1;
input [ADDRESS_SIZE-1:0] addr1, addr2;
inout [WORD_SIZE-1:0] data1;
output [WORD_SIZE-1:0] data2;

reg [WORD_SIZE-1:0] MEM [0:(1<<ADDRESS_SIZE)-1];

assign data1 = (~we1) ? MEM[addr1] : {WORD_SIZE{1'bZ}};
assign data2 = MEM[addr2];

integer i = 0;

always @(posedge clk) begin
	if (rst) begin
		for (i = 0; i < (1<<ADDRESS_SIZE); i = i+1) begin
			MEM[i] <= 0;
		end
	end
	else begin
		MEM[addr1] <= (we1) ? data1 : MEM[addr1];
	end
end

endmodule