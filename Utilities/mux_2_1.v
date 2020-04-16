module mux_2_1 #(parameter SIZE = 16)
(
 input sel,
 input [SIZE-1:0] in1,
 input [SIZE-1:0] in2,
 output [SIZE-1:0] out
);
assign out = (sel == 0) ? in1 : in2;
endmodule


