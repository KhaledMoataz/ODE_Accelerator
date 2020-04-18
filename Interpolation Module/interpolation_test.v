module interpolation_test(
    input en,clk,rst,
    input [15:0] in,

    output [15:0] out
);


Register #(.WORD_SIZE(16)) tn_add      (clk, rst, en, in, out);

endmodule // interpolation_test