module mux_8_1 #(parameter SIZE = 16)
(
 input[2:0] sel,
 input [SIZE-1:0] in1,
 input [SIZE-1:0] in2,
 input [SIZE-1:0] in3,
 input [SIZE-1:0] in4,
 input [SIZE-1:0] in5,
 input [SIZE-1:0] in6,
 input [SIZE-1:0] in7,
 input [SIZE-1:0] in8,
 output [SIZE-1:0] out
);
wire [SIZE-1:0] mux1_out, mux2_out;
mux_4_1 #(.SIZE(SIZE)) mux1      (sel[1:0],in1,in2,in3,in4,mux1_out);
mux_4_1 #(.SIZE(SIZE)) mux2      (sel[1:0],in5,in6,in7,in8,mux2_out);
mux_2_1 #(.SIZE(SIZE)) mux3      (sel[2],mux1_out,mux2_out,out);

endmodule