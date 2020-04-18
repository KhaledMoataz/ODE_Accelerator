module mux_4_1 #(parameter SIZE = 16)
(
 input[1:0] sel,
 input [SIZE-1:0] in1,
 input [SIZE-1:0] in2,
 input [SIZE-1:0] in3,
 input [SIZE-1:0] in4,
 output [SIZE-1:0] out
);
wire [SIZE-1:0] mux1_out, mux2_out;
mux_2_1 #(.SIZE(SIZE)) mux1      (sel[0],in1,in2,mux1_out);
mux_2_1 #(.SIZE(SIZE)) mux2      (sel[0],in3,in4,mux2_out);
mux_2_1 #(.SIZE(SIZE)) mux3      (sel[1],mux1_out,mux2_out,out);

endmodule