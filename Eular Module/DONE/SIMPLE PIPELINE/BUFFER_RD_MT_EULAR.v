module BUFFER_RD_MT(
input clk,rst,
input [3:0] d1,
input [3:0] d2,
output [3:0] q1,
output [3:0] q2
);

reg [3:0] temp1;
reg [3:0] temp2;
assign q1 = temp1;
assign q2 = temp2;

always @(posedge clk or posedge rst)
    begin
        if(rst)
            begin
                temp1 <= 0;
                temp2 <= 0;
            end
        else
            begin
                temp1 <= d1;
                temp2 <= d2;
            end
    end 
endmodule 