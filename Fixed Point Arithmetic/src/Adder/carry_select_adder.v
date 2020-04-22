`include "which_adder.v"

module adder
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


    wire [N/2-1:0] cs;
    wire [N/2-1:0] intermediate_cs;

    wire [N-1:0] second_operand;
    assign second_operand = is_subtract ? ~B:B;

    which_adder which_adder_0(A[1:0], second_operand[1:0], is_subtract, {cs[0], result[1:0]}, intermediate_cs[0]);

    genvar j;
    generate
        for (j = 1; j < N/2; j = j+1)
            begin : Gen_Modules
                which_adder which_adder_x(A[2*j+1:2*j], second_operand[2*j+1:2*j], cs[j-1], {cs[j], result[2*j+1:2*j]}, intermediate_cs[j]);
            end
    endgenerate
    assign carry = cs[N/2-1];
    assign overflow_flag = carry ^ intermediate_cs[N/2-1];
    assign negative = overflow_flag ^ result[N-1];
endmodule
