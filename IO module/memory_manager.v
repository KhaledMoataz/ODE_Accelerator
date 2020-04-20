module memory_manager #(parameter N = 32)( clk,reset,store1,store2 , write , temp1 , temp2 ,data1 , data2 ,select);
  input clk,reset,store1,store2; // Store signal from decompressor & ack done from system
  output reg write;
  output reg[1:0]select; // 0 for data1 , 1 for data2 , 2 for temp1 , 3 for temp2
  input [N-1:0] data1,data2;
  output reg[N-1:0] temp1,temp2;
  reg counter; // which ones turn
  reg wait1,wait2;
  
  
  always@(posedge(clk))begin
    if(counter == 0)begin
      if(store2 == 1)begin
        wait2 <= 1;
        temp2 <= data2;
      end
      if(wait1 == 1)begin   // there is data in temp1
        select <= 2;
        if(store1 == 0)begin
          wait1 <= 0; 
        end else begin        // store new value in temp1
          temp1 <= data1;
        end
      end else if( store1 == 1)begin
        select <= 0;
      end
    end else begin    // counter = 1
      if(store1 == 1)begin
        wait1 <= 1;
        temp1 <= data1;
      end
      if(wait2 == 1)begin   // there is data in temp2
        select <= 3;
        if(store2 == 0)begin
          wait2 <= 0; 
        end else begin        // store new value in temp2
          temp2 <= data2;
        end
      end else if( store2 == 1)begin
        select <= 1;
      end
    end    
    counter = ~counter;    
  end
  
  always@(negedge(clk))begin
    write <= wait1 | wait2 | store1 | store2;
  end
  
  always@(posedge(reset))begin
    counter = 0;
    wait1 <= 0;
    wait2 <= 0;
  end
endmodule

