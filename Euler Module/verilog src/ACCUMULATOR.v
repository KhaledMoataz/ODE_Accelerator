module ACCUMULATOR_EULAR(clk,rst_sync,inp,outp,overflow_flag);

parameter Size = 16;

input clk,rst_sync;
input [Size-1:0]inp;

output overflow_flag;
output [Size-1 :0] outp;

reg [Size-1:0] accum;
wire [Size-1 :0] result;
wire overflow_flag_temp, carry, neg;

reg temp_overflow_flag;

assign overflow_flag = temp_overflow_flag;
assign outp = accum;

adder #(Size) adder_(inp,accum,1'b0,result,carry,overflow_flag_temp,neg);

always @(posedge clk )
    begin
        if(rst_sync == 1'b1)
            begin
                accum <= 'b0;
                temp_overflow_flag <= 'b0;
            end
        else
			begin
				temp_overflow_flag <= overflow_flag_temp;
                accum <= result;
			end
    end 

endmodule