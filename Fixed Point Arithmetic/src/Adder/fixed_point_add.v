module adder
       #(parameter N = 16)
       (A, B, result, overflow_flag, carry);

input signed [N - 1:0] A;
input signed [N - 1:0] B;
output signed [N - 1:0] result;
output overflow_flag;
output carry;

assign {carry, result} = {1'b0, A} + {1'b0, B};
assign overflow_flag = ((A[N - 1]&B[N - 1]&!result[N - 1])|(!A[N - 1]&!B[N - 1]&result[N - 1]));

endmodule
