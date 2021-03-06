module io_fsm  (  clk , reset , int , process , eob , data , out1 , out2 , out3 , out4 , start , ready , next );
  input clk,int,process,reset,eob,ready; //eob -> end of object & ready when coordinator finish
  output reg next; // Store next element & out data after finish
  inout [31:0]data;
  output [7:0]out1,out2,out3,out4; // 1 for A , 2 for B , 3 for U , 4 for rest
  output reg [3:0] start;
  
  reg[1:0] current_state, next_state ,counter,counter2; // Counter in decompressing & counter2 for last element
  wire[1:0] temp , one , temp2 ;
  
wire zero,c1,c2,of1,of2,n1,n2;
  reg  [3:0]finish; // Which decompressor finished
  
   localparam IDLE = 2'b00, decompress = 2'b01 , calculate = 2'b10;
  
  assign zero = 0;
  assign one = 2'b01;
  //assign data = (current_state !== calculate) ?{32{1'bz}}:{32{1'b0}};

  
  adder #(2) add1(counter , one , zero, temp , c1 , of1 , n1);
  adder #(2) add2({1'b0,zero} , one , zero , temp2 , c2 , of2 , n2);
  
  assign out1 = data[7:0];  //A
  assign out2 = data[15:8]; //B
  assign out3 = data[23:16];  //U 
  assign out4 = data[31:24];  // Control
    
// Synchronous circuit
always@(posedge(clk) , posedge(reset))
begin
  if (reset == 1) begin
    current_state <= IDLE;
    next_state <= IDLE;
    counter <= 0;
    start <= 0;
    finish <= 4'b0000;
  end
  else begin
     if(current_state == decompress)
       counter <= temp;
     current_state <= next_state;
  end 
end 
// Combinational circuit
always@(*)
begin
  case(current_state)
    IDLE:
    begin
      if( int & (!process))
        next_state <= decompress;
    end
    decompress:
    begin
      if( int & (process))
        next_state <= calculate;
          end
    endcase
end
  
  always@(negedge clk)begin
    if( current_state == decompress)begin
    case(counter)
        2'b00:
        begin
          next <= 0;
          finish[0] <= eob | finish[0];
          start <= ~finish;
        end
        2'b01:
        begin
          finish[1] <= eob | finish[1];
          start <= 0;
        end
        2'b10:
        begin
          next <= eob;
        if(counter2 == 1 & eob) // assuming 2 different objects
            finish[2] <= 1;
        else if(eob == 1)
            counter2 <= temp2;
          start <= 0;
        end
        2'b11:
        begin
          finish[3] <= eob | finish[3];
          start <= 0;
        end          
        endcase
    end
  end
  
endmodule