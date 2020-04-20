module decompressor #(parameter N = 32)(clk ,  reset , start , bit , value , store , out);
  input clk,reset,start,bit; // start decompress , bit is the value to be added
  input [$clog2(N):0] value; // value is counter for the decoded bit
  output reg store;  // Store to acknwoledge memory manager
  output reg[N-1:0]out;  // out is decoded data
  reg [$clog2(N) - 1:0] counter,counter2; // counter for number of decompressed bits
  wire [$clog2 (N) + 1:0] new_pos , remain , new_value , temp ,full; // new_pos is new counter after decompress & remain number of uncompressed bits
  reg next; // finished decompressing
  wire work,zero,one,c1,c2,c3,of1,of2,of3;  // work if Haven't finished decompressing
  integer i;  // used in for loop
  
  assign zero = 0;
  assign one  = 1;
  assign full = N;
  
  carry_lookahead_adder #($clog2 (N) + 2) add1(new_value , {2'b00 ,counter2} , zero , new_pos , c1 ,of1); 
  carry_lookahead_adder #($clog2 (N) + 2) sub1((~full) , {2'b00 , counter2} , one , remain , c2 , of2); 
  carry_lookahead_adder #($clog2 (N) + 2) sub2({1'b01,(~value)} , remain , one , temp , c3 , of3); 
  
  assign new_value = (start == 1)? {1'b0,value} : temp;
  assign work = (~next) | start;
  
  always @( posedge clk , reset)begin
    if(reset == 1'b1)begin
      counter <= 0;
      counter2 <= 0;
      next <= 0;
    end else if(work == 1'b1) begin
        if( new_pos <= N )begin
          for (i = 0; i < N; i = i + 1) begin
              if( i >= counter && i < new_pos)
                out[i] <= bit;
            end
          counter <= new_pos[$clog2(N) - 1:0]; 
          next <= 1'b1;
          if( new_pos ==  N)begin 
            store <= 1'b1;
          end else begin
            store <= 1'b0;
          end
        end else begin
          for (i = 0; i < N; i = i + 1) begin
              if( i >= counter )
                out[i] <= bit;
            end
          counter <= 0;
          next <= 0;
          store <= 1'b1;
        end   
      end
  end
  
  always @(negedge clk)begin
    if( reset == 1'b0) 
      counter2 <= counter;
 	end
  
endmodule
