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
wire signed [31:0] round;


assign round = 32'b00000000000000000000000001000000; 
assign out = (multiplicand*multiplier)+round;
assign overflow_flag = !(( out[31:22] == 10'b0000000000 ) | ( out[31:22] == 10'b1111111111 )); 
assign result = out[22:7];

endmodule
