module mul_buffer(clk,rst_sync,rst_async,d1,d2,q1,q2);

parameter Size = 4;

input clk,rst_sync,rst_async;
input [Size-1:0] d1;
input [Size-1:0] d2;
output [Size-1:0] q1;
output [Size-1:0] q2;


reg [Size-1:0] temp1;
reg [Size-1:0] temp2;
assign q1 = temp1;
assign q2 = temp2;

always @(posedge clk or posedge rst_async)
    begin
        if(rst_async == 1'b1 || rst_sync == 1'b1)
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