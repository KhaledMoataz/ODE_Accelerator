`include "which_adder.v"

module carry_select_adder
    #(parameter N=16)
    (
        input [N-1:0] A,
        input [N-1:0] B,
        input cin,
        output [N-1:0] result,
        output carry,
        output overflow_flag,
        output negative
    );


    wire [N/2-1:0] carrys;
    wire [N/2-1:0] intermediate_carrys;

    which_adder which_adder_0(A[1:0], B[1:0], cin, {carrys[0], result[1:0]}, intermediate_carrys[0]);

    genvar j;
    generate
        for (j = 1; j < N/2; j = j+1)
            begin : Gen_Modules
                which_adder which_adder_x(A[2*j+1:2*j], B[2*j+1:2*j], carrys[j-1], {carrys[j], result[2*j+1:2*j]}, intermediate_carrys[j]);
            end
    endgenerate
    assign carry = carrys[N/2-1];
    assign overflow_flag = carry ^ intermediate_carrys[N/2-1];
    assign negative = overflow_flag ^ result[N-1];
endmodule
