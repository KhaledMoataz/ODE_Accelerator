module multiplier (
multiplicand,
multiplier,
result,
overflow_flag
);

input signed [15:0] multiplicand;
input signed [15:0] multiplier;
output signed [15:0] result;
wire signed [31:0] out;
output overflow_flag;


assign out = multiplicand*multiplier;
assign overflow_flag = !(( out[31:22] == 10'b0000000000 ) | ( out[31:22] == 10'b1111111111 )); 
assign result = out>>>7;

endmodule