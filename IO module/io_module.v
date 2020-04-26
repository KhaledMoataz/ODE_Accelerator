module io_module #(parameter N=32)(clk,reset,int,process,eob,data,ready , out , cpu_out);
  input clk,reset,int,process,eob,ready,out;
  output cpu_out;
  inout [N-1:0] data;
  wire [7:0]out1,out2,out3,out4;
  wire [3:0] start;
  wire next; // next address for decompressor 4
  wire store1,store2,store3,store4,write1,write2,c1,c2,of1,of2,n1,n2;
  wire [1:0]select1,select2; 
  wire [N-1:0] decoded1,decoded2,decoded3,decoded4,unused1,unused2;
  reg [N-1:0] MDR1,MDR2;
  wire [N-1:0] tomem1,tomem2;
  wire [N-1:0] temp1,temp2,temp3,temp4;
  reg [19:0] dumb_addr2 , addr1 ,addr2;
  wire [19:0] A_addr , B_addr , U_addr , T_addr , control_addr,X_addr , one , out_addr , counter3 ;
  reg [19:0]counter2 ;
  reg counter;
  
  assign one = 1;
  assign zero = 0;
  assign A_addr = 5;
  assign B_addr = 10;
  assign U_addr = 5;
  assign T_addr = 0;
  assign control_addr = 0;
  assign tomem1 = MDR1;
  assign tomem2 = MDR2;
  assign X_addr = 20;
  assign cpu_out = out;
  
  adder #(20)add1( X_addr , counter2 , zero, out_addr , c1 , of1 , n1);
  adder #(20)add2( one , counter2 , zero , counter3 , c2 , of2 , n2);
  io_fsm  s ( clk , reset , int , process , eob , data , out1 , out2 , out3 , out4 , start , ready , next );
  
  decompressor #(N) d1 (clk ,  reset , start[0] , out1[6] , out1[$clog2 (N):0] , store1 , decoded1); // decompress A
  decompressor #(N) d2 (clk ,  reset , start[1] , out2[6] , out2[$clog2 (N):0] , store2 , decoded2); // decompress B
  decompressor #(N) d3 (clk ,  reset , start[2] , out3[6] , out3[$clog2 (N):0] , store3 , decoded3); // decompress U
  decompressor #(N) d4 (clk ,  reset , start[3] , out4[6] , out4[$clog2 (N):0] , store4 , decoded4); // decompress rest
    
  memory_manager #(N) m1 (clk , reset , store2 , store3 , write2 , temp2 , temp3 ,decoded2 , decoded3 , select2); // Store in memory 2
  memory_manager #(N) m2 (clk , reset , store1 , store4 , write1 , temp1 , temp4 , decoded1 , decoded4 , select1); // store in memory 1
  
  RAM #(20,N) r1(clk, rst, write1, addr1, out_addr, tomem1, unused1);
  RAM #(20,N) r2(clk, rst, writr2, addr2, dumb_addr2, tomem2, unused2);
    
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

 
  always@(posedge clk , posedge next , posedge reset)begin
   if(reset == 1) begin
    counter <= 0;
    counter2 <= 0;     
   end else begin   
     if(next == 1)
       counter <= 1;
     if(out == 1)
      counter2 <= counter3;
    end
 end    
     
endmodule

