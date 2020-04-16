module BUFFER_MT_ACC(
input clk,rst,
input [7:0] d,
output [7:0] q
);

reg [3:0] temp;
assign q = temp;

always @(posedge clk or posedge rst)
    begin
        if(rst)
            begin
                temp <= 0;
            end
        else
            begin
                temp <= d;
            end
    end 
endmodule 