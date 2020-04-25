/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Apr 22 17:59:47 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 4160969399 */

module Register__0_427(clk, rst, load, data_in, data_out);
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

module Register__0_430(clk, rst, load, data_in, data_out);
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

module Register__0_433(clk, rst, load, data_in, data_out);
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

module Register__0_436(clk, rst, load, data_in, data_out);
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

module Register__0_439(clk, rst, load, data_in, data_out);
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

module full_adder__0_476(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_472(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_477(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_476 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_472 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_467(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_463(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_468(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_467 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_463 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_478(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_477 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_468 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_496(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_492(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_497(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_496 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_492 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_487(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_483(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_488(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_487 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_483 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_498(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_497 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_488 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_516(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_512(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_517(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_516 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_512 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_507(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_503(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_508(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_507 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_503 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_518(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_517 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_508 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_536(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_532(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_537(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_536 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_532 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_527(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_523(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_528(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_527 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_523 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_538(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_537 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_528 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_556(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_552(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_557(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_556 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_552 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_547(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_543(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_548(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_547 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_543 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_558(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_557 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_548 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_576(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_572(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_577(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_576 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_572 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_567(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_563(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_568(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_567 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_563 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_578(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_577 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_568 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_596(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_592(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_597(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_596 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_592 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_587(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_583(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_588(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_587 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_583 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_598(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_597 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_588 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_616(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_612(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_617(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_616 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__0_612 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_607(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_603(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_608(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_607 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__0_603 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_618(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire intermediate_carry_1;
   wire [2:0]o_result_one_carry;
   wire intermediate_carry_0;
   wire [2:0]o_result_zero_carry;

   adder_block__0_617 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry(intermediate_carry_1));
   adder_block__0_608 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry(intermediate_carry_0));
   MUX2_X1 i_0_0 (.A(intermediate_carry_0), .B(intermediate_carry_1), .S(cin), 
      .Z(intermediate_carry));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_3 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
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
   wire intermediate_cs;

   which_adder__0_478 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({n_2, n_1}), 
      .cin(is_subtract), .o_result({cs, result[1], result[0]}), 
      .intermediate_carry());
   which_adder__0_498 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({n_4, n_3}), .cin(cs), .o_result({n_14, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_518 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({n_6, n_5}), .cin(n_14), .o_result({n_15, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_538 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({n_8, n_7}), .cin(n_15), .o_result({n_16, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_558 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({n_10, n_9}), .cin(n_16), .o_result({n_17, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_578 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({n_12, n_11}), .cin(n_17), .o_result({n_18, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_598 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({n_20, n_13}), .cin(n_18), .o_result({n_19, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_618 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({n_22, n_21}), .cin(n_19), .o_result({n_0, result[15], result[14]}), 
      .intermediate_carry(intermediate_cs));
   XOR2_X1 i_0_0 (.A(B[0]), .B(is_subtract), .Z(n_1));
   XOR2_X1 i_0_1 (.A(B[1]), .B(is_subtract), .Z(n_2));
   XOR2_X1 i_0_2 (.A(result[15]), .B(overflow_flag), .Z(negative));
   XOR2_X1 i_0_3 (.A(intermediate_cs), .B(n_0), .Z(overflow_flag));
   XOR2_X1 i_0_4 (.A(B[2]), .B(is_subtract), .Z(n_3));
   XOR2_X1 i_0_5 (.A(B[3]), .B(is_subtract), .Z(n_4));
   XOR2_X1 i_0_6 (.A(B[4]), .B(is_subtract), .Z(n_5));
   XOR2_X1 i_0_7 (.A(B[5]), .B(is_subtract), .Z(n_6));
   XOR2_X1 i_0_8 (.A(B[6]), .B(is_subtract), .Z(n_7));
   XOR2_X1 i_0_9 (.A(B[7]), .B(is_subtract), .Z(n_8));
   XOR2_X1 i_0_10 (.A(B[8]), .B(is_subtract), .Z(n_9));
   XOR2_X1 i_0_11 (.A(B[9]), .B(is_subtract), .Z(n_10));
   XOR2_X1 i_0_12 (.A(B[10]), .B(is_subtract), .Z(n_11));
   XOR2_X1 i_0_13 (.A(B[11]), .B(is_subtract), .Z(n_12));
   XOR2_X1 i_0_14 (.A(B[12]), .B(is_subtract), .Z(n_13));
   XOR2_X1 i_0_15 (.A(B[13]), .B(is_subtract), .Z(n_20));
   XOR2_X1 i_0_16 (.A(B[14]), .B(is_subtract), .Z(n_21));
   XOR2_X1 i_0_17 (.A(B[15]), .B(is_subtract), .Z(n_22));
endmodule

module Register__0_442(clk, rst, load, data_in, data_out);
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

module full_adder__0_1387(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__0_1383(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1388(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1387 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__0_1383 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1398(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_1388 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__0_1412(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1417(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1412 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1418(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1417 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_453(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_458(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_453 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_458 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized4(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [5:0]A;
   input [5:0]B;
   input is_subtract;
   output [5:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_1398 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_1418 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), .i_add2(), 
      .cin(n_0), .o_result({uc_0, result[5], result[4]}), .intermediate_carry());
endmodule

module full_adder__0_1156(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1152(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1157(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1156 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1152 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1147(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1143(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1148(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1147 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1143 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1158(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1157 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1148 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1176(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1172(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1177(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1176 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1172 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1167(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1163(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1168(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1167 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1163 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1178(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1177 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1168 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1196(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1192(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1197(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1196 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1192 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1187(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1183(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1188(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1187 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1183 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1198(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1197 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1188 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1216(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1212(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1217(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1216 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1212 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1207(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1203(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1208(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1207 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1203 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1218(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1217 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1208 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1236(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1232(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1237(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1236 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1232 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1227(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1223(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1228(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1227 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1223 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1238(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1237 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1228 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1256(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1252(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1257(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1256 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1252 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1247(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1243(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1248(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1247 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1243 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1258(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1257 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1248 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1276(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1272(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1277(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1276 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1272 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1267(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1263(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1268(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1267 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1263 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1278(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1277 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1268 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1296(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1292(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1297(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1296 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1292 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1287(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1283(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1288(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1287 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1283 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1298(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1297 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1288 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1316(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1312(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1317(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1316 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1312 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1307(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1303(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1308(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1307 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1303 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1318(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1317 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1308 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1336(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1332(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1337(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1336 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1332 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1327(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1323(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1328(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1327 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1323 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1338(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1337 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1328 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1356(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1352(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1357(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1356 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1352 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_1347(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_1343(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_1348(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1347 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_1343 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1358(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1357 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_1348 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_1376(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .ZN(o_sum));
endmodule

module adder_block__0_1377(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1376 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
endmodule

module full_adder__0_1367(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
endmodule

module adder_block__0_1368(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1367 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
endmodule

module which_adder__0_1378(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_1377 adder_block_inst2 (.i_add1({uc_0, i_add1[0]}), .i_add2({
      i_add2[1], uc_1}), .cin(), .o_result({uc_2, uc_3, o_result_one_carry[0]}), 
      .intermediate_carry());
   adder_block__0_1368 adder_block_inst1 (.i_add1({uc_4, i_add1[0]}), .i_add2({
      i_add2[1], uc_5}), .cin(), .o_result({uc_6, uc_7, o_result_zero_carry[0]}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
endmodule

module adder__parameterized3(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [23:0]A;
   input [23:0]B;
   input is_subtract;
   output [23:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_1158 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({n_21, n_20}), 
      .cin(is_subtract), .o_result({cs, result[1], result[0]}), 
      .intermediate_carry());
   which_adder__0_1178 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({n_19, n_18}), .cin(cs), .o_result({n_22, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_1198 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({n_17, n_16}), .cin(n_22), .o_result({n_23, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_1218 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({n_15, n_14}), .cin(n_23), .o_result({n_24, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_1238 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({n_13, n_12}), .cin(n_24), .o_result({n_25, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_1258 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({n_11, n_10}), .cin(n_25), .o_result({n_0, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_1278 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({n_9, n_8}), .cin(n_0), .o_result({n_1, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_1298 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({n_7, n_6}), .cin(n_1), .o_result({n_2, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__0_1318 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2({is_subtract, uc_0}), .cin(n_2), .o_result({n_3, result[17], 
      result[16]}), .intermediate_carry());
   which_adder__0_1338 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2({is_subtract, uc_1}), .cin(n_3), .o_result({n_4, result[19], 
      result[18]}), .intermediate_carry());
   which_adder__0_1358 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2({is_subtract, uc_2}), .cin(n_4), .o_result({n_5, result[21], 
      result[20]}), .intermediate_carry());
   which_adder__0_1378 Gen_Modules_11_which_adder_x (.i_add1({uc_3, A[22]}), 
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

   adder__parameterized4 adder_counter (.A(counter), .B(), .is_subtract(), 
      .result(counter_new_value), .carry(), .overflow_flag(), .negative());
   adder__parameterized3 adder_loop (.A({uc_0, rem[45], rem[44], rem[43], 
      rem[42], rem[41], rem[40], rem[39], rem[38], rem[37], rem[36], rem[35], 
      rem[34], rem[33], rem[32], rem[31], rem[30], rem[29], rem[28], rem[27], 
      rem[26], rem[25], rem[24], rem[23]}), .B({uc_1, uc_2, uc_3, uc_4, uc_5, 
      uc_6, uc_7, uc_8, B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], 
      B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]}), .is_subtract(f), 
      .result({uc_9, n_24, n_23, n_22, n_21, n_20, n_19, n_18, n_17, n_16, n_15, 
      n_14, n_13, n_12, n_11, n_10, n_9, n_8, n_7, n_6, n_5, n_4, n_3, n_2}), 
      .carry(), .overflow_flag(), .negative());
   DFF_X1 finish_reg (.D(n_99), .CK(n_1), .Q(finish), .QN());
   DFF_X1 \rem_reg[45]  (.D(n_71), .CK(n_1), .Q(rem[45]), .QN());
   DFF_X1 \rem_reg[44]  (.D(n_70), .CK(n_1), .Q(rem[44]), .QN());
   DFF_X1 \rem_reg[43]  (.D(n_69), .CK(n_1), .Q(rem[43]), .QN());
   DFF_X1 \rem_reg[42]  (.D(n_68), .CK(n_1), .Q(rem[42]), .QN());
   DFF_X1 \rem_reg[41]  (.D(n_67), .CK(n_1), .Q(rem[41]), .QN());
   DFF_X1 \rem_reg[40]  (.D(n_66), .CK(n_1), .Q(rem[40]), .QN());
   DFF_X1 \rem_reg[39]  (.D(n_65), .CK(n_1), .Q(rem[39]), .QN());
   DFF_X1 \rem_reg[38]  (.D(n_64), .CK(n_1), .Q(rem[38]), .QN());
   DFF_X1 \rem_reg[37]  (.D(n_63), .CK(n_1), .Q(rem[37]), .QN());
   DFF_X1 \rem_reg[36]  (.D(n_62), .CK(n_1), .Q(rem[36]), .QN());
   DFF_X1 \rem_reg[35]  (.D(n_61), .CK(n_1), .Q(rem[35]), .QN());
   DFF_X1 \rem_reg[34]  (.D(n_60), .CK(n_1), .Q(rem[34]), .QN());
   DFF_X1 \rem_reg[33]  (.D(n_59), .CK(n_1), .Q(rem[33]), .QN());
   DFF_X1 \rem_reg[32]  (.D(n_58), .CK(n_1), .Q(rem[32]), .QN());
   DFF_X1 \rem_reg[31]  (.D(n_57), .CK(n_1), .Q(rem[31]), .QN());
   DFF_X1 \rem_reg[30]  (.D(n_56), .CK(n_1), .Q(rem[30]), .QN());
   DFF_X1 \rem_reg[29]  (.D(n_55), .CK(n_1), .Q(rem[29]), .QN());
   DFF_X1 \rem_reg[28]  (.D(n_54), .CK(n_1), .Q(rem[28]), .QN());
   DFF_X1 \rem_reg[27]  (.D(n_53), .CK(n_1), .Q(rem[27]), .QN());
   DFF_X1 \rem_reg[26]  (.D(n_52), .CK(n_1), .Q(rem[26]), .QN());
   DFF_X1 \rem_reg[25]  (.D(n_51), .CK(n_1), .Q(rem[25]), .QN());
   DFF_X1 \rem_reg[24]  (.D(n_50), .CK(n_1), .Q(rem[24]), .QN());
   DFF_X1 \rem_reg[23]  (.D(n_49), .CK(n_1), .Q(rem[23]), .QN());
   DFF_X1 \rem_reg[22]  (.D(n_48), .CK(n_1), .Q(rem[22]), .QN());
   DFF_X1 \rem_reg[21]  (.D(n_47), .CK(n_1), .Q(rem[21]), .QN());
   DFF_X1 \rem_reg[20]  (.D(n_46), .CK(n_1), .Q(rem[20]), .QN());
   DFF_X1 \rem_reg[19]  (.D(n_45), .CK(n_1), .Q(rem[19]), .QN());
   DFF_X1 \rem_reg[18]  (.D(n_44), .CK(n_1), .Q(rem[18]), .QN());
   DFF_X1 \rem_reg[17]  (.D(n_43), .CK(n_1), .Q(rem[17]), .QN());
   DFF_X1 \rem_reg[16]  (.D(n_42), .CK(n_1), .Q(rem[16]), .QN());
   DFF_X1 \rem_reg[15]  (.D(n_41), .CK(n_1), .Q(rem[15]), .QN());
   DFF_X1 \rem_reg[14]  (.D(n_40), .CK(n_1), .Q(rem[14]), .QN());
   DFF_X1 \rem_reg[13]  (.D(n_39), .CK(n_1), .Q(rem[13]), .QN());
   DFF_X1 \rem_reg[12]  (.D(n_38), .CK(n_1), .Q(rem[12]), .QN());
   DFF_X1 \rem_reg[11]  (.D(n_37), .CK(n_1), .Q(rem[11]), .QN());
   DFF_X1 \rem_reg[10]  (.D(n_36), .CK(n_1), .Q(rem[10]), .QN());
   DFF_X1 \rem_reg[9]  (.D(n_35), .CK(n_1), .Q(rem[9]), .QN());
   DFF_X1 \rem_reg[8]  (.D(n_34), .CK(n_1), .Q(rem[8]), .QN());
   DFF_X1 \rem_reg[7]  (.D(n_33), .CK(n_1), .Q(rem[7]), .QN());
   DFF_X1 \rem_reg[6]  (.D(n_32), .CK(n_1), .Q(rem[6]), .QN());
   DFF_X1 \rem_reg[5]  (.D(n_31), .CK(n_1), .Q(rem[5]), .QN());
   DFF_X1 \rem_reg[4]  (.D(n_30), .CK(n_1), .Q(rem[4]), .QN());
   DFF_X1 \rem_reg[3]  (.D(n_29), .CK(n_1), .Q(rem[3]), .QN());
   DFF_X1 \rem_reg[2]  (.D(n_28), .CK(n_1), .Q(rem[2]), .QN());
   DFF_X1 \rem_reg[1]  (.D(n_27), .CK(n_1), .Q(rem[1]), .QN());
   DFF_X1 \rem_reg[0]  (.D(n_26), .CK(n_1), .Q(result[0]), .QN());
   DFF_X1 f_reg (.D(n_88), .CK(n_1), .Q(f), .QN());
   DFF_X1 \counter_reg[5]  (.D(n_97), .CK(n_1), .Q(counter[5]), .QN());
   DFF_X1 \counter_reg[4]  (.D(n_96), .CK(n_1), .Q(counter[4]), .QN());
   DFF_X1 \counter_reg[3]  (.D(n_95), .CK(n_1), .Q(counter[3]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_94), .CK(n_1), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_93), .CK(n_1), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_92), .CK(n_1), .Q(counter[0]), .QN());
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
   DFF_X1 working_reg (.D(n_91), .CK(n_1), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_89), .CK(clk), .Q(start_buffer), .QN());
   CLKGATETST_X1 clk_gate_sign_reg (.CK(clk), .E(n_98), .SE(1'b0), .GCK(n_0));
   CLKGATETST_X1 clk_gate_rem_reg (.CK(clk), .E(n_90), .SE(1'b0), .GCK(n_1));
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
   AND2_X1 i_0_116 (.A1(n_2), .A2(n_0_117), .ZN(n_50));
   AND2_X1 i_0_117 (.A1(n_3), .A2(n_0_117), .ZN(n_51));
   AND2_X1 i_0_118 (.A1(n_4), .A2(n_0_117), .ZN(n_52));
   AND2_X1 i_0_119 (.A1(n_5), .A2(n_0_117), .ZN(n_53));
   AND2_X1 i_0_120 (.A1(n_6), .A2(n_0_117), .ZN(n_54));
   AND2_X1 i_0_121 (.A1(n_7), .A2(n_0_117), .ZN(n_55));
   AND2_X1 i_0_122 (.A1(n_8), .A2(n_0_117), .ZN(n_56));
   AND2_X1 i_0_123 (.A1(n_9), .A2(n_0_117), .ZN(n_57));
   AND2_X1 i_0_124 (.A1(n_10), .A2(n_0_117), .ZN(n_58));
   AND2_X1 i_0_125 (.A1(n_11), .A2(n_0_117), .ZN(n_59));
   AND2_X1 i_0_126 (.A1(n_12), .A2(n_0_117), .ZN(n_60));
   AND2_X1 i_0_127 (.A1(n_13), .A2(n_0_117), .ZN(n_61));
   AND2_X1 i_0_128 (.A1(n_14), .A2(n_0_117), .ZN(n_62));
   AND2_X1 i_0_129 (.A1(n_15), .A2(n_0_117), .ZN(n_63));
   AND2_X1 i_0_130 (.A1(n_16), .A2(n_0_117), .ZN(n_64));
   AND2_X1 i_0_131 (.A1(n_17), .A2(n_0_117), .ZN(n_65));
   AND2_X1 i_0_132 (.A1(n_18), .A2(n_0_117), .ZN(n_66));
   AND2_X1 i_0_133 (.A1(n_19), .A2(n_0_117), .ZN(n_67));
   AND2_X1 i_0_134 (.A1(n_20), .A2(n_0_117), .ZN(n_68));
   AND2_X1 i_0_135 (.A1(n_21), .A2(n_0_117), .ZN(n_69));
   AND2_X1 i_0_136 (.A1(n_22), .A2(n_0_117), .ZN(n_70));
   AND2_X1 i_0_137 (.A1(n_23), .A2(n_0_117), .ZN(n_71));
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

module Register__0_445(clk, rst, load, data_in, data_out);
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

module full_adder__0_1107(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__0_1103(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1108(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1107 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__0_1103 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1118(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_1108 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module which_adder__0_1138(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   AND2_X1 i_0_0 (.A1(cin), .A2(i_add1[0]), .ZN(o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized2(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [3:0]A;
   input [3:0]B;
   input is_subtract;
   output [3:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_1118 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_1138 Gen_Modules_1_which_adder_x (.i_add1({uc_0, A[2]}), 
      .i_add2(), .cin(cs), .o_result({uc_1, result[3], result[2]}), 
      .intermediate_carry());
endmodule

module full_adder__0_1573(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1578(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1573 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1588(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_1578 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__0_1555(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1560(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1555 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1561(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1560 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1535(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1540(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1535 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1541(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1540 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1515(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1520(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1515 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1521(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1520 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1495(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1500(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1495 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1501(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1500 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1475(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1480(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1475 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1481(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1480 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1455(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1460(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1455 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1461(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1460 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_1435(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_1440(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1435 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__0_1441(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1440 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized0__0_1589(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_1588 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], uc_0}), .intermediate_carry());
   which_adder__0_1561 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_1541 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_1521 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_1501 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_1481 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_1461 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_1441 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_5), .o_result({uc_1, result[15], result[14]}), 
      .intermediate_carry());
endmodule

module full_adder__0_627(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_623(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_628(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_627 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_623 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_638(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_628 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__0_656(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_652(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_657(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_656 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_652 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_647(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_643(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_648(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_647 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_643 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_658(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_657 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_648 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_676(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_672(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_677(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_676 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_672 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_667(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_663(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_668(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_667 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_663 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_678(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_677 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_668 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_696(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_692(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_697(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_696 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_692 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_687(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_683(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_688(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_687 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_683 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_698(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_697 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_688 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_716(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_712(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_717(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_716 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_712 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_707(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_703(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_708(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_707 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_703 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_718(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_717 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_708 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_736(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_732(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_737(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_736 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_732 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_727(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_723(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_728(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_727 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_723 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_738(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_737 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_728 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_756(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_752(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_757(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_756 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_752 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_747(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_743(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_748(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_747 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_743 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_758(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_757 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_748 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_776(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_772(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_777(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_776 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_772 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module full_adder__0_767(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_763(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_768(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_767 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_763 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__0_778(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_777 adder_block_inst2 (.i_add1({i_add1[1], uc_0}), .i_add2(
      i_add2), .cin(), .o_result({uc_1, o_result_one_carry[1], 
      o_result_one_carry[0]}), .intermediate_carry());
   adder_block__0_768 adder_block_inst1 (.i_add1({i_add1[1], uc_2}), .i_add2(
      i_add2), .cin(), .o_result({uc_3, o_result_zero_carry[1], 
      o_result_zero_carry[0]}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
endmodule

module adder__parameterized0(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_638 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], B[0]}), 
      .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_658 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_678 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_698 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_718 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_738 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_758 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_778 Gen_Modules_7_which_adder_x (.i_add1({A[15], uc_0}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({uc_1, result[15], 
      result[14]}), .intermediate_carry());
endmodule

module full_adder__0_843(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_848(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_843 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_858(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_848 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__0_872(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_877(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_872 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_878(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_877 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_892(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_897(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_892 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_898(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_897 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_912(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_917(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_912 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_918(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_917 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_932(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_937(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_932 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_938(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_937 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_952(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_957(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_952 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_958(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_957 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_972(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_977(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_972 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_978(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_977 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_992(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_997(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_992 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_998(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_997 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_1012(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1017(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1012 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1018(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1017 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_1032(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1037(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1032 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1038(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1037 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_1052(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1057(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1052 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1058(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1057 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__0_1072(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_1077(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_1072 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_1078(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_1077 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module which_adder__0_1098(i_add1, i_add2, cin, o_result, intermediate_carry);
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

module adder__parameterized1(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [31:0]A;
   input [31:0]B;
   input is_subtract;
   output [31:0]result;
   output carry;
   output overflow_flag;
   output negative;

   which_adder__0_858 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(), .o_result({n_0, result[7], uc_0}), .intermediate_carry());
   which_adder__0_878 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_898 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_918 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_938 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__0_958 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[17], result[16]}), 
      .intermediate_carry());
   which_adder__0_978 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2(), .cin(n_5), .o_result({n_6, result[19], result[18]}), 
      .intermediate_carry());
   which_adder__0_998 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2(), .cin(n_6), .o_result({n_7, result[21], result[20]}), 
      .intermediate_carry());
   which_adder__0_1018 Gen_Modules_11_which_adder_x (.i_add1({A[23], A[22]}), 
      .i_add2(), .cin(n_7), .o_result({n_8, result[23], result[22]}), 
      .intermediate_carry());
   which_adder__0_1038 Gen_Modules_12_which_adder_x (.i_add1({A[25], A[24]}), 
      .i_add2(), .cin(n_8), .o_result({n_9, result[25], result[24]}), 
      .intermediate_carry());
   which_adder__0_1058 Gen_Modules_13_which_adder_x (.i_add1({A[27], A[26]}), 
      .i_add2(), .cin(n_9), .o_result({n_10, result[27], result[26]}), 
      .intermediate_carry());
   which_adder__0_1078 Gen_Modules_14_which_adder_x (.i_add1({A[29], A[28]}), 
      .i_add2(), .cin(n_10), .o_result({n_11, result[29], result[28]}), 
      .intermediate_carry());
   which_adder__0_1098 Gen_Modules_15_which_adder_x (.i_add1({A[31], uc_1}), 
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

   adder__parameterized2 adder_counter (.A({uc_0, counter[2], counter[1], 
      counter[0]}), .B(), .is_subtract(), .result({counter_finish, n_2, n_1, n_0}), 
      .carry(), .overflow_flag(), .negative());
   adder__parameterized0__0_1589 adder_multiplicand_complement (.A({n_100, n_98, 
      n_96, n_94, n_90, n_88, n_86, n_84, n_82, n_80, n_78, n_76, n_74, n_72, 
      n_70, n_69}), .B(), .is_subtract(), .result({multiplicand_complement[15], 
      multiplicand_complement[14], multiplicand_complement[13], 
      multiplicand_complement[12], multiplicand_complement[11], 
      multiplicand_complement[10], multiplicand_complement[9], 
      multiplicand_complement[8], multiplicand_complement[7], 
      multiplicand_complement[6], multiplicand_complement[5], 
      multiplicand_complement[4], multiplicand_complement[3], 
      multiplicand_complement[2], multiplicand_complement[1], uc_1}), .carry(), 
      .overflow_flag(), .negative());
   adder__parameterized0 adder_loop (.A({A[15], uc_2, A[13], A[12], A[11], A[10], 
      A[9], A[8], A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]}), .B({n_101, 
      n_99, n_97, n_95, n_93, n_89, n_87, n_85, n_83, n_81, n_79, n_77, n_75, 
      n_73, n_71, n_68}), .is_subtract(), .result(AB), .carry(), .overflow_flag(), 
      .negative());
   adder__parameterized1 adder_round (.A({A[15], uc_3, A[13], A[12], A[11], 
      A[10], A[9], A[8], A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0], Q[16], 
      Q[15], Q[14], Q[13], Q[12], Q[11], Q[10], Q[9], Q[8], Q[7], uc_4, uc_5, 
      uc_6, uc_7, uc_8, uc_9}), .B(), .is_subtract(), .result({n_11, n_10, n_9, 
      n_8, n_7, n_6, n_5, n_4, n_3, result[15], result[14], result[13], 
      result[12], result[11], result[10], result[9], result[8], result[7], 
      result[6], result[5], result[4], result[3], result[2], result[1], 
      result[0], uc_10, uc_11, uc_12, uc_13, uc_14, uc_15, uc_16}), .carry(), 
      .overflow_flag(), .negative());
   DFF_X1 finish_reg (.D(n_46), .CK(n_92), .Q(finish), .QN());
   DFF_X1 \A_reg[15]  (.D(n_28), .CK(n_92), .Q(A[15]), .QN());
   DFF_X1 \A_reg[13]  (.D(n_27), .CK(n_92), .Q(A[13]), .QN());
   DFF_X1 \A_reg[12]  (.D(n_26), .CK(n_92), .Q(A[12]), .QN());
   DFF_X1 \A_reg[11]  (.D(n_25), .CK(n_92), .Q(A[11]), .QN());
   DFF_X1 \A_reg[10]  (.D(n_24), .CK(n_92), .Q(A[10]), .QN());
   DFF_X1 \A_reg[9]  (.D(n_23), .CK(n_92), .Q(A[9]), .QN());
   DFF_X1 \A_reg[8]  (.D(n_22), .CK(n_92), .Q(A[8]), .QN());
   DFF_X1 \A_reg[7]  (.D(n_21), .CK(n_92), .Q(A[7]), .QN());
   DFF_X1 \A_reg[6]  (.D(n_20), .CK(n_92), .Q(A[6]), .QN());
   DFF_X1 \A_reg[5]  (.D(n_19), .CK(n_92), .Q(A[5]), .QN());
   DFF_X1 \A_reg[4]  (.D(n_18), .CK(n_92), .Q(A[4]), .QN());
   DFF_X1 \A_reg[3]  (.D(n_17), .CK(n_92), .Q(A[3]), .QN());
   DFF_X1 \A_reg[2]  (.D(n_16), .CK(n_92), .Q(A[2]), .QN());
   DFF_X1 \A_reg[1]  (.D(n_15), .CK(n_92), .Q(A[1]), .QN());
   DFF_X1 \A_reg[0]  (.D(n_14), .CK(n_92), .Q(A[0]), .QN());
   CLKGATETST_X1 clk_gate_multiplicand_buffer_reg (.CK(clk), .E(n_13), .SE(1'b0), 
      .GCK(n_91));
   DFF_X1 \multiplicand_buffer_reg[15]  (.D(n_67), .CK(n_91), .Q(
      multiplicand_buffer[15]), .QN());
   DFF_X1 \multiplicand_buffer_reg[14]  (.D(n_66), .CK(n_91), .Q(
      multiplicand_buffer[14]), .QN());
   DFF_X1 \multiplicand_buffer_reg[13]  (.D(n_65), .CK(n_91), .Q(
      multiplicand_buffer[13]), .QN());
   DFF_X1 \multiplicand_buffer_reg[12]  (.D(n_64), .CK(n_91), .Q(
      multiplicand_buffer[12]), .QN());
   DFF_X1 \multiplicand_buffer_reg[11]  (.D(n_63), .CK(n_91), .Q(
      multiplicand_buffer[11]), .QN());
   DFF_X1 \multiplicand_buffer_reg[10]  (.D(n_62), .CK(n_91), .Q(
      multiplicand_buffer[10]), .QN());
   DFF_X1 \multiplicand_buffer_reg[9]  (.D(n_61), .CK(n_91), .Q(
      multiplicand_buffer[9]), .QN());
   DFF_X1 \multiplicand_buffer_reg[8]  (.D(n_60), .CK(n_91), .Q(
      multiplicand_buffer[8]), .QN());
   DFF_X1 \multiplicand_buffer_reg[7]  (.D(n_59), .CK(n_91), .Q(
      multiplicand_buffer[7]), .QN());
   DFF_X1 \multiplicand_buffer_reg[6]  (.D(n_58), .CK(n_91), .Q(
      multiplicand_buffer[6]), .QN());
   DFF_X1 \multiplicand_buffer_reg[5]  (.D(n_57), .CK(n_91), .Q(
      multiplicand_buffer[5]), .QN());
   DFF_X1 \multiplicand_buffer_reg[4]  (.D(n_56), .CK(n_91), .Q(
      multiplicand_buffer[4]), .QN());
   DFF_X1 \multiplicand_buffer_reg[3]  (.D(n_55), .CK(n_91), .Q(
      multiplicand_buffer[3]), .QN());
   DFF_X1 \multiplicand_buffer_reg[2]  (.D(n_54), .CK(n_91), .Q(
      multiplicand_buffer[2]), .QN());
   DFF_X1 \multiplicand_buffer_reg[1]  (.D(n_53), .CK(n_91), .Q(
      multiplicand_buffer[1]), .QN());
   DFF_X1 \multiplicand_buffer_reg[0]  (.D(n_52), .CK(n_91), .Q(
      multiplicand_buffer[0]), .QN());
   DFF_X1 \Q_reg[16]  (.D(n_45), .CK(n_92), .Q(Q[16]), .QN());
   DFF_X1 \Q_reg[15]  (.D(n_44), .CK(n_92), .Q(Q[15]), .QN());
   DFF_X1 \Q_reg[14]  (.D(n_43), .CK(n_92), .Q(Q[14]), .QN());
   DFF_X1 \Q_reg[13]  (.D(n_42), .CK(n_92), .Q(Q[13]), .QN());
   DFF_X1 \Q_reg[12]  (.D(n_41), .CK(n_92), .Q(Q[12]), .QN());
   DFF_X1 \Q_reg[11]  (.D(n_40), .CK(n_92), .Q(Q[11]), .QN());
   DFF_X1 \Q_reg[10]  (.D(n_39), .CK(n_92), .Q(Q[10]), .QN());
   DFF_X1 \Q_reg[9]  (.D(n_38), .CK(n_92), .Q(Q[9]), .QN());
   DFF_X1 \Q_reg[8]  (.D(n_37), .CK(n_92), .Q(Q[8]), .QN());
   DFF_X1 \Q_reg[7]  (.D(n_36), .CK(n_92), .Q(Q[7]), .QN());
   DFF_X1 \Q_reg[6]  (.D(n_35), .CK(n_92), .Q(Q[6]), .QN());
   DFF_X1 \Q_reg[5]  (.D(n_34), .CK(n_92), .Q(Q[5]), .QN());
   DFF_X1 \Q_reg[4]  (.D(n_33), .CK(n_92), .Q(Q[4]), .QN());
   DFF_X1 \Q_reg[3]  (.D(n_32), .CK(n_92), .Q(Q[3]), .QN());
   DFF_X1 \Q_reg[2]  (.D(n_31), .CK(n_92), .Q(Q[2]), .QN());
   DFF_X1 \Q_reg[1]  (.D(n_30), .CK(n_92), .Q(Q[1]), .QN());
   DFF_X1 \Q_reg[0]  (.D(n_29), .CK(n_92), .Q(Q[0]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_50), .CK(n_92), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_49), .CK(n_92), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_48), .CK(n_92), .Q(counter[0]), .QN());
   DFF_X1 working_reg (.D(n_47), .CK(n_92), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_12), .CK(clk), .Q(start_buffer), .QN());
   CLKGATETST_X1 clk_gate_Q_reg (.CK(clk), .E(n_51), .SE(1'b0), .GCK(n_92));
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
   NOR2_X1 i_0_28 (.A1(n_13), .A2(n_0_7), .ZN(n_29));
   AOI22_X1 i_0_29 (.A1(n_0_3), .A2(Q[3]), .B1(n_0_2), .B2(multiplier[0]), 
      .ZN(n_0_11));
   INV_X1 i_0_30 (.A(n_0_11), .ZN(n_30));
   AOI22_X1 i_0_31 (.A1(n_0_3), .A2(Q[4]), .B1(n_0_2), .B2(multiplier[1]), 
      .ZN(n_0_12));
   INV_X1 i_0_32 (.A(n_0_12), .ZN(n_31));
   AOI22_X1 i_0_33 (.A1(n_0_3), .A2(Q[5]), .B1(n_0_2), .B2(multiplier[2]), 
      .ZN(n_0_13));
   INV_X1 i_0_34 (.A(n_0_13), .ZN(n_32));
   AOI22_X1 i_0_35 (.A1(n_0_3), .A2(Q[6]), .B1(n_0_2), .B2(multiplier[3]), 
      .ZN(n_0_14));
   INV_X1 i_0_36 (.A(n_0_14), .ZN(n_33));
   AOI22_X1 i_0_37 (.A1(n_0_3), .A2(Q[7]), .B1(n_0_2), .B2(multiplier[4]), 
      .ZN(n_0_15));
   INV_X1 i_0_38 (.A(n_0_15), .ZN(n_34));
   AOI22_X1 i_0_39 (.A1(n_0_3), .A2(Q[8]), .B1(n_0_2), .B2(multiplier[5]), 
      .ZN(n_0_16));
   INV_X1 i_0_40 (.A(n_0_16), .ZN(n_35));
   AOI22_X1 i_0_41 (.A1(n_0_3), .A2(Q[9]), .B1(n_0_2), .B2(multiplier[6]), 
      .ZN(n_0_17));
   INV_X1 i_0_42 (.A(n_0_17), .ZN(n_36));
   AOI22_X1 i_0_43 (.A1(n_0_3), .A2(Q[10]), .B1(n_0_2), .B2(multiplier[7]), 
      .ZN(n_0_18));
   INV_X1 i_0_44 (.A(n_0_18), .ZN(n_37));
   AOI22_X1 i_0_45 (.A1(n_0_3), .A2(Q[11]), .B1(n_0_2), .B2(multiplier[8]), 
      .ZN(n_0_19));
   INV_X1 i_0_46 (.A(n_0_19), .ZN(n_38));
   AOI22_X1 i_0_47 (.A1(n_0_3), .A2(Q[12]), .B1(n_0_2), .B2(multiplier[9]), 
      .ZN(n_0_20));
   INV_X1 i_0_48 (.A(n_0_20), .ZN(n_39));
   AOI22_X1 i_0_49 (.A1(n_0_3), .A2(Q[13]), .B1(n_0_2), .B2(multiplier[10]), 
      .ZN(n_0_21));
   INV_X1 i_0_50 (.A(n_0_21), .ZN(n_40));
   AOI22_X1 i_0_51 (.A1(n_0_3), .A2(Q[14]), .B1(n_0_2), .B2(multiplier[11]), 
      .ZN(n_0_22));
   INV_X1 i_0_52 (.A(n_0_22), .ZN(n_41));
   AOI22_X1 i_0_53 (.A1(n_0_3), .A2(Q[15]), .B1(n_0_2), .B2(multiplier[12]), 
      .ZN(n_0_23));
   INV_X1 i_0_54 (.A(n_0_23), .ZN(n_42));
   AOI22_X1 i_0_55 (.A1(n_0_3), .A2(Q[16]), .B1(n_0_2), .B2(multiplier[13]), 
      .ZN(n_0_24));
   INV_X1 i_0_56 (.A(n_0_24), .ZN(n_43));
   AOI22_X1 i_0_57 (.A1(n_0_3), .A2(AB[0]), .B1(n_0_2), .B2(multiplier[14]), 
      .ZN(n_0_25));
   INV_X1 i_0_58 (.A(n_0_25), .ZN(n_44));
   AOI22_X1 i_0_59 (.A1(n_0_3), .A2(AB[1]), .B1(n_0_2), .B2(multiplier[15]), 
      .ZN(n_0_26));
   INV_X1 i_0_60 (.A(n_0_26), .ZN(n_45));
   AND2_X1 i_0_61 (.A1(n_0_3), .A2(counter_finish), .ZN(n_46));
   NOR2_X1 i_0_62 (.A1(n_46), .A2(rst), .ZN(n_47));
   AND2_X1 i_0_63 (.A1(n_0_3), .A2(n_0), .ZN(n_48));
   AND2_X1 i_0_64 (.A1(n_0_3), .A2(n_1), .ZN(n_49));
   AND2_X1 i_0_65 (.A1(n_0_3), .A2(n_2), .ZN(n_50));
   OR2_X1 i_0_66 (.A1(n_13), .A2(working), .ZN(n_51));
   AND2_X1 i_0_67 (.A1(n_0_0), .A2(multiplicand[0]), .ZN(n_52));
   AND2_X1 i_0_68 (.A1(n_0_0), .A2(multiplicand[1]), .ZN(n_53));
   AND2_X1 i_0_69 (.A1(n_0_0), .A2(multiplicand[2]), .ZN(n_54));
   AND2_X1 i_0_70 (.A1(n_0_0), .A2(multiplicand[3]), .ZN(n_55));
   AND2_X1 i_0_71 (.A1(n_0_0), .A2(multiplicand[4]), .ZN(n_56));
   AND2_X1 i_0_72 (.A1(n_0_0), .A2(multiplicand[5]), .ZN(n_57));
   AND2_X1 i_0_73 (.A1(n_0_0), .A2(multiplicand[6]), .ZN(n_58));
   AND2_X1 i_0_74 (.A1(n_0_0), .A2(multiplicand[7]), .ZN(n_59));
   AND2_X1 i_0_75 (.A1(n_0_0), .A2(multiplicand[8]), .ZN(n_60));
   AND2_X1 i_0_76 (.A1(n_0_0), .A2(multiplicand[9]), .ZN(n_61));
   AND2_X1 i_0_77 (.A1(n_0_0), .A2(multiplicand[10]), .ZN(n_62));
   AND2_X1 i_0_78 (.A1(n_0_0), .A2(multiplicand[11]), .ZN(n_63));
   AND2_X1 i_0_79 (.A1(n_0_0), .A2(multiplicand[12]), .ZN(n_64));
   AND2_X1 i_0_80 (.A1(n_0_0), .A2(multiplicand[13]), .ZN(n_65));
   AND2_X1 i_0_81 (.A1(n_0_0), .A2(multiplicand[14]), .ZN(n_66));
   AND2_X1 i_0_82 (.A1(n_0_0), .A2(multiplicand[15]), .ZN(n_67));
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
   AND2_X1 i_0_93 (.A1(n_0_35), .A2(multiplicand_buffer[0]), .ZN(n_68));
   INV_X1 i_0_94 (.A(multiplicand_buffer[0]), .ZN(n_69));
   NOR2_X1 i_0_95 (.A1(n_0_9), .A2(n_0_7), .ZN(n_0_36));
   NOR2_X1 i_0_96 (.A1(n_0_4), .A2(Q[2]), .ZN(n_0_37));
   OAI21_X1 i_0_97 (.A(multiplicand_buffer[0]), .B1(n_0_36), .B2(n_0_37), 
      .ZN(n_0_38));
   NAND2_X1 i_0_98 (.A1(n_0_35), .A2(n_0_7), .ZN(n_0_39));
   INV_X1 i_0_99 (.A(multiplicand_buffer[1]), .ZN(n_70));
   INV_X1 i_0_100 (.A(multiplicand_complement[1]), .ZN(n_0_40));
   NAND2_X1 i_0_101 (.A1(n_0_35), .A2(Q[2]), .ZN(n_0_41));
   OAI221_X1 i_0_102 (.A(n_0_38), .B1(n_0_39), .B2(n_70), .C1(n_0_40), .C2(
      n_0_41), .ZN(n_71));
   INV_X1 i_0_103 (.A(n_0_41), .ZN(n_0_42));
   AOI22_X1 i_0_104 (.A1(n_0_42), .A2(multiplicand_complement[2]), .B1(
      multiplicand_complement[1]), .B2(n_0_36), .ZN(n_0_43));
   INV_X1 i_0_105 (.A(n_0_37), .ZN(n_0_44));
   INV_X1 i_0_106 (.A(multiplicand_buffer[2]), .ZN(n_72));
   OAI221_X1 i_0_107 (.A(n_0_43), .B1(n_0_44), .B2(n_70), .C1(n_72), .C2(n_0_39), 
      .ZN(n_73));
   AOI22_X1 i_0_108 (.A1(n_0_42), .A2(multiplicand_complement[3]), .B1(
      multiplicand_complement[2]), .B2(n_0_36), .ZN(n_0_45));
   INV_X1 i_0_109 (.A(multiplicand_buffer[3]), .ZN(n_74));
   OAI221_X1 i_0_110 (.A(n_0_45), .B1(n_0_44), .B2(n_72), .C1(n_74), .C2(n_0_39), 
      .ZN(n_75));
   AOI22_X1 i_0_111 (.A1(n_0_42), .A2(multiplicand_complement[4]), .B1(
      multiplicand_complement[3]), .B2(n_0_36), .ZN(n_0_46));
   INV_X1 i_0_112 (.A(multiplicand_buffer[4]), .ZN(n_76));
   OAI221_X1 i_0_113 (.A(n_0_46), .B1(n_0_44), .B2(n_74), .C1(n_76), .C2(n_0_39), 
      .ZN(n_77));
   AOI22_X1 i_0_114 (.A1(n_0_42), .A2(multiplicand_complement[5]), .B1(
      multiplicand_complement[4]), .B2(n_0_36), .ZN(n_0_47));
   INV_X1 i_0_115 (.A(multiplicand_buffer[5]), .ZN(n_78));
   OAI221_X1 i_0_116 (.A(n_0_47), .B1(n_0_44), .B2(n_76), .C1(n_78), .C2(n_0_39), 
      .ZN(n_79));
   AOI22_X1 i_0_117 (.A1(n_0_42), .A2(multiplicand_complement[6]), .B1(
      multiplicand_complement[5]), .B2(n_0_36), .ZN(n_0_48));
   INV_X1 i_0_118 (.A(multiplicand_buffer[6]), .ZN(n_80));
   OAI221_X1 i_0_119 (.A(n_0_48), .B1(n_0_44), .B2(n_78), .C1(n_80), .C2(n_0_39), 
      .ZN(n_81));
   AOI22_X1 i_0_120 (.A1(n_0_42), .A2(multiplicand_complement[7]), .B1(
      multiplicand_complement[6]), .B2(n_0_36), .ZN(n_0_49));
   INV_X1 i_0_121 (.A(multiplicand_buffer[7]), .ZN(n_82));
   OAI221_X1 i_0_122 (.A(n_0_49), .B1(n_0_44), .B2(n_80), .C1(n_82), .C2(n_0_39), 
      .ZN(n_83));
   AOI22_X1 i_0_123 (.A1(n_0_42), .A2(multiplicand_complement[8]), .B1(
      multiplicand_complement[7]), .B2(n_0_36), .ZN(n_0_50));
   INV_X1 i_0_124 (.A(multiplicand_buffer[8]), .ZN(n_84));
   OAI221_X1 i_0_125 (.A(n_0_50), .B1(n_0_44), .B2(n_82), .C1(n_84), .C2(n_0_39), 
      .ZN(n_85));
   AOI22_X1 i_0_126 (.A1(n_0_42), .A2(multiplicand_complement[9]), .B1(
      multiplicand_complement[8]), .B2(n_0_36), .ZN(n_0_51));
   INV_X1 i_0_127 (.A(multiplicand_buffer[9]), .ZN(n_86));
   OAI221_X1 i_0_128 (.A(n_0_51), .B1(n_0_44), .B2(n_84), .C1(n_86), .C2(n_0_39), 
      .ZN(n_87));
   AOI22_X1 i_0_129 (.A1(n_0_42), .A2(multiplicand_complement[10]), .B1(
      multiplicand_complement[9]), .B2(n_0_36), .ZN(n_0_52));
   INV_X1 i_0_130 (.A(multiplicand_buffer[10]), .ZN(n_88));
   OAI221_X1 i_0_131 (.A(n_0_52), .B1(n_0_44), .B2(n_86), .C1(n_88), .C2(n_0_39), 
      .ZN(n_89));
   AOI22_X1 i_0_132 (.A1(n_0_42), .A2(multiplicand_complement[11]), .B1(
      multiplicand_complement[10]), .B2(n_0_36), .ZN(n_0_53));
   INV_X1 i_0_133 (.A(multiplicand_buffer[11]), .ZN(n_90));
   OAI221_X1 i_0_134 (.A(n_0_53), .B1(n_0_44), .B2(n_88), .C1(n_90), .C2(n_0_39), 
      .ZN(n_93));
   AOI22_X1 i_0_135 (.A1(n_0_42), .A2(multiplicand_complement[12]), .B1(
      multiplicand_complement[11]), .B2(n_0_36), .ZN(n_0_54));
   INV_X1 i_0_136 (.A(multiplicand_buffer[12]), .ZN(n_94));
   OAI221_X1 i_0_137 (.A(n_0_54), .B1(n_0_44), .B2(n_90), .C1(n_94), .C2(n_0_39), 
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

module Register(clk, rst, load, data_in, data_out);
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

module NegEdgeDFF__0_256(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_261(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_266(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_271(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_276(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_281(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_286(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_291(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_296(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_301(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_306(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_311(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_316(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_321(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_326(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeCounter__parameterized0(clk, rst, load, count_enable, load_data, 
      count);
   input clk;
   input rst;
   input load;
   input count_enable;
   input [15:0]load_data;
   output [15:0]count;

   wire [15:0]FF_inputs;
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

   NegEdgeDFF__0_256 generate_flipflops_15_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[15]), .enable(), .Q(count[15]));
   NegEdgeDFF__0_261 generate_flipflops_14_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[14]), .enable(), .Q(count[14]));
   NegEdgeDFF__0_266 generate_flipflops_13_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[13]), .enable(), .Q(count[13]));
   NegEdgeDFF__0_271 generate_flipflops_12_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[12]), .enable(), .Q(count[12]));
   NegEdgeDFF__0_276 generate_flipflops_11_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[11]), .enable(), .Q(count[11]));
   NegEdgeDFF__0_281 generate_flipflops_10_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[10]), .enable(), .Q(count[10]));
   NegEdgeDFF__0_286 generate_flipflops_9_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[9]), .enable(), .Q(count[9]));
   NegEdgeDFF__0_291 generate_flipflops_8_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[8]), .enable(), .Q(count[8]));
   NegEdgeDFF__0_296 generate_flipflops_7_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[7]), .enable(), .Q(count[7]));
   NegEdgeDFF__0_301 generate_flipflops_6_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[6]), .enable(), .Q(count[6]));
   NegEdgeDFF__0_306 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   NegEdgeDFF__0_311 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   NegEdgeDFF__0_316 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   NegEdgeDFF__0_321 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   NegEdgeDFF__0_326 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   NegEdgeDFF generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(FF_inputs[0]), 
      .enable(), .Q(count[0]));
   OAI21_X1 i_0_0 (.A(n_0_0), .B1(n_0_1), .B2(load), .ZN(FF_inputs[0]));
   NAND2_X1 i_0_1 (.A1(load_data[0]), .A2(load), .ZN(n_0_0));
   XNOR2_X1 i_0_2 (.A(count[0]), .B(count_enable), .ZN(n_0_1));
   OAI21_X1 i_0_3 (.A(n_0_2), .B1(n_0_3), .B2(load), .ZN(FF_inputs[1]));
   NAND2_X1 i_0_4 (.A1(load_data[1]), .A2(load), .ZN(n_0_2));
   XOR2_X1 i_0_5 (.A(count[1]), .B(n_0_44), .Z(n_0_3));
   MUX2_X1 i_0_6 (.A(n_0_4), .B(load_data[2]), .S(load), .Z(FF_inputs[2]));
   NAND2_X1 i_0_7 (.A1(n_0_43), .A2(n_0_5), .ZN(n_0_4));
   OAI21_X1 i_0_8 (.A(count[2]), .B1(n_0_44), .B2(count[1]), .ZN(n_0_5));
   OAI21_X1 i_0_9 (.A(n_0_6), .B1(n_0_7), .B2(load), .ZN(FF_inputs[3]));
   NAND2_X1 i_0_10 (.A1(load_data[3]), .A2(load), .ZN(n_0_6));
   XOR2_X1 i_0_11 (.A(count[3]), .B(n_0_43), .Z(n_0_7));
   OAI21_X1 i_0_12 (.A(n_0_8), .B1(n_0_9), .B2(load), .ZN(FF_inputs[4]));
   NAND2_X1 i_0_13 (.A1(load_data[4]), .A2(load), .ZN(n_0_8));
   XOR2_X1 i_0_14 (.A(count[4]), .B(n_0_42), .Z(n_0_9));
   OAI21_X1 i_0_15 (.A(n_0_10), .B1(n_0_11), .B2(load), .ZN(FF_inputs[5]));
   NAND2_X1 i_0_16 (.A1(load_data[5]), .A2(load), .ZN(n_0_10));
   XOR2_X1 i_0_17 (.A(count[5]), .B(n_0_41), .Z(n_0_11));
   MUX2_X1 i_0_18 (.A(n_0_12), .B(load_data[6]), .S(load), .Z(FF_inputs[6]));
   NAND2_X1 i_0_19 (.A1(n_0_40), .A2(n_0_13), .ZN(n_0_12));
   OAI21_X1 i_0_20 (.A(count[6]), .B1(n_0_41), .B2(count[5]), .ZN(n_0_13));
   OAI21_X1 i_0_21 (.A(n_0_14), .B1(n_0_15), .B2(load), .ZN(FF_inputs[7]));
   NAND2_X1 i_0_22 (.A1(load_data[7]), .A2(load), .ZN(n_0_14));
   XOR2_X1 i_0_23 (.A(count[7]), .B(n_0_40), .Z(n_0_15));
   OAI21_X1 i_0_24 (.A(n_0_16), .B1(n_0_17), .B2(load), .ZN(FF_inputs[8]));
   NAND2_X1 i_0_25 (.A1(load_data[8]), .A2(load), .ZN(n_0_16));
   XNOR2_X1 i_0_26 (.A(count[8]), .B(n_0_39), .ZN(n_0_17));
   OAI21_X1 i_0_27 (.A(n_0_18), .B1(n_0_19), .B2(load), .ZN(FF_inputs[9]));
   NAND2_X1 i_0_28 (.A1(load_data[9]), .A2(load), .ZN(n_0_18));
   XNOR2_X1 i_0_29 (.A(count[9]), .B(n_0_38), .ZN(n_0_19));
   OAI21_X1 i_0_30 (.A(n_0_20), .B1(n_0_21), .B2(load), .ZN(FF_inputs[10]));
   NAND2_X1 i_0_31 (.A1(load_data[10]), .A2(load), .ZN(n_0_20));
   XOR2_X1 i_0_32 (.A(count[10]), .B(n_0_37), .Z(n_0_21));
   OAI21_X1 i_0_33 (.A(n_0_22), .B1(n_0_23), .B2(load), .ZN(FF_inputs[11]));
   NAND2_X1 i_0_34 (.A1(load_data[11]), .A2(load), .ZN(n_0_22));
   XNOR2_X1 i_0_35 (.A(count[11]), .B(n_0_36), .ZN(n_0_23));
   OAI21_X1 i_0_36 (.A(n_0_24), .B1(n_0_25), .B2(load), .ZN(FF_inputs[12]));
   NAND2_X1 i_0_37 (.A1(load_data[12]), .A2(load), .ZN(n_0_24));
   XNOR2_X1 i_0_38 (.A(count[12]), .B(n_0_35), .ZN(n_0_25));
   OAI21_X1 i_0_39 (.A(n_0_26), .B1(n_0_27), .B2(load), .ZN(FF_inputs[13]));
   NAND2_X1 i_0_40 (.A1(load_data[13]), .A2(load), .ZN(n_0_26));
   XOR2_X1 i_0_41 (.A(count[13]), .B(n_0_34), .Z(n_0_27));
   OAI21_X1 i_0_42 (.A(n_0_28), .B1(n_0_29), .B2(load), .ZN(FF_inputs[14]));
   NAND2_X1 i_0_43 (.A1(load_data[14]), .A2(load), .ZN(n_0_28));
   XNOR2_X1 i_0_44 (.A(count[14]), .B(n_0_33), .ZN(n_0_29));
   OAI21_X1 i_0_45 (.A(n_0_30), .B1(n_0_31), .B2(load), .ZN(FF_inputs[15]));
   NAND2_X1 i_0_46 (.A1(load_data[15]), .A2(load), .ZN(n_0_30));
   XNOR2_X1 i_0_47 (.A(count[15]), .B(n_0_32), .ZN(n_0_31));
   NOR3_X1 i_0_48 (.A1(n_0_34), .A2(count[13]), .A3(count[14]), .ZN(n_0_32));
   NOR2_X1 i_0_49 (.A1(n_0_34), .A2(count[13]), .ZN(n_0_33));
   NAND2_X1 i_0_50 (.A1(n_0_35), .A2(n_0_47), .ZN(n_0_34));
   NOR3_X1 i_0_51 (.A1(n_0_37), .A2(count[10]), .A3(count[11]), .ZN(n_0_35));
   NOR2_X1 i_0_52 (.A1(n_0_37), .A2(count[10]), .ZN(n_0_36));
   NAND2_X1 i_0_53 (.A1(n_0_38), .A2(n_0_46), .ZN(n_0_37));
   NOR3_X1 i_0_54 (.A1(n_0_40), .A2(count[7]), .A3(count[8]), .ZN(n_0_38));
   NOR2_X1 i_0_55 (.A1(n_0_40), .A2(count[7]), .ZN(n_0_39));
   OR3_X1 i_0_56 (.A1(n_0_41), .A2(count[5]), .A3(count[6]), .ZN(n_0_40));
   OR2_X1 i_0_57 (.A1(n_0_42), .A2(count[4]), .ZN(n_0_41));
   OR2_X1 i_0_58 (.A1(n_0_43), .A2(count[3]), .ZN(n_0_42));
   OR3_X1 i_0_59 (.A1(n_0_44), .A2(count[1]), .A3(count[2]), .ZN(n_0_43));
   NAND2_X1 i_0_60 (.A1(n_0_45), .A2(count_enable), .ZN(n_0_44));
   INV_X1 i_0_61 (.A(count[0]), .ZN(n_0_45));
   INV_X1 i_0_62 (.A(count[9]), .ZN(n_0_46));
   INV_X1 i_0_63 (.A(count[12]), .ZN(n_0_47));
endmodule

module StepControlFSM(clk, rst, init, start, multiplier_done, divider_done, 
      adder_overflow, multiplier_overflow, divider_overflow, adder_negative_flag, 
      counter_zero, error_load, n_load, tolerance_load, memory_read, step_load, 
      adder_is_add, error_clear, done, proceed, multiplier_start, divider_start, 
      address_load, loop_counter_load, decrement_counter, increment_addresses, 
      result_load, error_failure, dividend_load, adder_inputs_selector, 
      multiplier_inputs_selector, address_inputs_selector, step_inputs_selector);
   input clk;
   input rst;
   input init;
   input start;
   input multiplier_done;
   input divider_done;
   input adder_overflow;
   input multiplier_overflow;
   input divider_overflow;
   input adder_negative_flag;
   input counter_zero;
   output error_load;
   output n_load;
   output tolerance_load;
   output memory_read;
   output step_load;
   output adder_is_add;
   output error_clear;
   output done;
   output proceed;
   output multiplier_start;
   output divider_start;
   output address_load;
   output loop_counter_load;
   output decrement_counter;
   output increment_addresses;
   output result_load;
   output error_failure;
   output dividend_load;
   output [1:0]adder_inputs_selector;
   output [1:0]multiplier_inputs_selector;
   output [1:0]address_inputs_selector;
   output [1:0]step_inputs_selector;

   wire is_negative;
   wire [4:0]current_state;
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
   wire n_0_40;
   wire n_0_56;
   wire n_0_57;
   wire n_0_55;

   DFF_X1 is_negative_reg (.D(adder_negative_flag), .CK(clk), .Q(is_negative), 
      .QN());
   CLKGATETST_X1 clk_gate_current_state_reg (.CK(clk), .E(n_6), .SE(1'b0), 
      .GCK(n_1));
   DFF_X1 \current_state_reg[4]  (.D(n_5), .CK(n_1), .Q(current_state[4]), .QN());
   DFF_X1 \current_state_reg[3]  (.D(n_4), .CK(n_1), .Q(current_state[3]), .QN());
   DFF_X1 \current_state_reg[2]  (.D(n_3), .CK(n_1), .Q(current_state[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_2), .CK(n_1), .Q(current_state[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0), .CK(n_1), .Q(current_state[0]), .QN());
   NOR2_X1 i_0_0 (.A1(n_0_0), .A2(n_0_25), .ZN(n_0));
   AOI22_X1 i_0_1 (.A1(n_0_3), .A2(n_0_1), .B1(n_0_35), .B2(n_0_6), .ZN(n_0_0));
   AOI211_X1 i_0_2 (.A(current_state[0]), .B(n_0_2), .C1(n_0_4), .C2(
      current_state[4]), .ZN(n_0_1));
   OAI22_X1 i_0_3 (.A1(init), .A2(n_0_5), .B1(n_0_30), .B2(multiplier_done), 
      .ZN(n_0_2));
   OAI21_X1 i_0_4 (.A(current_state[3]), .B1(n_0_44), .B2(current_state[4]), 
      .ZN(n_0_3));
   OAI21_X1 i_0_5 (.A(n_0_53), .B1(current_state[1]), .B2(divider_done), 
      .ZN(n_0_4));
   AOI22_X1 i_0_6 (.A1(current_state[4]), .A2(current_state[1]), .B1(n_0_38), 
      .B2(n_0_36), .ZN(n_0_5));
   OAI22_X1 i_0_7 (.A1(n_0_12), .A2(n_0_7), .B1(adder_negative_flag), .B2(n_0_40), 
      .ZN(n_0_6));
   NOR2_X1 i_0_8 (.A1(n_0_55), .A2(n_0_54), .ZN(n_0_7));
   AOI21_X1 i_0_9 (.A(rst), .B1(n_0_8), .B2(n_0_11), .ZN(n_2));
   AOI21_X1 i_0_10 (.A(n_0_26), .B1(n_0_9), .B2(n_0_51), .ZN(n_0_8));
   OAI221_X1 i_0_11 (.A(n_0_10), .B1(n_0_40), .B2(counter_zero), .C1(
      current_state[4]), .C2(n_0_52), .ZN(n_0_9));
   OR3_X1 i_0_12 (.A1(n_0_52), .A2(n_0_47), .A3(init), .ZN(n_0_10));
   OAI211_X1 i_0_13 (.A(n_0_12), .B(n_0_35), .C1(n_0_48), .C2(n_0_55), .ZN(
      n_0_11));
   OR3_X1 i_0_14 (.A1(current_state[2]), .A2(start), .A3(n_0_38), .ZN(n_0_12));
   AOI211_X1 i_0_15 (.A(n_0_25), .B(n_0_13), .C1(n_0_14), .C2(n_0_43), .ZN(n_3));
   NAND2_X1 i_0_16 (.A1(n_0_55), .A2(n_0_41), .ZN(n_0_13));
   OAI21_X1 i_0_17 (.A(current_state[2]), .B1(n_0_15), .B2(n_0_54), .ZN(n_0_14));
   AOI21_X1 i_0_18 (.A(n_0_16), .B1(start), .B2(current_state[1]), .ZN(n_0_15));
   NOR3_X1 i_0_19 (.A1(current_state[1]), .A2(current_state[0]), .A3(
      counter_zero), .ZN(n_0_16));
   NOR2_X1 i_0_20 (.A1(n_0_25), .A2(n_0_17), .ZN(n_4));
   AOI22_X1 i_0_21 (.A1(n_0_55), .A2(n_0_18), .B1(n_0_20), .B2(n_0_22), .ZN(
      n_0_17));
   XNOR2_X1 i_0_22 (.A(current_state[3]), .B(n_0_41), .ZN(n_0_18));
   NOR2_X1 i_0_23 (.A1(rst), .A2(n_0_19), .ZN(n_5));
   AOI211_X1 i_0_24 (.A(divider_start), .B(n_0_26), .C1(n_0_22), .C2(n_0_21), 
      .ZN(n_0_19));
   INV_X1 i_0_25 (.A(n_0_21), .ZN(n_0_20));
   OAI21_X1 i_0_26 (.A(start), .B1(current_state[0]), .B2(current_state[1]), 
      .ZN(n_0_21));
   AOI21_X1 i_0_27 (.A(n_0_46), .B1(n_0_23), .B2(current_state[1]), .ZN(n_0_22));
   OR2_X1 i_0_28 (.A1(current_state[0]), .A2(init), .ZN(n_0_23));
   OAI211_X1 i_0_29 (.A(current_state[4]), .B(n_0_24), .C1(n_0_42), .C2(n_0_47), 
      .ZN(n_6));
   INV_X1 i_0_30 (.A(n_0_25), .ZN(n_0_24));
   OR2_X1 i_0_31 (.A1(n_0_26), .A2(rst), .ZN(n_0_25));
   OAI211_X1 i_0_32 (.A(n_0_28), .B(n_0_27), .C1(n_0_50), .C2(n_0_33), .ZN(
      n_0_26));
   OAI21_X1 i_0_33 (.A(adder_overflow), .B1(error_load), .B2(result_load), 
      .ZN(n_0_27));
   NAND2_X1 i_0_34 (.A1(multiplier_overflow), .A2(dividend_load), .ZN(n_0_28));
   NOR2_X1 i_0_35 (.A1(address_inputs_selector[0]), .A2(step_inputs_selector[0]), 
      .ZN(step_inputs_selector[1]));
   NOR3_X1 i_0_36 (.A1(n_0_53), .A2(n_0_37), .A3(current_state[1]), .ZN(
      multiplier_inputs_selector[0]));
   OAI21_X1 i_0_37 (.A(multiplier_start), .B1(n_0_52), .B2(n_0_53), .ZN(
      multiplier_inputs_selector[1]));
   AOI21_X1 i_0_38 (.A(error_load), .B1(n_0_39), .B2(n_0_42), .ZN(
      adder_inputs_selector[1]));
   NOR2_X1 i_0_39 (.A1(n_0_30), .A2(n_0_29), .ZN(dividend_load));
   NAND3_X1 i_0_40 (.A1(n_0_55), .A2(n_0_51), .A3(multiplier_done), .ZN(n_0_29));
   OAI21_X1 i_0_41 (.A(n_0_47), .B1(n_0_36), .B2(n_0_54), .ZN(n_0_30));
   NOR4_X1 i_0_42 (.A1(n_0_51), .A2(n_0_44), .A3(n_0_36), .A4(n_0_45), .ZN(
      result_load));
   NOR2_X1 i_0_43 (.A1(n_0_37), .A2(n_0_36), .ZN(multiplier_start));
   NAND2_X1 i_0_44 (.A1(n_0_31), .A2(n_0_32), .ZN(done));
   AOI21_X1 i_0_45 (.A(proceed), .B1(n_0_39), .B2(n_0_35), .ZN(n_0_31));
   NAND3_X1 i_0_46 (.A1(current_state[4]), .A2(n_0_48), .A3(n_0_35), .ZN(n_0_32));
   NOR4_X1 i_0_47 (.A1(n_0_40), .A2(is_negative), .A3(current_state[0]), 
      .A4(current_state[1]), .ZN(adder_is_add));
   OAI21_X1 i_0_48 (.A(n_0_34), .B1(n_0_33), .B2(divider_overflow), .ZN(
      step_load));
   NAND2_X1 i_0_49 (.A1(divider_done), .A2(step_inputs_selector[0]), .ZN(n_0_33));
   NOR3_X1 i_0_50 (.A1(n_0_46), .A2(current_state[0]), .A3(current_state[1]), 
      .ZN(step_inputs_selector[0]));
   OR2_X1 i_0_51 (.A1(address_load), .A2(error_load), .ZN(memory_read));
   OR3_X1 i_0_52 (.A1(error_clear), .A2(n_load), .A3(address_inputs_selector[0]), 
      .ZN(address_load));
   NOR2_X1 i_0_53 (.A1(n_load), .A2(address_inputs_selector[0]), .ZN(
      address_inputs_selector[1]));
   INV_X1 i_0_54 (.A(address_inputs_selector[0]), .ZN(n_0_34));
   NOR3_X1 i_0_55 (.A1(n_0_47), .A2(current_state[4]), .A3(n_0_49), .ZN(
      address_inputs_selector[0]));
   NOR3_X1 i_0_57 (.A1(n_0_37), .A2(current_state[1]), .A3(current_state[2]), 
      .ZN(n_load));
   NOR2_X1 i_0_58 (.A1(n_0_51), .A2(current_state[1]), .ZN(n_0_35));
   NOR2_X1 i_0_59 (.A1(current_state[2]), .A2(current_state[1]), .ZN(n_0_36));
   NAND2_X1 i_0_60 (.A1(current_state[0]), .A2(n_0_38), .ZN(n_0_37));
   NOR2_X1 i_0_61 (.A1(current_state[4]), .A2(current_state[3]), .ZN(n_0_38));
   NOR3_X1 i_0_62 (.A1(n_0_49), .A2(n_0_45), .A3(current_state[2]), .ZN(
      error_clear));
   NOR2_X1 i_0_63 (.A1(n_0_45), .A2(current_state[2]), .ZN(n_0_39));
   NOR2_X1 i_0_64 (.A1(n_0_49), .A2(n_0_40), .ZN(proceed));
   NOR2_X1 i_0_65 (.A1(n_0_43), .A2(n_0_40), .ZN(divider_start));
   NAND2_X1 i_0_67 (.A1(current_state[2]), .A2(n_0_42), .ZN(n_0_41));
   INV_X1 i_0_68 (.A(n_0_43), .ZN(n_0_42));
   NAND2_X1 i_0_69 (.A1(current_state[1]), .A2(current_state[0]), .ZN(n_0_43));
   NOR2_X1 i_0_70 (.A1(n_0_53), .A2(n_0_52), .ZN(n_0_44));
   NAND2_X1 i_0_71 (.A1(n_0_55), .A2(current_state[3]), .ZN(n_0_45));
   NOR2_X1 i_0_72 (.A1(n_0_49), .A2(n_0_46), .ZN(error_failure));
   NAND2_X1 i_0_73 (.A1(current_state[4]), .A2(n_0_48), .ZN(n_0_46));
   INV_X1 i_0_74 (.A(n_0_48), .ZN(n_0_47));
   NOR2_X1 i_0_75 (.A1(current_state[3]), .A2(current_state[2]), .ZN(n_0_48));
   NAND2_X1 i_0_76 (.A1(n_0_51), .A2(current_state[1]), .ZN(n_0_49));
   INV_X1 i_0_77 (.A(divider_overflow), .ZN(n_0_50));
   INV_X1 i_0_78 (.A(current_state[0]), .ZN(n_0_51));
   INV_X1 i_0_79 (.A(current_state[1]), .ZN(n_0_52));
   INV_X1 i_0_80 (.A(current_state[2]), .ZN(n_0_53));
   INV_X1 i_0_81 (.A(current_state[3]), .ZN(n_0_54));
   NAND3_X1 i_0_56 (.A1(current_state[2]), .A2(n_0_55), .A3(current_state[3]), 
      .ZN(n_0_40));
   INV_X1 i_0_66 (.A(n_0_56), .ZN(error_load));
   NAND4_X1 i_0_82 (.A1(n_0_57), .A2(current_state[2]), .A3(n_0_55), .A4(
      current_state[3]), .ZN(n_0_56));
   NOR2_X1 i_0_83 (.A1(current_state[1]), .A2(current_state[0]), .ZN(n_0_57));
   INV_X1 i_0_84 (.A(current_state[4]), .ZN(n_0_55));
endmodule

module NegEdgeDFF__0_406(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_401(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_396(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_391(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_386(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_381(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_376(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_371(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_366(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_361(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_356(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_351(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_346(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_341(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_336(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_331(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeCounter__0_424(clk, rst, load, count_enable, load_data, count);
   input clk;
   input rst;
   input load;
   input count_enable;
   input [15:0]load_data;
   output [15:0]count;

   wire [15:0]FF_inputs;
   wire n_0_0;
   wire n_0_3;
   wire n_0_4;
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
   wire n_0_1;
   wire n_0_2;
   wire n_0_5;
   wire n_0_49;

   NegEdgeDFF__0_406 generate_flipflops_15_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[15]), .enable(), .Q(count[15]));
   NegEdgeDFF__0_401 generate_flipflops_14_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[14]), .enable(), .Q(count[14]));
   NegEdgeDFF__0_396 generate_flipflops_13_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[13]), .enable(), .Q(count[13]));
   NegEdgeDFF__0_391 generate_flipflops_12_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[12]), .enable(), .Q(count[12]));
   NegEdgeDFF__0_386 generate_flipflops_11_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[11]), .enable(), .Q(count[11]));
   NegEdgeDFF__0_381 generate_flipflops_10_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[10]), .enable(), .Q(count[10]));
   NegEdgeDFF__0_376 generate_flipflops_9_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[9]), .enable(), .Q(count[9]));
   NegEdgeDFF__0_371 generate_flipflops_8_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[8]), .enable(), .Q(count[8]));
   NegEdgeDFF__0_366 generate_flipflops_7_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[7]), .enable(), .Q(count[7]));
   NegEdgeDFF__0_361 generate_flipflops_6_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[6]), .enable(), .Q(count[6]));
   NegEdgeDFF__0_356 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   NegEdgeDFF__0_351 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   NegEdgeDFF__0_346 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   NegEdgeDFF__0_341 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   NegEdgeDFF__0_336 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   NegEdgeDFF__0_331 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   NAND2_X1 i_0_0 (.A1(n_0_0), .A2(n_0_2), .ZN(FF_inputs[0]));
   NAND2_X1 i_0_1 (.A1(load_data[0]), .A2(load), .ZN(n_0_0));
   OAI21_X1 i_0_2 (.A(n_0_3), .B1(load), .B2(n_0_4), .ZN(FF_inputs[1]));
   NAND2_X1 i_0_3 (.A1(load_data[1]), .A2(load), .ZN(n_0_3));
   XOR2_X1 i_0_4 (.A(count[1]), .B(n_0_5), .Z(n_0_4));
   NAND2_X1 i_0_8 (.A1(n_0_6), .A2(n_0_7), .ZN(FF_inputs[2]));
   NAND2_X1 i_0_9 (.A1(load_data[2]), .A2(load), .ZN(n_0_6));
   NAND3_X1 i_0_10 (.A1(n_0_49), .A2(n_0_68), .A3(n_0_8), .ZN(n_0_7));
   OR2_X1 i_0_11 (.A1(n_0_69), .A2(count[2]), .ZN(n_0_8));
   NAND2_X1 i_0_12 (.A1(n_0_9), .A2(n_0_10), .ZN(FF_inputs[3]));
   NAND2_X1 i_0_13 (.A1(load_data[3]), .A2(load), .ZN(n_0_9));
   NAND3_X1 i_0_14 (.A1(n_0_49), .A2(n_0_12), .A3(n_0_11), .ZN(n_0_10));
   NAND2_X1 i_0_15 (.A1(n_0_68), .A2(n_0_71), .ZN(n_0_11));
   INV_X1 i_0_16 (.A(n_0_67), .ZN(n_0_12));
   NAND2_X1 i_0_17 (.A1(n_0_13), .A2(n_0_14), .ZN(FF_inputs[4]));
   NAND2_X1 i_0_18 (.A1(load_data[4]), .A2(load), .ZN(n_0_13));
   NAND3_X1 i_0_19 (.A1(n_0_49), .A2(n_0_66), .A3(n_0_15), .ZN(n_0_14));
   OR2_X1 i_0_20 (.A1(n_0_67), .A2(count[4]), .ZN(n_0_15));
   NAND2_X1 i_0_21 (.A1(n_0_16), .A2(n_0_17), .ZN(FF_inputs[5]));
   NAND2_X1 i_0_22 (.A1(load_data[5]), .A2(load), .ZN(n_0_16));
   NAND3_X1 i_0_23 (.A1(n_0_49), .A2(n_0_64), .A3(n_0_18), .ZN(n_0_17));
   OR2_X1 i_0_24 (.A1(n_0_65), .A2(count[5]), .ZN(n_0_18));
   NAND2_X1 i_0_25 (.A1(n_0_19), .A2(n_0_20), .ZN(FF_inputs[6]));
   NAND2_X1 i_0_26 (.A1(load_data[6]), .A2(load), .ZN(n_0_19));
   NAND3_X1 i_0_27 (.A1(n_0_22), .A2(n_0_49), .A3(n_0_21), .ZN(n_0_20));
   NAND2_X1 i_0_28 (.A1(n_0_64), .A2(n_0_72), .ZN(n_0_21));
   INV_X1 i_0_29 (.A(n_0_63), .ZN(n_0_22));
   NAND2_X1 i_0_30 (.A1(n_0_23), .A2(n_0_24), .ZN(FF_inputs[7]));
   NAND2_X1 i_0_31 (.A1(load_data[7]), .A2(load), .ZN(n_0_23));
   OAI21_X1 i_0_32 (.A(n_0_25), .B1(count[7]), .B2(n_0_63), .ZN(n_0_24));
   NOR2_X1 i_0_33 (.A1(n_0_61), .A2(load), .ZN(n_0_25));
   NAND2_X1 i_0_34 (.A1(n_0_26), .A2(n_0_27), .ZN(FF_inputs[8]));
   NAND2_X1 i_0_35 (.A1(load_data[8]), .A2(load), .ZN(n_0_26));
   OAI21_X1 i_0_36 (.A(n_0_28), .B1(count[8]), .B2(n_0_61), .ZN(n_0_27));
   AOI21_X1 i_0_37 (.A(load), .B1(n_0_61), .B2(count[8]), .ZN(n_0_28));
   NAND2_X1 i_0_38 (.A1(n_0_29), .A2(n_0_30), .ZN(FF_inputs[9]));
   NAND2_X1 i_0_39 (.A1(load_data[9]), .A2(load), .ZN(n_0_29));
   NAND3_X1 i_0_40 (.A1(n_0_32), .A2(n_0_49), .A3(n_0_31), .ZN(n_0_30));
   NAND2_X1 i_0_41 (.A1(n_0_60), .A2(n_0_73), .ZN(n_0_31));
   INV_X1 i_0_42 (.A(n_0_59), .ZN(n_0_32));
   NAND2_X1 i_0_43 (.A1(n_0_33), .A2(n_0_34), .ZN(FF_inputs[10]));
   NAND2_X1 i_0_44 (.A1(load_data[10]), .A2(load), .ZN(n_0_33));
   OAI21_X1 i_0_45 (.A(n_0_35), .B1(count[10]), .B2(n_0_59), .ZN(n_0_34));
   NOR2_X1 i_0_46 (.A1(n_0_57), .A2(load), .ZN(n_0_35));
   NAND2_X1 i_0_47 (.A1(n_0_36), .A2(n_0_37), .ZN(FF_inputs[11]));
   NAND2_X1 i_0_48 (.A1(load_data[11]), .A2(load), .ZN(n_0_36));
   OAI21_X1 i_0_49 (.A(n_0_38), .B1(count[11]), .B2(n_0_57), .ZN(n_0_37));
   AOI21_X1 i_0_50 (.A(load), .B1(n_0_57), .B2(count[11]), .ZN(n_0_38));
   NAND2_X1 i_0_51 (.A1(n_0_39), .A2(n_0_40), .ZN(FF_inputs[12]));
   NAND2_X1 i_0_52 (.A1(load_data[12]), .A2(load), .ZN(n_0_39));
   NAND3_X1 i_0_53 (.A1(n_0_42), .A2(n_0_49), .A3(n_0_41), .ZN(n_0_40));
   NAND2_X1 i_0_54 (.A1(n_0_56), .A2(n_0_74), .ZN(n_0_41));
   INV_X1 i_0_55 (.A(n_0_55), .ZN(n_0_42));
   NAND2_X1 i_0_56 (.A1(n_0_43), .A2(n_0_44), .ZN(FF_inputs[13]));
   NAND2_X1 i_0_57 (.A1(load_data[13]), .A2(load), .ZN(n_0_43));
   OAI21_X1 i_0_58 (.A(n_0_45), .B1(count[13]), .B2(n_0_55), .ZN(n_0_44));
   AOI21_X1 i_0_59 (.A(load), .B1(n_0_55), .B2(count[13]), .ZN(n_0_45));
   NAND2_X1 i_0_60 (.A1(n_0_46), .A2(n_0_47), .ZN(FF_inputs[14]));
   NAND2_X1 i_0_61 (.A1(load_data[14]), .A2(load), .ZN(n_0_46));
   OR2_X1 i_0_62 (.A1(n_0_50), .A2(n_0_48), .ZN(n_0_47));
   NAND2_X1 i_0_63 (.A1(n_0_54), .A2(n_0_49), .ZN(n_0_48));
   AOI21_X1 i_0_65 (.A(count[14]), .B1(n_0_55), .B2(count[13]), .ZN(n_0_50));
   NAND2_X1 i_0_66 (.A1(n_0_51), .A2(n_0_52), .ZN(FF_inputs[15]));
   NAND2_X1 i_0_67 (.A1(load_data[15]), .A2(load), .ZN(n_0_51));
   OAI21_X1 i_0_68 (.A(n_0_53), .B1(n_0_1), .B2(n_0_54), .ZN(n_0_52));
   AOI21_X1 i_0_69 (.A(load), .B1(n_0_54), .B2(n_0_1), .ZN(n_0_53));
   NAND3_X1 i_0_70 (.A1(n_0_55), .A2(count[14]), .A3(count[13]), .ZN(n_0_54));
   NOR2_X1 i_0_71 (.A1(n_0_56), .A2(n_0_74), .ZN(n_0_55));
   NAND2_X1 i_0_72 (.A1(n_0_57), .A2(count[11]), .ZN(n_0_56));
   INV_X1 i_0_73 (.A(n_0_58), .ZN(n_0_57));
   NAND2_X1 i_0_74 (.A1(n_0_59), .A2(count[10]), .ZN(n_0_58));
   NOR2_X1 i_0_75 (.A1(n_0_60), .A2(n_0_73), .ZN(n_0_59));
   NAND2_X1 i_0_76 (.A1(n_0_61), .A2(count[8]), .ZN(n_0_60));
   INV_X1 i_0_77 (.A(n_0_62), .ZN(n_0_61));
   NAND2_X1 i_0_78 (.A1(n_0_63), .A2(count[7]), .ZN(n_0_62));
   NOR2_X1 i_0_79 (.A1(n_0_64), .A2(n_0_72), .ZN(n_0_63));
   NAND2_X1 i_0_80 (.A1(n_0_65), .A2(count[5]), .ZN(n_0_64));
   INV_X1 i_0_81 (.A(n_0_66), .ZN(n_0_65));
   NAND2_X1 i_0_82 (.A1(n_0_67), .A2(count[4]), .ZN(n_0_66));
   NOR2_X1 i_0_83 (.A1(n_0_68), .A2(n_0_71), .ZN(n_0_67));
   NAND2_X1 i_0_84 (.A1(n_0_69), .A2(count[2]), .ZN(n_0_68));
   INV_X1 i_0_85 (.A(n_0_70), .ZN(n_0_69));
   NAND3_X1 i_0_86 (.A1(count_enable), .A2(count[1]), .A3(count[0]), .ZN(n_0_70));
   INV_X1 i_0_87 (.A(count[3]), .ZN(n_0_71));
   INV_X1 i_0_88 (.A(count[6]), .ZN(n_0_72));
   INV_X1 i_0_89 (.A(count[9]), .ZN(n_0_73));
   INV_X1 i_0_90 (.A(count[12]), .ZN(n_0_74));
   INV_X1 i_0_91 (.A(count[15]), .ZN(n_0_1));
   OAI211_X1 i_0_5 (.A(n_0_49), .B(n_0_5), .C1(count_enable), .C2(count[0]), 
      .ZN(n_0_2));
   NAND2_X1 i_0_6 (.A1(count_enable), .A2(count[0]), .ZN(n_0_5));
   INV_X1 i_0_7 (.A(load), .ZN(n_0_49));
endmodule

module NegEdgeDFF__0_176(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_181(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_186(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_191(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_196(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_201(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_206(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_211(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_216(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_221(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_226(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_231(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_236(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_241(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_246(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeDFF__0_251(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_1));
   INV_X1 i_0_2 (.A(D), .ZN(n_0_0));
endmodule

module NegEdgeCounter(clk, rst, load, count_enable, load_data, count);
   input clk;
   input rst;
   input load;
   input count_enable;
   input [15:0]load_data;
   output [15:0]count;

   wire [15:0]FF_inputs;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
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
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_6;
   wire n_0_51;

   NegEdgeDFF__0_176 generate_flipflops_15_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[15]), .enable(), .Q(count[15]));
   NegEdgeDFF__0_181 generate_flipflops_14_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[14]), .enable(), .Q(count[14]));
   NegEdgeDFF__0_186 generate_flipflops_13_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[13]), .enable(), .Q(count[13]));
   NegEdgeDFF__0_191 generate_flipflops_12_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[12]), .enable(), .Q(count[12]));
   NegEdgeDFF__0_196 generate_flipflops_11_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[11]), .enable(), .Q(count[11]));
   NegEdgeDFF__0_201 generate_flipflops_10_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[10]), .enable(), .Q(count[10]));
   NegEdgeDFF__0_206 generate_flipflops_9_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[9]), .enable(), .Q(count[9]));
   NegEdgeDFF__0_211 generate_flipflops_8_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[8]), .enable(), .Q(count[8]));
   NegEdgeDFF__0_216 generate_flipflops_7_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[7]), .enable(), .Q(count[7]));
   NegEdgeDFF__0_221 generate_flipflops_6_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[6]), .enable(), .Q(count[6]));
   NegEdgeDFF__0_226 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   NegEdgeDFF__0_231 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   NegEdgeDFF__0_236 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   NegEdgeDFF__0_241 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   NegEdgeDFF__0_246 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   NegEdgeDFF__0_251 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   NAND2_X1 i_0_4 (.A1(n_0_3), .A2(n_0_4), .ZN(FF_inputs[1]));
   NAND2_X1 i_0_5 (.A1(load_data[1]), .A2(load), .ZN(n_0_3));
   NAND3_X1 i_0_6 (.A1(n_0_51), .A2(n_0_72), .A3(n_0_5), .ZN(n_0_4));
   NAND2_X1 i_0_0 (.A1(n_0_2), .A2(n_0_7), .ZN(n_0_5));
   INV_X1 i_0_1 (.A(count[1]), .ZN(n_0_7));
   NAND2_X1 i_0_10 (.A1(n_0_8), .A2(n_0_9), .ZN(FF_inputs[2]));
   NAND2_X1 i_0_11 (.A1(load_data[2]), .A2(load), .ZN(n_0_8));
   NAND3_X1 i_0_12 (.A1(n_0_51), .A2(n_0_70), .A3(n_0_10), .ZN(n_0_9));
   OR2_X1 i_0_13 (.A1(n_0_71), .A2(count[2]), .ZN(n_0_10));
   NAND2_X1 i_0_14 (.A1(n_0_11), .A2(n_0_12), .ZN(FF_inputs[3]));
   NAND2_X1 i_0_15 (.A1(load_data[3]), .A2(load), .ZN(n_0_11));
   NAND3_X1 i_0_16 (.A1(n_0_51), .A2(n_0_14), .A3(n_0_13), .ZN(n_0_12));
   NAND2_X1 i_0_17 (.A1(n_0_70), .A2(n_0_73), .ZN(n_0_13));
   INV_X1 i_0_18 (.A(n_0_69), .ZN(n_0_14));
   NAND2_X1 i_0_19 (.A1(n_0_15), .A2(n_0_16), .ZN(FF_inputs[4]));
   NAND2_X1 i_0_20 (.A1(load_data[4]), .A2(load), .ZN(n_0_15));
   NAND3_X1 i_0_21 (.A1(n_0_51), .A2(n_0_68), .A3(n_0_17), .ZN(n_0_16));
   OR2_X1 i_0_22 (.A1(n_0_69), .A2(count[4]), .ZN(n_0_17));
   NAND2_X1 i_0_23 (.A1(n_0_18), .A2(n_0_19), .ZN(FF_inputs[5]));
   NAND2_X1 i_0_24 (.A1(load_data[5]), .A2(load), .ZN(n_0_18));
   NAND3_X1 i_0_25 (.A1(n_0_51), .A2(n_0_66), .A3(n_0_20), .ZN(n_0_19));
   OR2_X1 i_0_26 (.A1(n_0_67), .A2(count[5]), .ZN(n_0_20));
   NAND2_X1 i_0_27 (.A1(n_0_21), .A2(n_0_22), .ZN(FF_inputs[6]));
   NAND2_X1 i_0_28 (.A1(load_data[6]), .A2(load), .ZN(n_0_21));
   NAND3_X1 i_0_29 (.A1(n_0_51), .A2(n_0_24), .A3(n_0_23), .ZN(n_0_22));
   NAND2_X1 i_0_30 (.A1(n_0_66), .A2(n_0_74), .ZN(n_0_23));
   INV_X1 i_0_31 (.A(n_0_65), .ZN(n_0_24));
   NAND2_X1 i_0_32 (.A1(n_0_25), .A2(n_0_26), .ZN(FF_inputs[7]));
   NAND2_X1 i_0_33 (.A1(load_data[7]), .A2(load), .ZN(n_0_25));
   OAI21_X1 i_0_34 (.A(n_0_27), .B1(count[7]), .B2(n_0_65), .ZN(n_0_26));
   NOR2_X1 i_0_35 (.A1(n_0_63), .A2(load), .ZN(n_0_27));
   NAND2_X1 i_0_36 (.A1(n_0_28), .A2(n_0_29), .ZN(FF_inputs[8]));
   NAND2_X1 i_0_37 (.A1(load_data[8]), .A2(load), .ZN(n_0_28));
   OAI21_X1 i_0_38 (.A(n_0_30), .B1(count[8]), .B2(n_0_63), .ZN(n_0_29));
   AOI21_X1 i_0_39 (.A(load), .B1(n_0_63), .B2(count[8]), .ZN(n_0_30));
   NAND2_X1 i_0_40 (.A1(n_0_31), .A2(n_0_32), .ZN(FF_inputs[9]));
   NAND2_X1 i_0_41 (.A1(load_data[9]), .A2(load), .ZN(n_0_31));
   NAND3_X1 i_0_42 (.A1(n_0_34), .A2(n_0_51), .A3(n_0_33), .ZN(n_0_32));
   NAND2_X1 i_0_43 (.A1(n_0_62), .A2(n_0_75), .ZN(n_0_33));
   INV_X1 i_0_44 (.A(n_0_61), .ZN(n_0_34));
   NAND2_X1 i_0_45 (.A1(n_0_35), .A2(n_0_36), .ZN(FF_inputs[10]));
   NAND2_X1 i_0_46 (.A1(load_data[10]), .A2(load), .ZN(n_0_35));
   OAI21_X1 i_0_47 (.A(n_0_37), .B1(count[10]), .B2(n_0_61), .ZN(n_0_36));
   NOR2_X1 i_0_48 (.A1(n_0_59), .A2(load), .ZN(n_0_37));
   NAND2_X1 i_0_49 (.A1(n_0_38), .A2(n_0_39), .ZN(FF_inputs[11]));
   NAND2_X1 i_0_50 (.A1(load_data[11]), .A2(load), .ZN(n_0_38));
   OAI21_X1 i_0_51 (.A(n_0_40), .B1(count[11]), .B2(n_0_59), .ZN(n_0_39));
   AOI21_X1 i_0_52 (.A(load), .B1(n_0_59), .B2(count[11]), .ZN(n_0_40));
   NAND2_X1 i_0_53 (.A1(n_0_41), .A2(n_0_42), .ZN(FF_inputs[12]));
   NAND2_X1 i_0_54 (.A1(load_data[12]), .A2(load), .ZN(n_0_41));
   NAND3_X1 i_0_55 (.A1(n_0_44), .A2(n_0_51), .A3(n_0_43), .ZN(n_0_42));
   NAND2_X1 i_0_56 (.A1(n_0_58), .A2(n_0_76), .ZN(n_0_43));
   INV_X1 i_0_57 (.A(n_0_57), .ZN(n_0_44));
   NAND2_X1 i_0_58 (.A1(n_0_45), .A2(n_0_46), .ZN(FF_inputs[13]));
   NAND2_X1 i_0_59 (.A1(load_data[13]), .A2(load), .ZN(n_0_45));
   OAI21_X1 i_0_60 (.A(n_0_47), .B1(count[13]), .B2(n_0_57), .ZN(n_0_46));
   AOI21_X1 i_0_61 (.A(load), .B1(n_0_57), .B2(count[13]), .ZN(n_0_47));
   NAND2_X1 i_0_62 (.A1(n_0_48), .A2(n_0_49), .ZN(FF_inputs[14]));
   NAND2_X1 i_0_63 (.A1(load_data[14]), .A2(load), .ZN(n_0_48));
   OR2_X1 i_0_64 (.A1(n_0_52), .A2(n_0_50), .ZN(n_0_49));
   NAND2_X1 i_0_65 (.A1(n_0_56), .A2(n_0_51), .ZN(n_0_50));
   AOI21_X1 i_0_67 (.A(count[14]), .B1(n_0_57), .B2(count[13]), .ZN(n_0_52));
   NAND2_X1 i_0_68 (.A1(n_0_53), .A2(n_0_54), .ZN(FF_inputs[15]));
   NAND2_X1 i_0_69 (.A1(load_data[15]), .A2(load), .ZN(n_0_53));
   OAI21_X1 i_0_70 (.A(n_0_55), .B1(n_0_0), .B2(n_0_56), .ZN(n_0_54));
   AOI21_X1 i_0_71 (.A(load), .B1(n_0_56), .B2(n_0_0), .ZN(n_0_55));
   NAND3_X1 i_0_72 (.A1(n_0_57), .A2(count[14]), .A3(count[13]), .ZN(n_0_56));
   NOR2_X1 i_0_73 (.A1(n_0_58), .A2(n_0_76), .ZN(n_0_57));
   NAND2_X1 i_0_74 (.A1(n_0_59), .A2(count[11]), .ZN(n_0_58));
   INV_X1 i_0_75 (.A(n_0_60), .ZN(n_0_59));
   NAND2_X1 i_0_76 (.A1(n_0_61), .A2(count[10]), .ZN(n_0_60));
   NOR2_X1 i_0_77 (.A1(n_0_62), .A2(n_0_75), .ZN(n_0_61));
   NAND2_X1 i_0_78 (.A1(n_0_63), .A2(count[8]), .ZN(n_0_62));
   INV_X1 i_0_79 (.A(n_0_64), .ZN(n_0_63));
   NAND2_X1 i_0_80 (.A1(n_0_65), .A2(count[7]), .ZN(n_0_64));
   NOR2_X1 i_0_81 (.A1(n_0_66), .A2(n_0_74), .ZN(n_0_65));
   NAND2_X1 i_0_82 (.A1(n_0_67), .A2(count[5]), .ZN(n_0_66));
   INV_X1 i_0_83 (.A(n_0_68), .ZN(n_0_67));
   NAND2_X1 i_0_84 (.A1(n_0_69), .A2(count[4]), .ZN(n_0_68));
   NOR2_X1 i_0_85 (.A1(n_0_70), .A2(n_0_73), .ZN(n_0_69));
   NAND2_X1 i_0_86 (.A1(n_0_71), .A2(count[2]), .ZN(n_0_70));
   INV_X1 i_0_87 (.A(n_0_72), .ZN(n_0_71));
   NAND3_X1 i_0_88 (.A1(count_enable), .A2(count[1]), .A3(count[0]), .ZN(n_0_72));
   INV_X1 i_0_89 (.A(count[3]), .ZN(n_0_73));
   INV_X1 i_0_90 (.A(count[6]), .ZN(n_0_74));
   INV_X1 i_0_91 (.A(count[9]), .ZN(n_0_75));
   INV_X1 i_0_92 (.A(count[12]), .ZN(n_0_76));
   INV_X1 i_0_93 (.A(count[15]), .ZN(n_0_0));
   AOI22_X1 i_0_2 (.A1(n_0_51), .A2(n_0_1), .B1(load), .B2(n_0_6), .ZN(
      FF_inputs[0]));
   OAI21_X1 i_0_3 (.A(n_0_2), .B1(count_enable), .B2(count[0]), .ZN(n_0_1));
   NAND2_X1 i_0_7 (.A1(count_enable), .A2(count[0]), .ZN(n_0_2));
   INV_X1 i_0_8 (.A(load_data[0]), .ZN(n_0_6));
   INV_X1 i_0_9 (.A(load), .ZN(n_0_51));
endmodule

module StepModule(clk, rst, init, start, read_step, step_in, x0_address, 
      x1_address, memory_data1, memory_data2, done, proceed, error_failure, 
      memory_address1, memory_address2, step_out);
   input clk;
   input rst;
   input init;
   input start;
   input read_step;
   input [15:0]step_in;
   input [15:0]x0_address;
   input [15:0]x1_address;
   input [15:0]memory_data1;
   input [15:0]memory_data2;
   output done;
   output proceed;
   output error_failure;
   output [15:0]memory_address1;
   output [15:0]memory_address2;
   output [15:0]step_out;

   wire [15:0]dividend;
   wire [15:0]x0_data;
   wire [15:0]x1_data;
   wire [15:0]tolerance;
   wire [15:0]result;
   wire adder_negative_flag;
   wire adder_overflow;
   wire [15:0]adder_out;
   wire [15:0]error;
   wire divider_done;
   wire divider_overflow;
   wire [15:0]divider_out;
   wire multiplier_done;
   wire multiplier_overflow;
   wire [15:0]multiplier_out;
   wire [15:0]n;
   wire [15:0]loop_counter;
   wire [1:0]step_inputs_selector;
   wire [1:0]address_inputs_selector;
   wire [1:0]multiplier_inputs_selector;
   wire [1:0]adder_inputs_selector;
   wire dividend_load;
   wire result_load;
   wire address_load;
   wire divider_start;
   wire multiplier_start;
   wire loop_counter_load;
   wire adder_is_add;
   wire step_load;
   wire memory_read;
   wire tolerance_load;
   wire n_0_2;
   wire [15:0]adder_operand2;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire [15:0]adder_operand1;
   wire n_0_0_17;
   wire [15:0]multiplier_operand2;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire [15:0]multiplier_operand1;
   wire [15:0]step_reg_in;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0;
   wire n_0_1;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_0_63;
   wire n_0_0_66;
   wire [15:0]address2;
   wire n_0_0_54;
   wire [15:0]address1;
   wire n_0_0_35;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;
   wire counter_zero;
   wire n_0_0_60;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_67;

   Register__0_427 dividend_reg (.clk(clk), .rst(rst), .load(dividend_load), 
      .data_in(multiplier_out), .data_out(dividend));
   Register__0_430 data1_reg (.clk(clk), .rst(rst), .load(memory_read), .data_in(
      memory_data1), .data_out(x0_data));
   Register__0_433 data2_reg (.clk(clk), .rst(rst), .load(memory_read), .data_in(
      memory_data2), .data_out(x1_data));
   Register__0_436 tolerance_reg (.clk(clk), .rst(rst), .load(tolerance_load), 
      .data_in(memory_data2), .data_out(tolerance));
   Register__0_439 result_reg (.clk(clk), .rst(rst), .load(result_load), 
      .data_in(adder_out), .data_out(result));
   adder adder (.A(adder_operand1), .B(adder_operand2), .is_subtract(n_0_1), 
      .result(adder_out), .carry(), .overflow_flag(adder_overflow), .negative(
      adder_negative_flag));
   Register__0_442 error_reg (.clk(clk), .rst(n_0_2), .load(
      adder_inputs_selector[0]), .data_in(adder_out), .data_out(error));
   division divider (.clk(clk), .rst(rst), .dividen(dividend), .divisor(error), 
      .start(divider_start), .result(divider_out), .overflow_flag(
      divider_overflow), .finish(divider_done));
   Register__0_445 step_reg (.clk(clk), .rst(rst), .load(n_0_0), .data_in(
      step_reg_in), .data_out(step_out));
   multiplier multiplier (.clk(clk), .rst(rst), .multiplicand(
      multiplier_operand1), .multiplier(multiplier_operand2), .start(
      multiplier_start), .result(multiplier_out), .overflow_flag(
      multiplier_overflow), .finish(multiplier_done));
   Register n_reg (.clk(clk), .rst(rst), .load(tolerance_load), .data_in(
      memory_data1), .data_out(n));
   NegEdgeCounter__parameterized0 loop_counter_reg (.clk(clk), .rst(rst), 
      .load(loop_counter_load), .count_enable(adder_inputs_selector[0]), 
      .load_data(n), .count(loop_counter));
   StepControlFSM controlFSM (.clk(clk), .rst(rst), .init(init), .start(start), 
      .multiplier_done(multiplier_done), .divider_done(divider_done), 
      .adder_overflow(adder_overflow), .multiplier_overflow(multiplier_overflow), 
      .divider_overflow(divider_overflow), .adder_negative_flag(
      adder_negative_flag), .counter_zero(counter_zero), .error_load(
      adder_inputs_selector[0]), .n_load(tolerance_load), .tolerance_load(), 
      .memory_read(memory_read), .step_load(step_load), .adder_is_add(
      adder_is_add), .error_clear(loop_counter_load), .done(done), .proceed(
      proceed), .multiplier_start(multiplier_start), .divider_start(
      divider_start), .address_load(address_load), .loop_counter_load(), 
      .decrement_counter(), .increment_addresses(), .result_load(result_load), 
      .error_failure(error_failure), .dividend_load(dividend_load), 
      .adder_inputs_selector({adder_inputs_selector[1], uc_0}), 
      .multiplier_inputs_selector(multiplier_inputs_selector), 
      .address_inputs_selector(address_inputs_selector), .step_inputs_selector(
      step_inputs_selector));
   NegEdgeCounter__0_424 address1_reg (.clk(clk), .rst(rst), .load(address_load), 
      .count_enable(adder_inputs_selector[0]), .load_data(address1), .count(
      memory_address1));
   NegEdgeCounter address2_reg (.clk(clk), .rst(rst), .load(address_load), 
      .count_enable(adder_inputs_selector[0]), .load_data(address2), .count(
      memory_address2));
   OR2_X1 i_0_0_0 (.A1(loop_counter_load), .A2(rst), .ZN(n_0_2));
   INV_X1 i_0_0_1 (.A(n_0_0_0), .ZN(adder_operand2[0]));
   AOI222_X1 i_0_0_2 (.A1(tolerance[0]), .A2(adder_inputs_selector[1]), .B1(
      x1_data[0]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[0]), .ZN(n_0_0_0));
   INV_X1 i_0_0_3 (.A(n_0_0_1), .ZN(adder_operand2[1]));
   AOI222_X1 i_0_0_4 (.A1(tolerance[1]), .A2(adder_inputs_selector[1]), .B1(
      x1_data[1]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[1]), .ZN(n_0_0_1));
   INV_X1 i_0_0_5 (.A(n_0_0_2), .ZN(adder_operand2[2]));
   AOI222_X1 i_0_0_6 (.A1(tolerance[2]), .A2(adder_inputs_selector[1]), .B1(
      x1_data[2]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[2]), .ZN(n_0_0_2));
   INV_X1 i_0_0_7 (.A(n_0_0_3), .ZN(adder_operand2[3]));
   AOI222_X1 i_0_0_8 (.A1(tolerance[3]), .A2(adder_inputs_selector[1]), .B1(
      x1_data[3]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[3]), .ZN(n_0_0_3));
   INV_X1 i_0_0_9 (.A(n_0_0_4), .ZN(adder_operand2[4]));
   AOI222_X1 i_0_0_10 (.A1(tolerance[4]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[4]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[4]), .ZN(n_0_0_4));
   INV_X1 i_0_0_11 (.A(n_0_0_5), .ZN(adder_operand2[5]));
   AOI222_X1 i_0_0_12 (.A1(tolerance[5]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[5]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[5]), .ZN(n_0_0_5));
   INV_X1 i_0_0_13 (.A(n_0_0_6), .ZN(adder_operand2[6]));
   AOI222_X1 i_0_0_14 (.A1(tolerance[6]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[6]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[6]), .ZN(n_0_0_6));
   INV_X1 i_0_0_15 (.A(n_0_0_7), .ZN(adder_operand2[7]));
   AOI222_X1 i_0_0_16 (.A1(tolerance[7]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[7]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[7]), .ZN(n_0_0_7));
   INV_X1 i_0_0_17 (.A(n_0_0_8), .ZN(adder_operand2[8]));
   AOI222_X1 i_0_0_18 (.A1(tolerance[8]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[8]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[8]), .ZN(n_0_0_8));
   INV_X1 i_0_0_19 (.A(n_0_0_9), .ZN(adder_operand2[9]));
   AOI222_X1 i_0_0_20 (.A1(tolerance[9]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[9]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[9]), .ZN(n_0_0_9));
   INV_X1 i_0_0_21 (.A(n_0_0_10), .ZN(adder_operand2[10]));
   AOI222_X1 i_0_0_22 (.A1(tolerance[10]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[10]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[10]), .ZN(
      n_0_0_10));
   INV_X1 i_0_0_23 (.A(n_0_0_11), .ZN(adder_operand2[11]));
   AOI222_X1 i_0_0_24 (.A1(tolerance[11]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[11]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[11]), .ZN(
      n_0_0_11));
   INV_X1 i_0_0_25 (.A(n_0_0_12), .ZN(adder_operand2[12]));
   AOI222_X1 i_0_0_26 (.A1(tolerance[12]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[12]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[12]), .ZN(
      n_0_0_12));
   INV_X1 i_0_0_27 (.A(n_0_0_13), .ZN(adder_operand2[13]));
   AOI222_X1 i_0_0_28 (.A1(tolerance[13]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[13]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[13]), .ZN(
      n_0_0_13));
   INV_X1 i_0_0_29 (.A(n_0_0_14), .ZN(adder_operand2[14]));
   AOI222_X1 i_0_0_30 (.A1(tolerance[14]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[14]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[14]), .ZN(
      n_0_0_14));
   INV_X1 i_0_0_31 (.A(n_0_0_15), .ZN(adder_operand2[15]));
   AOI222_X1 i_0_0_32 (.A1(tolerance[15]), .A2(adder_inputs_selector[1]), 
      .B1(x1_data[15]), .B2(n_0_0_17), .C1(n_0_0_16), .C2(result[15]), .ZN(
      n_0_0_15));
   NOR2_X1 i_0_0_33 (.A1(n_0_0_61), .A2(adder_inputs_selector[1]), .ZN(n_0_0_16));
   MUX2_X1 i_0_0_34 (.A(error[0]), .B(x0_data[0]), .S(n_0_0_17), .Z(
      adder_operand1[0]));
   MUX2_X1 i_0_0_35 (.A(error[1]), .B(x0_data[1]), .S(n_0_0_17), .Z(
      adder_operand1[1]));
   MUX2_X1 i_0_0_36 (.A(error[2]), .B(x0_data[2]), .S(n_0_0_17), .Z(
      adder_operand1[2]));
   MUX2_X1 i_0_0_37 (.A(error[3]), .B(x0_data[3]), .S(n_0_0_17), .Z(
      adder_operand1[3]));
   MUX2_X1 i_0_0_38 (.A(error[4]), .B(x0_data[4]), .S(n_0_0_17), .Z(
      adder_operand1[4]));
   MUX2_X1 i_0_0_39 (.A(error[5]), .B(x0_data[5]), .S(n_0_0_17), .Z(
      adder_operand1[5]));
   MUX2_X1 i_0_0_40 (.A(error[6]), .B(x0_data[6]), .S(n_0_0_17), .Z(
      adder_operand1[6]));
   MUX2_X1 i_0_0_41 (.A(error[7]), .B(x0_data[7]), .S(n_0_0_17), .Z(
      adder_operand1[7]));
   MUX2_X1 i_0_0_42 (.A(error[8]), .B(x0_data[8]), .S(n_0_0_17), .Z(
      adder_operand1[8]));
   MUX2_X1 i_0_0_43 (.A(error[9]), .B(x0_data[9]), .S(n_0_0_17), .Z(
      adder_operand1[9]));
   MUX2_X1 i_0_0_44 (.A(error[10]), .B(x0_data[10]), .S(n_0_0_17), .Z(
      adder_operand1[10]));
   MUX2_X1 i_0_0_45 (.A(error[11]), .B(x0_data[11]), .S(n_0_0_17), .Z(
      adder_operand1[11]));
   MUX2_X1 i_0_0_46 (.A(error[12]), .B(x0_data[12]), .S(n_0_0_17), .Z(
      adder_operand1[12]));
   MUX2_X1 i_0_0_47 (.A(error[13]), .B(x0_data[13]), .S(n_0_0_17), .Z(
      adder_operand1[13]));
   MUX2_X1 i_0_0_48 (.A(error[14]), .B(x0_data[14]), .S(n_0_0_17), .Z(
      adder_operand1[14]));
   MUX2_X1 i_0_0_49 (.A(error[15]), .B(x0_data[15]), .S(n_0_0_17), .Z(
      adder_operand1[15]));
   NOR2_X1 i_0_0_50 (.A1(adder_inputs_selector[1]), .A2(adder_inputs_selector[0]), 
      .ZN(n_0_0_17));
   INV_X1 i_0_0_51 (.A(n_0_0_18), .ZN(multiplier_operand2[0]));
   OAI22_X1 i_0_0_52 (.A1(step_out[0]), .A2(n_0_0_56), .B1(n_0_0_34), .B2(
      tolerance[0]), .ZN(n_0_0_18));
   INV_X1 i_0_0_53 (.A(n_0_0_19), .ZN(multiplier_operand2[1]));
   OAI22_X1 i_0_0_54 (.A1(step_out[1]), .A2(n_0_0_56), .B1(n_0_0_34), .B2(
      tolerance[1]), .ZN(n_0_0_19));
   INV_X1 i_0_0_55 (.A(n_0_0_20), .ZN(multiplier_operand2[2]));
   AOI22_X1 i_0_0_56 (.A1(step_out[2]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[2]), .ZN(n_0_0_20));
   INV_X1 i_0_0_57 (.A(n_0_0_21), .ZN(multiplier_operand2[3]));
   AOI22_X1 i_0_0_58 (.A1(step_out[3]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[3]), .ZN(n_0_0_21));
   INV_X1 i_0_0_59 (.A(n_0_0_22), .ZN(multiplier_operand2[4]));
   OAI22_X1 i_0_0_60 (.A1(step_out[4]), .A2(n_0_0_56), .B1(n_0_0_34), .B2(
      tolerance[4]), .ZN(n_0_0_22));
   INV_X1 i_0_0_61 (.A(n_0_0_23), .ZN(multiplier_operand2[5]));
   OAI22_X1 i_0_0_62 (.A1(step_out[5]), .A2(n_0_0_56), .B1(n_0_0_34), .B2(
      tolerance[5]), .ZN(n_0_0_23));
   INV_X1 i_0_0_63 (.A(n_0_0_24), .ZN(multiplier_operand2[6]));
   OAI22_X1 i_0_0_64 (.A1(step_out[6]), .A2(n_0_0_56), .B1(n_0_0_34), .B2(
      tolerance[6]), .ZN(n_0_0_24));
   INV_X1 i_0_0_65 (.A(n_0_0_25), .ZN(multiplier_operand2[7]));
   AOI22_X1 i_0_0_66 (.A1(step_out[7]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[7]), .ZN(n_0_0_25));
   INV_X1 i_0_0_67 (.A(n_0_0_26), .ZN(multiplier_operand2[8]));
   AOI22_X1 i_0_0_68 (.A1(step_out[8]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[8]), .ZN(n_0_0_26));
   INV_X1 i_0_0_69 (.A(n_0_0_27), .ZN(multiplier_operand2[9]));
   AOI22_X1 i_0_0_70 (.A1(step_out[9]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[9]), .ZN(n_0_0_27));
   INV_X1 i_0_0_71 (.A(n_0_0_28), .ZN(multiplier_operand2[10]));
   AOI22_X1 i_0_0_72 (.A1(step_out[10]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[10]), .ZN(n_0_0_28));
   INV_X1 i_0_0_73 (.A(n_0_0_29), .ZN(multiplier_operand2[11]));
   AOI22_X1 i_0_0_74 (.A1(step_out[11]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[11]), .ZN(n_0_0_29));
   INV_X1 i_0_0_75 (.A(n_0_0_30), .ZN(multiplier_operand2[12]));
   AOI22_X1 i_0_0_76 (.A1(step_out[12]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[12]), .ZN(n_0_0_30));
   INV_X1 i_0_0_77 (.A(n_0_0_31), .ZN(multiplier_operand2[13]));
   AOI22_X1 i_0_0_78 (.A1(step_out[13]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[13]), .ZN(n_0_0_31));
   INV_X1 i_0_0_79 (.A(n_0_0_32), .ZN(multiplier_operand2[14]));
   AOI22_X1 i_0_0_80 (.A1(step_out[14]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[14]), .ZN(n_0_0_32));
   INV_X1 i_0_0_81 (.A(n_0_0_33), .ZN(multiplier_operand2[15]));
   AOI22_X1 i_0_0_82 (.A1(step_out[15]), .A2(n_0_0_57), .B1(n_0_0_66), .B2(
      tolerance[15]), .ZN(n_0_0_33));
   NAND2_X1 i_0_0_83 (.A1(n_0_0_62), .A2(multiplier_inputs_selector[0]), 
      .ZN(n_0_0_34));
   MUX2_X1 i_0_0_84 (.A(dividend[0]), .B(step_out[0]), .S(n_0_0_57), .Z(
      multiplier_operand1[0]));
   MUX2_X1 i_0_0_85 (.A(dividend[1]), .B(step_out[1]), .S(n_0_0_57), .Z(
      multiplier_operand1[1]));
   MUX2_X1 i_0_0_86 (.A(dividend[2]), .B(step_out[2]), .S(n_0_0_57), .Z(
      multiplier_operand1[2]));
   MUX2_X1 i_0_0_87 (.A(dividend[3]), .B(step_out[3]), .S(n_0_0_57), .Z(
      multiplier_operand1[3]));
   MUX2_X1 i_0_0_88 (.A(dividend[4]), .B(step_out[4]), .S(n_0_0_57), .Z(
      multiplier_operand1[4]));
   MUX2_X1 i_0_0_89 (.A(dividend[5]), .B(step_out[5]), .S(n_0_0_57), .Z(
      multiplier_operand1[5]));
   MUX2_X1 i_0_0_90 (.A(dividend[6]), .B(step_out[6]), .S(n_0_0_57), .Z(
      multiplier_operand1[6]));
   MUX2_X1 i_0_0_91 (.A(dividend[7]), .B(step_out[7]), .S(n_0_0_57), .Z(
      multiplier_operand1[7]));
   MUX2_X1 i_0_0_92 (.A(dividend[8]), .B(step_out[8]), .S(n_0_0_57), .Z(
      multiplier_operand1[8]));
   MUX2_X1 i_0_0_93 (.A(dividend[9]), .B(step_out[9]), .S(n_0_0_57), .Z(
      multiplier_operand1[9]));
   MUX2_X1 i_0_0_95 (.A(dividend[11]), .B(step_out[11]), .S(n_0_0_57), .Z(
      multiplier_operand1[11]));
   MUX2_X1 i_0_0_96 (.A(dividend[12]), .B(step_out[12]), .S(n_0_0_57), .Z(
      multiplier_operand1[12]));
   MUX2_X1 i_0_0_97 (.A(dividend[13]), .B(step_out[13]), .S(n_0_0_57), .Z(
      multiplier_operand1[13]));
   MUX2_X1 i_0_0_98 (.A(dividend[14]), .B(step_out[14]), .S(n_0_0_57), .Z(
      multiplier_operand1[14]));
   MUX2_X1 i_0_0_99 (.A(dividend[15]), .B(step_out[15]), .S(n_0_0_57), .Z(
      multiplier_operand1[15]));
   INV_X1 i_0_0_94 (.A(n_0_0_36), .ZN(step_reg_in[0]));
   AOI222_X1 i_0_0_100 (.A1(step_in[0]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[0]), .C1(n_0_0_53), .C2(memory_data1[0]), 
      .ZN(n_0_0_36));
   INV_X1 i_0_0_103 (.A(n_0_0_37), .ZN(step_reg_in[1]));
   AOI222_X1 i_0_0_104 (.A1(step_in[1]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[1]), .C1(n_0_0_53), .C2(memory_data1[1]), 
      .ZN(n_0_0_37));
   INV_X1 i_0_0_105 (.A(n_0_0_38), .ZN(step_reg_in[2]));
   AOI222_X1 i_0_0_106 (.A1(step_in[2]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[2]), .C1(n_0_0_53), .C2(memory_data1[2]), 
      .ZN(n_0_0_38));
   INV_X1 i_0_0_107 (.A(n_0_0_39), .ZN(step_reg_in[3]));
   AOI222_X1 i_0_0_108 (.A1(step_in[3]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[3]), .C1(n_0_0_53), .C2(memory_data1[3]), 
      .ZN(n_0_0_39));
   INV_X1 i_0_0_109 (.A(n_0_0_40), .ZN(step_reg_in[4]));
   AOI222_X1 i_0_0_110 (.A1(step_in[4]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[4]), .C1(n_0_0_53), .C2(memory_data1[4]), 
      .ZN(n_0_0_40));
   INV_X1 i_0_0_111 (.A(n_0_0_41), .ZN(step_reg_in[5]));
   AOI222_X1 i_0_0_112 (.A1(step_in[5]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[5]), .C1(n_0_0_53), .C2(memory_data1[5]), 
      .ZN(n_0_0_41));
   INV_X1 i_0_0_113 (.A(n_0_0_42), .ZN(step_reg_in[6]));
   AOI222_X1 i_0_0_114 (.A1(step_in[6]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[6]), .C1(n_0_0_53), .C2(memory_data1[6]), 
      .ZN(n_0_0_42));
   INV_X1 i_0_0_115 (.A(n_0_0_43), .ZN(step_reg_in[7]));
   AOI222_X1 i_0_0_116 (.A1(step_in[7]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[7]), .C1(n_0_0_53), .C2(memory_data1[7]), 
      .ZN(n_0_0_43));
   INV_X1 i_0_0_117 (.A(n_0_0_44), .ZN(step_reg_in[8]));
   AOI222_X1 i_0_0_118 (.A1(step_in[8]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[8]), .C1(n_0_0_53), .C2(memory_data1[8]), 
      .ZN(n_0_0_44));
   INV_X1 i_0_0_119 (.A(n_0_0_45), .ZN(step_reg_in[9]));
   AOI222_X1 i_0_0_120 (.A1(step_in[9]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[9]), .C1(n_0_0_53), .C2(memory_data1[9]), 
      .ZN(n_0_0_45));
   INV_X1 i_0_0_121 (.A(n_0_0_46), .ZN(step_reg_in[10]));
   AOI222_X1 i_0_0_122 (.A1(step_in[10]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[10]), .C1(n_0_0_53), .C2(memory_data1[10]), 
      .ZN(n_0_0_46));
   INV_X1 i_0_0_123 (.A(n_0_0_47), .ZN(step_reg_in[11]));
   AOI222_X1 i_0_0_124 (.A1(step_in[11]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[11]), .C1(n_0_0_53), .C2(memory_data1[11]), 
      .ZN(n_0_0_47));
   INV_X1 i_0_0_125 (.A(n_0_0_48), .ZN(step_reg_in[12]));
   AOI222_X1 i_0_0_126 (.A1(step_in[12]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[12]), .C1(n_0_0_53), .C2(memory_data1[12]), 
      .ZN(n_0_0_48));
   INV_X1 i_0_0_127 (.A(n_0_0_49), .ZN(step_reg_in[13]));
   AOI222_X1 i_0_0_128 (.A1(step_in[13]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[13]), .C1(n_0_0_53), .C2(memory_data1[13]), 
      .ZN(n_0_0_49));
   INV_X1 i_0_0_129 (.A(n_0_0_50), .ZN(step_reg_in[14]));
   AOI222_X1 i_0_0_130 (.A1(step_in[14]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[14]), .C1(n_0_0_53), .C2(memory_data1[14]), 
      .ZN(n_0_0_50));
   INV_X1 i_0_0_131 (.A(n_0_0_51), .ZN(step_reg_in[15]));
   AOI222_X1 i_0_0_132 (.A1(step_in[15]), .A2(step_inputs_selector[1]), .B1(
      n_0_0_52), .B2(divider_out[15]), .C1(n_0_0_53), .C2(memory_data1[15]), 
      .ZN(n_0_0_51));
   NOR2_X1 i_0_0_101 (.A1(n_0_0_63), .A2(step_inputs_selector[1]), .ZN(n_0_0_52));
   NOR2_X1 i_0_0_102 (.A1(step_inputs_selector[1]), .A2(step_inputs_selector[0]), 
      .ZN(n_0_0_53));
   OR2_X1 i_0_0_135 (.A1(read_step), .A2(step_load), .ZN(n_0_0));
   INV_X1 i_0_0_176 (.A(adder_is_add), .ZN(n_0_1));
   INV_X1 i_0_0_133 (.A(adder_inputs_selector[0]), .ZN(n_0_0_61));
   INV_X1 i_0_0_134 (.A(multiplier_inputs_selector[1]), .ZN(n_0_0_62));
   INV_X1 i_0_0_136 (.A(step_inputs_selector[0]), .ZN(n_0_0_63));
   INV_X1 i_0_0_182 (.A(n_0_0_34), .ZN(n_0_0_66));
   NAND2_X1 i_0_0_137 (.A1(n_0_0_54), .A2(n_0_0_58), .ZN(address2[0]));
   INV_X1 i_0_0_138 (.A(x1_address[0]), .ZN(n_0_0_54));
   AOI21_X1 i_0_0_139 (.A(n_0_0_59), .B1(n_0_0_35), .B2(
      address_inputs_selector[1]), .ZN(address1[1]));
   INV_X1 i_0_0_140 (.A(x0_address[1]), .ZN(n_0_0_35));
   INV_X1 i_0_0_141 (.A(n_0_0_55), .ZN(multiplier_operand1[10]));
   OAI22_X1 i_0_0_142 (.A1(dividend[10]), .A2(n_0_0_57), .B1(step_out[10]), 
      .B2(n_0_0_56), .ZN(n_0_0_55));
   INV_X1 i_0_0_143 (.A(n_0_0_57), .ZN(n_0_0_56));
   NOR2_X1 i_0_0_144 (.A1(multiplier_inputs_selector[1]), .A2(
      multiplier_inputs_selector[0]), .ZN(n_0_0_57));
   AND2_X1 i_0_0_145 (.A1(x1_address[1]), .A2(n_0_0_58), .ZN(address2[1]));
   INV_X1 i_0_0_146 (.A(n_0_0_59), .ZN(n_0_0_58));
   NOR2_X1 i_0_0_147 (.A1(address_inputs_selector[1]), .A2(
      address_inputs_selector[0]), .ZN(n_0_0_59));
   AND2_X1 i_0_0_148 (.A1(x1_address[2]), .A2(n_0_0_58), .ZN(address2[2]));
   AND2_X1 i_0_0_149 (.A1(x1_address[3]), .A2(n_0_0_58), .ZN(address2[3]));
   AND2_X1 i_0_0_150 (.A1(x1_address[4]), .A2(n_0_0_58), .ZN(address2[4]));
   AND2_X1 i_0_0_151 (.A1(x1_address[5]), .A2(n_0_0_58), .ZN(address2[5]));
   AND2_X1 i_0_0_152 (.A1(x1_address[6]), .A2(n_0_0_58), .ZN(address2[6]));
   AND2_X1 i_0_0_153 (.A1(x1_address[7]), .A2(n_0_0_58), .ZN(address2[7]));
   AND2_X1 i_0_0_154 (.A1(x1_address[8]), .A2(n_0_0_58), .ZN(address2[8]));
   AND2_X1 i_0_0_155 (.A1(x1_address[9]), .A2(n_0_0_58), .ZN(address2[9]));
   AND2_X1 i_0_0_156 (.A1(x1_address[10]), .A2(n_0_0_58), .ZN(address2[10]));
   AND2_X1 i_0_0_157 (.A1(x1_address[11]), .A2(n_0_0_58), .ZN(address2[11]));
   AND2_X1 i_0_0_158 (.A1(x1_address[12]), .A2(n_0_0_58), .ZN(address2[12]));
   AND2_X1 i_0_0_159 (.A1(x1_address[13]), .A2(n_0_0_58), .ZN(address2[13]));
   AND2_X1 i_0_0_160 (.A1(x1_address[14]), .A2(n_0_0_58), .ZN(address2[14]));
   AND2_X1 i_0_0_161 (.A1(x1_address[15]), .A2(n_0_0_58), .ZN(address2[15]));
   AND2_X1 i_0_0_162 (.A1(x0_address[0]), .A2(address_inputs_selector[1]), 
      .ZN(address1[0]));
   AND2_X1 i_0_0_163 (.A1(x0_address[2]), .A2(address_inputs_selector[1]), 
      .ZN(address1[2]));
   AND2_X1 i_0_0_164 (.A1(x0_address[3]), .A2(address_inputs_selector[1]), 
      .ZN(address1[3]));
   AND2_X1 i_0_0_165 (.A1(x0_address[4]), .A2(address_inputs_selector[1]), 
      .ZN(address1[4]));
   AND2_X1 i_0_0_166 (.A1(x0_address[5]), .A2(address_inputs_selector[1]), 
      .ZN(address1[5]));
   AND2_X1 i_0_0_167 (.A1(x0_address[6]), .A2(address_inputs_selector[1]), 
      .ZN(address1[6]));
   AND2_X1 i_0_0_168 (.A1(x0_address[7]), .A2(address_inputs_selector[1]), 
      .ZN(address1[7]));
   AND2_X1 i_0_0_169 (.A1(x0_address[8]), .A2(address_inputs_selector[1]), 
      .ZN(address1[8]));
   AND2_X1 i_0_0_170 (.A1(x0_address[9]), .A2(address_inputs_selector[1]), 
      .ZN(address1[9]));
   AND2_X1 i_0_0_171 (.A1(x0_address[10]), .A2(address_inputs_selector[1]), 
      .ZN(address1[10]));
   AND2_X1 i_0_0_172 (.A1(x0_address[11]), .A2(address_inputs_selector[1]), 
      .ZN(address1[11]));
   AND2_X1 i_0_0_173 (.A1(x0_address[12]), .A2(address_inputs_selector[1]), 
      .ZN(address1[12]));
   AND2_X1 i_0_0_174 (.A1(x0_address[13]), .A2(address_inputs_selector[1]), 
      .ZN(address1[13]));
   AND2_X1 i_0_0_175 (.A1(x0_address[14]), .A2(address_inputs_selector[1]), 
      .ZN(address1[14]));
   AND2_X1 i_0_0_177 (.A1(x0_address[15]), .A2(address_inputs_selector[1]), 
      .ZN(address1[15]));
   AND4_X1 i_0_0_178 (.A1(n_0_0_67), .A2(n_0_0_65), .A3(n_0_0_64), .A4(n_0_0_60), 
      .ZN(counter_zero));
   NOR4_X1 i_0_0_179 (.A1(loop_counter[7]), .A2(loop_counter[4]), .A3(
      loop_counter[2]), .A4(loop_counter[1]), .ZN(n_0_0_60));
   NOR4_X1 i_0_0_180 (.A1(loop_counter[14]), .A2(loop_counter[13]), .A3(
      loop_counter[11]), .A4(loop_counter[8]), .ZN(n_0_0_64));
   NOR4_X1 i_0_0_181 (.A1(loop_counter[6]), .A2(loop_counter[5]), .A3(
      loop_counter[3]), .A4(loop_counter[0]), .ZN(n_0_0_65));
   NOR4_X1 i_0_0_183 (.A1(loop_counter[15]), .A2(loop_counter[12]), .A3(
      loop_counter[10]), .A4(loop_counter[9]), .ZN(n_0_0_67));
endmodule
