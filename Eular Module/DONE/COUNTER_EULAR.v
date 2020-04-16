module COUNTER_EULAR(
    input clk, reset,enable,
    output[5:0] counter
);

reg [5:0] temp_count;
assign counter = temp_count;


always @(posedge clk or posedge reset)
    begin
        if(reset)
            temp_count <= 6'd0; 
        else if(enable)
                temp_count <= temp_count + 6'd1;
    end 
endmodule