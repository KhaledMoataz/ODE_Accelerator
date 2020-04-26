module decompressor #(parameter N = 32)(clk ,  reset , start , bit , value , store , out);
  input clk,reset,start,bit; // start decompress , bit is the value to be added
  input [$clog2(N):0] value; // value is counter for the decoded bit
  output reg store;  // Store to acknwoledge memory manager
  output reg[N-1:0]out;  // out is decoded data
  wire [N-1:0] parllel , cond1 ,cond2;
  reg [$clog2(N) - 1:0] counter,counter2; // counter for number of decompressed bits
  wire [$clog2 (N) + 1:0] new_pos , remain , new_value , temp ,full; // new_pos is new counter after decompress & remain number of uncompressed bits
  reg [$clog2 (N) + 1:0] reg_temp;
  reg next; // finished decompressing
  wire work,zero,one,c1,c2,c3,of1,of2,of3,n1,n2,n3 ;  // Haven't finished decompressing
    
  assign full = N;
  assign zero = 0;
  assign one = 1;
  
  adder #($clog2 (N) + 2) add1(new_value , {2'b00 ,counter} , zero ,  new_pos , c1 , of1 , n1);
  adder #($clog2 (N) + 2) sub1(full , {2'b00 , counter2} , one ,remain , c2 ,of2 , n2);
  adder #($clog2 (N) + 2) sub2({1'b0,value} , remain , one , temp , c3 , of3 , n3);
  
  
  assign new_value = (start & work)? {1'b0,value} : reg_temp;
  assign work = (~next) | start ;
  
  
  genvar i;
 
  // Generate for loop to instantiate N times
  generate 
    for (i = 0; i < N; i = i + 1) begin
          assign cond1[i] = ((new_pos <= N) & (i < new_pos))? 1:0;
          assign cond2[i] = (new_pos > N)? 1:0;
          assign parllel[i] = ((cond1[i] | cond2[i]) & (i >= counter))? bit: out[i]; 
    end
  endgenerate
  

  
  always @( posedge clk , posedge reset)begin
    if(reset == 1'b1)begin
      counter <= 0;
      next <= 1;
    end else if(work == 1'b1) begin
        out <= parllel;
        reg_temp <= temp;
        if( new_pos <= N )begin
          counter <= new_pos[$clog2(N) - 1:0]; 
          next <= 1'b1;
          if( new_pos ==  N)begin 
            store <= 1'b1;
          end else begin
            store <= 1'b0;
          end
        end else begin
          counter <= 0;
          next <= 0;
          store <= 1'b1;
        end   
      end else 
        store <= 1'b0;
  end
  
  always @(negedge clk)begin
    if( reset == 1'b0) 
      counter2 <= counter;
 	 else 
 	    counter2 <= 0;
 	 end
endmodule


