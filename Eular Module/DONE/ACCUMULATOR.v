module ACCUMULATOR_EULAR(clk,rst_sync,rst_async,enable,inp,outp,overflow_flag,carry);

parameter Size = 16;

input clk,rst_async,rst_sync,enable;
input [Size-1:0]inp;

output overflow_flag;
output carry;
output [Size-1 :0] outp;

reg [Size-1:0] accum;
wire [Size-1 :0] result;

reg temp_overflow_flag,temp_carry;

assign carry = temp_carry;
assign overflow_flag = temp_overflow_flag;
assign outp = (enable == 1'b1 ) ? accum : 0;

adder add(inp,accum,result,overflow_flag,carry);

initial
    begin
        accum <=0;
        temp_overflow_flag<=0;
        temp_carry <=0;
    end

always @(posedge clk or posedge rst_async)
    begin
        if(rst_async || rst_sync)
            begin
                accum <= 0;
                temp_overflow_flag <=0;
                temp_carry <= 0;
            end
        else
                accum<=result;
    end 

endmodule