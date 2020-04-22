module io_module #(parameter N=32)(clk,reset,int,process,eob,data,ready);
  input clk,reset,int,process,eob,ready;
  inout [N-1:0] data;
  wire [7:0]out1,out2,out3,out4;
  wire [3:0] start;
  wire next; // next address for decompressor 4
  wire store1,store2,store3,store4,write1,write2;
  wire [1:0]select1,select2; 
  wire [N-1:0] decoded1,decoded2,decoded3,decoded4,unused1,unused2;
  reg [N-1:0] MDR1,MDR2;
  wire [N-1:0] tomem1,tomem2;
  wire [N-1:0] temp1,temp2,temp3,temp4;
  reg [19:0] dumb_addr1,dumb_addr2 , addr1 ,addr2;
  wire [19:0] A_addr , B_addr , U_addr , T_addr , control_addr;
  wire [N-1 : 0 ] bgrb;
  reg counter;
  
  assign A_addr = 5;
  assign B_addr = 10;
  assign U_addr = 5;
  assign T_addr = 0;
  assign control_addr = 0;
  assign tomem1 = MDR1;
  assign tomem2 = MDR2;
  
  io_fsm  s ( clk , reset , int , process , eob , data , out1 , out2 , out3 , out4 , start , ready , next );
  
  decompressor #(N) d1 (clk ,  reset , start[0] , out1[7] , out1[$clog2 (N):0] , store1 , decoded1); // decompress A
  decompressor #(N) d2 (clk ,  reset , start[1] , out2[7] , out2[$clog2 (N):0] , store2 , decoded2); // decompress B
  decompressor #(N) d3 (clk ,  reset , start[2] , out3[7] , out3[$clog2 (N):0] , store3 , decoded3); // decompress U
  decompressor #(N) d4 (clk ,  reset , start[3] , out4[7] , out4[$clog2 (N):0] , store4 , decoded4); // decompress rest
    
  memory_manager #(N) m1 (clk , reset , store2 , store3 , write2 , temp2 , temp3 ,decoded2 , decoded3 , select2); // Store in memory 2
  memory_manager #(N) m2 (clk , reset , store1 , store4 , write1 , temp1 , temp4 , decoded1 , decoded4 , select1); // store in memory 1
  // na2s el7gat ele btt7t fe ram1
  RAM #(20,N) r1(clk, rst, write1, addr1, dumb_addr1, tomem1, unused1);
  RAM #(20,N) r2(clk, rst, writr2, addr2, dumb_addr2, tomem2, unused2);
  
  always@(posedge(next))begin
    counter <= 1;
  end
  
  always@(*)begin
    case(select2)
      0:
      begin
       MDR2 <= decoded2;
       addr2 <= B_addr;
      end
      1:
      begin 
        MDR2 <= decoded3;
        if( counter == 0)
          addr2 <= T_addr;
        else
          addr2 <= U_addr;
      end
      2:
      begin
        MDR2 <= temp2;
        addr2 <= B_addr;
      end
      3: 
      begin
        MDR2 <= temp3;
        if( counter == 0)
          addr2 <= T_addr;
        else
          addr2 <= U_addr;
      end
    endcase
    case(select1)
      0:
      begin 
        MDR1 <= decoded1;
        addr1 <= A_addr;
      end
        1:
       begin
         MDR1 <= decoded4;
         addr1 <= control_addr;
      end
      2: 
      begin
        MDR1 <= temp1;
        addr1 <= A_addr;
      end
      3: 
      begin
        MDR1 <= temp4;
        addr1 <= control_addr;
      end
    endcase 
 
end
 
 always@(posedge(reset))begin
   counter <= 0;
 end
 
endmodule
