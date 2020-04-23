/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Apr 23 06:03:42 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1992981028 */

module Register__0_144(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_201(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in2[0]), .A2(sel), .ZN(out[0]));
   INV_X1 i_0_1 (.A(sel), .ZN(n_0_0));
   OR2_X1 i_0_2 (.A1(n_0_0), .A2(in2[1]), .ZN(out[1]));
   OR2_X1 i_0_3 (.A1(n_0_0), .A2(in2[2]), .ZN(out[2]));
   AND2_X1 i_0_4 (.A1(in2[3]), .A2(sel), .ZN(out[3]));
   AND2_X1 i_0_5 (.A1(in2[4]), .A2(sel), .ZN(out[4]));
   AND2_X1 i_0_6 (.A1(in2[5]), .A2(sel), .ZN(out[5]));
   AND2_X1 i_0_7 (.A1(in2[6]), .A2(sel), .ZN(out[6]));
   AND2_X1 i_0_8 (.A1(in2[7]), .A2(sel), .ZN(out[7]));
   AND2_X1 i_0_9 (.A1(in2[8]), .A2(sel), .ZN(out[8]));
   AND2_X1 i_0_10 (.A1(in2[9]), .A2(sel), .ZN(out[9]));
   AND2_X1 i_0_11 (.A1(in2[10]), .A2(sel), .ZN(out[10]));
   AND2_X1 i_0_12 (.A1(in2[11]), .A2(sel), .ZN(out[11]));
   AND2_X1 i_0_13 (.A1(in2[12]), .A2(sel), .ZN(out[12]));
   AND2_X1 i_0_14 (.A1(in2[13]), .A2(sel), .ZN(out[13]));
   AND2_X1 i_0_15 (.A1(in2[14]), .A2(sel), .ZN(out[14]));
   AND2_X1 i_0_16 (.A1(in2[15]), .A2(sel), .ZN(out[15]));
endmodule

