`include "full_adder.v"

module adder_block
    (
        input [1:0] i_add1,
        input [1:0] i_add2,
        input cin,
        output [2:0] o_result,
        output intermediate_carry
    );

    full_adder full_adder_inst1
               (
                   .i_bit1(i_add1[0]),
                   .i_bit2(i_add2[0]),
                   .i_carry(cin),
                   .o_sum(o_result[0]),
                   .o_carry(intermediate_carry)
               );

    full_adder full_adder_inst2
               (
                   .i_bit1(i_add1[1]),
                   .i_bit2(i_add2[1]),
                   .i_carry(intermediate_carry),
                   .o_sum(o_result[1]),
                   .o_carry(o_result[2])
               );
endmodule
