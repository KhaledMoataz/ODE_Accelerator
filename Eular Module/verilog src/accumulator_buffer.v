module acc_buffer(clk,rst_async,rst_sync,done_mul_in,d,done_mul_out,q);
parameter Size = 8;
input clk,rst_async,rst_sync, done_mul_in;
input [Size-1:0] d;
output [Size-1:0] q;
output done_mul_out;


reg [Size-1:0] temp;
reg temp2;
assign q = temp;
assign done_mul_out = temp2;

always @(negedge clk or posedge rst_async)
    begin
        if(rst_async == 1'b1 || rst_sync == 1'b0)
          begin
            temp <= 0;
			      temp2 <= 0;
			     end
        else
          begin
            temp <= d;
			      temp2 <= done_mul_in;
			    end
    end 
endmodule 