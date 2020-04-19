module io_fsm_tbench();
  reg clk,reset,int,process,eob;
  wire [31:0] data;
  reg [31:0] temp;
  wire [7:0] out1,out2,out3,out4;
  wire next  , ready;
  wire [3:0] start;
  io_fsm d1(clk , reset , int , process , eob , data , out1 , out2 , out3 , out4 , start , ready , next );
  
  assign data = temp;
  
  initial begin
    reset <= 0;
    #100
    reset <= 1;
    #100
    reset <= 0;
    eob <= 0;
    temp <= 32'b00000000111111110000000011111111;
    clk <= 0;
    int <= 1;
    process <= 0 ;
    #100
    eob <= 0;
    clk <= 1;
    int <= 0;
    if(out1 !== 8'b11111111 | out2 !== 8'b00000000 | out3 !== 8'b11111111 | out4 !== 8'b00000000)
      $display("Wrong output data");
   	#100
    clk <= 0;
    if( start !== 4'b1111)
      $display("decompressor should have started");
    #100
    clk <= 1;
    #100
    temp <= 32'b11111111000000001111111100000000;
    clk <= 0;
    #100
    clk <= 1;
    #100
    clk <= 0;
    #100
    clk <= 1;
    #100
    clk <=0;
    #100
    clk <= 1;
    #100
    clk <=0;
    #100
    clk <= 1;
    if( start !== 4'b1111)
      $display("all decompressor should start");
    #100
    eob <= 1;
    clk <=0;
    #100
    clk <= 1;
    #100
    clk <=0;
    #100
    clk <= 1;
    #100
   eob <= 0;
    if( next !== 1)
      $display("Should aknowledge memory manager");
    clk <=0;
    #100
    clk <=1;
    #100
    clk <= 0;
    if( start !== 4'b1001)
      $display("Started wrong decompressors");
    #100
    clk <=1 ;
    #100
    clk <=0 ;
  end
endmodule