module COUNTER_EULAR(clk,rest_sync,rest_async,enable,counter);

parameter Size = 6;
input clk, rest_sync,rest_async,enable;
output[Size-1:0] counter;


reg [Size-1 :0] temp_count;
assign counter = temp_count;


always @(posedge clk or posedge rest_async)
    begin
        if(rest_async || rest_sync)
            temp_count <= 0; 
        else if(enable)
                temp_count <= temp_count + 1;
    end 
endmodule