module RAM (Address1,Address2, Data1,Data2, RE, WE);

parameter AddressSize = 4;
parameter WordSize = 4;

input [AddressSize-1:0] Address1;
input [AddressSize-1:0] Address2;
inout [WordSize-1:0] Data1;
inout [WordSize-1:0] Data2;
input RE, WE;

reg [WordSize-1:0] Mem [0:(1<<AddressSize)-1];

assign Data1 =  RE ? Mem[Address1] : {WordSize{1'bz}};
assign Data2 =  RE ? Mem[Address2] : {WordSize{1'bz}};

always @(RE or WE)
  if (WE)
    Mem[Address1] = Data1;


always @(RE or WE)
  if (WE)
    Mem[Address2] = Data2;


endmodule