module memory_manager_testbench();
  reg clk,reset,store1,store2;
  wire write;
  wire [31:0]temp1,temp2,data1,data2;
  wire[1:0] select;
  memory_manager m(clk,reset,store1,store2 , write , temp1 , temp2 ,data1 , data2 ,select);
  
  initial begin
    reset <= 0;
    #100
    reset <= 1;
    #100
    reset <= 0;
    clk <= 0;
    #100
    clk <= 1;
    store1 <= 1;
    store2 <= 1;
   	#100
    clk <= 0;
    if(write !== 1)
      $display("Memory manager should emit write signal");
   	if(select !== 0)
   	  $display("Wrong selection");
 	  #100
 	  clk <= 1;
    #100
    clk <= 0;
    if(write !== 1)
      $display("Memory manager should emit write signal");
   	if(select !== 3)
   	  $display("Wrong selection"); 
 	  #100
 	  clk <= 1;
 	  store1 <= 0;
    store2 <= 0;
    #100
    clk <= 0;
    if(write !== 1)
      $display("Memory manager should emit write signal");
   	if(select !== 2)
   	  $display("Wrong selection");	   
 	  #100
 	  clk <= 1;
    #100
    clk <= 0;
    if(write !== 1)
      $display("Memory manager should emit write signal");
   	if(select !== 3)
   	  $display("Wrong selection");
 	  #100
 	  clk <= 1;
 	  #100
 	  clk <= 0;
 	  if(write !== 0)
   	  $display("Write signal should be low"); 
  end
endmodule

