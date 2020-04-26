module mul_buffer(clk,rst_sync,start_mult_in,d1,d2,start_mult_out,q1,q2);

parameter Size = 4;

input clk,rst_sync;
input start_mult_in;
input [Size-1:0] d1;
input [Size-1:0] d2;
output start_mult_out;
output [Size-1:0] q1;
output [Size-1:0] q2;


reg [Size-1:0] temp1;
reg [Size-1:0] temp2;
reg temp3;

assign q1 = temp1;
assign q2 = temp2;
assign start_mult_out = temp3;

always @(posedge clk)
    begin
        if(rst_sync == 1'b0)
            begin
				temp3 <= 0;
                temp1 <= 0;
                temp2 <= 0;
            end
        else
            begin
			    temp3 <= start_mult_in;
                temp1 <= d1;
                temp2 <= d2;
            end
    end 
endmodule 