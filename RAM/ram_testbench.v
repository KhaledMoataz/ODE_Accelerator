module testbench ();

localparam ADDRESS_SIZE = 4,
	WORD_SIZE = 32;

reg clk, rst, we1;
reg [ADDRESS_SIZE-1:0] addr1, addr2;
wire [WORD_SIZE-1:0] data1, data2;

reg [WORD_SIZE-1:0] test_values [1:0];

integer j = 0;

assign data1 = (|we1) ? test_values[j] : {WORD_SIZE{1'bZ}};
//assign data2 = (|we2) ? test_values[j] : {WORD_SIZE{1'bZ}};

RAM #(.ADDRESS_SIZE(ADDRESS_SIZE), .WORD_SIZE(WORD_SIZE)) 
	RAM1(clk, rst, we1, addr1, addr2, 
		data1, data2);

initial begin
	// initializing test_values
	test_values[0] = 32'haaaaaaaa;
	test_values[1] = 32'h55555555;
	// init
	rst = 0;
	we1 = 0;
	addr1 = 0;
	addr2 = 1;
	#100;
	
	// testing reset
	rst = 1;
	#100;
	if (data1 != {WORD_SIZE{1'b0}} || data2 != {32'b0})
		$display("Reset failed");
	rst = 0;
	#100;
	
	// testing writing from first bus
	addr1 = 4'b0011;
	we1 = 1;
	#100;
	if (RAM1.MEM[addr1] != test_values[j])
		$display("Writing failed");
	
	// testing reading
	addr2 = addr1;
	we1 = 0;
	addr1 = 0;
	#100;
	if (data2 != test_values[j])
		$display("Reading new value from other bus failed");
	if (data1 != {WORD_SIZE{1'b0}})
		$display("Reading unchanged value on first bus failed");
	
	j = j + 1;
	addr1 = 4'b0001;
	we1 = 1;
	#100;
	if (RAM1.MEM[addr1] != test_values[j])
		$display("Writing failed");
	// reading
	addr2 = addr1;
	we1 = 0;
	addr1 = 0;
	#100;
	if (data2 != test_values[j])
		$display("Reading new value from other bus failed");
	if (data1 != {WORD_SIZE{1'b0}})
		$display("Reading unchanged value on first bus failed");
	if (RAM1.MEM[4'b0011] != test_values[0])
		$display("Previously written value was changed");
end

always begin 
	clk = 1'b0;
	#50;
	clk = 1'b1;
	#50;
end

endmodule
