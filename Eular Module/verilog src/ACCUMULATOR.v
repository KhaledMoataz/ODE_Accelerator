module ACCUMULATOR_EULAR(clk,rst_sync,rst_async,inp,outp,overflow_flag);

parameter Size = 16;

input clk,rst_async,rst_sync;
input [Size-1:0]inp;

output overflow_flag;
output [Size-1 :0] outp;

reg [Size-1:0] accum;
wire [Size-1 :0] result;
wire overflow_flag_temp, carry, neg;

reg temp_overflow_flag;

assign overflow_flag = temp_overflow_flag;
assign outp = accum;

carry_select_adder #(Size) adder(inp,accum,1'b0,result,carry,overflow_flag_temp,neg);

initial
    begin
        accum <= 'b0;
        temp_overflow_flag<= 'b0;
    end

always @(posedge clk or posedge rst_async)
    begin
        if(rst_async == 1'b1 || rst_sync == 1'b1)
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