module Register__0_147(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_203(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   INV_X1 i_0_0 (.A(in2[1]), .ZN(n_0_0));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(sel), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(sel), .A2(in2[0]), .ZN(out[0]));
   AND2_X1 i_0_3 (.A1(sel), .A2(in2[3]), .ZN(out[3]));
   AND2_X1 i_0_4 (.A1(sel), .A2(in2[2]), .ZN(out[2]));
   AND2_X1 i_0_5 (.A1(sel), .A2(in2[5]), .ZN(out[5]));
   AND2_X1 i_0_6 (.A1(sel), .A2(in2[4]), .ZN(out[4]));
   AND2_X1 i_0_7 (.A1(sel), .A2(in2[7]), .ZN(out[7]));
   AND2_X1 i_0_8 (.A1(sel), .A2(in2[6]), .ZN(out[6]));
   AND2_X1 i_0_9 (.A1(sel), .A2(in2[9]), .ZN(out[9]));
   AND2_X1 i_0_10 (.A1(sel), .A2(in2[8]), .ZN(out[8]));
   AND2_X1 i_0_11 (.A1(sel), .A2(in2[11]), .ZN(out[11]));
   AND2_X1 i_0_12 (.A1(sel), .A2(in2[10]), .ZN(out[10]));
   AND2_X1 i_0_13 (.A1(sel), .A2(in2[13]), .ZN(out[13]));
   AND2_X1 i_0_14 (.A1(sel), .A2(in2[12]), .ZN(out[12]));
   AND2_X1 i_0_15 (.A1(sel), .A2(in2[15]), .ZN(out[15]));
   AND2_X1 i_0_16 (.A1(sel), .A2(in2[14]), .ZN(out[14]));
endmodule

module Register__0_150(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module Register__0_153(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module Register__0_156(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_229(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_2_1__0_227(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   AND2_X1 i_0_0 (.A1(sel), .A2(in2[15]), .ZN(out[15]));
   AND2_X1 i_0_1 (.A1(sel), .A2(in2[14]), .ZN(out[14]));
   AND2_X1 i_0_2 (.A1(sel), .A2(in2[13]), .ZN(out[13]));
   AND2_X1 i_0_3 (.A1(sel), .A2(in2[12]), .ZN(out[12]));
   AND2_X1 i_0_4 (.A1(sel), .A2(in2[11]), .ZN(out[11]));
   AND2_X1 i_0_5 (.A1(sel), .A2(in2[10]), .ZN(out[10]));
   AND2_X1 i_0_6 (.A1(sel), .A2(in2[9]), .ZN(out[9]));
   AND2_X1 i_0_7 (.A1(sel), .A2(in2[8]), .ZN(out[8]));
   AND2_X1 i_0_8 (.A1(sel), .A2(in2[7]), .ZN(out[7]));
   AND2_X1 i_0_9 (.A1(sel), .A2(in2[6]), .ZN(out[6]));
   AND2_X1 i_0_10 (.A1(sel), .A2(in2[5]), .ZN(out[5]));
   AND2_X1 i_0_11 (.A1(sel), .A2(in2[4]), .ZN(out[4]));
   AND2_X1 i_0_12 (.A1(sel), .A2(in2[3]), .ZN(out[3]));
   AND2_X1 i_0_13 (.A1(sel), .A2(in2[2]), .ZN(out[2]));
   AND2_X1 i_0_14 (.A1(sel), .A2(in2[1]), .ZN(out[1]));
   AND2_X1 i_0_15 (.A1(sel), .A2(in2[0]), .ZN(out[0]));
endmodule

module mux_2_1__0_225(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_4_1__0_230(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_2_1__0_229 mux1 (.sel(sel[0]), .in1(in1), .in2(in2), .out(mux1_out));
   mux_2_1__0_227 mux2 (.sel(sel[0]), .in1(), .in2(in4), .out(mux2_out));
   mux_2_1__0_225 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module Register__0_162(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_205(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module Register__0_165(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_207(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module Register__0_168(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_209(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module Register__0_171(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_1389(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_2_1__0_1387(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_2_1__0_1385(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_4_1__0_1390(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_2_1__0_1389 mux1 (.sel(sel[0]), .in1(in1), .in2(in2), .out(mux1_out));
   mux_2_1__0_1387 mux2 (.sel(sel[0]), .in1(in3), .in2(in4), .out(mux2_out));
   mux_2_1__0_1385 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module mux_2_1__0_1382(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;

   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   AOI21_X1 i_0_0 (.A(n_0_0), .B1(n_0_1), .B2(sel), .ZN(out[0]));
   NOR2_X1 i_0_1 (.A1(sel), .A2(in1[0]), .ZN(n_0_0));
   INV_X1 i_0_16 (.A(in2[0]), .ZN(n_0_1));
   AOI21_X1 i_0_17 (.A(n_0_2), .B1(n_0_3), .B2(sel), .ZN(out[1]));
   NOR2_X1 i_0_18 (.A1(sel), .A2(in1[1]), .ZN(n_0_2));
   INV_X1 i_0_19 (.A(in2[1]), .ZN(n_0_3));
endmodule

module mux_2_1__0_1380(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_2_1__0_1378(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;

   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   NAND2_X1 i_0_0 (.A1(n_0_0), .A2(n_0_1), .ZN(out[0]));
   NAND2_X1 i_0_1 (.A1(n_0_8), .A2(in1[0]), .ZN(n_0_0));
   NAND2_X1 i_0_2 (.A1(in2[0]), .A2(sel), .ZN(n_0_1));
   NAND2_X1 i_0_3 (.A1(n_0_2), .A2(n_0_3), .ZN(out[2]));
   NAND2_X1 i_0_16 (.A1(n_0_8), .A2(in1[2]), .ZN(n_0_2));
   NAND2_X1 i_0_17 (.A1(in2[2]), .A2(sel), .ZN(n_0_3));
   NAND2_X1 i_0_18 (.A1(n_0_4), .A2(n_0_5), .ZN(out[3]));
   NAND2_X1 i_0_19 (.A1(n_0_8), .A2(in1[3]), .ZN(n_0_4));
   NAND2_X1 i_0_20 (.A1(in2[3]), .A2(sel), .ZN(n_0_5));
   NAND2_X1 i_0_21 (.A1(n_0_7), .A2(n_0_6), .ZN(out[1]));
   NAND2_X1 i_0_22 (.A1(sel), .A2(in2[1]), .ZN(n_0_6));
   NAND2_X1 i_0_23 (.A1(in1[1]), .A2(n_0_8), .ZN(n_0_7));
   INV_X1 i_0_24 (.A(sel), .ZN(n_0_8));
endmodule

module mux_4_1__0_1383(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_2_1__0_1382 mux1 (.sel(sel[0]), .in1(in1), .in2(in2), .out(mux1_out));
   mux_2_1__0_1380 mux2 (.sel(sel[0]), .in1(in3), .in2(in4), .out(mux2_out));
   mux_2_1__0_1378 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module mux_2_1__0_1376(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   MUX2_X1 i_0_0 (.A(in2[0]), .B(in1[0]), .S(n_0_4), .Z(out[0]));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(n_0_1), .ZN(out[3]));
   NAND2_X1 i_0_3 (.A1(in2[3]), .A2(sel), .ZN(n_0_0));
   NAND2_X1 i_0_16 (.A1(in1[3]), .A2(n_0_4), .ZN(n_0_1));
   NAND2_X1 i_0_17 (.A1(n_0_2), .A2(n_0_3), .ZN(out[1]));
   NAND2_X1 i_0_18 (.A1(in2[1]), .A2(sel), .ZN(n_0_2));
   NAND2_X1 i_0_19 (.A1(in1[1]), .A2(n_0_4), .ZN(n_0_3));
   INV_X1 i_0_20 (.A(sel), .ZN(n_0_4));
endmodule

module mux_8_1__0_1391(sel, in1, in2, in3, in4, in5, in6, in7, in8, out);
   input [2:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   input [15:0]in5;
   input [15:0]in6;
   input [15:0]in7;
   input [15:0]in8;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_4_1__0_1390 mux1 (.sel({sel[1], sel[0]}), .in1(in1), .in2(in2), .in3(in3), 
      .in4(in4), .out(mux1_out));
   mux_4_1__0_1383 mux2 (.sel({sel[1], sel[0]}), .in1(in5), .in2(in6), .in3(in7), 
      .in4(in8), .out(mux2_out));
   mux_2_1__0_1376 mux3 (.sel(sel[2]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module mux_2_1__0_1406(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_2_1__0_1404(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in1[0]), .A2(n_0_0), .ZN(out[0]));
   AND2_X1 i_0_1 (.A1(in1[1]), .A2(n_0_0), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(in1[2]), .A2(n_0_0), .ZN(out[2]));
   AND2_X1 i_0_3 (.A1(in1[3]), .A2(n_0_0), .ZN(out[3]));
   AND2_X1 i_0_4 (.A1(in1[4]), .A2(n_0_0), .ZN(out[4]));
   AND2_X1 i_0_5 (.A1(in1[5]), .A2(n_0_0), .ZN(out[5]));
   AND2_X1 i_0_6 (.A1(in1[6]), .A2(n_0_0), .ZN(out[6]));
   AND2_X1 i_0_7 (.A1(in1[7]), .A2(n_0_0), .ZN(out[7]));
   AND2_X1 i_0_8 (.A1(in1[8]), .A2(n_0_0), .ZN(out[8]));
   AND2_X1 i_0_9 (.A1(in1[9]), .A2(n_0_0), .ZN(out[9]));
   AND2_X1 i_0_10 (.A1(in1[10]), .A2(n_0_0), .ZN(out[10]));
   AND2_X1 i_0_11 (.A1(in1[11]), .A2(n_0_0), .ZN(out[11]));
   AND2_X1 i_0_12 (.A1(in1[12]), .A2(n_0_0), .ZN(out[12]));
   AND2_X1 i_0_13 (.A1(in1[13]), .A2(n_0_0), .ZN(out[13]));
   AND2_X1 i_0_14 (.A1(in1[14]), .A2(n_0_0), .ZN(out[14]));
   AND2_X1 i_0_15 (.A1(in1[15]), .A2(n_0_0), .ZN(out[15]));
   INV_X1 i_0_16 (.A(sel), .ZN(n_0_0));
endmodule

module mux_2_1__0_1402(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_4_1__0_1407(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_2_1__0_1406 mux1 (.sel(sel[0]), .in1(in1), .in2(in2), .out(mux1_out));
   mux_2_1__0_1404 mux2 (.sel(sel[0]), .in1(in3), .in2(), .out(mux2_out));
   mux_2_1__0_1402 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module mux_2_1__0_1393(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in1[0]), .A2(n_0_0), .ZN(out[0]));
   AND2_X1 i_0_1 (.A1(in1[1]), .A2(n_0_0), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(in1[2]), .A2(n_0_0), .ZN(out[2]));
   AND2_X1 i_0_3 (.A1(in1[3]), .A2(n_0_0), .ZN(out[3]));
   AND2_X1 i_0_4 (.A1(in1[4]), .A2(n_0_0), .ZN(out[4]));
   AND2_X1 i_0_5 (.A1(in1[5]), .A2(n_0_0), .ZN(out[5]));
   AND2_X1 i_0_6 (.A1(in1[6]), .A2(n_0_0), .ZN(out[6]));
   AND2_X1 i_0_7 (.A1(in1[7]), .A2(n_0_0), .ZN(out[7]));
   AND2_X1 i_0_8 (.A1(in1[8]), .A2(n_0_0), .ZN(out[8]));
   AND2_X1 i_0_9 (.A1(in1[9]), .A2(n_0_0), .ZN(out[9]));
   AND2_X1 i_0_10 (.A1(in1[10]), .A2(n_0_0), .ZN(out[10]));
   AND2_X1 i_0_11 (.A1(in1[11]), .A2(n_0_0), .ZN(out[11]));
   AND2_X1 i_0_12 (.A1(in1[12]), .A2(n_0_0), .ZN(out[12]));
   AND2_X1 i_0_13 (.A1(in1[13]), .A2(n_0_0), .ZN(out[13]));
   AND2_X1 i_0_14 (.A1(in1[14]), .A2(n_0_0), .ZN(out[14]));
   AND2_X1 i_0_15 (.A1(in1[15]), .A2(n_0_0), .ZN(out[15]));
   INV_X1 i_0_16 (.A(sel), .ZN(n_0_0));
endmodule

module mux_8_1__0_1408(sel, in1, in2, in3, in4, in5, in6, in7, in8, out);
   input [2:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   input [15:0]in5;
   input [15:0]in6;
   input [15:0]in7;
   input [15:0]in8;
   output [15:0]out;

   wire [15:0]mux1_out;

   mux_4_1__0_1407 mux1 (.sel({sel[1], sel[0]}), .in1(in1), .in2(in2), .in3(in3), 
      .in4(), .out(mux1_out));
   mux_2_1__0_1393 mux3 (.sel(sel[2]), .in1(mux1_out), .in2(), .out(out));
endmodule

module mux_2_1__0_199(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   NAND2_X1 i_0_0 (.A1(n_0_1), .A2(n_0_0), .ZN(out[0]));
   NAND2_X1 i_0_1 (.A1(in2[0]), .A2(sel), .ZN(n_0_0));
   NAND2_X1 i_0_16 (.A1(in1[0]), .A2(n_0_4), .ZN(n_0_1));
   NAND2_X1 i_0_17 (.A1(n_0_3), .A2(n_0_2), .ZN(out[1]));
   NAND2_X1 i_0_18 (.A1(in2[1]), .A2(sel), .ZN(n_0_2));
   NAND2_X1 i_0_19 (.A1(in1[1]), .A2(n_0_4), .ZN(n_0_3));
   INV_X1 i_0_20 (.A(sel), .ZN(n_0_4));
endmodule

module mux_16_1(sel, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, 
      in12, in13, in14, in15, in16, out);
   input [3:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   input [15:0]in5;
   input [15:0]in6;
   input [15:0]in7;
   input [15:0]in8;
   input [15:0]in9;
   input [15:0]in10;
   input [15:0]in11;
   input [15:0]in12;
   input [15:0]in13;
   input [15:0]in14;
   input [15:0]in15;
   input [15:0]in16;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_8_1__0_1391 mux1 (.sel({sel[2], sel[1], sel[0]}), .in1(in1), .in2(in2), 
      .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .out(
      mux1_out));
   mux_8_1__0_1408 mux2 (.sel({sel[2], sel[1], sel[0]}), .in1(in9), .in2(in10), 
      .in3(in11), .in4(), .in5(), .in6(), .in7(), .in8(), .out(mux2_out));
   mux_2_1__0_199 mux3 (.sel(sel[3]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module Register__0_174(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module Register__0_177(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module mux_2_1__0_215(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(sel), .A2(in2[1]), .ZN(out[1]));
   AND2_X1 i_0_1 (.A1(sel), .A2(in2[0]), .ZN(out[0]));
   AND2_X1 i_0_2 (.A1(sel), .A2(in2[3]), .ZN(out[3]));
   AND2_X1 i_0_3 (.A1(sel), .A2(in2[2]), .ZN(out[2]));
   AND2_X1 i_0_4 (.A1(sel), .A2(in2[5]), .ZN(out[5]));
   AND2_X1 i_0_5 (.A1(sel), .A2(in2[4]), .ZN(out[4]));
   INV_X1 i_0_6 (.A(in2[7]), .ZN(n_0_0));
   NAND2_X1 i_0_7 (.A1(n_0_0), .A2(sel), .ZN(out[7]));
   AND2_X1 i_0_8 (.A1(sel), .A2(in2[6]), .ZN(out[6]));
   AND2_X1 i_0_9 (.A1(sel), .A2(in2[9]), .ZN(out[9]));
   AND2_X1 i_0_10 (.A1(sel), .A2(in2[8]), .ZN(out[8]));
   AND2_X1 i_0_11 (.A1(sel), .A2(in2[11]), .ZN(out[11]));
   AND2_X1 i_0_12 (.A1(sel), .A2(in2[10]), .ZN(out[10]));
   AND2_X1 i_0_13 (.A1(sel), .A2(in2[13]), .ZN(out[13]));
   AND2_X1 i_0_14 (.A1(sel), .A2(in2[12]), .ZN(out[12]));
   AND2_X1 i_0_15 (.A1(sel), .A2(in2[15]), .ZN(out[15]));
   AND2_X1 i_0_16 (.A1(sel), .A2(in2[14]), .ZN(out[14]));
endmodule

module mux_2_1__0_213(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   AOI21_X1 i_0_0 (.A(n_0_0), .B1(n_0_1), .B2(sel), .ZN(out[0]));
   NOR2_X1 i_0_1 (.A1(sel), .A2(in1[0]), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(in2[0]), .ZN(n_0_1));
   AOI21_X1 i_0_16 (.A(n_0_2), .B1(n_0_3), .B2(sel), .ZN(out[1]));
   NOR2_X1 i_0_17 (.A1(sel), .A2(in1[1]), .ZN(n_0_2));
   INV_X1 i_0_18 (.A(in2[1]), .ZN(n_0_3));
   AOI21_X1 i_0_19 (.A(n_0_4), .B1(n_0_5), .B2(sel), .ZN(out[3]));
   NOR2_X1 i_0_20 (.A1(sel), .A2(in1[3]), .ZN(n_0_4));
   INV_X1 i_0_21 (.A(in2[3]), .ZN(n_0_5));
endmodule

module mux_2_1__0_211(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   NAND2_X1 i_0_0 (.A1(n_0_0), .A2(n_0_1), .ZN(out[1]));
   NAND2_X1 i_0_1 (.A1(in2[1]), .A2(sel), .ZN(n_0_0));
   NAND2_X1 i_0_2 (.A1(in1[1]), .A2(n_0_2), .ZN(n_0_1));
   INV_X1 i_0_16 (.A(sel), .ZN(n_0_2));
   MUX2_X1 i_0_17 (.A(in2[0]), .B(in1[0]), .S(n_0_5), .Z(out[0]));
   NAND2_X1 i_0_18 (.A1(n_0_3), .A2(n_0_4), .ZN(out[2]));
   NAND2_X1 i_0_19 (.A1(in2[2]), .A2(sel), .ZN(n_0_3));
   NAND2_X1 i_0_20 (.A1(in1[2]), .A2(n_0_5), .ZN(n_0_4));
   INV_X1 i_0_21 (.A(sel), .ZN(n_0_5));
endmodule

module mux_4_1__0_216(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_2_1__0_215 mux1 (.sel(sel[0]), .in1(), .in2(in2), .out(mux1_out));
   mux_2_1__0_213 mux2 (.sel(sel[0]), .in1(in3), .in2(in4), .out(mux2_out));
   mux_2_1__0_211 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module mux_2_1__0_222(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   AOI21_X1 i_0_0 (.A(n_0_0), .B1(n_0_1), .B2(sel), .ZN(out[0]));
   NOR2_X1 i_0_1 (.A1(sel), .A2(in1[0]), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(in2[0]), .ZN(n_0_1));
   AOI21_X1 i_0_16 (.A(n_0_2), .B1(n_0_3), .B2(sel), .ZN(out[1]));
   NOR2_X1 i_0_17 (.A1(sel), .A2(in1[1]), .ZN(n_0_2));
   INV_X1 i_0_18 (.A(in2[1]), .ZN(n_0_3));
   AOI21_X1 i_0_19 (.A(n_0_4), .B1(n_0_5), .B2(sel), .ZN(out[3]));
   NOR2_X1 i_0_20 (.A1(sel), .A2(in1[3]), .ZN(n_0_4));
   INV_X1 i_0_21 (.A(in2[3]), .ZN(n_0_5));
endmodule

module mux_2_1__0_218(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in1[0]), .A2(n_0_0), .ZN(out[0]));
   AND2_X1 i_0_1 (.A1(in1[1]), .A2(n_0_0), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(in1[2]), .A2(n_0_0), .ZN(out[2]));
   AND2_X1 i_0_3 (.A1(in1[3]), .A2(n_0_0), .ZN(out[3]));
   AND2_X1 i_0_4 (.A1(in1[4]), .A2(n_0_0), .ZN(out[4]));
   AND2_X1 i_0_5 (.A1(in1[5]), .A2(n_0_0), .ZN(out[5]));
   AND2_X1 i_0_6 (.A1(in1[6]), .A2(n_0_0), .ZN(out[6]));
   AND2_X1 i_0_7 (.A1(in1[7]), .A2(n_0_0), .ZN(out[7]));
   AND2_X1 i_0_8 (.A1(in1[8]), .A2(n_0_0), .ZN(out[8]));
   AND2_X1 i_0_9 (.A1(in1[9]), .A2(n_0_0), .ZN(out[9]));
   AND2_X1 i_0_10 (.A1(in1[10]), .A2(n_0_0), .ZN(out[10]));
   AND2_X1 i_0_11 (.A1(in1[11]), .A2(n_0_0), .ZN(out[11]));
   AND2_X1 i_0_12 (.A1(in1[12]), .A2(n_0_0), .ZN(out[12]));
   AND2_X1 i_0_13 (.A1(in1[13]), .A2(n_0_0), .ZN(out[13]));
   AND2_X1 i_0_14 (.A1(in1[14]), .A2(n_0_0), .ZN(out[14]));
   AND2_X1 i_0_15 (.A1(in1[15]), .A2(n_0_0), .ZN(out[15]));
   INV_X1 i_0_16 (.A(sel), .ZN(n_0_0));
endmodule

module mux_4_1__0_223(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;

   mux_2_1__0_222 mux1 (.sel(sel[0]), .in1(in1), .in2(in2), .out(mux1_out));
   mux_2_1__0_218 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(), .out(out));
endmodule

module mux_2_1__0_197(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
   AOI21_X1 i_0_0 (.A(n_0_0), .B1(n_0_1), .B2(n_0_3), .ZN(out[0]));
   NOR2_X1 i_0_1 (.A1(in2[0]), .A2(n_0_3), .ZN(n_0_0));
   INV_X1 i_0_16 (.A(in1[0]), .ZN(n_0_1));
   AOI21_X1 i_0_17 (.A(n_0_2), .B1(n_0_4), .B2(n_0_3), .ZN(out[1]));
   NOR2_X1 i_0_18 (.A1(in2[1]), .A2(n_0_3), .ZN(n_0_2));
   INV_X1 i_0_19 (.A(sel), .ZN(n_0_3));
   INV_X1 i_0_20 (.A(in1[1]), .ZN(n_0_4));
endmodule

module mux_8_1(sel, in1, in2, in3, in4, in5, in6, in7, in8, out);
   input [2:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   input [15:0]in5;
   input [15:0]in6;
   input [15:0]in7;
   input [15:0]in8;
   output [15:0]out;

   wire [15:0]mux1_out;
   wire [15:0]mux2_out;

   mux_4_1__0_216 mux1 (.sel({sel[1], sel[0]}), .in1(), .in2(in2), .in3(in3), 
      .in4(in4), .out(mux1_out));
   mux_4_1__0_223 mux2 (.sel({sel[1], sel[0]}), .in1(in5), .in2(in4), .in3(), 
      .in4(), .out(mux2_out));
   mux_2_1__0_197 mux3 (.sel(sel[2]), .in1(mux1_out), .in2(mux2_out), .out(out));
endmodule

module full_adder__0_1081(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;
   wire n_0_1;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   NAND2_X1 i_0_1 (.A1(n_0_1), .A2(n_0_0), .ZN(o_carry));
   INV_X1 i_0_2 (.A(i_bit1), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(i_bit2), .ZN(n_0_1));
endmodule

module full_adder__0_1077(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;

   XOR2_X1 i_0_0 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_1 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_2), .A2(n_0_6), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_5), .ZN(n_0_2));
   NAND2_X1 i_0_4 (.A1(n_0_3), .A2(n_0_6), .ZN(o_carry));
   NAND2_X1 i_0_5 (.A1(i_carry), .A2(n_0_4), .ZN(n_0_3));
   INV_X1 i_0_6 (.A(n_0_5), .ZN(n_0_4));
   NOR2_X1 i_0_7 (.A1(i_bit2), .A2(i_bit1), .ZN(n_0_5));
   NAND2_X1 i_0_8 (.A1(i_bit2), .A2(i_bit1), .ZN(n_0_6));
endmodule

module adder_block__0_1082(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1081 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1077 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1072(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1068(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   XOR2_X1 i_0_0 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_1 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_3), .A2(n_0_4), .ZN(n_0_0));
   NAND2_X1 i_0_3 (.A1(n_0_2), .A2(n_0_4), .ZN(o_carry));
   NAND2_X1 i_0_4 (.A1(i_carry), .A2(n_0_3), .ZN(n_0_2));
   OR2_X1 i_0_5 (.A1(i_bit2), .A2(i_bit1), .ZN(n_0_3));
   NAND2_X1 i_0_6 (.A1(i_bit2), .A2(i_bit1), .ZN(n_0_4));
endmodule

module adder_block__0_1073(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1072 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1068 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1083(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   adder_block__0_1082 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1073 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   NAND2_X1 i_0_2 (.A1(n_0_1), .A2(n_0_0), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(o_result_one_carry[2]), .A2(cin), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(o_result_zero_carry[2]), .A2(n_0_2), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(cin), .ZN(n_0_2));
endmodule

module full_adder__0_1101(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1097(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;

   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_0 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_2), .A2(n_0_6), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_5), .ZN(n_0_2));
   NAND2_X1 i_0_4 (.A1(n_0_3), .A2(n_0_6), .ZN(o_carry));
   NAND2_X1 i_0_5 (.A1(i_carry), .A2(n_0_4), .ZN(n_0_3));
   INV_X1 i_0_6 (.A(n_0_5), .ZN(n_0_4));
   NOR2_X1 i_0_7 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_5));
   NAND2_X1 i_0_8 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_6));
endmodule

module adder_block__0_1102(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1101 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1097 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1092(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1088(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;

   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_0 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_2), .A2(n_0_6), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_5), .ZN(n_0_2));
   NAND2_X1 i_0_4 (.A1(n_0_3), .A2(n_0_6), .ZN(o_carry));
   NAND2_X1 i_0_5 (.A1(i_carry), .A2(n_0_4), .ZN(n_0_3));
   INV_X1 i_0_6 (.A(n_0_5), .ZN(n_0_4));
   NOR2_X1 i_0_7 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_5));
   NAND2_X1 i_0_8 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_6));
endmodule

module adder_block__0_1093(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1092 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1088 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1103(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   adder_block__0_1102 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1093 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   NAND2_X1 i_0_2 (.A1(n_0_0), .A2(n_0_1), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(o_result_one_carry[2]), .A2(cin), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(n_0_2), .A2(o_result_zero_carry[2]), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(cin), .ZN(n_0_2));
endmodule

module full_adder__0_1121(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1117(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_0 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_4), .ZN(n_0_2));
   AOI21_X1 i_0_4 (.A(n_0_4), .B1(n_0_5), .B2(n_0_3), .ZN(o_carry));
   NAND2_X1 i_0_5 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_3));
   NOR2_X1 i_0_6 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_4));
   INV_X1 i_0_7 (.A(i_carry), .ZN(n_0_5));
endmodule

module adder_block__0_1122(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1121 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1117 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1112(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1108(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_0 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_4), .ZN(n_0_2));
   AOI21_X1 i_0_4 (.A(n_0_4), .B1(n_0_5), .B2(n_0_3), .ZN(o_carry));
   NAND2_X1 i_0_5 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_3));
   NOR2_X1 i_0_6 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_4));
   INV_X1 i_0_7 (.A(i_carry), .ZN(n_0_5));
endmodule

module adder_block__0_1113(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1112 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1108 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1123(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   adder_block__0_1122 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1113 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   NAND2_X1 i_0_2 (.A1(n_0_1), .A2(n_0_0), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(o_result_one_carry[2]), .A2(cin), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(o_result_zero_carry[2]), .A2(n_0_2), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(cin), .ZN(n_0_2));
endmodule

module full_adder__0_1141(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1137(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;

   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_0 (.A(n_0_0), .ZN(n_0_1));
   NAND2_X1 i_0_2 (.A1(n_0_6), .A2(n_0_4), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_2), .ZN(o_carry));
   NAND2_X1 i_0_4 (.A1(n_0_3), .A2(n_0_6), .ZN(n_0_2));
   NAND2_X1 i_0_5 (.A1(n_0_4), .A2(n_0_5), .ZN(n_0_3));
   NAND2_X1 i_0_6 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_4));
   INV_X1 i_0_7 (.A(i_carry), .ZN(n_0_5));
   NAND2_X1 i_0_8 (.A1(n_0_7), .A2(n_0_8), .ZN(n_0_6));
   INV_X1 i_0_9 (.A(i_bit1), .ZN(n_0_7));
   INV_X1 i_0_10 (.A(i_bit2), .ZN(n_0_8));
endmodule

module adder_block__0_1142(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1141 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1137 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1132(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1128(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;

   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   INV_X1 i_0_0 (.A(n_0_0), .ZN(n_0_1));
   XNOR2_X1 i_0_2 (.A(i_bit1), .B(i_bit2), .ZN(n_0_0));
   NOR2_X1 i_0_3 (.A1(n_0_2), .A2(n_0_3), .ZN(o_carry));
   AOI21_X1 i_0_4 (.A(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_2));
   NOR2_X1 i_0_5 (.A1(i_bit1), .A2(i_bit2), .ZN(n_0_3));
endmodule

module adder_block__0_1133(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1132 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1128 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1143(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   adder_block__0_1142 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1133 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   INV_X1 i_0_2 (.A(n_0_0), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(n_0_3), .A2(n_0_1), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(cin), .A2(n_0_2), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(o_result_one_carry[2]), .ZN(n_0_2));
   NAND2_X1 i_0_6 (.A1(n_0_4), .A2(n_0_5), .ZN(n_0_3));
   INV_X1 i_0_7 (.A(cin), .ZN(n_0_4));
   INV_X1 i_0_8 (.A(o_result_zero_carry[2]), .ZN(n_0_5));
endmodule

module full_adder__0_1161(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1157(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_1162(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1161 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1157 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1152(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1148(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_1153(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1152 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1148 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1163(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   adder_block__0_1162 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1153 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   INV_X1 i_0_2 (.A(n_0_0), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(n_0_3), .A2(n_0_1), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(cin), .A2(n_0_2), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(o_result_one_carry[2]), .ZN(n_0_2));
   NAND2_X1 i_0_6 (.A1(n_0_4), .A2(n_0_5), .ZN(n_0_3));
   INV_X1 i_0_7 (.A(cin), .ZN(n_0_4));
   INV_X1 i_0_8 (.A(o_result_zero_carry[2]), .ZN(n_0_5));
endmodule

module full_adder__0_1181(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1177(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_1182(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1181 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1177 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1172(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1168(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_1173(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1172 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1168 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1183(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;

   adder_block__0_1182 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1173 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   INV_X1 i_0_2 (.A(n_0_0), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(n_0_3), .A2(n_0_1), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(cin), .A2(n_0_2), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(o_result_one_carry[2]), .ZN(n_0_2));
   NAND2_X1 i_0_6 (.A1(n_0_4), .A2(n_0_5), .ZN(n_0_3));
   INV_X1 i_0_7 (.A(cin), .ZN(n_0_4));
   INV_X1 i_0_8 (.A(o_result_zero_carry[2]), .ZN(n_0_5));
endmodule

module full_adder__0_1201(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1197(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_1202(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1201 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1197 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1192(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1188(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_1193(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1192 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1188 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1203(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   adder_block__0_1202 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1193 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   NAND2_X1 i_0_2 (.A1(n_0_1), .A2(n_0_0), .ZN(o_result[2]));
   NAND2_X1 i_0_3 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(n_0_2), .A2(o_result_zero_carry[2]), .ZN(n_0_1));
   INV_X1 i_0_5 (.A(cin), .ZN(n_0_2));
endmodule

module full_adder__0_242(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_238(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_243(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_242 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__0_238 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_234(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_234 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), .i_carry(
      intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire intermediate_carry_1;
   wire [2:0]o_result_one_carry;
   wire intermediate_carry_0;
   wire [2:0]o_result_zero_carry;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   adder_block__0_243 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry(intermediate_carry_1));
   adder_block adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry(intermediate_carry_0));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   NAND2_X1 i_0_0 (.A1(n_0_0), .A2(n_0_1), .ZN(intermediate_carry));
   NAND2_X1 i_0_3 (.A1(n_0_3), .A2(intermediate_carry_0), .ZN(n_0_0));
   NAND2_X1 i_0_4 (.A1(cin), .A2(intermediate_carry_1), .ZN(n_0_1));
   NAND2_X1 i_0_5 (.A1(n_0_2), .A2(n_0_4), .ZN(o_result[2]));
   NAND2_X1 i_0_6 (.A1(n_0_3), .A2(o_result_zero_carry[2]), .ZN(n_0_2));
   INV_X1 i_0_7 (.A(cin), .ZN(n_0_3));
   NAND2_X1 i_0_8 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(n_0_4));
endmodule

module adder__parameterized4(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;
   wire intermediate_cs;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;

   which_adder__0_1083 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({n_20, n_21}), 
      .cin(is_subtract), .o_result({cs, result[1], result[0]}), 
      .intermediate_carry());
   which_adder__0_1103 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({n_13, n_22}), .cin(cs), .o_result({n_14, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_1123 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({n_12, n_11}), .cin(n_14), .o_result({n_15, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_1143 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({n_10, n_9}), .cin(n_15), .o_result({n_16, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_1163 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({n_8, n_7}), .cin(n_16), .o_result({n_17, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_1183 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({n_6, n_5}), .cin(n_17), .o_result({n_18, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_1203 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({n_4, n_3}), .cin(n_18), .o_result({n_19, result[13], result[12]}), 
      .intermediate_carry());
   which_adder Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), .i_add2({
      n_2, n_1}), .cin(n_19), .o_result({n_0, result[15], result[14]}), 
      .intermediate_carry(intermediate_cs));
   XOR2_X1 i_0_0 (.A(is_subtract), .B(B[14]), .Z(n_1));
   XOR2_X1 i_0_1 (.A(is_subtract), .B(B[15]), .Z(n_2));
   XOR2_X1 i_0_2 (.A(is_subtract), .B(B[12]), .Z(n_3));
   XOR2_X1 i_0_3 (.A(is_subtract), .B(B[13]), .Z(n_4));
   XOR2_X1 i_0_4 (.A(is_subtract), .B(B[10]), .Z(n_5));
   XOR2_X1 i_0_5 (.A(is_subtract), .B(B[11]), .Z(n_6));
   XOR2_X1 i_0_6 (.A(is_subtract), .B(B[8]), .Z(n_7));
   XOR2_X1 i_0_7 (.A(is_subtract), .B(B[9]), .Z(n_8));
   XOR2_X1 i_0_8 (.A(is_subtract), .B(B[6]), .Z(n_9));
   XOR2_X1 i_0_9 (.A(is_subtract), .B(B[7]), .Z(n_10));
   XOR2_X1 i_0_10 (.A(is_subtract), .B(B[4]), .Z(n_11));
   XOR2_X1 i_0_11 (.A(is_subtract), .B(B[5]), .Z(n_12));
   XOR2_X1 i_0_13 (.A(is_subtract), .B(B[3]), .Z(n_13));
   XOR2_X1 i_0_16 (.A(is_subtract), .B(B[1]), .Z(n_20));
   XNOR2_X1 i_0_12 (.A(B[0]), .B(n_0_4), .ZN(n_21));
   NAND2_X1 i_0_14 (.A1(n_0_0), .A2(n_0_2), .ZN(overflow_flag));
   NAND2_X1 i_0_15 (.A1(n_0_1), .A2(n_0), .ZN(n_0_0));
   INV_X1 i_0_17 (.A(intermediate_cs), .ZN(n_0_1));
   NAND2_X1 i_0_18 (.A1(n_0_3), .A2(intermediate_cs), .ZN(n_0_2));
   INV_X1 i_0_19 (.A(n_0), .ZN(n_0_3));
   XNOR2_X1 i_0_20 (.A(B[2]), .B(n_0_4), .ZN(n_22));
   INV_X1 i_0_21 (.A(is_subtract), .ZN(n_0_4));
endmodule

module Register__0_180(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module full_adder__0_1012(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__0_1008(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1013(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1012 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__0_1008 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1023(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_1013 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__0_1037(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1042(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1037 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1043(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1042 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1057(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_1062(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1057 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__0_1063(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1062 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized3(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [5:0]A;
   input [5:0]B;
   input is_subtract;
   output [5:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_1023 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_1043 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_1063 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2(), .cin(n_0), .o_result({uc_0, result[5], result[4]}), 
      .intermediate_carry());
endmodule

module full_adder__0_781(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_777(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_782(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_781 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_777 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_772(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_768(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_773(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_772 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_768 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_783(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_782 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_773 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_801(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_797(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_802(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_801 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_797 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_792(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_788(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_793(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_792 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_788 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_803(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_802 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_793 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_821(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_817(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_822(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_821 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_817 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_812(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_808(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_813(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_812 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_808 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_823(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_822 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_813 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_841(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_837(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_842(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_841 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_837 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_832(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_828(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_833(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_832 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_828 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_843(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_842 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_833 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_861(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_857(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_862(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_861 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_857 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_852(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_848(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_853(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_852 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_848 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_863(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_862 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_853 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_881(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_877(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_882(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_881 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_877 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_872(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_868(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_873(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_872 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_868 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_883(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_882 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_873 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_901(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_897(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_902(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_901 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_897 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_892(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_888(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_893(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_892 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_888 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_903(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_902 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_893 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_921(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_917(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_922(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_921 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_917 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_912(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_908(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_913(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_912 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_908 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_923(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_922 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_913 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_941(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_937(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_942(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_941 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_937 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_932(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_928(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_933(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_932 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_928 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_943(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_942 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_933 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_961(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_957(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_962(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_961 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_957 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_952(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_948(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_953(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_952 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_948 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_963(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_962 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_953 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_981(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_977(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_982(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_981 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_977 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_972(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_968(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_973(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_972 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_968 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_983(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_982 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_973 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1001(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .ZN(o_sum));
endmodule

module adder_block__0_1002(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1001 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
endmodule

module full_adder__0_992(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
endmodule

module adder_block__0_993(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_992 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
endmodule

module which_adder__0_1003(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1002 adder_block_inst2 (.i_add1({uc_0, i_add1[0]}), .i_add2({
      i_add2[1], uc_1}), .cin(), .o_result({uc_2, uc_3, o_result_one_carry[0]}), 
      .intermediate_carry());
   adder_block__0_993 adder_block_inst1 (.i_add1({uc_4, i_add1[0]}), .i_add2({
      i_add2[1], uc_5}), .cin(), .o_result({uc_6, uc_7, o_result_zero_carry[0]}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
endmodule

module adder__parameterized2(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [23:0]A;
   input [23:0]B;
   input is_subtract;
   output [23:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_783 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({n_21, n_20}), 
      .cin(is_subtract), .o_result({cs, result[1], result[0]}), 
      .intermediate_carry());
   which_adder__0_803 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({n_19, n_18}), .cin(cs), .o_result({n_22, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_823 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({n_17, n_16}), .cin(n_22), .o_result({n_23, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_843 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({n_15, n_14}), .cin(n_23), .o_result({n_24, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_863 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({n_13, n_12}), .cin(n_24), .o_result({n_25, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_883 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({n_11, n_10}), .cin(n_25), .o_result({n_0, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_903 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({n_9, n_8}), .cin(n_0), .o_result({n_1, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_923 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({n_7, n_6}), .cin(n_1), .o_result({n_2, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__0_943 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2({is_subtract, uc_0}), .cin(n_2), .o_result({n_3, result[17], 
      result[16]}), .intermediate_carry());
   which_adder__0_963 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2({is_subtract, uc_1}), .cin(n_3), .o_result({n_4, result[19], 
      result[18]}), .intermediate_carry());
   which_adder__0_983 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2({is_subtract, uc_2}), .cin(n_4), .o_result({n_5, result[21], 
      result[20]}), .intermediate_carry());
   which_adder__0_1003 Gen_Modules_11_which_adder_x (.i_add1({uc_3, A[22]}), 
      .i_add2({is_subtract, uc_4}), .cin(n_5), .o_result({uc_5, uc_6, result[22]}), 
      .intermediate_carry());
   XOR2_X1 i_0_0 (.A(is_subtract), .B(B[14]), .Z(n_6));
   XOR2_X1 i_0_1 (.A(is_subtract), .B(B[15]), .Z(n_7));
   XOR2_X1 i_0_2 (.A(is_subtract), .B(B[12]), .Z(n_8));
   XOR2_X1 i_0_3 (.A(is_subtract), .B(B[13]), .Z(n_9));
   XOR2_X1 i_0_4 (.A(is_subtract), .B(B[10]), .Z(n_10));
   XOR2_X1 i_0_5 (.A(is_subtract), .B(B[11]), .Z(n_11));
   XOR2_X1 i_0_6 (.A(is_subtract), .B(B[8]), .Z(n_12));
   XOR2_X1 i_0_7 (.A(is_subtract), .B(B[9]), .Z(n_13));
   XOR2_X1 i_0_8 (.A(is_subtract), .B(B[6]), .Z(n_14));
   XOR2_X1 i_0_9 (.A(is_subtract), .B(B[7]), .Z(n_15));
   XOR2_X1 i_0_10 (.A(is_subtract), .B(B[4]), .Z(n_16));
   XOR2_X1 i_0_11 (.A(is_subtract), .B(B[5]), .Z(n_17));
   XOR2_X1 i_0_12 (.A(is_subtract), .B(B[2]), .Z(n_18));
   XOR2_X1 i_0_13 (.A(is_subtract), .B(B[3]), .Z(n_19));
   XOR2_X1 i_0_14 (.A(is_subtract), .B(B[0]), .Z(n_20));
   XOR2_X1 i_0_15 (.A(is_subtract), .B(B[1]), .Z(n_21));
endmodule

module division(clk, rst, dividen, divisor, start, result, overflow_flag, finish);
   input clk;
   input rst;
   input [15:0]dividen;
   input [15:0]divisor;
   input start;
   output [15:0]result;
   output overflow_flag;
   output finish;

   wire [5:0]counter_new_value;
   wire [45:0]rem;
   wire f;
   wire [5:0]counter;
   wire [15:0]B;
   wire sign;
   wire working;
   wire start_buffer;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire n_0_48;
   wire n_0_49;
   wire n_0_50;
   wire n_0_51;
   wire n_0_52;
   wire n_0_53;
   wire n_0_54;
   wire n_0_55;
   wire n_0_56;
   wire n_0_57;
   wire n_0_58;
   wire n_0_59;
   wire n_0_60;
   wire n_0_61;
   wire n_0_62;
   wire n_0_63;
   wire n_0_64;
   wire n_0_65;
   wire n_0_66;
   wire n_0_67;
   wire n_0_68;
   wire n_0_69;
   wire n_0_70;
   wire n_0_71;
   wire n_0_72;
   wire n_0_73;
   wire n_0_74;
   wire n_0_75;
   wire n_0_76;
   wire n_0_77;
   wire n_0_78;
   wire n_0_79;
   wire n_0_80;
   wire n_0_81;
   wire n_0_82;
   wire n_0_83;
   wire n_0_84;
   wire n_0_85;
   wire n_0_86;
   wire n_0_87;
   wire n_0_88;
   wire n_0_89;
   wire n_0_90;
   wire n_0_91;
   wire n_0_92;
   wire n_0_93;
   wire n_0_94;
   wire n_0_95;
   wire n_0_96;
   wire n_0_97;
   wire n_0_98;
   wire n_0_99;
   wire n_0_100;
   wire n_0_101;
   wire n_0_102;
   wire n_0_103;
   wire n_0_104;
   wire n_0_105;
   wire n_0_106;
   wire n_0_107;
   wire n_0_108;
   wire n_0_109;
   wire n_0_110;
   wire n_0_111;
   wire n_0_112;
   wire n_0_113;
   wire n_0_114;
   wire n_0_115;
   wire n_0_116;
   wire n_0_117;
   wire n_0_118;
   wire n_0_119;
   wire n_0_120;
   wire n_0_122;
   wire n_0_123;
   wire n_0_124;
   wire n_0_125;
   wire n_0_126;
   wire n_0_127;
   wire n_0_130;
   wire n_0_131;
   wire n_0_132;
   wire n_0_133;
   wire n_0_134;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_121;
   wire n_0_128;
   wire n_0_129;

   adder__parameterized3 adder_counter (.A(counter), .B(), .is_subtract(), 
      .result(counter_new_value), .carry(), .overflow_flag(), .negative());
   adder__parameterized2 adder_loop (.A({uc_0, rem[45], rem[44], rem[43], 
      rem[42], rem[41], rem[40], rem[39], rem[38], rem[37], rem[36], rem[35], 
      rem[34], rem[33], rem[32], rem[31], rem[30], rem[29], rem[28], rem[27], 
      rem[26], rem[25], rem[24], rem[23]}), .B({uc_1, uc_2, uc_3, uc_4, uc_5, 
      uc_6, uc_7, uc_8, B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], 
      B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]}), .is_subtract(f), 
      .result({uc_9, n_24, n_22, n_21, n_20, n_19, n_18, n_17, n_16, n_15, n_14, 
      n_13, n_12, n_11, n_10, n_9, n_8, n_7, n_6, n_5, n_4, n_3, n_2, n_1}), 
      .carry(), .overflow_flag(), .negative());
   DFF_X1 finish_reg (.D(n_99), .CK(n_23), .Q(finish), .QN());
   DFF_X1 \rem_reg[45]  (.D(n_71), .CK(n_23), .Q(rem[45]), .QN());
   DFF_X1 \rem_reg[44]  (.D(n_70), .CK(n_23), .Q(rem[44]), .QN());
   DFF_X1 \rem_reg[43]  (.D(n_69), .CK(n_23), .Q(rem[43]), .QN());
   DFF_X1 \rem_reg[42]  (.D(n_68), .CK(n_23), .Q(rem[42]), .QN());
   DFF_X1 \rem_reg[41]  (.D(n_67), .CK(n_23), .Q(rem[41]), .QN());
   DFF_X1 \rem_reg[40]  (.D(n_66), .CK(n_23), .Q(rem[40]), .QN());
   DFF_X1 \rem_reg[39]  (.D(n_65), .CK(n_23), .Q(rem[39]), .QN());
   DFF_X1 \rem_reg[38]  (.D(n_64), .CK(n_23), .Q(rem[38]), .QN());
   DFF_X1 \rem_reg[37]  (.D(n_63), .CK(n_23), .Q(rem[37]), .QN());
   DFF_X1 \rem_reg[36]  (.D(n_62), .CK(n_23), .Q(rem[36]), .QN());
   DFF_X1 \rem_reg[35]  (.D(n_61), .CK(n_23), .Q(rem[35]), .QN());
   DFF_X1 \rem_reg[34]  (.D(n_60), .CK(n_23), .Q(rem[34]), .QN());
   DFF_X1 \rem_reg[33]  (.D(n_59), .CK(n_23), .Q(rem[33]), .QN());
   DFF_X1 \rem_reg[32]  (.D(n_58), .CK(n_23), .Q(rem[32]), .QN());
   DFF_X1 \rem_reg[31]  (.D(n_57), .CK(n_23), .Q(rem[31]), .QN());
   DFF_X1 \rem_reg[30]  (.D(n_56), .CK(n_23), .Q(rem[30]), .QN());
   DFF_X1 \rem_reg[29]  (.D(n_55), .CK(n_23), .Q(rem[29]), .QN());
   DFF_X1 \rem_reg[28]  (.D(n_54), .CK(n_23), .Q(rem[28]), .QN());
   DFF_X1 \rem_reg[27]  (.D(n_53), .CK(n_23), .Q(rem[27]), .QN());
   DFF_X1 \rem_reg[26]  (.D(n_52), .CK(n_23), .Q(rem[26]), .QN());
   DFF_X1 \rem_reg[25]  (.D(n_51), .CK(n_23), .Q(rem[25]), .QN());
   DFF_X1 \rem_reg[24]  (.D(n_50), .CK(n_23), .Q(rem[24]), .QN());
   DFF_X1 \rem_reg[23]  (.D(n_49), .CK(n_23), .Q(rem[23]), .QN());
   DFF_X1 \rem_reg[22]  (.D(n_48), .CK(n_23), .Q(rem[22]), .QN());
   DFF_X1 \rem_reg[21]  (.D(n_47), .CK(n_23), .Q(rem[21]), .QN());
   DFF_X1 \rem_reg[20]  (.D(n_46), .CK(n_23), .Q(rem[20]), .QN());
   DFF_X1 \rem_reg[19]  (.D(n_45), .CK(n_23), .Q(rem[19]), .QN());
   DFF_X1 \rem_reg[18]  (.D(n_44), .CK(n_23), .Q(rem[18]), .QN());
   DFF_X1 \rem_reg[17]  (.D(n_43), .CK(n_23), .Q(rem[17]), .QN());
   DFF_X1 \rem_reg[16]  (.D(n_42), .CK(n_23), .Q(rem[16]), .QN());
   DFF_X1 \rem_reg[15]  (.D(n_41), .CK(n_23), .Q(rem[15]), .QN());
   DFF_X1 \rem_reg[14]  (.D(n_40), .CK(n_23), .Q(rem[14]), .QN());
   DFF_X1 \rem_reg[13]  (.D(n_39), .CK(n_23), .Q(rem[13]), .QN());
   DFF_X1 \rem_reg[12]  (.D(n_38), .CK(n_23), .Q(rem[12]), .QN());
   DFF_X1 \rem_reg[11]  (.D(n_37), .CK(n_23), .Q(rem[11]), .QN());
   DFF_X1 \rem_reg[10]  (.D(n_36), .CK(n_23), .Q(rem[10]), .QN());
   DFF_X1 \rem_reg[9]  (.D(n_35), .CK(n_23), .Q(rem[9]), .QN());
   DFF_X1 \rem_reg[8]  (.D(n_34), .CK(n_23), .Q(rem[8]), .QN());
   DFF_X1 \rem_reg[7]  (.D(n_33), .CK(n_23), .Q(rem[7]), .QN());
   DFF_X1 \rem_reg[6]  (.D(n_32), .CK(n_23), .Q(rem[6]), .QN());
   DFF_X1 \rem_reg[5]  (.D(n_31), .CK(n_23), .Q(rem[5]), .QN());
   DFF_X1 \rem_reg[4]  (.D(n_30), .CK(n_23), .Q(rem[4]), .QN());
   DFF_X1 \rem_reg[3]  (.D(n_29), .CK(n_23), .Q(rem[3]), .QN());
   DFF_X1 \rem_reg[2]  (.D(n_28), .CK(n_23), .Q(rem[2]), .QN());
   DFF_X1 \rem_reg[1]  (.D(n_27), .CK(n_23), .Q(rem[1]), .QN());
   DFF_X1 \rem_reg[0]  (.D(n_26), .CK(n_23), .Q(result[0]), .QN());
   DFF_X1 f_reg (.D(n_88), .CK(n_23), .Q(f), .QN());
   DFF_X1 \counter_reg[5]  (.D(n_97), .CK(n_23), .Q(counter[5]), .QN());
   DFF_X1 \counter_reg[4]  (.D(n_96), .CK(n_23), .Q(counter[4]), .QN());
   DFF_X1 \counter_reg[3]  (.D(n_95), .CK(n_23), .Q(counter[3]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_94), .CK(n_23), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_93), .CK(n_23), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_92), .CK(n_23), .Q(counter[0]), .QN());
   DFF_X1 \B_reg[15]  (.D(n_87), .CK(n_0), .Q(B[15]), .QN());
   DFF_X1 \B_reg[14]  (.D(n_86), .CK(n_0), .Q(B[14]), .QN());
   DFF_X1 \B_reg[13]  (.D(n_85), .CK(n_0), .Q(B[13]), .QN());
   DFF_X1 \B_reg[12]  (.D(n_84), .CK(n_0), .Q(B[12]), .QN());
   DFF_X1 \B_reg[11]  (.D(n_83), .CK(n_0), .Q(B[11]), .QN());
   DFF_X1 \B_reg[10]  (.D(n_82), .CK(n_0), .Q(B[10]), .QN());
   DFF_X1 \B_reg[9]  (.D(n_81), .CK(n_0), .Q(B[9]), .QN());
   DFF_X1 \B_reg[8]  (.D(n_80), .CK(n_0), .Q(B[8]), .QN());
   DFF_X1 \B_reg[7]  (.D(n_79), .CK(n_0), .Q(B[7]), .QN());
   DFF_X1 \B_reg[6]  (.D(n_78), .CK(n_0), .Q(B[6]), .QN());
   DFF_X1 \B_reg[5]  (.D(n_77), .CK(n_0), .Q(B[5]), .QN());
   DFF_X1 \B_reg[4]  (.D(n_76), .CK(n_0), .Q(B[4]), .QN());
   DFF_X1 \B_reg[3]  (.D(n_75), .CK(n_0), .Q(B[3]), .QN());
   DFF_X1 \B_reg[2]  (.D(n_74), .CK(n_0), .Q(B[2]), .QN());
   DFF_X1 \B_reg[1]  (.D(n_73), .CK(n_0), .Q(B[1]), .QN());
   DFF_X1 \B_reg[0]  (.D(n_72), .CK(n_0), .Q(B[0]), .QN());
   DFF_X1 sign_reg (.D(n_25), .CK(n_0), .Q(sign), .QN());
   DFF_X1 working_reg (.D(n_91), .CK(n_23), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_89), .CK(clk), .Q(start_buffer), .QN());
   CLKGATETST_X1 clk_gate_finish_reg (.CK(clk), .E(n_90), .SE(1'b0), .GCK(n_23));
   CLKGATETST_X1 clk_gate_sign_reg (.CK(clk), .E(n_98), .SE(1'b0), .GCK(n_0));
   NAND2_X1 i_0_0 (.A1(n_0_1), .A2(n_0_0), .ZN(overflow_flag));
   NOR4_X1 i_0_1 (.A1(rem[22]), .A2(rem[21]), .A3(rem[20]), .A4(rem[19]), 
      .ZN(n_0_0));
   NOR4_X1 i_0_2 (.A1(rem[18]), .A2(rem[17]), .A3(rem[16]), .A4(rem[15]), 
      .ZN(n_0_1));
   XNOR2_X1 i_0_3 (.A(rem[1]), .B(n_0_17), .ZN(result[1]));
   XNOR2_X1 i_0_4 (.A(rem[2]), .B(n_0_16), .ZN(result[2]));
   XOR2_X1 i_0_5 (.A(rem[3]), .B(n_0_15), .Z(result[3]));
   XNOR2_X1 i_0_6 (.A(rem[4]), .B(n_0_14), .ZN(result[4]));
   XNOR2_X1 i_0_7 (.A(rem[5]), .B(n_0_13), .ZN(result[5]));
   XNOR2_X1 i_0_8 (.A(rem[6]), .B(n_0_12), .ZN(result[6]));
   XNOR2_X1 i_0_9 (.A(rem[7]), .B(n_0_10), .ZN(result[7]));
   XNOR2_X1 i_0_10 (.A(n_0_20), .B(n_0_9), .ZN(result[8]));
   XNOR2_X1 i_0_11 (.A(rem[9]), .B(n_0_8), .ZN(result[9]));
   XNOR2_X1 i_0_12 (.A(rem[10]), .B(n_0_7), .ZN(result[10]));
   XNOR2_X1 i_0_13 (.A(rem[12]), .B(n_0_121), .ZN(result[12]));
   XNOR2_X1 i_0_14 (.A(rem[13]), .B(n_0_22), .ZN(result[13]));
   XNOR2_X1 i_0_15 (.A(rem[15]), .B(n_0_2), .ZN(result[15]));
   AOI21_X1 i_0_16 (.A(n_0_21), .B1(sign), .B2(rem[14]), .ZN(n_0_2));
   OAI21_X1 i_0_17 (.A(sign), .B1(n_0_5), .B2(rem[9]), .ZN(n_0_7));
   NAND2_X1 i_0_18 (.A1(n_0_5), .A2(sign), .ZN(n_0_8));
   NOR2_X1 i_0_19 (.A1(n_0_6), .A2(n_0_129), .ZN(n_0_9));
   AOI21_X1 i_0_20 (.A(n_0_11), .B1(sign), .B2(rem[6]), .ZN(n_0_10));
   INV_X1 i_0_21 (.A(n_0_12), .ZN(n_0_11));
   OAI21_X1 i_0_22 (.A(sign), .B1(n_0_18), .B2(rem[5]), .ZN(n_0_12));
   NAND2_X1 i_0_23 (.A1(n_0_18), .A2(sign), .ZN(n_0_13));
   AOI21_X1 i_0_24 (.A(n_0_15), .B1(sign), .B2(rem[3]), .ZN(n_0_14));
   OAI21_X1 i_0_25 (.A(n_0_16), .B1(n_0_129), .B2(n_0_126), .ZN(n_0_15));
   NAND2_X1 i_0_26 (.A1(n_0_19), .A2(sign), .ZN(n_0_16));
   NAND2_X1 i_0_27 (.A1(result[0]), .A2(sign), .ZN(n_0_17));
   AOI21_X1 i_0_28 (.A(n_0_24), .B1(dividen[15]), .B2(divisor[15]), .ZN(n_25));
   OAI21_X1 i_0_29 (.A(n_0_122), .B1(dividen[15]), .B2(divisor[15]), .ZN(n_0_24));
   NOR2_X1 i_0_30 (.A1(n_98), .A2(n_24), .ZN(n_26));
   AND2_X1 i_0_31 (.A1(result[0]), .A2(n_0_117), .ZN(n_27));
   AND2_X1 i_0_44 (.A1(rem[1]), .A2(n_0_117), .ZN(n_28));
   NOR2_X1 i_0_32 (.A1(n_0_126), .A2(n_98), .ZN(n_29));
   AND2_X1 i_0_46 (.A1(rem[3]), .A2(n_0_117), .ZN(n_30));
   AND2_X1 i_0_47 (.A1(rem[4]), .A2(n_0_117), .ZN(n_31));
   AND2_X1 i_0_48 (.A1(rem[5]), .A2(n_0_117), .ZN(n_32));
   AND2_X1 i_0_49 (.A1(rem[6]), .A2(n_0_117), .ZN(n_33));
   OAI22_X1 i_0_33 (.A1(n_0_127), .A2(n_98), .B1(n_0_116), .B2(n_0_130), 
      .ZN(n_34));
   OAI22_X1 i_0_34 (.A1(n_0_20), .A2(n_98), .B1(n_0_116), .B2(n_0_25), .ZN(n_35));
   XOR2_X1 i_0_35 (.A(dividen[1]), .B(n_0_26), .Z(n_0_25));
   NAND2_X1 i_0_36 (.A1(dividen[15]), .A2(dividen[0]), .ZN(n_0_26));
   OAI21_X1 i_0_37 (.A(n_0_29), .B1(n_0_27), .B2(n_0_116), .ZN(n_36));
   XOR2_X1 i_0_38 (.A(dividen[2]), .B(n_0_28), .Z(n_0_27));
   OAI21_X1 i_0_39 (.A(dividen[15]), .B1(dividen[1]), .B2(dividen[0]), .ZN(
      n_0_28));
   NAND2_X1 i_0_40 (.A1(rem[9]), .A2(n_0_117), .ZN(n_0_29));
   OAI21_X1 i_0_41 (.A(n_0_32), .B1(n_0_30), .B2(n_0_116), .ZN(n_37));
   XOR2_X1 i_0_42 (.A(dividen[3]), .B(n_0_31), .Z(n_0_30));
   NAND2_X1 i_0_43 (.A1(n_0_73), .A2(dividen[15]), .ZN(n_0_31));
   NAND2_X1 i_0_45 (.A1(rem[10]), .A2(n_0_117), .ZN(n_0_32));
   OAI21_X1 i_0_50 (.A(n_0_35), .B1(n_0_33), .B2(n_0_116), .ZN(n_38));
   XOR2_X1 i_0_51 (.A(dividen[4]), .B(n_0_34), .Z(n_0_33));
   OAI21_X1 i_0_52 (.A(dividen[15]), .B1(n_0_73), .B2(dividen[3]), .ZN(n_0_34));
   NAND2_X1 i_0_53 (.A1(rem[11]), .A2(n_0_117), .ZN(n_0_35));
   OAI21_X1 i_0_54 (.A(n_0_38), .B1(n_0_36), .B2(n_0_116), .ZN(n_39));
   XOR2_X1 i_0_55 (.A(dividen[5]), .B(n_0_37), .Z(n_0_36));
   NAND2_X1 i_0_56 (.A1(n_0_72), .A2(dividen[15]), .ZN(n_0_37));
   NAND2_X1 i_0_57 (.A1(rem[12]), .A2(n_0_117), .ZN(n_0_38));
   OAI22_X1 i_0_58 (.A1(n_0_128), .A2(n_98), .B1(n_0_116), .B2(n_0_39), .ZN(n_40));
   XOR2_X1 i_0_59 (.A(dividen[6]), .B(n_0_40), .Z(n_0_39));
   OAI21_X1 i_0_60 (.A(dividen[15]), .B1(n_0_72), .B2(dividen[5]), .ZN(n_0_40));
   OAI21_X1 i_0_61 (.A(n_0_43), .B1(n_0_41), .B2(n_0_116), .ZN(n_41));
   XOR2_X1 i_0_62 (.A(dividen[7]), .B(n_0_42), .Z(n_0_41));
   NAND2_X1 i_0_63 (.A1(n_0_71), .A2(dividen[15]), .ZN(n_0_42));
   NAND2_X1 i_0_64 (.A1(rem[14]), .A2(n_0_117), .ZN(n_0_43));
   OAI21_X1 i_0_65 (.A(n_0_46), .B1(n_0_44), .B2(n_0_116), .ZN(n_42));
   XOR2_X1 i_0_66 (.A(dividen[8]), .B(n_0_45), .Z(n_0_44));
   NAND2_X1 i_0_67 (.A1(n_0_70), .A2(dividen[15]), .ZN(n_0_45));
   NAND2_X1 i_0_68 (.A1(rem[15]), .A2(n_0_117), .ZN(n_0_46));
   OAI21_X1 i_0_69 (.A(n_0_48), .B1(n_0_47), .B2(n_0_116), .ZN(n_43));
   XOR2_X1 i_0_70 (.A(dividen[9]), .B(n_0_51), .Z(n_0_47));
   NAND2_X1 i_0_71 (.A1(rem[16]), .A2(n_0_117), .ZN(n_0_48));
   OAI21_X1 i_0_72 (.A(n_0_52), .B1(n_0_49), .B2(n_0_116), .ZN(n_44));
   XOR2_X1 i_0_73 (.A(dividen[10]), .B(n_0_50), .Z(n_0_49));
   OAI21_X1 i_0_74 (.A(dividen[15]), .B1(n_0_69), .B2(dividen[9]), .ZN(n_0_50));
   NAND2_X1 i_0_75 (.A1(n_0_69), .A2(dividen[15]), .ZN(n_0_51));
   NAND2_X1 i_0_76 (.A1(rem[17]), .A2(n_0_117), .ZN(n_0_52));
   OAI21_X1 i_0_77 (.A(n_0_55), .B1(n_0_53), .B2(n_0_116), .ZN(n_45));
   XOR2_X1 i_0_78 (.A(dividen[11]), .B(n_0_54), .Z(n_0_53));
   NAND2_X1 i_0_79 (.A1(n_0_68), .A2(dividen[15]), .ZN(n_0_54));
   NAND2_X1 i_0_80 (.A1(rem[18]), .A2(n_0_117), .ZN(n_0_55));
   OAI21_X1 i_0_93 (.A(n_0_58), .B1(n_0_56), .B2(n_0_116), .ZN(n_46));
   XOR2_X1 i_0_94 (.A(dividen[12]), .B(n_0_57), .Z(n_0_56));
   NAND2_X1 i_0_95 (.A1(n_0_67), .A2(dividen[15]), .ZN(n_0_57));
   NAND2_X1 i_0_96 (.A1(rem[19]), .A2(n_0_117), .ZN(n_0_58));
   OAI21_X1 i_0_97 (.A(n_0_61), .B1(n_0_59), .B2(n_0_116), .ZN(n_47));
   XOR2_X1 i_0_98 (.A(dividen[13]), .B(n_0_60), .Z(n_0_59));
   NAND2_X1 i_0_99 (.A1(n_0_66), .A2(dividen[15]), .ZN(n_0_60));
   NAND2_X1 i_0_100 (.A1(rem[20]), .A2(n_0_117), .ZN(n_0_61));
   OAI21_X1 i_0_101 (.A(n_0_63), .B1(n_0_62), .B2(n_0_116), .ZN(n_48));
   XOR2_X1 i_0_102 (.A(dividen[14]), .B(n_0_64), .Z(n_0_62));
   NAND2_X1 i_0_103 (.A1(rem[21]), .A2(n_0_117), .ZN(n_0_63));
   OAI21_X1 i_0_104 (.A(dividen[15]), .B1(n_0_66), .B2(dividen[13]), .ZN(n_0_64));
   OAI21_X1 i_0_105 (.A(n_0_74), .B1(n_0_65), .B2(dividen[14]), .ZN(n_49));
   OR4_X1 i_0_106 (.A1(n_0_131), .A2(n_0_66), .A3(dividen[13]), .A4(n_0_116), 
      .ZN(n_0_65));
   OR2_X1 i_0_107 (.A1(n_0_67), .A2(dividen[12]), .ZN(n_0_66));
   OR2_X1 i_0_108 (.A1(n_0_68), .A2(dividen[11]), .ZN(n_0_67));
   OR3_X1 i_0_81 (.A1(n_0_69), .A2(dividen[9]), .A3(dividen[10]), .ZN(n_0_68));
   OR2_X1 i_0_82 (.A1(n_0_70), .A2(dividen[8]), .ZN(n_0_69));
   OR2_X1 i_0_83 (.A1(n_0_71), .A2(dividen[7]), .ZN(n_0_70));
   OR3_X1 i_0_84 (.A1(n_0_72), .A2(dividen[5]), .A3(dividen[6]), .ZN(n_0_71));
   OR3_X1 i_0_85 (.A1(n_0_73), .A2(dividen[3]), .A3(dividen[4]), .ZN(n_0_72));
   OR3_X1 i_0_86 (.A1(dividen[2]), .A2(dividen[1]), .A3(dividen[0]), .ZN(n_0_73));
   NAND2_X1 i_0_115 (.A1(rem[22]), .A2(n_0_117), .ZN(n_0_74));
   AND2_X1 i_0_116 (.A1(n_1), .A2(n_0_117), .ZN(n_50));
   AND2_X1 i_0_117 (.A1(n_2), .A2(n_0_117), .ZN(n_51));
   AND2_X1 i_0_118 (.A1(n_3), .A2(n_0_117), .ZN(n_52));
   AND2_X1 i_0_119 (.A1(n_4), .A2(n_0_117), .ZN(n_53));
   AND2_X1 i_0_120 (.A1(n_5), .A2(n_0_117), .ZN(n_54));
   AND2_X1 i_0_121 (.A1(n_6), .A2(n_0_117), .ZN(n_55));
   AND2_X1 i_0_122 (.A1(n_7), .A2(n_0_117), .ZN(n_56));
   AND2_X1 i_0_123 (.A1(n_8), .A2(n_0_117), .ZN(n_57));
   AND2_X1 i_0_124 (.A1(n_9), .A2(n_0_117), .ZN(n_58));
   AND2_X1 i_0_125 (.A1(n_10), .A2(n_0_117), .ZN(n_59));
   AND2_X1 i_0_126 (.A1(n_11), .A2(n_0_117), .ZN(n_60));
   AND2_X1 i_0_127 (.A1(n_12), .A2(n_0_117), .ZN(n_61));
   AND2_X1 i_0_128 (.A1(n_13), .A2(n_0_117), .ZN(n_62));
   AND2_X1 i_0_129 (.A1(n_14), .A2(n_0_117), .ZN(n_63));
   AND2_X1 i_0_130 (.A1(n_15), .A2(n_0_117), .ZN(n_64));
   AND2_X1 i_0_131 (.A1(n_16), .A2(n_0_117), .ZN(n_65));
   AND2_X1 i_0_132 (.A1(n_17), .A2(n_0_117), .ZN(n_66));
   AND2_X1 i_0_133 (.A1(n_18), .A2(n_0_117), .ZN(n_67));
   AND2_X1 i_0_134 (.A1(n_19), .A2(n_0_117), .ZN(n_68));
   AND2_X1 i_0_135 (.A1(n_20), .A2(n_0_117), .ZN(n_69));
   AND2_X1 i_0_136 (.A1(n_21), .A2(n_0_117), .ZN(n_70));
   AND2_X1 i_0_137 (.A1(n_22), .A2(n_0_117), .ZN(n_71));
   AND2_X1 i_0_87 (.A1(n_0_122), .A2(divisor[0]), .ZN(n_72));
   NOR2_X1 i_0_88 (.A1(n_0_75), .A2(rst), .ZN(n_73));
   XOR2_X1 i_0_89 (.A(divisor[1]), .B(n_0_76), .Z(n_0_75));
   NAND2_X1 i_0_90 (.A1(divisor[0]), .A2(n_0_103), .ZN(n_0_76));
   NOR2_X1 i_0_91 (.A1(n_0_77), .A2(rst), .ZN(n_74));
   XOR2_X1 i_0_92 (.A(divisor[2]), .B(n_0_78), .Z(n_0_77));
   OAI21_X1 i_0_109 (.A(n_0_103), .B1(divisor[0]), .B2(divisor[1]), .ZN(n_0_78));
   NOR2_X1 i_0_145 (.A1(n_0_79), .A2(rst), .ZN(n_75));
   XOR2_X1 i_0_146 (.A(divisor[3]), .B(n_0_80), .Z(n_0_79));
   NAND2_X1 i_0_147 (.A1(n_0_103), .A2(n_0_115), .ZN(n_0_80));
   NOR2_X1 i_0_148 (.A1(n_0_81), .A2(rst), .ZN(n_76));
   XOR2_X1 i_0_149 (.A(divisor[4]), .B(n_0_82), .Z(n_0_81));
   NAND2_X1 i_0_150 (.A1(n_0_114), .A2(n_0_103), .ZN(n_0_82));
   NOR2_X1 i_0_151 (.A1(n_0_83), .A2(rst), .ZN(n_77));
   XOR2_X1 i_0_152 (.A(divisor[5]), .B(n_0_84), .Z(n_0_83));
   NAND2_X1 i_0_153 (.A1(n_0_113), .A2(n_0_103), .ZN(n_0_84));
   NOR2_X1 i_0_154 (.A1(n_0_85), .A2(rst), .ZN(n_78));
   XOR2_X1 i_0_155 (.A(divisor[6]), .B(n_0_86), .Z(n_0_85));
   OAI21_X1 i_0_156 (.A(n_0_103), .B1(n_0_113), .B2(divisor[5]), .ZN(n_0_86));
   NOR2_X1 i_0_157 (.A1(n_0_87), .A2(rst), .ZN(n_79));
   XNOR2_X1 i_0_158 (.A(divisor[7]), .B(n_0_88), .ZN(n_0_87));
   NOR2_X1 i_0_159 (.A1(n_0_112), .A2(n_0_134), .ZN(n_0_88));
   AOI21_X1 i_0_160 (.A(n_0_89), .B1(n_0_90), .B2(divisor[8]), .ZN(n_80));
   OAI21_X1 i_0_161 (.A(n_0_122), .B1(n_0_90), .B2(divisor[8]), .ZN(n_0_89));
   NOR2_X1 i_0_162 (.A1(n_0_111), .A2(n_0_134), .ZN(n_0_90));
   NOR2_X1 i_0_163 (.A1(n_0_91), .A2(rst), .ZN(n_81));
   XOR2_X1 i_0_164 (.A(divisor[9]), .B(n_0_92), .Z(n_0_91));
   NAND2_X1 i_0_165 (.A1(n_0_110), .A2(n_0_103), .ZN(n_0_92));
   NOR2_X1 i_0_166 (.A1(n_0_93), .A2(rst), .ZN(n_82));
   XOR2_X1 i_0_167 (.A(divisor[10]), .B(n_0_94), .Z(n_0_93));
   NAND2_X1 i_0_168 (.A1(n_0_109), .A2(n_0_103), .ZN(n_0_94));
   NOR2_X1 i_0_169 (.A1(n_0_95), .A2(rst), .ZN(n_83));
   XOR2_X1 i_0_170 (.A(divisor[11]), .B(n_0_96), .Z(n_0_95));
   NAND2_X1 i_0_171 (.A1(n_0_108), .A2(n_0_103), .ZN(n_0_96));
   AOI21_X1 i_0_172 (.A(n_0_97), .B1(n_0_98), .B2(divisor[12]), .ZN(n_84));
   OAI21_X1 i_0_173 (.A(n_0_122), .B1(n_0_98), .B2(divisor[12]), .ZN(n_0_97));
   NOR2_X1 i_0_174 (.A1(n_0_107), .A2(n_0_134), .ZN(n_0_98));
   NOR2_X1 i_0_175 (.A1(n_0_99), .A2(rst), .ZN(n_85));
   XOR2_X1 i_0_176 (.A(divisor[13]), .B(n_0_100), .Z(n_0_99));
   NAND2_X1 i_0_177 (.A1(n_0_106), .A2(n_0_103), .ZN(n_0_100));
   NOR2_X1 i_0_178 (.A1(n_0_101), .A2(rst), .ZN(n_86));
   XOR2_X1 i_0_179 (.A(divisor[14]), .B(n_0_102), .Z(n_0_101));
   OAI21_X1 i_0_180 (.A(n_0_103), .B1(n_0_106), .B2(divisor[13]), .ZN(n_0_102));
   AND2_X1 i_0_110 (.A1(divisor[15]), .A2(n_0_120), .ZN(n_0_103));
   INV_X1 i_0_182 (.A(n_0_104), .ZN(n_87));
   OAI21_X1 i_0_183 (.A(divisor[15]), .B1(n_0_117), .B2(n_0_105), .ZN(n_0_104));
   NOR4_X1 i_0_184 (.A1(n_0_106), .A2(rst), .A3(divisor[13]), .A4(divisor[14]), 
      .ZN(n_0_105));
   NAND2_X1 i_0_111 (.A1(n_0_107), .A2(n_0_133), .ZN(n_0_106));
   NOR2_X1 i_0_112 (.A1(n_0_108), .A2(divisor[11]), .ZN(n_0_107));
   OR2_X1 i_0_113 (.A1(n_0_109), .A2(divisor[10]), .ZN(n_0_108));
   OR2_X1 i_0_114 (.A1(n_0_110), .A2(divisor[9]), .ZN(n_0_109));
   NAND2_X1 i_0_138 (.A1(n_0_111), .A2(n_0_132), .ZN(n_0_110));
   NOR4_X1 i_0_139 (.A1(n_0_113), .A2(divisor[5]), .A3(divisor[6]), .A4(
      divisor[7]), .ZN(n_0_111));
   NOR3_X1 i_0_191 (.A1(n_0_113), .A2(divisor[5]), .A3(divisor[6]), .ZN(n_0_112));
   OR2_X1 i_0_140 (.A1(n_0_114), .A2(divisor[4]), .ZN(n_0_113));
   OR2_X1 i_0_141 (.A1(n_0_115), .A2(divisor[3]), .ZN(n_0_114));
   OR3_X1 i_0_142 (.A1(divisor[2]), .A2(divisor[1]), .A3(divisor[0]), .ZN(
      n_0_115));
   OAI21_X1 i_0_143 (.A(n_0_116), .B1(n_24), .B2(rst), .ZN(n_88));
   NAND2_X1 i_0_144 (.A1(n_0_120), .A2(n_0_122), .ZN(n_0_116));
   NOR2_X1 i_0_197 (.A1(n_0_123), .A2(rst), .ZN(n_89));
   OR2_X1 i_0_198 (.A1(n_98), .A2(working), .ZN(n_90));
   NOR2_X1 i_0_199 (.A1(rst), .A2(n_0_118), .ZN(n_91));
   NOR2_X1 i_0_200 (.A1(n_0_124), .A2(n_98), .ZN(n_92));
   AND2_X1 i_0_201 (.A1(counter_new_value[1]), .A2(n_0_117), .ZN(n_93));
   AND2_X1 i_0_202 (.A1(counter_new_value[2]), .A2(n_0_117), .ZN(n_94));
   NOR2_X1 i_0_203 (.A1(n_0_125), .A2(n_98), .ZN(n_95));
   AND2_X1 i_0_204 (.A1(counter_new_value[4]), .A2(n_0_117), .ZN(n_96));
   AND2_X1 i_0_205 (.A1(counter_new_value[5]), .A2(n_0_117), .ZN(n_97));
   INV_X1 i_0_181 (.A(n_0_117), .ZN(n_98));
   NOR2_X1 i_0_185 (.A1(rst), .A2(n_0_120), .ZN(n_0_117));
   AND2_X1 i_0_208 (.A1(n_0_118), .A2(n_0_122), .ZN(n_99));
   NOR4_X1 i_0_209 (.A1(n_0_124), .A2(n_0_119), .A3(n_0_120), .A4(
      counter_new_value[5]), .ZN(n_0_118));
   NAND4_X1 i_0_210 (.A1(n_0_125), .A2(counter_new_value[2]), .A3(
      counter_new_value[1]), .A4(counter_new_value[4]), .ZN(n_0_119));
   NOR2_X1 i_0_186 (.A1(n_0_123), .A2(start_buffer), .ZN(n_0_120));
   INV_X1 i_0_187 (.A(rst), .ZN(n_0_122));
   INV_X1 i_0_188 (.A(start), .ZN(n_0_123));
   INV_X1 i_0_215 (.A(counter_new_value[0]), .ZN(n_0_124));
   INV_X1 i_0_216 (.A(counter_new_value[3]), .ZN(n_0_125));
   INV_X1 i_0_189 (.A(rem[2]), .ZN(n_0_126));
   INV_X1 i_0_190 (.A(rem[7]), .ZN(n_0_127));
   INV_X1 i_0_192 (.A(dividen[0]), .ZN(n_0_130));
   INV_X1 i_0_222 (.A(dividen[15]), .ZN(n_0_131));
   INV_X1 i_0_193 (.A(divisor[8]), .ZN(n_0_132));
   INV_X1 i_0_194 (.A(divisor[12]), .ZN(n_0_133));
   INV_X1 i_0_225 (.A(n_0_103), .ZN(n_0_134));
   XNOR2_X1 i_0_195 (.A(rem[11]), .B(n_0_3), .ZN(result[11]));
   NAND2_X1 i_0_196 (.A1(sign), .A2(n_0_4), .ZN(n_0_3));
   OR3_X1 i_0_206 (.A1(rem[9]), .A2(n_0_5), .A3(rem[10]), .ZN(n_0_4));
   NAND2_X1 i_0_207 (.A1(n_0_20), .A2(n_0_6), .ZN(n_0_5));
   NOR4_X1 i_0_211 (.A1(rem[5]), .A2(n_0_18), .A3(rem[6]), .A4(rem[7]), .ZN(
      n_0_6));
   OR4_X1 i_0_212 (.A1(rem[2]), .A2(n_0_19), .A3(rem[3]), .A4(rem[4]), .ZN(
      n_0_18));
   OR2_X1 i_0_213 (.A1(rem[1]), .A2(result[0]), .ZN(n_0_19));
   INV_X1 i_0_214 (.A(rem[8]), .ZN(n_0_20));
   XOR2_X1 i_0_217 (.A(rem[14]), .B(n_0_21), .Z(result[14]));
   OAI21_X1 i_0_218 (.A(n_0_22), .B1(n_0_129), .B2(n_0_128), .ZN(n_0_21));
   AOI21_X1 i_0_219 (.A(n_0_23), .B1(sign), .B2(rem[12]), .ZN(n_0_22));
   INV_X1 i_0_220 (.A(n_0_121), .ZN(n_0_23));
   OAI21_X1 i_0_221 (.A(sign), .B1(n_0_4), .B2(rem[11]), .ZN(n_0_121));
   INV_X1 i_0_223 (.A(rem[13]), .ZN(n_0_128));
   INV_X1 i_0_224 (.A(sign), .ZN(n_0_129));
endmodule

module Register__0_183(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module full_adder__0_732(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__0_728(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_733(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_732 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__0_728 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_743(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_733 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module which_adder__0_763(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   AND2_X1 i_0_0 (.A1(cin), .A2(i_add1[0]), .ZN(o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized1(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [3:0]A;
   input [3:0]B;
   input is_subtract;
   output [3:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_743 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_763 Gen_Modules_1_which_adder_x (.i_add1({uc_0, A[2]}), 
      .i_add2(), .cin(cs), .o_result({uc_1, result[3], result[2]}), 
      .intermediate_carry());
endmodule

module full_adder__0_1358(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1363(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1358 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1373(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_1363 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__0_1340(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1345(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1340 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1346(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1345 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1320(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1325(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1320 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1326(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1325 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1300(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1305(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1300 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1306(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1305 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1280(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1285(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1280 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1286(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1285 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1260(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1265(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1260 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1266(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1265 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1240(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1245(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1240 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1246(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1245 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1220(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_1225(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1220 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__0_1226(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1225 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__0_1374(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_1373 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], uc_0}), .intermediate_carry());
   which_adder__0_1346 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_1326 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_1306 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_1286 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_1266 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_1246 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_1226 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_5), .o_result({uc_1, result[15], result[14]}), 
      .intermediate_carry());
endmodule

module full_adder__0_252(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_248(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_253(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_252 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_248 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_263(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_253 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__0_281(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_277(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_282(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_281 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_277 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_272(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_268(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_273(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_272 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_268 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_283(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_282 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_273 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_301(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_297(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_302(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_301 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_297 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_292(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_288(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_293(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_292 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_288 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_303(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_302 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_293 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_321(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_317(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_322(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_321 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_317 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_312(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_308(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_313(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_312 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_308 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_323(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_322 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_313 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_341(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_337(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_342(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_341 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_337 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_332(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_328(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_333(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_332 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_328 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_343(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_342 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_333 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_361(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_357(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_362(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_361 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_357 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_352(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_348(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_353(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_352 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_348 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_363(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_362 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_353 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_381(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_377(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_382(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_381 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_377 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_372(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_368(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_1;
   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_1));
   XOR2_X1 i_0_1 (.A(n_0_1), .B(i_carry), .Z(o_sum));
   AOI22_X1 i_0_2 (.A1(n_0_1), .A2(i_carry), .B1(i_bit1), .B2(i_bit2), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(n_0_0), .ZN(o_carry));
endmodule

module adder_block__0_373(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_372 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_368 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_383(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_382 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_373 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_401(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_397(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_402(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_401 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_397 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module full_adder__0_392(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_388(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_393(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_392 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_388 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__0_403(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_402 adder_block_inst2 (.i_add1({i_add1[1], uc_0}), .i_add2(
      i_add2), .cin(), .o_result({uc_1, o_result_one_carry[1], 
      o_result_one_carry[0]}), .intermediate_carry());
   adder_block__0_393 adder_block_inst1 (.i_add1({i_add1[1], uc_2}), .i_add2(
      i_add2), .cin(), .o_result({uc_3, o_result_zero_carry[1], 
      o_result_zero_carry[0]}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
endmodule

module adder(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_263 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], B[0]}), 
      .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_283 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_303 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_323 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_343 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_363 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_383 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_403 Gen_Modules_7_which_adder_x (.i_add1({A[15], uc_0}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({uc_1, result[15], 
      result[14]}), .intermediate_carry());
endmodule

module full_adder__0_468(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_473(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_468 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_483(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_473 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__0_497(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_502(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_497 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_503(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_502 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_517(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_522(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_517 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_523(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_522 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_537(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_542(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_537 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_543(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_542 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_557(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_562(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_557 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_563(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_562 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_577(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_582(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_577 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_583(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_582 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_597(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_602(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_597 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_603(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_602 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_617(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_622(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_617 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_623(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_622 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_637(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_642(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_637 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_643(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_642 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_657(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_662(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_657 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_663(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_662 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_677(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_682(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_677 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_683(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_682 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_697(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_702(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_697 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_703(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_702 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module which_adder__0_723(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_add1[1]), .B(cin), .Z(o_result[0]));
   INV_X1 i_0_1 (.A(i_add1[1]), .ZN(n_0_0));
   NOR2_X1 i_0_2 (.A1(n_0_0), .A2(cin), .ZN(o_result[1]));
endmodule

module adder__parameterized0(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [31:0]A;
   input [31:0]B;
   input is_subtract;
   output [31:0]result;
   output carry;
   output overflow_flag;
   output negative;

   which_adder__0_483 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(), .o_result({n_0, result[7], uc_0}), .intermediate_carry());
   which_adder__0_503 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_523 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_543 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_563 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__0_583 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[17], result[16]}), 
      .intermediate_carry());
   which_adder__0_603 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2(), .cin(n_5), .o_result({n_6, result[19], result[18]}), 
      .intermediate_carry());
   which_adder__0_623 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2(), .cin(n_6), .o_result({n_7, result[21], result[20]}), 
      .intermediate_carry());
   which_adder__0_643 Gen_Modules_11_which_adder_x (.i_add1({A[23], A[22]}), 
      .i_add2(), .cin(n_7), .o_result({n_8, result[23], result[22]}), 
      .intermediate_carry());
   which_adder__0_663 Gen_Modules_12_which_adder_x (.i_add1({A[25], A[24]}), 
      .i_add2(), .cin(n_8), .o_result({n_9, result[25], result[24]}), 
      .intermediate_carry());
   which_adder__0_683 Gen_Modules_13_which_adder_x (.i_add1({A[27], A[26]}), 
      .i_add2(), .cin(n_9), .o_result({n_10, result[27], result[26]}), 
      .intermediate_carry());
   which_adder__0_703 Gen_Modules_14_which_adder_x (.i_add1({A[29], A[28]}), 
      .i_add2(), .cin(n_10), .o_result({n_11, result[29], result[28]}), 
      .intermediate_carry());
   which_adder__0_723 Gen_Modules_15_which_adder_x (.i_add1({A[31], uc_1}), 
      .i_add2(), .cin(n_11), .o_result({uc_2, result[31], result[30]}), 
      .intermediate_carry());
endmodule

module multiplier(clk, rst, multiplicand, multiplier, start, result, 
      overflow_flag, finish);
   input clk;
   input rst;
   input [15:0]multiplicand;
   input [15:0]multiplier;
   input start;
   output [15:0]result;
   output overflow_flag;
   output finish;

   wire counter_finish;
   wire [15:0]multiplicand_complement;
   wire [15:0]AB;
   wire [15:0]A;
   wire [15:0]multiplicand_buffer;
   wire [16:0]Q;
   wire [2:0]counter;
   wire working;
   wire start_buffer;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire n_0_48;
   wire n_0_49;
   wire n_0_50;
   wire n_0_51;
   wire n_0_52;
   wire n_0_53;
   wire n_0_54;
   wire n_0_55;
   wire n_0_56;
   wire n_0_57;

   adder__parameterized1 adder_counter (.A({uc_0, counter[2], counter[1], 
      counter[0]}), .B(), .is_subtract(), .result({counter_finish, n_2, n_1, n_0}), 
      .carry(), .overflow_flag(), .negative());
   adder__0_1374 adder_multiplicand_complement (.A({n_100, n_98, n_96, n_94, 
      n_92, n_89, n_87, n_85, n_83, n_81, n_79, n_77, n_75, n_73, n_71, n_70}), 
      .B(), .is_subtract(), .result({multiplicand_complement[15], 
      multiplicand_complement[14], multiplicand_complement[13], 
      multiplicand_complement[12], multiplicand_complement[11], 
      multiplicand_complement[10], multiplicand_complement[9], 
      multiplicand_complement[8], multiplicand_complement[7], 
      multiplicand_complement[6], multiplicand_complement[5], 
      multiplicand_complement[4], multiplicand_complement[3], 
      multiplicand_complement[2], multiplicand_complement[1], uc_1}), .carry(), 
      .overflow_flag(), .negative());
   adder adder_loop (.A({A[15], uc_2, A[13], A[12], A[11], A[10], A[9], A[8], 
      A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]}), .B({n_101, n_99, n_97, 
      n_95, n_93, n_90, n_88, n_86, n_84, n_82, n_80, n_78, n_76, n_74, n_72, 
      n_69}), .is_subtract(), .result(AB), .carry(), .overflow_flag(), .negative());
   adder__parameterized0 adder_round (.A({A[15], uc_3, A[13], A[12], A[11], 
      A[10], A[9], A[8], A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0], Q[16], 
      Q[15], Q[14], Q[13], Q[12], Q[11], Q[10], Q[9], Q[8], Q[7], uc_4, uc_5, 
      uc_6, uc_7, uc_8, uc_9}), .B(), .is_subtract(), .result({n_11, n_10, n_9, 
      n_8, n_7, n_6, n_5, n_4, n_3, result[15], result[14], result[13], 
      result[12], result[11], result[10], result[9], result[8], result[7], 
      result[6], result[5], result[4], result[3], result[2], result[1], 
      result[0], uc_10, uc_11, uc_12, uc_13, uc_14, uc_15, uc_16}), .carry(), 
      .overflow_flag(), .negative());
   DFF_X1 finish_reg (.D(n_47), .CK(n_29), .Q(finish), .QN());
   DFF_X1 \A_reg[15]  (.D(n_28), .CK(n_29), .Q(A[15]), .QN());
   DFF_X1 \A_reg[13]  (.D(n_27), .CK(n_29), .Q(A[13]), .QN());
   DFF_X1 \A_reg[12]  (.D(n_26), .CK(n_29), .Q(A[12]), .QN());
   DFF_X1 \A_reg[11]  (.D(n_25), .CK(n_29), .Q(A[11]), .QN());
   DFF_X1 \A_reg[10]  (.D(n_24), .CK(n_29), .Q(A[10]), .QN());
   DFF_X1 \A_reg[9]  (.D(n_23), .CK(n_29), .Q(A[9]), .QN());
   DFF_X1 \A_reg[8]  (.D(n_22), .CK(n_29), .Q(A[8]), .QN());
   DFF_X1 \A_reg[7]  (.D(n_21), .CK(n_29), .Q(A[7]), .QN());
   DFF_X1 \A_reg[6]  (.D(n_20), .CK(n_29), .Q(A[6]), .QN());
   DFF_X1 \A_reg[5]  (.D(n_19), .CK(n_29), .Q(A[5]), .QN());
   DFF_X1 \A_reg[4]  (.D(n_18), .CK(n_29), .Q(A[4]), .QN());
   DFF_X1 \A_reg[3]  (.D(n_17), .CK(n_29), .Q(A[3]), .QN());
   DFF_X1 \A_reg[2]  (.D(n_16), .CK(n_29), .Q(A[2]), .QN());
   DFF_X1 \A_reg[1]  (.D(n_15), .CK(n_29), .Q(A[1]), .QN());
   DFF_X1 \A_reg[0]  (.D(n_14), .CK(n_29), .Q(A[0]), .QN());
   CLKGATETST_X1 clk_gate_multiplicand_buffer_reg (.CK(clk), .E(n_13), .SE(1'b0), 
      .GCK(n_91));
   DFF_X1 \multiplicand_buffer_reg[15]  (.D(n_68), .CK(n_91), .Q(
      multiplicand_buffer[15]), .QN());
   DFF_X1 \multiplicand_buffer_reg[14]  (.D(n_67), .CK(n_91), .Q(
      multiplicand_buffer[14]), .QN());
   DFF_X1 \multiplicand_buffer_reg[13]  (.D(n_66), .CK(n_91), .Q(
      multiplicand_buffer[13]), .QN());
   DFF_X1 \multiplicand_buffer_reg[12]  (.D(n_65), .CK(n_91), .Q(
      multiplicand_buffer[12]), .QN());
   DFF_X1 \multiplicand_buffer_reg[11]  (.D(n_64), .CK(n_91), .Q(
      multiplicand_buffer[11]), .QN());
   DFF_X1 \multiplicand_buffer_reg[10]  (.D(n_63), .CK(n_91), .Q(
      multiplicand_buffer[10]), .QN());
   DFF_X1 \multiplicand_buffer_reg[9]  (.D(n_62), .CK(n_91), .Q(
      multiplicand_buffer[9]), .QN());
   DFF_X1 \multiplicand_buffer_reg[8]  (.D(n_61), .CK(n_91), .Q(
      multiplicand_buffer[8]), .QN());
   DFF_X1 \multiplicand_buffer_reg[7]  (.D(n_60), .CK(n_91), .Q(
      multiplicand_buffer[7]), .QN());
   DFF_X1 \multiplicand_buffer_reg[6]  (.D(n_59), .CK(n_91), .Q(
      multiplicand_buffer[6]), .QN());
   DFF_X1 \multiplicand_buffer_reg[5]  (.D(n_58), .CK(n_91), .Q(
      multiplicand_buffer[5]), .QN());
   DFF_X1 \multiplicand_buffer_reg[4]  (.D(n_57), .CK(n_91), .Q(
      multiplicand_buffer[4]), .QN());
   DFF_X1 \multiplicand_buffer_reg[3]  (.D(n_56), .CK(n_91), .Q(
      multiplicand_buffer[3]), .QN());
   DFF_X1 \multiplicand_buffer_reg[2]  (.D(n_55), .CK(n_91), .Q(
      multiplicand_buffer[2]), .QN());
   DFF_X1 \multiplicand_buffer_reg[1]  (.D(n_54), .CK(n_91), .Q(
      multiplicand_buffer[1]), .QN());
   DFF_X1 \multiplicand_buffer_reg[0]  (.D(n_53), .CK(n_91), .Q(
      multiplicand_buffer[0]), .QN());
   DFF_X1 \Q_reg[16]  (.D(n_46), .CK(n_29), .Q(Q[16]), .QN());
   DFF_X1 \Q_reg[15]  (.D(n_45), .CK(n_29), .Q(Q[15]), .QN());
   DFF_X1 \Q_reg[14]  (.D(n_44), .CK(n_29), .Q(Q[14]), .QN());
   DFF_X1 \Q_reg[13]  (.D(n_43), .CK(n_29), .Q(Q[13]), .QN());
   DFF_X1 \Q_reg[12]  (.D(n_42), .CK(n_29), .Q(Q[12]), .QN());
   DFF_X1 \Q_reg[11]  (.D(n_41), .CK(n_29), .Q(Q[11]), .QN());
   DFF_X1 \Q_reg[10]  (.D(n_40), .CK(n_29), .Q(Q[10]), .QN());
   DFF_X1 \Q_reg[9]  (.D(n_39), .CK(n_29), .Q(Q[9]), .QN());
   DFF_X1 \Q_reg[8]  (.D(n_38), .CK(n_29), .Q(Q[8]), .QN());
   DFF_X1 \Q_reg[7]  (.D(n_37), .CK(n_29), .Q(Q[7]), .QN());
   DFF_X1 \Q_reg[6]  (.D(n_36), .CK(n_29), .Q(Q[6]), .QN());
   DFF_X1 \Q_reg[5]  (.D(n_35), .CK(n_29), .Q(Q[5]), .QN());
   DFF_X1 \Q_reg[4]  (.D(n_34), .CK(n_29), .Q(Q[4]), .QN());
   DFF_X1 \Q_reg[3]  (.D(n_33), .CK(n_29), .Q(Q[3]), .QN());
   DFF_X1 \Q_reg[2]  (.D(n_32), .CK(n_29), .Q(Q[2]), .QN());
   DFF_X1 \Q_reg[1]  (.D(n_31), .CK(n_29), .Q(Q[1]), .QN());
   DFF_X1 \Q_reg[0]  (.D(n_30), .CK(n_29), .Q(Q[0]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_51), .CK(n_29), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_50), .CK(n_29), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_49), .CK(n_29), .Q(counter[0]), .QN());
   DFF_X1 working_reg (.D(n_48), .CK(n_29), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_12), .CK(clk), .Q(start_buffer), .QN());
   CLKGATETST_X1 clk_gate_finish_reg (.CK(clk), .E(n_52), .SE(1'b0), .GCK(n_29));
   INV_X1 i_0_0 (.A(rst), .ZN(n_0_0));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(start), .ZN(n_0_1));
   INV_X1 i_0_2 (.A(n_0_1), .ZN(n_12));
   NOR2_X1 i_0_3 (.A1(n_0_1), .A2(start_buffer), .ZN(n_0_2));
   NOR2_X1 i_0_4 (.A1(n_0_2), .A2(rst), .ZN(n_0_3));
   INV_X1 i_0_5 (.A(n_0_3), .ZN(n_13));
   AND2_X1 i_0_6 (.A1(n_0_3), .A2(AB[2]), .ZN(n_14));
   AND2_X1 i_0_7 (.A1(n_0_3), .A2(AB[3]), .ZN(n_15));
   AND2_X1 i_0_8 (.A1(n_0_3), .A2(AB[4]), .ZN(n_16));
   AND2_X1 i_0_9 (.A1(n_0_3), .A2(AB[5]), .ZN(n_17));
   AND2_X1 i_0_10 (.A1(n_0_3), .A2(AB[6]), .ZN(n_18));
   AND2_X1 i_0_11 (.A1(n_0_3), .A2(AB[7]), .ZN(n_19));
   AND2_X1 i_0_12 (.A1(n_0_3), .A2(AB[8]), .ZN(n_20));
   AND2_X1 i_0_13 (.A1(n_0_3), .A2(AB[9]), .ZN(n_21));
   AND2_X1 i_0_14 (.A1(n_0_3), .A2(AB[10]), .ZN(n_22));
   AND2_X1 i_0_15 (.A1(n_0_3), .A2(AB[11]), .ZN(n_23));
   AND2_X1 i_0_16 (.A1(n_0_3), .A2(AB[12]), .ZN(n_24));
   AND2_X1 i_0_17 (.A1(n_0_3), .A2(AB[13]), .ZN(n_25));
   AND2_X1 i_0_18 (.A1(n_0_3), .A2(AB[14]), .ZN(n_26));
   AND2_X1 i_0_19 (.A1(n_0_3), .A2(AB[15]), .ZN(n_27));
   NAND2_X1 i_0_20 (.A1(Q[1]), .A2(Q[0]), .ZN(n_0_4));
   INV_X1 i_0_21 (.A(n_0_4), .ZN(n_0_5));
   OAI221_X1 i_0_22 (.A(Q[2]), .B1(n_0_4), .B2(A[15]), .C1(n_0_5), .C2(
      multiplicand_complement[15]), .ZN(n_0_6));
   INV_X1 i_0_23 (.A(Q[2]), .ZN(n_0_7));
   NOR2_X1 i_0_24 (.A1(Q[1]), .A2(Q[0]), .ZN(n_0_8));
   INV_X1 i_0_25 (.A(n_0_8), .ZN(n_0_9));
   OAI221_X1 i_0_26 (.A(n_0_7), .B1(n_0_8), .B2(multiplicand_buffer[15]), 
      .C1(n_0_9), .C2(A[15]), .ZN(n_0_10));
   AOI21_X1 i_0_27 (.A(n_13), .B1(n_0_6), .B2(n_0_10), .ZN(n_28));
   NOR2_X1 i_0_28 (.A1(n_13), .A2(n_0_7), .ZN(n_30));
   AOI22_X1 i_0_29 (.A1(n_0_3), .A2(Q[3]), .B1(n_0_2), .B2(multiplier[0]), 
      .ZN(n_0_11));
   INV_X1 i_0_30 (.A(n_0_11), .ZN(n_31));
   AOI22_X1 i_0_31 (.A1(n_0_3), .A2(Q[4]), .B1(n_0_2), .B2(multiplier[1]), 
      .ZN(n_0_12));
   INV_X1 i_0_32 (.A(n_0_12), .ZN(n_32));
   AOI22_X1 i_0_33 (.A1(n_0_3), .A2(Q[5]), .B1(n_0_2), .B2(multiplier[2]), 
      .ZN(n_0_13));
   INV_X1 i_0_34 (.A(n_0_13), .ZN(n_33));
   AOI22_X1 i_0_35 (.A1(n_0_3), .A2(Q[6]), .B1(n_0_2), .B2(multiplier[3]), 
      .ZN(n_0_14));
   INV_X1 i_0_36 (.A(n_0_14), .ZN(n_34));
   AOI22_X1 i_0_37 (.A1(n_0_3), .A2(Q[7]), .B1(n_0_2), .B2(multiplier[4]), 
      .ZN(n_0_15));
   INV_X1 i_0_38 (.A(n_0_15), .ZN(n_35));
   AOI22_X1 i_0_39 (.A1(n_0_3), .A2(Q[8]), .B1(n_0_2), .B2(multiplier[5]), 
      .ZN(n_0_16));
   INV_X1 i_0_40 (.A(n_0_16), .ZN(n_36));
   AOI22_X1 i_0_41 (.A1(n_0_3), .A2(Q[9]), .B1(n_0_2), .B2(multiplier[6]), 
      .ZN(n_0_17));
   INV_X1 i_0_42 (.A(n_0_17), .ZN(n_37));
   AOI22_X1 i_0_43 (.A1(n_0_3), .A2(Q[10]), .B1(n_0_2), .B2(multiplier[7]), 
      .ZN(n_0_18));
   INV_X1 i_0_44 (.A(n_0_18), .ZN(n_38));
   AOI22_X1 i_0_45 (.A1(n_0_3), .A2(Q[11]), .B1(n_0_2), .B2(multiplier[8]), 
      .ZN(n_0_19));
   INV_X1 i_0_46 (.A(n_0_19), .ZN(n_39));
   AOI22_X1 i_0_47 (.A1(n_0_3), .A2(Q[12]), .B1(n_0_2), .B2(multiplier[9]), 
      .ZN(n_0_20));
   INV_X1 i_0_48 (.A(n_0_20), .ZN(n_40));
   AOI22_X1 i_0_49 (.A1(n_0_3), .A2(Q[13]), .B1(n_0_2), .B2(multiplier[10]), 
      .ZN(n_0_21));
   INV_X1 i_0_50 (.A(n_0_21), .ZN(n_41));
   AOI22_X1 i_0_51 (.A1(n_0_3), .A2(Q[14]), .B1(n_0_2), .B2(multiplier[11]), 
      .ZN(n_0_22));
   INV_X1 i_0_52 (.A(n_0_22), .ZN(n_42));
   AOI22_X1 i_0_53 (.A1(n_0_3), .A2(Q[15]), .B1(n_0_2), .B2(multiplier[12]), 
      .ZN(n_0_23));
   INV_X1 i_0_54 (.A(n_0_23), .ZN(n_43));
   AOI22_X1 i_0_55 (.A1(n_0_3), .A2(Q[16]), .B1(n_0_2), .B2(multiplier[13]), 
      .ZN(n_0_24));
   INV_X1 i_0_56 (.A(n_0_24), .ZN(n_44));
   AOI22_X1 i_0_57 (.A1(n_0_3), .A2(AB[0]), .B1(n_0_2), .B2(multiplier[14]), 
      .ZN(n_0_25));
   INV_X1 i_0_58 (.A(n_0_25), .ZN(n_45));
   AOI22_X1 i_0_59 (.A1(n_0_3), .A2(AB[1]), .B1(n_0_2), .B2(multiplier[15]), 
      .ZN(n_0_26));
   INV_X1 i_0_60 (.A(n_0_26), .ZN(n_46));
   AND2_X1 i_0_61 (.A1(n_0_3), .A2(counter_finish), .ZN(n_47));
   NOR2_X1 i_0_62 (.A1(n_47), .A2(rst), .ZN(n_48));
   AND2_X1 i_0_63 (.A1(n_0_3), .A2(n_0), .ZN(n_49));
   AND2_X1 i_0_64 (.A1(n_0_3), .A2(n_1), .ZN(n_50));
   AND2_X1 i_0_65 (.A1(n_0_3), .A2(n_2), .ZN(n_51));
   OR2_X1 i_0_66 (.A1(n_13), .A2(working), .ZN(n_52));
   AND2_X1 i_0_67 (.A1(n_0_0), .A2(multiplicand[0]), .ZN(n_53));
   AND2_X1 i_0_68 (.A1(n_0_0), .A2(multiplicand[1]), .ZN(n_54));
   AND2_X1 i_0_69 (.A1(n_0_0), .A2(multiplicand[2]), .ZN(n_55));
   AND2_X1 i_0_70 (.A1(n_0_0), .A2(multiplicand[3]), .ZN(n_56));
   AND2_X1 i_0_71 (.A1(n_0_0), .A2(multiplicand[4]), .ZN(n_57));
   AND2_X1 i_0_72 (.A1(n_0_0), .A2(multiplicand[5]), .ZN(n_58));
   AND2_X1 i_0_73 (.A1(n_0_0), .A2(multiplicand[6]), .ZN(n_59));
   AND2_X1 i_0_74 (.A1(n_0_0), .A2(multiplicand[7]), .ZN(n_60));
   AND2_X1 i_0_75 (.A1(n_0_0), .A2(multiplicand[8]), .ZN(n_61));
   AND2_X1 i_0_76 (.A1(n_0_0), .A2(multiplicand[9]), .ZN(n_62));
   AND2_X1 i_0_77 (.A1(n_0_0), .A2(multiplicand[10]), .ZN(n_63));
   AND2_X1 i_0_78 (.A1(n_0_0), .A2(multiplicand[11]), .ZN(n_64));
   AND2_X1 i_0_79 (.A1(n_0_0), .A2(multiplicand[12]), .ZN(n_65));
   AND2_X1 i_0_80 (.A1(n_0_0), .A2(multiplicand[13]), .ZN(n_66));
   AND2_X1 i_0_81 (.A1(n_0_0), .A2(multiplicand[14]), .ZN(n_67));
   AND2_X1 i_0_82 (.A1(n_0_0), .A2(multiplicand[15]), .ZN(n_68));
   INV_X1 i_0_83 (.A(finish), .ZN(n_0_27));
   NAND4_X1 i_0_84 (.A1(n_9), .A2(n_6), .A3(n_11), .A4(n_10), .ZN(n_0_28));
   NAND4_X1 i_0_85 (.A1(n_5), .A2(n_4), .A3(n_3), .A4(result[15]), .ZN(n_0_29));
   INV_X1 i_0_86 (.A(n_8), .ZN(n_0_30));
   NOR3_X1 i_0_87 (.A1(n_0_28), .A2(n_0_29), .A3(n_0_30), .ZN(n_0_31));
   NOR4_X1 i_0_88 (.A1(n_5), .A2(n_4), .A3(n_3), .A4(result[15]), .ZN(n_0_32));
   OR4_X1 i_0_89 (.A1(n_9), .A2(n_8), .A3(n_6), .A4(n_7), .ZN(n_0_33));
   NOR3_X1 i_0_90 (.A1(n_0_33), .A2(n_11), .A3(n_10), .ZN(n_0_34));
   AOI221_X1 i_0_91 (.A(n_0_27), .B1(n_0_31), .B2(n_7), .C1(n_0_32), .C2(n_0_34), 
      .ZN(overflow_flag));
   NOR2_X1 i_0_92 (.A1(n_0_5), .A2(n_0_8), .ZN(n_0_35));
   AND2_X1 i_0_93 (.A1(n_0_35), .A2(multiplicand_buffer[0]), .ZN(n_69));
   INV_X1 i_0_94 (.A(multiplicand_buffer[0]), .ZN(n_70));
   NOR2_X1 i_0_95 (.A1(n_0_9), .A2(n_0_7), .ZN(n_0_36));
   NOR2_X1 i_0_96 (.A1(n_0_4), .A2(Q[2]), .ZN(n_0_37));
   OAI21_X1 i_0_97 (.A(multiplicand_buffer[0]), .B1(n_0_36), .B2(n_0_37), 
      .ZN(n_0_38));
   NAND2_X1 i_0_98 (.A1(n_0_35), .A2(n_0_7), .ZN(n_0_39));
   INV_X1 i_0_99 (.A(multiplicand_buffer[1]), .ZN(n_71));
   INV_X1 i_0_100 (.A(multiplicand_complement[1]), .ZN(n_0_40));
   NAND2_X1 i_0_101 (.A1(n_0_35), .A2(Q[2]), .ZN(n_0_41));
   OAI221_X1 i_0_102 (.A(n_0_38), .B1(n_0_39), .B2(n_71), .C1(n_0_40), .C2(
      n_0_41), .ZN(n_72));
   INV_X1 i_0_103 (.A(n_0_41), .ZN(n_0_42));
   AOI22_X1 i_0_104 (.A1(n_0_42), .A2(multiplicand_complement[2]), .B1(
      multiplicand_complement[1]), .B2(n_0_36), .ZN(n_0_43));
   INV_X1 i_0_105 (.A(n_0_37), .ZN(n_0_44));
   INV_X1 i_0_106 (.A(multiplicand_buffer[2]), .ZN(n_73));
   OAI221_X1 i_0_107 (.A(n_0_43), .B1(n_0_44), .B2(n_71), .C1(n_73), .C2(n_0_39), 
      .ZN(n_74));
   AOI22_X1 i_0_108 (.A1(n_0_42), .A2(multiplicand_complement[3]), .B1(
      multiplicand_complement[2]), .B2(n_0_36), .ZN(n_0_45));
   INV_X1 i_0_109 (.A(multiplicand_buffer[3]), .ZN(n_75));
   OAI221_X1 i_0_110 (.A(n_0_45), .B1(n_0_44), .B2(n_73), .C1(n_75), .C2(n_0_39), 
      .ZN(n_76));
   AOI22_X1 i_0_111 (.A1(n_0_42), .A2(multiplicand_complement[4]), .B1(
      multiplicand_complement[3]), .B2(n_0_36), .ZN(n_0_46));
   INV_X1 i_0_112 (.A(multiplicand_buffer[4]), .ZN(n_77));
   OAI221_X1 i_0_113 (.A(n_0_46), .B1(n_0_44), .B2(n_75), .C1(n_77), .C2(n_0_39), 
      .ZN(n_78));
   AOI22_X1 i_0_114 (.A1(n_0_42), .A2(multiplicand_complement[5]), .B1(
      multiplicand_complement[4]), .B2(n_0_36), .ZN(n_0_47));
   INV_X1 i_0_115 (.A(multiplicand_buffer[5]), .ZN(n_79));
   OAI221_X1 i_0_116 (.A(n_0_47), .B1(n_0_44), .B2(n_77), .C1(n_79), .C2(n_0_39), 
      .ZN(n_80));
   AOI22_X1 i_0_117 (.A1(n_0_42), .A2(multiplicand_complement[6]), .B1(
      multiplicand_complement[5]), .B2(n_0_36), .ZN(n_0_48));
   INV_X1 i_0_118 (.A(multiplicand_buffer[6]), .ZN(n_81));
   OAI221_X1 i_0_119 (.A(n_0_48), .B1(n_0_44), .B2(n_79), .C1(n_81), .C2(n_0_39), 
      .ZN(n_82));
   AOI22_X1 i_0_120 (.A1(n_0_42), .A2(multiplicand_complement[7]), .B1(
      multiplicand_complement[6]), .B2(n_0_36), .ZN(n_0_49));
   INV_X1 i_0_121 (.A(multiplicand_buffer[7]), .ZN(n_83));
   OAI221_X1 i_0_122 (.A(n_0_49), .B1(n_0_44), .B2(n_81), .C1(n_83), .C2(n_0_39), 
      .ZN(n_84));
   AOI22_X1 i_0_123 (.A1(n_0_42), .A2(multiplicand_complement[8]), .B1(
      multiplicand_complement[7]), .B2(n_0_36), .ZN(n_0_50));
   INV_X1 i_0_124 (.A(multiplicand_buffer[8]), .ZN(n_85));
   OAI221_X1 i_0_125 (.A(n_0_50), .B1(n_0_44), .B2(n_83), .C1(n_85), .C2(n_0_39), 
      .ZN(n_86));
   AOI22_X1 i_0_126 (.A1(n_0_42), .A2(multiplicand_complement[9]), .B1(
      multiplicand_complement[8]), .B2(n_0_36), .ZN(n_0_51));
   INV_X1 i_0_127 (.A(multiplicand_buffer[9]), .ZN(n_87));
   OAI221_X1 i_0_128 (.A(n_0_51), .B1(n_0_44), .B2(n_85), .C1(n_87), .C2(n_0_39), 
      .ZN(n_88));
   AOI22_X1 i_0_129 (.A1(n_0_42), .A2(multiplicand_complement[10]), .B1(
      multiplicand_complement[9]), .B2(n_0_36), .ZN(n_0_52));
   INV_X1 i_0_130 (.A(multiplicand_buffer[10]), .ZN(n_89));
   OAI221_X1 i_0_131 (.A(n_0_52), .B1(n_0_44), .B2(n_87), .C1(n_89), .C2(n_0_39), 
      .ZN(n_90));
   AOI22_X1 i_0_132 (.A1(n_0_42), .A2(multiplicand_complement[11]), .B1(
      multiplicand_complement[10]), .B2(n_0_36), .ZN(n_0_53));
   INV_X1 i_0_133 (.A(multiplicand_buffer[11]), .ZN(n_92));
   OAI221_X1 i_0_134 (.A(n_0_53), .B1(n_0_44), .B2(n_89), .C1(n_92), .C2(n_0_39), 
      .ZN(n_93));
   AOI22_X1 i_0_135 (.A1(n_0_42), .A2(multiplicand_complement[12]), .B1(
      multiplicand_complement[11]), .B2(n_0_36), .ZN(n_0_54));
   INV_X1 i_0_136 (.A(multiplicand_buffer[12]), .ZN(n_94));
   OAI221_X1 i_0_137 (.A(n_0_54), .B1(n_0_44), .B2(n_92), .C1(n_94), .C2(n_0_39), 
      .ZN(n_95));
   AOI22_X1 i_0_138 (.A1(n_0_42), .A2(multiplicand_complement[13]), .B1(
      multiplicand_complement[12]), .B2(n_0_36), .ZN(n_0_55));
   INV_X1 i_0_139 (.A(multiplicand_buffer[13]), .ZN(n_96));
   OAI221_X1 i_0_140 (.A(n_0_55), .B1(n_0_44), .B2(n_94), .C1(n_96), .C2(n_0_39), 
      .ZN(n_97));
   AOI22_X1 i_0_141 (.A1(n_0_42), .A2(multiplicand_complement[14]), .B1(
      multiplicand_complement[13]), .B2(n_0_36), .ZN(n_0_56));
   INV_X1 i_0_142 (.A(multiplicand_buffer[14]), .ZN(n_98));
   OAI221_X1 i_0_143 (.A(n_0_56), .B1(n_0_44), .B2(n_96), .C1(n_98), .C2(n_0_39), 
      .ZN(n_99));
   AOI22_X1 i_0_144 (.A1(n_0_42), .A2(multiplicand_complement[15]), .B1(
      multiplicand_complement[14]), .B2(n_0_36), .ZN(n_0_57));
   INV_X1 i_0_145 (.A(multiplicand_buffer[15]), .ZN(n_100));
   OAI221_X1 i_0_146 (.A(n_0_57), .B1(n_0_44), .B2(n_98), .C1(n_100), .C2(n_0_39), 
      .ZN(n_101));
endmodule

module InterpolationFSM(clk, rst, init, alert, update, start, multipiler_done, 
      divider_done, m_is_zero, overflow, un_add_en, uz_add_en, uk_add_en, 
      un_value, tn_add_en, tz_add_en, tz_value_en, tn_value_en, tk_value_en, 
      un_add_temp_en, temp1_en, temp2_en, k_en, MAR1_en, MAR2_en, write_sg, 
      m_add_en, m_value_en, un_add_mux_sel, uk_add_mux_sel, un_add_temp_mux_sel, 
      tn_add_mux_sel, tz_add_mux_sel, mdr2_mux_sel, m_value_mux_sel, start_div, 
      start_mul, done_sg, rst_init1, add_sig, sub_sg, mar1_mux_select, 
      mar2_mux_sel, adder_opA_mux_sel, adder_opB_mux_sel);
   input clk;
   input rst;
   input init;
   input alert;
   input update;
   input start;
   input multipiler_done;
   input divider_done;
   input m_is_zero;
   input overflow;
   output un_add_en;
   output uz_add_en;
   output uk_add_en;
   output un_value;
   output tn_add_en;
   output tz_add_en;
   output tz_value_en;
   output tn_value_en;
   output tk_value_en;
   output un_add_temp_en;
   output temp1_en;
   output temp2_en;
   output k_en;
   output MAR1_en;
   output MAR2_en;
   output write_sg;
   output m_add_en;
   output m_value_en;
   output un_add_mux_sel;
   output uk_add_mux_sel;
   output un_add_temp_mux_sel;
   output tn_add_mux_sel;
   output tz_add_mux_sel;
   output mdr2_mux_sel;
   output m_value_mux_sel;
   output start_div;
   output start_mul;
   output done_sg;
   output rst_init1;
   output add_sig;
   output sub_sg;
   output [1:0]mar1_mux_select;
   output [1:0]mar2_mux_sel;
   output [3:0]adder_opA_mux_sel;
   output [2:0]adder_opB_mux_sel;

   wire [4:0]current_state;
   wire not_first;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire n_0_48;
   wire n_0_51;
   wire n_0_55;
   wire n_0_56;
   wire n_0_57;
   wire n_0_58;
   wire n_0_59;
   wire n_0_60;
   wire n_0_62;
   wire n_0_63;
   wire n_0_64;
   wire n_0_65;
   wire n_0_69;
   wire n_0_61;
   wire n_0_52;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_50;
   wire n_0_54;
   wire n_0_71;
   wire n_0_72;
   wire n_0_73;
   wire n_0_49;
   wire n_0_53;
   wire n_0_74;
   wire n_0_75;
   wire n_0_76;
   wire n_0_77;
   wire n_0_67;
   wire n_0_70;
   wire n_0_66;
   wire n_0_42;
   wire n_0_68;

   DFF_X1 \current_state_reg[4]  (.D(n_5), .CK(clk), .Q(current_state[4]), .QN());
   DFF_X1 \current_state_reg[3]  (.D(n_4), .CK(clk), .Q(current_state[3]), .QN());
   DFF_X1 \current_state_reg[2]  (.D(n_3), .CK(clk), .Q(current_state[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_2), .CK(clk), .Q(current_state[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_1), .CK(clk), .Q(current_state[0]), .QN());
   DFF_X1 not_first_reg (.D(n_0), .CK(clk), .Q(not_first), .QN());
   MUX2_X1 not_first_reg_enable_mux_0 (.A(not_first), .B(n_6), .S(n_7), .Z(n_0));
   OAI211_X1 i_0_0 (.A(n_0_23), .B(n_0_1), .C1(n_0_19), .C2(n_0_0), .ZN(n_1));
   AOI21_X1 i_0_1 (.A(n_0_9), .B1(current_state[2]), .B2(n_0_63), .ZN(n_0_0));
   NAND2_X1 i_0_2 (.A1(n_0_15), .A2(n_0_2), .ZN(n_0_1));
   OAI211_X1 i_0_3 (.A(n_0_47), .B(n_0_3), .C1(current_state[3]), .C2(n_0_5), 
      .ZN(n_0_2));
   OR3_X1 i_0_4 (.A1(current_state[4]), .A2(current_state[2]), .A3(n_0_4), 
      .ZN(n_0_3));
   AOI211_X1 i_0_5 (.A(current_state[1]), .B(init), .C1(start), .C2(n_0_18), 
      .ZN(n_0_4));
   AOI221_X1 i_0_6 (.A(n_0_59), .B1(multipiler_done), .B2(n_0_57), .C1(
      current_state[4]), .C2(n_0_13), .ZN(n_0_5));
   OAI21_X1 i_0_7 (.A(n_0_6), .B1(n_0_26), .B2(n_0_7), .ZN(n_2));
   OAI211_X1 i_0_8 (.A(n_0_57), .B(n_0_15), .C1(n_0_70), .C2(n_0_69), .ZN(n_0_6));
   INV_X1 i_0_9 (.A(n_0_8), .ZN(n_0_7));
   OAI33_X1 i_0_10 (.A1(current_state[3]), .A2(current_state[2]), .A3(n_0_10), 
      .B1(n_0_66), .B2(n_0_9), .B3(n_0_47), .ZN(n_0_8));
   NOR2_X1 i_0_11 (.A1(current_state[2]), .A2(divider_done), .ZN(n_0_9));
   AOI21_X1 i_0_12 (.A(n_0_11), .B1(n_0_64), .B2(n_0_16), .ZN(n_0_10));
   OAI22_X1 i_0_13 (.A1(current_state[1]), .A2(n_0_66), .B1(n_0_13), .B2(n_0_12), 
      .ZN(n_0_11));
   OAI21_X1 i_0_14 (.A(current_state[4]), .B1(n_0_67), .B2(n_0_65), .ZN(n_0_12));
   NOR2_X1 i_0_15 (.A1(current_state[1]), .A2(n_0_63), .ZN(n_0_13));
   OAI211_X1 i_0_16 (.A(n_0_14), .B(n_0_20), .C1(n_0_68), .C2(n_0_19), .ZN(n_3));
   OAI211_X1 i_0_17 (.A(n_0_69), .B(n_0_15), .C1(n_0_59), .C2(n_0_16), .ZN(
      n_0_14));
   NOR2_X1 i_0_18 (.A1(current_state[0]), .A2(n_0_26), .ZN(n_0_15));
   NOR4_X1 i_0_19 (.A1(current_state[1]), .A2(init), .A3(current_state[4]), 
      .A4(n_0_17), .ZN(n_0_16));
   NOR3_X1 i_0_20 (.A1(update), .A2(alert), .A3(start), .ZN(n_0_17));
   NOR2_X1 i_0_21 (.A1(update), .A2(alert), .ZN(n_0_18));
   NAND2_X1 i_0_22 (.A1(n_0_48), .A2(n_0_27), .ZN(n_0_19));
   OAI211_X1 i_0_23 (.A(n_0_68), .B(n_0_56), .C1(n_5), .C2(n_0_21), .ZN(n_0_20));
   OAI21_X1 i_0_24 (.A(n_0_23), .B1(n_0_26), .B2(n_0_22), .ZN(n_4));
   NOR2_X1 i_0_25 (.A1(n_0_26), .A2(n_0_22), .ZN(n_0_21));
   NOR3_X1 i_0_26 (.A1(n_0_48), .A2(n_0_32), .A3(n_0_35), .ZN(n_0_22));
   NAND2_X1 i_0_27 (.A1(n_0_65), .A2(n_6), .ZN(n_0_23));
   INV_X1 i_0_28 (.A(n_0_24), .ZN(n_5));
   OAI21_X1 i_0_29 (.A(n_0_27), .B1(n_0_30), .B2(n_0_25), .ZN(n_0_24));
   AOI21_X1 i_0_30 (.A(n_0_52), .B1(n_0_65), .B2(n_0_56), .ZN(n_0_25));
   NOR2_X1 i_0_31 (.A1(n_0_51), .A2(n_0_26), .ZN(n_6));
   OAI211_X1 i_0_32 (.A(n_0_37), .B(n_0_27), .C1(n_0_70), .C2(n_0_28), .ZN(n_7));
   INV_X1 i_0_33 (.A(n_0_27), .ZN(n_0_26));
   NOR2_X1 i_0_34 (.A1(rst), .A2(overflow), .ZN(n_0_27));
   NOR3_X1 i_0_35 (.A1(current_state[3]), .A2(n_0_56), .A3(n_0_46), .ZN(n_0_28));
   OR2_X1 i_0_36 (.A1(temp2_en), .A2(uz_add_en), .ZN(adder_opB_mux_sel[2]));
   OR2_X1 i_0_37 (.A1(m_add_en), .A2(n_0_33), .ZN(mar2_mux_sel[0]));
   NAND2_X1 i_0_38 (.A1(current_state[1]), .A2(adder_opB_mux_sel[0]), .ZN(
      mar1_mux_select[0]));
   OR2_X1 i_0_39 (.A1(temp1_en), .A2(m_value_en), .ZN(sub_sg));
   OR3_X1 i_0_40 (.A1(n_0_33), .A2(n_0_29), .A3(uz_add_en), .ZN(add_sig));
   OR3_X1 i_0_41 (.A1(un_add_mux_sel), .A2(un_add_temp_mux_sel), .A3(
      uk_add_mux_sel), .ZN(n_0_29));
   OAI221_X1 i_0_42 (.A(n_0_44), .B1(n_0_58), .B2(n_0_31), .C1(n_0_66), .C2(
      n_0_42), .ZN(done_sg));
   OR2_X1 i_0_43 (.A1(start_div), .A2(m_value_mux_sel), .ZN(m_value_en));
   NOR2_X1 i_0_44 (.A1(n_0_60), .A2(n_0_52), .ZN(m_value_mux_sel));
   AND2_X1 i_0_49 (.A1(n_0_46), .A2(n_0_30), .ZN(write_sg));
   OAI21_X1 i_0_45 (.A(n_0_38), .B1(n_0_60), .B2(n_0_31), .ZN(n_0_30));
   NAND2_X1 i_0_46 (.A1(current_state[4]), .A2(n_0_69), .ZN(n_0_31));
   OR3_X1 i_0_52 (.A1(un_add_en), .A2(n_0_32), .A3(n_0_33), .ZN(MAR2_en));
   NOR3_X1 i_0_47 (.A1(current_state[2]), .A2(n_0_55), .A3(n_0_62), .ZN(n_0_32));
   OAI21_X1 i_0_48 (.A(n_0_51), .B1(n_0_62), .B2(n_0_58), .ZN(n_0_33));
   OR2_X1 i_0_55 (.A1(n_0_35), .A2(n_0_34), .ZN(MAR1_en));
   INV_X1 i_0_50 (.A(n_0_34), .ZN(mar1_mux_select[1]));
   OAI22_X1 i_0_51 (.A1(n_0_62), .A2(n_0_58), .B1(n_0_45), .B2(n_0_43), .ZN(
      n_0_34));
   OR2_X1 i_0_53 (.A1(k_en), .A2(n_0_36), .ZN(n_0_35));
   OAI21_X1 i_0_60 (.A(n_0_38), .B1(current_state[4]), .B2(n_0_37), .ZN(
      un_add_temp_en));
   NOR2_X1 i_0_54 (.A1(current_state[4]), .A2(n_0_37), .ZN(n_0_36));
   NAND3_X1 i_0_56 (.A1(n_0_69), .A2(current_state[2]), .A3(n_0_56), .ZN(n_0_37));
   INV_X1 i_0_57 (.A(un_add_temp_mux_sel), .ZN(n_0_38));
   NOR3_X1 i_0_58 (.A1(n_0_68), .A2(n_0_67), .A3(n_0_62), .ZN(
      un_add_temp_mux_sel));
   NOR2_X1 i_0_65 (.A1(n_0_66), .A2(n_0_42), .ZN(tz_value_en));
   OR2_X1 i_0_66 (.A1(tk_value_en), .A2(uk_add_mux_sel), .ZN(uk_add_en));
   NOR3_X1 i_0_59 (.A1(current_state[1]), .A2(n_0_66), .A3(n_0_52), .ZN(
      uk_add_mux_sel));
   NOR2_X1 i_0_61 (.A1(n_0_59), .A2(n_0_57), .ZN(n_0_43));
   OR2_X1 i_0_75 (.A1(un_add_mux_sel), .A2(m_add_en), .ZN(un_add_en));
   NOR3_X1 i_0_62 (.A1(n_0_53), .A2(n_0_49), .A3(n_0_66), .ZN(m_add_en));
   INV_X1 i_0_63 (.A(tk_value_en), .ZN(n_0_44));
   NOR3_X1 i_0_64 (.A1(n_0_68), .A2(n_0_67), .A3(n_0_45), .ZN(tk_value_en));
   NAND3_X1 i_0_67 (.A1(n_0_70), .A2(n_0_69), .A3(n_0_66), .ZN(n_0_45));
   NOR3_X1 i_0_68 (.A1(n_0_68), .A2(current_state[0]), .A3(n_0_47), .ZN(un_value));
   NOR2_X1 i_0_69 (.A1(n_0_68), .A2(current_state[0]), .ZN(n_0_46));
   INV_X1 i_0_70 (.A(n_0_48), .ZN(n_0_47));
   NOR2_X1 i_0_71 (.A1(n_0_69), .A2(n_0_49), .ZN(n_0_48));
   INV_X1 i_0_72 (.A(temp2_en), .ZN(n_0_51));
   NOR2_X1 i_0_73 (.A1(n_0_55), .A2(n_0_52), .ZN(temp2_en));
   INV_X1 i_0_74 (.A(n_0_56), .ZN(n_0_55));
   NOR2_X1 i_0_76 (.A1(n_0_67), .A2(n_0_66), .ZN(n_0_56));
   NOR4_X1 i_0_77 (.A1(current_state[2]), .A2(n_0_67), .A3(current_state[0]), 
      .A4(n_0_62), .ZN(k_en));
   NOR2_X1 i_0_78 (.A1(current_state[2]), .A2(n_0_67), .ZN(n_0_57));
   NOR2_X1 i_0_79 (.A1(n_0_62), .A2(n_0_58), .ZN(start_mul));
   NAND2_X1 i_0_80 (.A1(current_state[0]), .A2(n_0_59), .ZN(n_0_58));
   NOR2_X1 i_0_81 (.A1(n_0_68), .A2(current_state[1]), .ZN(n_0_59));
   NOR3_X1 i_0_82 (.A1(n_0_62), .A2(n_0_60), .A3(current_state[2]), .ZN(
      start_div));
   NOR2_X1 i_0_83 (.A1(n_0_62), .A2(n_0_60), .ZN(adder_opB_mux_sel[1]));
   INV_X1 i_0_84 (.A(n_0_61), .ZN(n_0_60));
   NAND2_X1 i_0_85 (.A1(n_0_70), .A2(current_state[3]), .ZN(n_0_62));
   INV_X1 i_0_86 (.A(not_first), .ZN(n_0_63));
   INV_X1 i_0_87 (.A(update), .ZN(n_0_64));
   INV_X1 i_0_88 (.A(m_is_zero), .ZN(n_0_65));
   INV_X1 i_0_89 (.A(current_state[3]), .ZN(n_0_69));
   NOR2_X1 i_0_90 (.A1(current_state[0]), .A2(current_state[1]), .ZN(n_0_61));
   NAND2_X1 i_0_91 (.A1(n_0_74), .A2(current_state[4]), .ZN(n_0_52));
   OAI21_X1 i_0_92 (.A(n_0_39), .B1(adder_opA_mux_sel[3]), .B2(n_0_40), .ZN(
      adder_opA_mux_sel[1]));
   NAND4_X1 i_0_93 (.A1(n_0_74), .A2(current_state[0]), .A3(current_state[4]), 
      .A4(current_state[1]), .ZN(n_0_39));
   OAI21_X1 i_0_94 (.A(current_state[2]), .B1(current_state[0]), .B2(
      current_state[1]), .ZN(n_0_40));
   INV_X1 i_0_95 (.A(n_0_41), .ZN(adder_opA_mux_sel[3]));
   OR3_X1 i_0_96 (.A1(adder_opB_mux_sel[0]), .A2(un_add_mux_sel), .A3(
      adder_opA_mux_sel[2]), .ZN(n_0_41));
   AOI21_X1 i_0_97 (.A(n_0_62), .B1(n_0_60), .B2(n_0_68), .ZN(
      adder_opA_mux_sel[2]));
   NAND3_X1 i_0_98 (.A1(n_0_71), .A2(n_0_54), .A3(n_0_50), .ZN(
      adder_opB_mux_sel[0]));
   NAND2_X1 i_0_99 (.A1(n_0_54), .A2(n_0_50), .ZN(temp1_en));
   INV_X1 i_0_100 (.A(n_0_36), .ZN(n_0_50));
   INV_X1 i_0_101 (.A(un_value), .ZN(n_0_54));
   INV_X1 i_0_102 (.A(n_0_71), .ZN(uz_add_en));
   OR2_X1 i_0_103 (.A1(n_0_42), .A2(adder_opA_mux_sel[0]), .ZN(n_0_71));
   NAND4_X1 i_0_104 (.A1(n_0_75), .A2(n_0_76), .A3(n_0_73), .A4(n_0_72), 
      .ZN(adder_opA_mux_sel[0]));
   NAND3_X1 i_0_105 (.A1(n_0_74), .A2(n_0_70), .A3(n_0_67), .ZN(n_0_72));
   NAND2_X1 i_0_106 (.A1(n_0_53), .A2(n_0_49), .ZN(n_0_73));
   NAND2_X1 i_0_107 (.A1(n_0_67), .A2(n_0_70), .ZN(n_0_49));
   INV_X1 i_0_108 (.A(n_0_74), .ZN(n_0_53));
   NOR2_X1 i_0_109 (.A1(current_state[2]), .A2(current_state[3]), .ZN(n_0_74));
   OR2_X1 i_0_110 (.A1(n_0_66), .A2(n_0_77), .ZN(n_0_75));
   NAND2_X1 i_0_111 (.A1(n_0_77), .A2(n_0_66), .ZN(n_0_76));
   OAI21_X1 i_0_112 (.A(n_0_68), .B1(n_0_67), .B2(n_0_70), .ZN(n_0_77));
   INV_X1 i_0_113 (.A(current_state[1]), .ZN(n_0_67));
   INV_X1 i_0_114 (.A(current_state[4]), .ZN(n_0_70));
   INV_X1 i_0_115 (.A(current_state[0]), .ZN(n_0_66));
   OR3_X1 i_0_116 (.A1(n_0_43), .A2(current_state[4]), .A3(current_state[3]), 
      .ZN(n_0_42));
   NOR3_X1 i_0_117 (.A1(n_0_45), .A2(n_0_68), .A3(current_state[1]), .ZN(
      un_add_mux_sel));
   INV_X1 i_0_118 (.A(current_state[2]), .ZN(n_0_68));
endmodule

module mux_2_1__0_191(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   MUX2_X1 i_0_0 (.A(in1[0]), .B(in2[0]), .S(sel), .Z(out[0]));
   MUX2_X1 i_0_1 (.A(in1[1]), .B(in2[1]), .S(sel), .Z(out[1]));
   MUX2_X1 i_0_2 (.A(in1[2]), .B(in2[2]), .S(sel), .Z(out[2]));
   MUX2_X1 i_0_3 (.A(in1[3]), .B(in2[3]), .S(sel), .Z(out[3]));
   MUX2_X1 i_0_4 (.A(in1[4]), .B(in2[4]), .S(sel), .Z(out[4]));
   MUX2_X1 i_0_5 (.A(in1[5]), .B(in2[5]), .S(sel), .Z(out[5]));
   MUX2_X1 i_0_6 (.A(in1[6]), .B(in2[6]), .S(sel), .Z(out[6]));
   MUX2_X1 i_0_7 (.A(in1[7]), .B(in2[7]), .S(sel), .Z(out[7]));
   MUX2_X1 i_0_8 (.A(in1[8]), .B(in2[8]), .S(sel), .Z(out[8]));
   MUX2_X1 i_0_9 (.A(in1[9]), .B(in2[9]), .S(sel), .Z(out[9]));
   MUX2_X1 i_0_10 (.A(in1[10]), .B(in2[10]), .S(sel), .Z(out[10]));
   MUX2_X1 i_0_11 (.A(in1[11]), .B(in2[11]), .S(sel), .Z(out[11]));
   MUX2_X1 i_0_12 (.A(in1[12]), .B(in2[12]), .S(sel), .Z(out[12]));
   MUX2_X1 i_0_13 (.A(in1[13]), .B(in2[13]), .S(sel), .Z(out[13]));
   MUX2_X1 i_0_14 (.A(in1[14]), .B(in2[14]), .S(sel), .Z(out[14]));
   MUX2_X1 i_0_15 (.A(in1[15]), .B(in2[15]), .S(sel), .Z(out[15]));
endmodule

module mux_2_1__0_195(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in1[0]), .A2(n_0_0), .ZN(out[0]));
   AND2_X1 i_0_1 (.A1(in1[1]), .A2(n_0_0), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(in1[2]), .A2(n_0_0), .ZN(out[2]));
   AND2_X1 i_0_3 (.A1(in1[3]), .A2(n_0_0), .ZN(out[3]));
   AND2_X1 i_0_4 (.A1(in1[4]), .A2(n_0_0), .ZN(out[4]));
   AND2_X1 i_0_5 (.A1(in1[5]), .A2(n_0_0), .ZN(out[5]));
   AND2_X1 i_0_6 (.A1(in1[6]), .A2(n_0_0), .ZN(out[6]));
   AND2_X1 i_0_7 (.A1(in1[7]), .A2(n_0_0), .ZN(out[7]));
   AND2_X1 i_0_8 (.A1(in1[8]), .A2(n_0_0), .ZN(out[8]));
   AND2_X1 i_0_9 (.A1(in1[9]), .A2(n_0_0), .ZN(out[9]));
   AND2_X1 i_0_10 (.A1(in1[10]), .A2(n_0_0), .ZN(out[10]));
   AND2_X1 i_0_11 (.A1(in1[11]), .A2(n_0_0), .ZN(out[11]));
   AND2_X1 i_0_12 (.A1(in1[12]), .A2(n_0_0), .ZN(out[12]));
   AND2_X1 i_0_13 (.A1(in1[13]), .A2(n_0_0), .ZN(out[13]));
   AND2_X1 i_0_14 (.A1(in1[14]), .A2(n_0_0), .ZN(out[14]));
   AND2_X1 i_0_15 (.A1(in1[15]), .A2(n_0_0), .ZN(out[15]));
   INV_X1 i_0_16 (.A(sel), .ZN(n_0_0));
endmodule

module mux_4_1(sel, in1, in2, in3, in4, out);
   input [1:0]sel;
   input [15:0]in1;
   input [15:0]in2;
   input [15:0]in3;
   input [15:0]in4;
   output [15:0]out;

   wire [15:0]mux1_out;

   mux_2_1__0_191 mux1 (.sel(sel[0]), .in1(in1), .in2(in2), .out(mux1_out));
   mux_2_1__0_195 mux3 (.sel(sel[1]), .in1(mux1_out), .in2(), .out(out));
endmodule

module Register__0_186(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module Register__0_189(clk, rst, load, data_in, data_out);
   input clk;
   input rst;
   input load;
   input [15:0]data_in;
   output [15:0]data_out;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_data_out_reg (.CK(clk), .E(n_1), .SE(1'b0), .GCK(n_0));
   DFF_X1 \data_out_reg[15]  (.D(n_17), .CK(n_0), .Q(data_out[15]), .QN());
   DFF_X1 \data_out_reg[14]  (.D(n_16), .CK(n_0), .Q(data_out[14]), .QN());
   DFF_X1 \data_out_reg[13]  (.D(n_15), .CK(n_0), .Q(data_out[13]), .QN());
   DFF_X1 \data_out_reg[12]  (.D(n_14), .CK(n_0), .Q(data_out[12]), .QN());
   DFF_X1 \data_out_reg[11]  (.D(n_13), .CK(n_0), .Q(data_out[11]), .QN());
   DFF_X1 \data_out_reg[10]  (.D(n_12), .CK(n_0), .Q(data_out[10]), .QN());
   DFF_X1 \data_out_reg[9]  (.D(n_11), .CK(n_0), .Q(data_out[9]), .QN());
   DFF_X1 \data_out_reg[8]  (.D(n_10), .CK(n_0), .Q(data_out[8]), .QN());
   DFF_X1 \data_out_reg[7]  (.D(n_9), .CK(n_0), .Q(data_out[7]), .QN());
   DFF_X1 \data_out_reg[6]  (.D(n_8), .CK(n_0), .Q(data_out[6]), .QN());
   DFF_X1 \data_out_reg[5]  (.D(n_7), .CK(n_0), .Q(data_out[5]), .QN());
   DFF_X1 \data_out_reg[4]  (.D(n_6), .CK(n_0), .Q(data_out[4]), .QN());
   DFF_X1 \data_out_reg[3]  (.D(n_5), .CK(n_0), .Q(data_out[3]), .QN());
   DFF_X1 \data_out_reg[2]  (.D(n_4), .CK(n_0), .Q(data_out[2]), .QN());
   DFF_X1 \data_out_reg[1]  (.D(n_3), .CK(n_0), .Q(data_out[1]), .QN());
   DFF_X1 \data_out_reg[0]  (.D(n_2), .CK(n_0), .Q(data_out[0]), .QN());
   OR2_X1 i_0_0 (.A1(load), .A2(rst), .ZN(n_1));
   INV_X1 i_0_1 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(data_in[0]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(data_in[1]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(data_in[2]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(data_in[3]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(data_in[4]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(data_in[5]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(data_in[6]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(data_in[7]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(data_in[8]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(data_in[9]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(data_in[10]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(data_in[11]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(data_in[12]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(data_in[13]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(data_in[14]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(data_in[15]), .ZN(n_17));
endmodule

module InterpolationModule(start_sg, alert_sg, update_sg, init_sg, clk, rst, 
      tk_port, ram_data1, ram_data2, uk_port, done_sg, mem_write, overflow, 
      ram_add1, ram_add2, data_to_ram);
   input start_sg;
   input alert_sg;
   input update_sg;
   input init_sg;
   input clk;
   input rst;
   input [15:0]tk_port;
   input [15:0]ram_data1;
   input [15:0]ram_data2;
   input [15:0]uk_port;
   output done_sg;
   output mem_write;
   output overflow;
   output [15:0]ram_add1;
   output [15:0]ram_add2;
   output [15:0]data_to_ram;

   wire [15:0]uz_add_out;
   wire [15:0]un_add_in;
   wire [15:0]un_add_out;
   wire [15:0]tz_add_in;
   wire [15:0]tz_add_out;
   wire [15:0]tk_value_out;
   wire [15:0]tz_value_out;
   wire [15:0]MAR1_in;
   wire [15:0]un_add_temp_in;
   wire [15:0]un_add_temp_out;
   wire [15:0]m_value_in;
   wire [15:0]m_value_out;
   wire [15:0]uk_add_in;
   wire [15:0]uk_add_out;
   wire [15:0]adder_A_op;
   wire [15:0]tn_value_out;
   wire [15:0]un_value_out;
   wire [15:0]adder_B_op;
   wire overflow_flag_adder;
   wire [15:0]adder_result_prefinal;
   wire [15:0]temp1_out;
   wire div_done;
   wire overflow_flag_div;
   wire [15:0]div_result;
   wire [15:0]k_out;
   wire mul_done;
   wire overflow_flag_mul;
   wire [15:0]mul_result;
   wire [2:0]adder_opB_mux_sel;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire [1:0]mar2_mux_sel;
   wire [1:0]mar1_mux_select;
   wire sub_sg;
   wire add_sig;
   wire start_mul;
   wire start_div;
   wire m_value_mux_sel;
   wire un_add_temp_mux_sel;
   wire uk_add_mux_sel;
   wire tn_value_en;
   wire m_value_en;
   wire rst_init1;
   wire MAR2_en;
   wire MAR1_en;
   wire k_en;
   wire temp2_en;
   wire temp1_en;
   wire un_add_temp_en;
   wire tk_value_en;
   wire tz_value_en;
   wire un_value_en;
   wire uk_add_en;
   wire uz_add_en;
   wire [15:0]MAR2_in;
   wire rst_tn_tz_value;
   wire [15:0]adder_A_op_final;
   wire [15:0]adder_result;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire m_is_zero;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;

   Register__0_144 uz_add (.clk(clk), .rst(rst), .load(uz_add_en), .data_in(
      adder_result), .data_out(uz_add_out));
   mux_2_1__0_201 un_add_mux (.sel(tn_value_en), .in1(), .in2(uz_add_out), 
      .out(un_add_in));
   Register__0_147 un_add (.clk(clk), .rst(rst), .load(mar2_mux_sel[1]), 
      .data_in(un_add_in), .data_out(un_add_out));
   mux_2_1__0_203 tz_add_mux (.sel(tn_value_en), .in1(), .in2(adder_result), 
      .out(tz_add_in));
   Register__0_150 tz_add (.clk(clk), .rst(rst), .load(mar2_mux_sel[1]), 
      .data_in(tz_add_in), .data_out(tz_add_out));
   Register__0_153 tk_value (.clk(clk), .rst(rst), .load(tk_value_en), .data_in(
      tk_port), .data_out(tk_value_out));
   Register__0_156 tz_value (.clk(clk), .rst(rst_tn_tz_value), .load(tz_value_en), 
      .data_in(ram_data1), .data_out(tz_value_out));
   mux_4_1__0_230 MAR1_mux (.sel(mar1_mux_select), .in1(tz_add_out), .in2(
      adder_result), .in3(), .in4(uz_add_out), .out(MAR1_in));
   Register__0_162 mar1 (.clk(clk), .rst(rst), .load(MAR1_en), .data_in(MAR1_in), 
      .data_out(ram_add1));
   mux_2_1__0_205 un_add_temp_mux (.sel(un_add_temp_mux_sel), .in1(un_add_out), 
      .in2(adder_result), .out(un_add_temp_in));
   Register__0_165 un_add_temp (.clk(clk), .rst(rst), .load(un_add_temp_en), 
      .data_in(un_add_temp_in), .data_out(un_add_temp_out));
   mux_2_1__0_207 m_value_mux (.sel(m_value_mux_sel), .in1(ram_data1), .in2(
      adder_result), .out(m_value_in));
   Register__0_168 m_value (.clk(clk), .rst(rst), .load(m_value_en), .data_in(
      m_value_in), .data_out(m_value_out));
   mux_2_1__0_209 uk_add_mux (.sel(uk_add_mux_sel), .in1(uk_port), .in2(
      adder_result), .out(uk_add_in));
   Register__0_171 uk_add (.clk(clk), .rst(rst), .load(uk_add_en), .data_in(
      uk_add_in), .data_out(uk_add_out));
   mux_16_1 adder_A_op_mux (.sel({n_0_3, n_0_2, n_0_1, n_0_0}), .in1(un_add_out), 
      .in2(tz_add_out), .in3(uz_add_out), .in4(tk_value_out), .in5(tz_value_out), 
      .in6(ram_data1), .in7(ram_add1), .in8(un_add_temp_out), .in9(m_value_out), 
      .in10(uk_add_out), .in11(mul_result), .in12(), .in13(), .in14(), .in15(), 
      .in16(), .out(adder_A_op));
   Register__0_174 tn_value (.clk(clk), .rst(rst_tn_tz_value), .load(tn_value_en), 
      .data_in(tz_value_out), .data_out(tn_value_out));
   Register__0_177 un_value (.clk(clk), .rst(rst), .load(un_value_en), .data_in(
      ram_data2), .data_out(un_value_out));
   mux_8_1 adder_B_op_mux (.sel(adder_opB_mux_sel), .in1(), .in2(tn_value_out), 
      .in3(tk_value_out), .in4(ram_data2), .in5(un_value_out), .in6(), .in7(), 
      .in8(), .out(adder_B_op));
   adder__parameterized4 adder (.A(adder_A_op_final), .B(adder_B_op), 
      .is_subtract(sub_sg), .result(adder_result_prefinal), .carry(), 
      .overflow_flag(overflow_flag_adder), .negative());
   Register__0_180 temp1 (.clk(clk), .rst(rst), .load(temp1_en), .data_in(
      adder_result), .data_out(temp1_out));
   division divider (.clk(clk), .rst(rst), .dividen(temp1_out), .divisor(
      adder_result), .start(start_div), .result(div_result), .overflow_flag(
      overflow_flag_div), .finish(div_done));
   Register__0_183 k (.clk(clk), .rst(rst), .load(k_en), .data_in(div_result), 
      .data_out(k_out));
   multiplier multiplier (.clk(clk), .rst(rst), .multiplicand(temp1_out), 
      .multiplier(k_out), .start(start_mul), .result(mul_result), .overflow_flag(
      overflow_flag_mul), .finish(mul_done));
   InterpolationFSM fsm (.clk(clk), .rst(rst), .init(init_sg), .alert(alert_sg), 
      .update(update_sg), .start(start_sg), .multipiler_done(mul_done), 
      .divider_done(div_done), .m_is_zero(m_is_zero), .overflow(overflow), 
      .un_add_en(mar2_mux_sel[1]), .uz_add_en(uz_add_en), .uk_add_en(uk_add_en), 
      .un_value(un_value_en), .tn_add_en(), .tz_add_en(), .tz_value_en(
      tz_value_en), .tn_value_en(), .tk_value_en(tk_value_en), .un_add_temp_en(
      un_add_temp_en), .temp1_en(temp1_en), .temp2_en(temp2_en), .k_en(k_en), 
      .MAR1_en(MAR1_en), .MAR2_en(MAR2_en), .write_sg(mem_write), .m_add_en(
      rst_init1), .m_value_en(m_value_en), .un_add_mux_sel(tn_value_en), 
      .uk_add_mux_sel(uk_add_mux_sel), .un_add_temp_mux_sel(un_add_temp_mux_sel), 
      .tn_add_mux_sel(), .tz_add_mux_sel(), .mdr2_mux_sel(), .m_value_mux_sel(
      m_value_mux_sel), .start_div(start_div), .start_mul(start_mul), .done_sg(
      done_sg), .rst_init1(), .add_sig(add_sig), .sub_sg(sub_sg), 
      .mar1_mux_select(mar1_mux_select), .mar2_mux_sel({uc_0, mar2_mux_sel[0]}), 
      .adder_opA_mux_sel({n_0_3, n_0_2, n_0_1, n_0_0}), .adder_opB_mux_sel(
      adder_opB_mux_sel));
   mux_4_1 MAR2_mux (.sel(mar2_mux_sel), .in1(un_add_temp_out), .in2(uk_add_out), 
      .in3(), .in4(), .out(MAR2_in));
   Register__0_186 mar2 (.clk(clk), .rst(rst), .load(MAR2_en), .data_in(MAR2_in), 
      .data_out(ram_add2));
   Register__0_189 temp2 (.clk(clk), .rst(rst), .load(temp2_en), .data_in(
      adder_result), .data_out(data_to_ram));
   OR2_X1 i_0_0_0 (.A1(rst), .A2(rst_init1), .ZN(rst_tn_tz_value));
   AND2_X1 i_0_0_1 (.A1(adder_A_op[0]), .A2(n_0_0_0), .ZN(adder_A_op_final[0]));
   AND2_X1 i_0_0_2 (.A1(adder_A_op[1]), .A2(n_0_0_0), .ZN(adder_A_op_final[1]));
   AND2_X1 i_0_0_3 (.A1(adder_A_op[2]), .A2(n_0_0_0), .ZN(adder_A_op_final[2]));
   AND2_X1 i_0_0_4 (.A1(adder_A_op[3]), .A2(n_0_0_0), .ZN(adder_A_op_final[3]));
   AND2_X1 i_0_0_5 (.A1(adder_A_op[4]), .A2(n_0_0_0), .ZN(adder_A_op_final[4]));
   AND2_X1 i_0_0_6 (.A1(adder_A_op[5]), .A2(n_0_0_0), .ZN(adder_A_op_final[5]));
   AND2_X1 i_0_0_7 (.A1(adder_A_op[6]), .A2(n_0_0_0), .ZN(adder_A_op_final[6]));
   MUX2_X1 i_0_0_8 (.A(adder_A_op[0]), .B(adder_A_op[7]), .S(n_0_0_0), .Z(
      adder_A_op_final[7]));
   MUX2_X1 i_0_0_9 (.A(adder_A_op[1]), .B(adder_A_op[8]), .S(n_0_0_0), .Z(
      adder_A_op_final[8]));
   MUX2_X1 i_0_0_10 (.A(adder_A_op[2]), .B(adder_A_op[9]), .S(n_0_0_0), .Z(
      adder_A_op_final[9]));
   MUX2_X1 i_0_0_11 (.A(adder_A_op[3]), .B(adder_A_op[10]), .S(n_0_0_0), 
      .Z(adder_A_op_final[10]));
   MUX2_X1 i_0_0_12 (.A(adder_A_op[4]), .B(adder_A_op[11]), .S(n_0_0_0), 
      .Z(adder_A_op_final[11]));
   MUX2_X1 i_0_0_13 (.A(adder_A_op[5]), .B(adder_A_op[12]), .S(n_0_0_0), 
      .Z(adder_A_op_final[12]));
   MUX2_X1 i_0_0_14 (.A(adder_A_op[6]), .B(adder_A_op[13]), .S(n_0_0_0), 
      .Z(adder_A_op_final[13]));
   MUX2_X1 i_0_0_15 (.A(adder_A_op[7]), .B(adder_A_op[14]), .S(n_0_0_0), 
      .Z(adder_A_op_final[14]));
   MUX2_X1 i_0_0_16 (.A(adder_A_op[8]), .B(adder_A_op[15]), .S(n_0_0_0), 
      .Z(adder_A_op_final[15]));
   MUX2_X1 i_0_0_17 (.A(adder_result_prefinal[7]), .B(adder_result_prefinal[0]), 
      .S(n_0_0_0), .Z(adder_result[0]));
   MUX2_X1 i_0_0_18 (.A(adder_result_prefinal[8]), .B(adder_result_prefinal[1]), 
      .S(n_0_0_0), .Z(adder_result[1]));
   MUX2_X1 i_0_0_19 (.A(adder_result_prefinal[9]), .B(adder_result_prefinal[2]), 
      .S(n_0_0_0), .Z(adder_result[2]));
   MUX2_X1 i_0_0_20 (.A(adder_result_prefinal[10]), .B(adder_result_prefinal[3]), 
      .S(n_0_0_0), .Z(adder_result[3]));
   MUX2_X1 i_0_0_21 (.A(adder_result_prefinal[11]), .B(adder_result_prefinal[4]), 
      .S(n_0_0_0), .Z(adder_result[4]));
   MUX2_X1 i_0_0_22 (.A(adder_result_prefinal[12]), .B(adder_result_prefinal[5]), 
      .S(n_0_0_0), .Z(adder_result[5]));
   MUX2_X1 i_0_0_23 (.A(adder_result_prefinal[13]), .B(adder_result_prefinal[6]), 
      .S(n_0_0_0), .Z(adder_result[6]));
   MUX2_X1 i_0_0_24 (.A(adder_result_prefinal[14]), .B(adder_result_prefinal[7]), 
      .S(n_0_0_0), .Z(adder_result[7]));
   MUX2_X1 i_0_0_25 (.A(adder_result_prefinal[15]), .B(adder_result_prefinal[8]), 
      .S(n_0_0_0), .Z(adder_result[8]));
   AND2_X1 i_0_0_26 (.A1(adder_result_prefinal[9]), .A2(n_0_0_0), .ZN(
      adder_result[9]));
   AND2_X1 i_0_0_27 (.A1(adder_result_prefinal[10]), .A2(n_0_0_0), .ZN(
      adder_result[10]));
   AND2_X1 i_0_0_28 (.A1(adder_result_prefinal[11]), .A2(n_0_0_0), .ZN(
      adder_result[11]));
   AND2_X1 i_0_0_29 (.A1(adder_result_prefinal[12]), .A2(n_0_0_0), .ZN(
      adder_result[12]));
   AND2_X1 i_0_0_30 (.A1(adder_result_prefinal[13]), .A2(n_0_0_0), .ZN(
      adder_result[13]));
   AND2_X1 i_0_0_31 (.A1(adder_result_prefinal[14]), .A2(n_0_0_0), .ZN(
      adder_result[14]));
   AND2_X1 i_0_0_32 (.A1(adder_result_prefinal[15]), .A2(n_0_0_0), .ZN(
      adder_result[15]));
   AOI21_X1 i_0_0_33 (.A(n_0_0_1), .B1(n_0_0_2), .B2(n_0_0_11), .ZN(n_0_0_0));
   NOR3_X1 i_0_0_34 (.A1(n_0_0_10), .A2(n_0_1), .A3(n_0_2), .ZN(n_0_0_1));
   OAI21_X1 i_0_0_35 (.A(n_0_0_3), .B1(n_0_0), .B2(n_0_2), .ZN(n_0_0_2));
   NAND2_X1 i_0_0_36 (.A1(n_0_2), .A2(n_0_1), .ZN(n_0_0_3));
   AND4_X1 i_0_0_37 (.A1(n_0_0_7), .A2(n_0_0_6), .A3(n_0_0_5), .A4(n_0_0_4), 
      .ZN(m_is_zero));
   NOR4_X1 i_0_0_38 (.A1(m_value_out[12]), .A2(m_value_out[11]), .A3(
      m_value_out[10]), .A4(m_value_out[9]), .ZN(n_0_0_4));
   NOR4_X1 i_0_0_39 (.A1(m_value_out[15]), .A2(m_value_out[14]), .A3(
      m_value_out[13]), .A4(m_value_out[8]), .ZN(n_0_0_5));
   NOR4_X1 i_0_0_40 (.A1(m_value_out[4]), .A2(m_value_out[3]), .A3(
      m_value_out[2]), .A4(m_value_out[1]), .ZN(n_0_0_6));
   NOR4_X1 i_0_0_41 (.A1(m_value_out[7]), .A2(m_value_out[6]), .A3(
      m_value_out[5]), .A4(m_value_out[0]), .ZN(n_0_0_7));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_9), .A2(n_0_0_8), .ZN(overflow));
   OAI21_X1 i_0_0_43 (.A(overflow_flag_adder), .B1(sub_sg), .B2(add_sig), 
      .ZN(n_0_0_8));
   AOI22_X1 i_0_0_44 (.A1(div_done), .A2(overflow_flag_div), .B1(mul_done), 
      .B2(overflow_flag_mul), .ZN(n_0_0_9));
   INV_X1 i_0_0_45 (.A(n_0_0), .ZN(n_0_0_10));
   INV_X1 i_0_0_46 (.A(n_0_3), .ZN(n_0_0_11));
endmodule
