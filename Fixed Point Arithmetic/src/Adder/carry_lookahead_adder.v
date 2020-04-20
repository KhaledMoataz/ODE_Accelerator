module carry_lookahead_adder
    #(parameter N=16)
    (
        input [N-1:0] A,
        input [N-1:0] B,
        input is_subtract,
        output [N-1:0] result,
        output carry,
        output overflow_flag,
        output negative
    );

    wire [N:0] cs; // input carries
    assign cs[0] = is_subtract;
    wire [N-1:0] G, P;
    wire [N-1:0] second_operand;
    assign second_operand = is_subtract ? ~B:B;

    genvar j;
    generate
        for (j = 0; j < N-1; j = j+1) begin
            assign G[j] = A[j] & second_operand[j];
            assign P[j] = A[j] ^ second_operand[j];
            assign cs[j+1] = G[j] | cs[j] & P[j];
        end
    endgenerate

    full_adder full_adder_0(.i_bit1(A[0]), .i_bit2(second_operand[0]), .i_carry(cs[0]), .o_sum(result[0]));
    genvar i;
    generate
        for (i = 1; i < N - 1; i = i+1) begin
            full_adder full_adder_x(.i_bit1(A[i]), .i_bit2(second_operand[i]), .i_carry(cs[i]), .o_sum(result[i]));
        end
    endgenerate
    full_adder full_adder_x(.i_bit1(A[N - 1]), .i_bit2(second_operand[N - 1]), .i_carry(cs[N - 1]), .o_sum(result[N - 1]), .o_carry(carry));
    assign overflow_flag = carry ^ cs[N-1];
    assign negative = overflow_flag ^ result[N-1];
endmodule
