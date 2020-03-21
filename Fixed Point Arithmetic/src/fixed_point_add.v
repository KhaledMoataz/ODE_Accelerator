module adder(A, B, result, overflow_flag);

input signed [15:0] A;
input signed [15:0] B;
output signed [15:0] result;
output overflow_flag;

assign result = A+B;
assign overflow_flag = !((A[15]&B[15]&result[15])|(!A[15]&!B[15]&!result[15]));

endmodule
