`include "adder_block.v"

module which_adder
    (
        input [1:0] i_add1,
        input [1:0] i_add2,
        input cin,
        output [2:0] o_result,
        output intermediate_carry
    );

    wire [2:0] o_result_zero_carry;
    wire [2:0] o_result_one_carry;
    wire intermediate_carry_0;
    wire intermediate_carry_1;

    adder_block adder_block_inst1
                (
                    i_add1,
                    i_add2,
                    1'b0,
                    o_result_zero_carry,
                    intermediate_carry_0
                );
    adder_block adder_block_inst2
                (
                    i_add1,
                    i_add2,
                    1'b1,
                    o_result_one_carry,
                    intermediate_carry_1
                );

    assign {o_result, intermediate_carry} = (cin == 0) ? {o_result_zero_carry, intermediate_carry_0}:{o_result_one_carry, intermediate_carry_1};
endmodule
