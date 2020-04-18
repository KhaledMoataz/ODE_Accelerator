module mux_16_1 #(parameter SIZE = 16)
(
 input[3:0] sel,
 input [SIZE-1:0] in1,
 input [SIZE-1:0] in2,
 input [SIZE-1:0] in3,
 input [SIZE-1:0] in4,
 input [SIZE-1:0] in5,
 input [SIZE-1:0] in6,
 input [SIZE-1:0] in7,
 input [SIZE-1:0] in8,
 input [SIZE-1:0] in9,
 input [SIZE-1:0] in10,
 input [SIZE-1:0] in11,
 input [SIZE-1:0] in12,
 input [SIZE-1:0] in13,
 input [SIZE-1:0] in14,
 input [SIZE-1:0] in15,
 input [SIZE-1:0] in16,
 
 output [SIZE-1:0] out
);
wire [SIZE-1:0] mux1_out, mux2_out;
mux_8_1 #(.SIZE(SIZE)) mux1      (sel[2:0],in1,in2,in3,in4,in5,in6,in7,in8,mux1_out);
mux_8_1 #(.SIZE(SIZE)) mux2      (sel[2:0],in9,in10,in11,in12,in13,in14,in15,in16,mux2_out);
mux_2_1 #(.SIZE(SIZE)) mux3      (sel[3],mux1_out,mux2_out,out);

endmodule