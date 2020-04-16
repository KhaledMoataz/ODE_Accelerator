module multiplier (input clk,input[3:0] a, input[3:0] b, output[7:0] y);
    assign y = a * b;
endmodule