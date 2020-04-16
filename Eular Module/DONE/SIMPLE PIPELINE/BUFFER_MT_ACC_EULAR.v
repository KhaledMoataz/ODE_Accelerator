module BUFFER_MT_ACC(
parameter Size = 8;
input clk,rst_async,rst_sync
input [Size-1:0] d,
output [Size-1:0] q
);

reg [Size-1:0] temp;
assign q = temp;

always @(posedge clk or posedge rst_async)
    begin
        if(rst_async == 1'b1 || rst_sync == 1'b1)
            temp <= 0;
        else
            temp <= d;
    end 
endmodule 