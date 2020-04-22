/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Apr 22 03:18:49 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1917246743 */

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

module full_adder__0_473(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_469(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_474(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_473 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_469 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_464(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_460(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_465(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_464 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_460 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_475(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_474 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_465 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_493(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_489(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_494(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_493 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_489 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_484(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_480(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_485(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_484 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_480 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_495(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_494 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_485 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_513(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_509(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_514(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_513 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_509 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_504(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_500(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_505(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_504 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_500 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_515(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_514 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_505 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_533(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_529(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_534(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_533 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_529 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_524(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_520(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_525(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_524 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_520 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_535(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_534 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_525 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_553(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_549(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_554(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_553 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_549 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_544(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_540(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_545(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_544 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_540 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_555(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_554 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_545 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_573(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_569(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_574(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_573 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_569 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_564(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_560(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_565(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_564 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_560 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_575(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_574 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_565 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_593(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_589(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_594(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_593 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_589 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_584(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_580(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_585(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_584 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_580 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_595(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_594 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_585 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_613(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_609(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_614(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_613 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__0_609 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_604(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_600(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_605(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_604 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__0_600 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_615(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire intermediate_carry_1;
   wire [2:0]o_result_one_carry;
   wire intermediate_carry_0;
   wire [2:0]o_result_zero_carry;

   adder_block__0_614 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry(intermediate_carry_1));
   adder_block__0_605 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
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

module carry_select_adder(A, B, is_subtract, result, carry, overflow_flag, 
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

   which_adder__0_475 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({n_2, n_1}), 
      .cin(is_subtract), .o_result({cs, result[1], result[0]}), 
      .intermediate_carry());
   which_adder__0_495 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({n_4, n_3}), .cin(cs), .o_result({n_14, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_515 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({n_6, n_5}), .cin(n_14), .o_result({n_15, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_535 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({n_8, n_7}), .cin(n_15), .o_result({n_16, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_555 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({n_10, n_9}), .cin(n_16), .o_result({n_17, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_575 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({n_12, n_11}), .cin(n_17), .o_result({n_18, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_595 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({n_20, n_13}), .cin(n_18), .o_result({n_19, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_615 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
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

module NegEdgeDFF__0_253(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;
   wire n_0_1;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   INV_X1 i_0_1 (.A(n_0_0), .ZN(n_1));
   NAND2_X1 i_0_2 (.A1(D), .A2(n_0_1), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(rst), .ZN(n_0_1));
endmodule

module NegEdgeDFF__0_258(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_263(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;
   wire n_0_1;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   INV_X1 i_0_1 (.A(n_0_0), .ZN(n_1));
   NAND2_X1 i_0_2 (.A1(D), .A2(n_0_1), .ZN(n_0_0));
   INV_X1 i_0_3 (.A(rst), .ZN(n_0_1));
endmodule

module NegEdgeDFF__0_268(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_273(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_278(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_283(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_288(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_293(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_298(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_303(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_308(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_313(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_318(clk, rst, D, enable, Q);
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

module NegEdgeDFF__0_323(clk, rst, D, enable, Q);
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
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_36;
   wire n_0_39;
   wire n_0_37;
   wire n_0_40;
   wire n_0_41;
   wire n_0_43;
   wire n_0_44;
   wire n_0_19;
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
   wire n_0_38;
   wire n_0_42;
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

   NegEdgeDFF__0_253 generate_flipflops_15_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[15]), .enable(), .Q(count[15]));
   NegEdgeDFF__0_258 generate_flipflops_14_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[14]), .enable(), .Q(count[14]));
   NegEdgeDFF__0_263 generate_flipflops_13_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[13]), .enable(), .Q(count[13]));
   NegEdgeDFF__0_268 generate_flipflops_12_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[12]), .enable(), .Q(count[12]));
   NegEdgeDFF__0_273 generate_flipflops_11_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[11]), .enable(), .Q(count[11]));
   NegEdgeDFF__0_278 generate_flipflops_10_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[10]), .enable(), .Q(count[10]));
   NegEdgeDFF__0_283 generate_flipflops_9_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[9]), .enable(), .Q(count[9]));
   NegEdgeDFF__0_288 generate_flipflops_8_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[8]), .enable(), .Q(count[8]));
   NegEdgeDFF__0_293 generate_flipflops_7_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[7]), .enable(), .Q(count[7]));
   NegEdgeDFF__0_298 generate_flipflops_6_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[6]), .enable(), .Q(count[6]));
   NegEdgeDFF__0_303 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   NegEdgeDFF__0_308 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   NegEdgeDFF__0_313 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   NegEdgeDFF__0_318 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   NegEdgeDFF__0_323 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
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
   XOR2_X1 i_0_14 (.A(count[4]), .B(n_0_28), .Z(n_0_9));
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
   OAI21_X1 i_0_30 (.A(n_0_20), .B1(n_0_21), .B2(load), .ZN(FF_inputs[10]));
   NAND2_X1 i_0_31 (.A1(load_data[10]), .A2(load), .ZN(n_0_20));
   XOR2_X1 i_0_32 (.A(count[10]), .B(n_0_37), .Z(n_0_21));
   OAI21_X1 i_0_29 (.A(n_0_22), .B1(n_0_23), .B2(load), .ZN(FF_inputs[11]));
   NAND2_X1 i_0_33 (.A1(load_data[11]), .A2(load), .ZN(n_0_22));
   XNOR2_X1 i_0_34 (.A(count[11]), .B(n_0_36), .ZN(n_0_23));
   NOR2_X1 i_0_35 (.A1(n_0_37), .A2(count[10]), .ZN(n_0_36));
   NOR2_X1 i_0_36 (.A1(n_0_40), .A2(count[7]), .ZN(n_0_39));
   NAND2_X1 i_0_37 (.A1(n_0_24), .A2(n_0_45), .ZN(n_0_37));
   NAND3_X1 i_0_38 (.A1(n_0_27), .A2(n_0_32), .A3(n_0_26), .ZN(n_0_40));
   NAND2_X1 i_0_39 (.A1(n_0_27), .A2(n_0_32), .ZN(n_0_41));
   NAND3_X1 i_0_40 (.A1(count_enable), .A2(n_0_30), .A3(n_0_29), .ZN(n_0_43));
   NAND2_X1 i_0_41 (.A1(count_enable), .A2(n_0_30), .ZN(n_0_44));
   XNOR2_X1 i_0_42 (.A(count[9]), .B(n_0_24), .ZN(n_0_19));
   AND4_X1 i_0_43 (.A1(n_0_32), .A2(n_0_25), .A3(n_0_26), .A4(n_0_27), .ZN(
      n_0_24));
   NOR2_X1 i_0_44 (.A1(count[8]), .A2(count[7]), .ZN(n_0_25));
   NOR2_X1 i_0_45 (.A1(count[6]), .A2(count[5]), .ZN(n_0_26));
   INV_X1 i_0_46 (.A(n_0_28), .ZN(n_0_27));
   NAND4_X1 i_0_47 (.A1(n_0_31), .A2(count_enable), .A3(n_0_30), .A4(n_0_29), 
      .ZN(n_0_28));
   NOR2_X1 i_0_48 (.A1(count[2]), .A2(count[1]), .ZN(n_0_29));
   INV_X1 i_0_49 (.A(count[0]), .ZN(n_0_30));
   INV_X1 i_0_50 (.A(count[3]), .ZN(n_0_31));
   INV_X1 i_0_51 (.A(count[4]), .ZN(n_0_32));
   AOI21_X1 i_0_52 (.A(n_0_33), .B1(load), .B2(n_0_47), .ZN(FF_inputs[12]));
   NOR2_X1 i_0_53 (.A1(load), .A2(n_0_34), .ZN(n_0_33));
   OAI21_X1 i_0_54 (.A(n_0_35), .B1(n_0_46), .B2(n_0_38), .ZN(n_0_34));
   NAND2_X1 i_0_55 (.A1(n_0_46), .A2(n_0_38), .ZN(n_0_35));
   NOR4_X1 i_0_56 (.A1(count[11]), .A2(n_0_42), .A3(count[10]), .A4(count[9]), 
      .ZN(n_0_38));
   INV_X1 i_0_57 (.A(n_0_24), .ZN(n_0_42));
   INV_X1 i_0_58 (.A(count[9]), .ZN(n_0_45));
   INV_X1 i_0_59 (.A(count[12]), .ZN(n_0_46));
   INV_X1 i_0_60 (.A(load_data[12]), .ZN(n_0_47));
   INV_X1 i_0_61 (.A(n_0_48), .ZN(FF_inputs[13]));
   AOI21_X1 i_0_62 (.A(n_0_49), .B1(load), .B2(load_data[13]), .ZN(n_0_48));
   AOI221_X1 i_0_63 (.A(load), .B1(n_0_51), .B2(count[13]), .C1(n_0_35), 
      .C2(n_0_50), .ZN(n_0_49));
   INV_X1 i_0_64 (.A(count[13]), .ZN(n_0_50));
   INV_X1 i_0_65 (.A(n_0_35), .ZN(n_0_51));
   OAI21_X1 i_0_66 (.A(n_0_52), .B1(load), .B2(n_0_53), .ZN(FF_inputs[14]));
   NAND2_X1 i_0_67 (.A1(load), .A2(load_data[14]), .ZN(n_0_52));
   INV_X1 i_0_68 (.A(n_0_54), .ZN(n_0_53));
   OAI21_X1 i_0_69 (.A(n_0_55), .B1(n_0_57), .B2(n_0_56), .ZN(n_0_54));
   NAND3_X1 i_0_70 (.A1(n_0_51), .A2(n_0_50), .A3(n_0_57), .ZN(n_0_55));
   NOR2_X1 i_0_71 (.A1(n_0_35), .A2(count[13]), .ZN(n_0_56));
   INV_X1 i_0_72 (.A(count[14]), .ZN(n_0_57));
   AND3_X1 i_0_73 (.A1(n_0_57), .A2(n_0_56), .A3(count[15]), .ZN(n_0_58));
   INV_X1 i_0_74 (.A(count[15]), .ZN(n_0_59));
   AOI211_X1 i_0_75 (.A(load), .B(n_0_58), .C1(n_0_55), .C2(n_0_59), .ZN(n_0_60));
   AOI21_X1 i_0_76 (.A(n_0_60), .B1(load), .B2(load_data[15]), .ZN(n_0_61));
   INV_X1 i_0_77 (.A(n_0_61), .ZN(FF_inputs[15]));
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
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_33;
   wire n_0_39;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire n_0_48;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_28;
   wire n_0_29;
   wire n_0_49;
   wire n_0_50;
   wire n_0_51;
   wire n_0_52;

   DFF_X1 is_negative_reg (.D(adder_negative_flag), .CK(clk), .Q(is_negative), 
      .QN());
   CLKGATETST_X1 clk_gate_current_state_reg (.CK(clk), .E(n_6), .SE(1'b0), 
      .GCK(n_1));
   DFF_X1 \current_state_reg[4]  (.D(n_5), .CK(n_1), .Q(current_state[4]), .QN());
   DFF_X1 \current_state_reg[3]  (.D(n_4), .CK(n_1), .Q(current_state[3]), .QN());
   DFF_X1 \current_state_reg[2]  (.D(n_3), .CK(n_1), .Q(current_state[2]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_2), .CK(n_1), .Q(current_state[1]), .QN());
   DFF_X1 \current_state_reg[0]  (.D(n_0), .CK(n_1), .Q(current_state[0]), .QN());
   AOI21_X1 i_0_0 (.A(n_0_25), .B1(n_0_3), .B2(n_0_0), .ZN(n_0));
   AOI22_X1 i_0_1 (.A1(n_0_1), .A2(n_0_2), .B1(n_0_5), .B2(n_0_8), .ZN(n_0_0));
   AOI211_X1 i_0_2 (.A(n_0_13), .B(n_0_14), .C1(n_0_41), .C2(n_0_47), .ZN(n_0_1));
   OAI22_X1 i_0_3 (.A1(n_0_47), .A2(n_0_41), .B1(n_0_38), .B2(n_0_11), .ZN(n_0_2));
   NAND2_X1 i_0_4 (.A1(n_0_4), .A2(n_0_41), .ZN(n_0_3));
   AOI21_X1 i_0_5 (.A(n_0_33), .B1(adder_negative_flag), .B2(n_0_14), .ZN(n_0_4));
   AOI21_X1 i_0_6 (.A(n_0_30), .B1(n_0_11), .B2(n_0_47), .ZN(n_0_5));
   AOI21_X1 i_0_7 (.A(rst), .B1(n_0_6), .B2(n_0_26), .ZN(n_2));
   AOI21_X1 i_0_8 (.A(n_0_7), .B1(n_0_9), .B2(n_0_40), .ZN(n_0_6));
   AOI211_X1 i_0_9 (.A(n_0_30), .B(n_0_8), .C1(n_0_47), .C2(n_0_36), .ZN(n_0_7));
   AOI211_X1 i_0_10 (.A(n_0_13), .B(start), .C1(n_0_43), .C2(n_0_42), .ZN(n_0_8));
   OAI22_X1 i_0_11 (.A1(n_0_41), .A2(n_0_10), .B1(n_0_33), .B2(counter_zero), 
      .ZN(n_0_9));
   AOI21_X1 i_0_12 (.A(n_0_43), .B1(n_0_37), .B2(n_0_38), .ZN(n_0_10));
   NOR4_X1 i_0_13 (.A1(n_0_25), .A2(n_0_17), .A3(n_0_28), .A4(n_0_47), .ZN(n_3));
   NOR2_X1 i_0_18 (.A1(n_0_25), .A2(n_0_15), .ZN(n_4));
   AOI22_X1 i_0_19 (.A1(n_0_16), .A2(n_0_43), .B1(n_0_22), .B2(n_0_20), .ZN(
      n_0_15));
   XNOR2_X1 i_0_20 (.A(n_0_42), .B(n_0_17), .ZN(n_0_16));
   AND2_X1 i_0_21 (.A1(n_0_13), .A2(n_0_50), .ZN(n_0_17));
   AOI21_X1 i_0_22 (.A(rst), .B1(n_0_26), .B2(n_0_18), .ZN(n_5));
   AOI21_X1 i_0_14 (.A(n_0_19), .B1(n_0_22), .B2(n_0_21), .ZN(n_0_18));
   NOR2_X1 i_0_15 (.A1(n_0_33), .A2(n_0_51), .ZN(n_0_19));
   INV_X1 i_0_16 (.A(n_0_21), .ZN(n_0_20));
   OAI21_X1 i_0_17 (.A(start), .B1(n_0_14), .B2(n_0_12), .ZN(n_0_21));
   AOI21_X1 i_0_23 (.A(n_0_35), .B1(n_0_23), .B2(n_0_12), .ZN(n_0_22));
   NAND2_X1 i_0_24 (.A1(n_0_40), .A2(n_0_38), .ZN(n_0_23));
   NAND2_X1 i_0_29 (.A1(n_0_47), .A2(n_0_24), .ZN(n_6));
   AOI21_X1 i_0_30 (.A(n_0_25), .B1(n_0_51), .B2(n_0_37), .ZN(n_0_24));
   NAND2_X1 i_0_31 (.A1(n_0_39), .A2(n_0_26), .ZN(n_0_25));
   OAI21_X1 i_0_32 (.A(adder_overflow), .B1(result_load), .B2(n_0_48), .ZN(
      n_0_26));
   NOR2_X1 i_0_25 (.A1(step_load), .A2(step_inputs_selector[0]), .ZN(
      step_inputs_selector[1]));
   NOR3_X1 i_0_26 (.A1(n_0_35), .A2(n_0_14), .A3(n_0_12), .ZN(
      step_inputs_selector[0]));
   AOI21_X1 i_0_35 (.A(error_load), .B1(n_0_50), .B2(n_0_32), .ZN(
      adder_inputs_selector[1]));
   OR2_X1 i_0_36 (.A1(proceed), .A2(n_0_27), .ZN(done));
   AOI21_X1 i_0_37 (.A(n_0_30), .B1(n_0_31), .B2(n_0_35), .ZN(n_0_27));
   NOR4_X1 i_0_27 (.A1(n_0_33), .A2(is_negative), .A3(n_0_14), .A4(n_0_12), 
      .ZN(adder_is_add));
   OR2_X1 i_0_39 (.A1(address_load), .A2(n_0_48), .ZN(memory_read));
   OAI21_X1 i_0_40 (.A(address_inputs_selector[1]), .B1(n_0_31), .B2(n_0_34), 
      .ZN(address_load));
   NOR2_X1 i_0_28 (.A1(n_load), .A2(step_load), .ZN(address_inputs_selector[1]));
   NOR3_X1 i_0_33 (.A1(n_0_36), .A2(n_0_34), .A3(n_0_47), .ZN(step_load));
   OAI22_X1 i_0_43 (.A1(n_0_33), .A2(n_0_30), .B1(n_0_51), .B2(n_0_31), .ZN(
      result_load));
   NOR3_X1 i_0_34 (.A1(n_0_36), .A2(n_0_30), .A3(n_0_47), .ZN(n_load));
   NAND2_X1 i_0_38 (.A1(n_0_41), .A2(n_0_14), .ZN(n_0_30));
   NOR2_X1 i_0_49 (.A1(n_0_34), .A2(n_0_31), .ZN(error_clear));
   INV_X1 i_0_50 (.A(n_0_32), .ZN(n_0_31));
   NOR3_X1 i_0_51 (.A1(n_0_42), .A2(n_0_13), .A3(n_0_47), .ZN(n_0_32));
   NOR2_X1 i_0_41 (.A1(n_0_34), .A2(n_0_33), .ZN(proceed));
   NOR2_X1 i_0_42 (.A1(n_0_35), .A2(n_0_34), .ZN(error_failure));
   NAND2_X1 i_0_44 (.A1(n_0_40), .A2(n_0_12), .ZN(n_0_34));
   NAND2_X1 i_0_45 (.A1(n_0_47), .A2(n_0_37), .ZN(n_0_35));
   OR2_X1 i_0_46 (.A1(n_0_11), .A2(n_0_13), .ZN(n_0_36));
   NOR2_X1 i_0_47 (.A1(n_0_11), .A2(n_0_13), .ZN(n_0_37));
   INV_X1 i_0_48 (.A(init), .ZN(n_0_38));
   INV_X1 i_0_52 (.A(n_0_14), .ZN(n_0_40));
   INV_X1 i_0_54 (.A(n_0_12), .ZN(n_0_41));
   INV_X1 i_0_63 (.A(n_0_11), .ZN(n_0_42));
   NAND3_X1 i_0_55 (.A1(n_0_11), .A2(n_0_43), .A3(n_0_13), .ZN(n_0_33));
   INV_X1 i_0_53 (.A(rst), .ZN(n_0_39));
   INV_X1 i_0_56 (.A(n_0_47), .ZN(n_0_43));
   INV_X1 i_0_57 (.A(n_0_44), .ZN(error_load));
   NAND4_X1 i_0_58 (.A1(n_0_45), .A2(current_state[3]), .A3(current_state[2]), 
      .A4(n_0_46), .ZN(n_0_44));
   NOR2_X1 i_0_59 (.A1(current_state[1]), .A2(current_state[4]), .ZN(n_0_45));
   INV_X1 i_0_60 (.A(current_state[0]), .ZN(n_0_46));
   BUF_X1 rt_shieldBuf__1 (.A(current_state[4]), .Z(n_0_47));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(error_load), .Z(n_0_48));
   BUF_X1 rt_shieldBuf__1__1__1 (.A(current_state[3]), .Z(n_0_11));
   BUF_X1 rt_shieldBuf__1__1__2 (.A(current_state[1]), .Z(n_0_12));
   BUF_X1 rt_shieldBuf__1__1__3 (.A(current_state[2]), .Z(n_0_13));
   BUF_X1 rt_shieldBuf__1__1__4 (.A(current_state[0]), .Z(n_0_14));
   AOI21_X1 i_0_61 (.A(n_0_50), .B1(n_0_13), .B2(n_0_29), .ZN(n_0_28));
   OAI211_X1 i_0_62 (.A(n_0_11), .B(n_0_49), .C1(n_0_52), .C2(start), .ZN(n_0_29));
   OAI21_X1 i_0_64 (.A(n_0_52), .B1(n_0_14), .B2(counter_zero), .ZN(n_0_49));
   INV_X1 i_0_65 (.A(n_0_51), .ZN(n_0_50));
   NAND2_X1 i_0_66 (.A1(n_0_12), .A2(current_state[0]), .ZN(n_0_51));
   INV_X1 i_0_67 (.A(n_0_12), .ZN(n_0_52));
endmodule

module NegEdgeDFF__0_403(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_398(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_393(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_388(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_383(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_378(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_373(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_368(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_363(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_358(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_353(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_348(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_343(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_338(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_333(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   DFF_X1 Q_reg (.D(n_1), .CK(n_0), .Q(Q), .QN());
   INV_X1 i_0_0 (.A(clk), .ZN(n_0));
   INV_X1 i_0_1 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_2 (.A1(n_0_0), .A2(rst), .ZN(n_1));
endmodule

module NegEdgeDFF__0_328(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeCounter__0_421(clk, rst, load, count_enable, load_data, count);
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
   wire n_1_0;
   wire n_1_1;
   wire n_1_2;
   wire n_1_3;
   wire n_1_4;
   wire n_1_5;
   wire n_1_6;
   wire n_1_7;
   wire n_1_8;
   wire n_1_9;
   wire n_1_10;
   wire n_1_11;
   wire n_1_12;
   wire n_1_13;
   wire n_1_14;
   wire n_1_15;
   wire n_1_16;
   wire n_1_17;
   wire n_1_18;
   wire n_1_19;

   NegEdgeDFF__0_403 generate_flipflops_15_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[15]), .enable(), .Q(count[15]));
   NegEdgeDFF__0_398 generate_flipflops_14_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[14]), .enable(), .Q(count[14]));
   NegEdgeDFF__0_393 generate_flipflops_13_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[13]), .enable(), .Q(count[13]));
   NegEdgeDFF__0_388 generate_flipflops_12_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[12]), .enable(), .Q(count[12]));
   NegEdgeDFF__0_383 generate_flipflops_11_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[11]), .enable(), .Q(count[11]));
   NegEdgeDFF__0_378 generate_flipflops_10_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[10]), .enable(), .Q(count[10]));
   NegEdgeDFF__0_373 generate_flipflops_9_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[9]), .enable(), .Q(count[9]));
   NegEdgeDFF__0_368 generate_flipflops_8_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[8]), .enable(), .Q(count[8]));
   NegEdgeDFF__0_363 generate_flipflops_7_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[7]), .enable(), .Q(count[7]));
   NegEdgeDFF__0_358 generate_flipflops_6_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[6]), .enable(), .Q(count[6]));
   NegEdgeDFF__0_353 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   NegEdgeDFF__0_348 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   NegEdgeDFF__0_343 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   NegEdgeDFF__0_338 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   NegEdgeDFF__0_333 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   NegEdgeDFF__0_328 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   NAND2_X1 i_0_0 (.A1(n_0_1), .A2(n_0_0), .ZN(FF_inputs[0]));
   NAND2_X1 i_0_1 (.A1(n_0_31), .A2(n_0), .ZN(n_0_0));
   NAND2_X1 i_0_2 (.A1(load_data[0]), .A2(load), .ZN(n_0_1));
   NAND2_X1 i_0_3 (.A1(n_0_3), .A2(n_0_2), .ZN(FF_inputs[1]));
   NAND2_X1 i_0_4 (.A1(n_0_31), .A2(n_6), .ZN(n_0_2));
   NAND2_X1 i_0_5 (.A1(load_data[1]), .A2(load), .ZN(n_0_3));
   NAND2_X1 i_0_6 (.A1(n_0_5), .A2(n_0_4), .ZN(FF_inputs[2]));
   NAND2_X1 i_0_7 (.A1(n_0_31), .A2(n_7), .ZN(n_0_4));
   NAND2_X1 i_0_8 (.A1(load_data[2]), .A2(load), .ZN(n_0_5));
   NAND2_X1 i_0_9 (.A1(n_0_7), .A2(n_0_6), .ZN(FF_inputs[3]));
   NAND2_X1 i_0_10 (.A1(n_0_31), .A2(n_8), .ZN(n_0_6));
   NAND2_X1 i_0_11 (.A1(load_data[3]), .A2(load), .ZN(n_0_7));
   NAND2_X1 i_0_12 (.A1(n_0_9), .A2(n_0_8), .ZN(FF_inputs[4]));
   NAND2_X1 i_0_13 (.A1(n_0_31), .A2(n_1), .ZN(n_0_8));
   NAND2_X1 i_0_14 (.A1(load_data[4]), .A2(load), .ZN(n_0_9));
   NAND2_X1 i_0_15 (.A1(n_0_11), .A2(n_0_10), .ZN(FF_inputs[5]));
   NAND2_X1 i_0_16 (.A1(n_0_31), .A2(n_9), .ZN(n_0_10));
   NAND2_X1 i_0_17 (.A1(load_data[5]), .A2(load), .ZN(n_0_11));
   NAND2_X1 i_0_18 (.A1(n_0_13), .A2(n_0_12), .ZN(FF_inputs[6]));
   NAND2_X1 i_0_19 (.A1(n_0_31), .A2(n_10), .ZN(n_0_12));
   NAND2_X1 i_0_20 (.A1(load_data[6]), .A2(load), .ZN(n_0_13));
   NAND2_X1 i_0_21 (.A1(n_0_15), .A2(n_0_14), .ZN(FF_inputs[7]));
   NAND2_X1 i_0_22 (.A1(n_2), .A2(n_0_31), .ZN(n_0_14));
   NAND2_X1 i_0_23 (.A1(load_data[7]), .A2(load), .ZN(n_0_15));
   NAND2_X1 i_0_24 (.A1(n_0_17), .A2(n_0_16), .ZN(FF_inputs[8]));
   NAND2_X1 i_0_25 (.A1(n_11), .A2(n_0_31), .ZN(n_0_16));
   NAND2_X1 i_0_26 (.A1(load_data[8]), .A2(load), .ZN(n_0_17));
   NAND2_X1 i_0_27 (.A1(n_0_19), .A2(n_0_18), .ZN(FF_inputs[9]));
   NAND2_X1 i_0_28 (.A1(n_12), .A2(n_0_31), .ZN(n_0_18));
   NAND2_X1 i_0_29 (.A1(load_data[9]), .A2(load), .ZN(n_0_19));
   NAND2_X1 i_0_30 (.A1(n_0_21), .A2(n_0_20), .ZN(FF_inputs[10]));
   NAND2_X1 i_0_31 (.A1(n_3), .A2(n_0_31), .ZN(n_0_20));
   NAND2_X1 i_0_32 (.A1(load_data[10]), .A2(load), .ZN(n_0_21));
   NAND2_X1 i_0_33 (.A1(n_0_23), .A2(n_0_22), .ZN(FF_inputs[11]));
   NAND2_X1 i_0_34 (.A1(n_13), .A2(n_0_31), .ZN(n_0_22));
   NAND2_X1 i_0_35 (.A1(load_data[11]), .A2(load), .ZN(n_0_23));
   NAND2_X1 i_0_36 (.A1(n_0_25), .A2(n_0_24), .ZN(FF_inputs[12]));
   NAND2_X1 i_0_37 (.A1(n_4), .A2(n_0_31), .ZN(n_0_24));
   NAND2_X1 i_0_38 (.A1(load_data[12]), .A2(load), .ZN(n_0_25));
   NAND2_X1 i_0_39 (.A1(n_0_27), .A2(n_0_26), .ZN(FF_inputs[13]));
   NAND2_X1 i_0_40 (.A1(n_5), .A2(n_0_31), .ZN(n_0_26));
   NAND2_X1 i_0_41 (.A1(load_data[13]), .A2(load), .ZN(n_0_27));
   NAND2_X1 i_0_42 (.A1(n_0_29), .A2(n_0_28), .ZN(FF_inputs[14]));
   NAND2_X1 i_0_43 (.A1(n_0_31), .A2(n_14), .ZN(n_0_28));
   NAND2_X1 i_0_44 (.A1(load_data[14]), .A2(load), .ZN(n_0_29));
   NAND2_X1 i_0_45 (.A1(n_0_32), .A2(n_0_30), .ZN(FF_inputs[15]));
   NAND2_X1 i_0_46 (.A1(n_0_31), .A2(n_15), .ZN(n_0_30));
   INV_X1 i_0_47 (.A(load), .ZN(n_0_31));
   NAND2_X1 i_0_48 (.A1(load_data[15]), .A2(load), .ZN(n_0_32));
   XOR2_X1 i_1_15 (.A(count_enable), .B(count[0]), .Z(n_0));
   XOR2_X1 i_1_19 (.A(n_1_4), .B(count[4]), .Z(n_1));
   XOR2_X1 i_1_22 (.A(n_1_7), .B(count[7]), .Z(n_2));
   XOR2_X1 i_1_25 (.A(n_1_10), .B(count[10]), .Z(n_3));
   XOR2_X1 i_1_27 (.A(n_1_15), .B(count[12]), .Z(n_4));
   XNOR2_X1 i_1_13 (.A(n_1_14), .B(count[13]), .ZN(n_5));
   XOR2_X1 i_1_0 (.A(count[1]), .B(n_1_0), .Z(n_6));
   AND2_X1 i_1_1 (.A1(count_enable), .A2(count[0]), .ZN(n_1_0));
   XNOR2_X1 i_1_2 (.A(count[2]), .B(n_1_1), .ZN(n_7));
   NAND2_X1 i_1_3 (.A1(n_1_0), .A2(count[1]), .ZN(n_1_1));
   XOR2_X1 i_1_4 (.A(count[3]), .B(n_1_2), .Z(n_8));
   AND4_X1 i_1_5 (.A1(count_enable), .A2(count[2]), .A3(count[1]), .A4(count[0]), 
      .ZN(n_1_2));
   XNOR2_X1 i_1_6 (.A(count[5]), .B(n_1_3), .ZN(n_9));
   NAND2_X1 i_1_7 (.A1(count[4]), .A2(n_1_4), .ZN(n_1_3));
   AND2_X1 i_1_8 (.A1(n_1_2), .A2(count[3]), .ZN(n_1_4));
   XOR2_X1 i_1_9 (.A(count[6]), .B(n_1_5), .Z(n_10));
   AND4_X1 i_1_10 (.A1(n_1_2), .A2(count[5]), .A3(count[4]), .A4(count[3]), 
      .ZN(n_1_5));
   XNOR2_X1 i_1_11 (.A(count[8]), .B(n_1_6), .ZN(n_11));
   NAND2_X1 i_1_12 (.A1(count[7]), .A2(n_1_7), .ZN(n_1_6));
   AND2_X1 i_1_14 (.A1(n_1_5), .A2(count[6]), .ZN(n_1_7));
   XOR2_X1 i_1_16 (.A(count[9]), .B(n_1_8), .Z(n_12));
   AND4_X1 i_1_17 (.A1(n_1_5), .A2(count[8]), .A3(count[7]), .A4(count[6]), 
      .ZN(n_1_8));
   XNOR2_X1 i_1_18 (.A(count[11]), .B(n_1_9), .ZN(n_13));
   NAND2_X1 i_1_20 (.A1(count[10]), .A2(n_1_10), .ZN(n_1_9));
   AND2_X1 i_1_21 (.A1(n_1_8), .A2(count[9]), .ZN(n_1_10));
   INV_X1 i_1_23 (.A(n_1_11), .ZN(n_14));
   OAI21_X1 i_1_24 (.A(n_1_12), .B1(count[14]), .B2(n_1_13), .ZN(n_1_11));
   NAND2_X1 i_1_26 (.A1(count[14]), .A2(n_1_13), .ZN(n_1_12));
   AND3_X1 i_1_28 (.A1(count[12]), .A2(n_1_15), .A3(count[13]), .ZN(n_1_13));
   NAND2_X1 i_1_29 (.A1(count[12]), .A2(n_1_15), .ZN(n_1_14));
   INV_X1 i_1_30 (.A(n_1_16), .ZN(n_1_15));
   NAND4_X1 i_1_31 (.A1(count[11]), .A2(n_1_8), .A3(count[10]), .A4(count[9]), 
      .ZN(n_1_16));
   OAI22_X1 i_1_32 (.A1(n_1_19), .A2(n_1_17), .B1(count[15]), .B2(n_1_12), 
      .ZN(n_15));
   AND4_X1 i_1_33 (.A1(count[12]), .A2(n_1_18), .A3(count[14]), .A4(count[13]), 
      .ZN(n_1_17));
   INV_X1 i_1_34 (.A(n_1_16), .ZN(n_1_18));
   INV_X1 i_1_35 (.A(count[15]), .ZN(n_1_19));
endmodule

module NegEdgeDFF__0_173(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_178(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_183(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_188(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_193(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_198(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_203(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_208(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_213(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_218(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_223(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_228(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_233(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_238(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_243(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_0_0;

   INV_X1 i_0_0 (.A(D), .ZN(n_0_0));
   NOR2_X1 i_0_1 (.A1(n_0_0), .A2(rst), .ZN(n_0));
   INV_X1 i_1_0 (.A(clk), .ZN(n_1));
   DFF_X1 Q_reg (.D(n_0), .CK(n_1), .Q(Q), .QN());
endmodule

module NegEdgeDFF__0_248(clk, rst, D, enable, Q);
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
   wire n_1_0;
   wire n_1_1;
   wire n_1_2;
   wire n_1_3;
   wire n_1_4;
   wire n_1_5;
   wire n_1_6;
   wire n_1_7;
   wire n_1_8;
   wire n_1_9;
   wire n_1_10;
   wire n_1_11;
   wire n_1_12;
   wire n_1_13;
   wire n_1_14;
   wire n_1_15;
   wire n_1_16;
   wire n_1_17;
   wire n_1_18;
   wire n_1_19;

   NegEdgeDFF__0_173 generate_flipflops_15_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[15]), .enable(), .Q(count[15]));
   NegEdgeDFF__0_178 generate_flipflops_14_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[14]), .enable(), .Q(count[14]));
   NegEdgeDFF__0_183 generate_flipflops_13_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[13]), .enable(), .Q(count[13]));
   NegEdgeDFF__0_188 generate_flipflops_12_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[12]), .enable(), .Q(count[12]));
   NegEdgeDFF__0_193 generate_flipflops_11_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[11]), .enable(), .Q(count[11]));
   NegEdgeDFF__0_198 generate_flipflops_10_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[10]), .enable(), .Q(count[10]));
   NegEdgeDFF__0_203 generate_flipflops_9_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[9]), .enable(), .Q(count[9]));
   NegEdgeDFF__0_208 generate_flipflops_8_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[8]), .enable(), .Q(count[8]));
   NegEdgeDFF__0_213 generate_flipflops_7_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[7]), .enable(), .Q(count[7]));
   NegEdgeDFF__0_218 generate_flipflops_6_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[6]), .enable(), .Q(count[6]));
   NegEdgeDFF__0_223 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   NegEdgeDFF__0_228 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   NegEdgeDFF__0_233 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   NegEdgeDFF__0_238 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   NegEdgeDFF__0_243 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   NegEdgeDFF__0_248 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   OAI21_X1 i_0_0 (.A(n_0_0), .B1(n_0_1), .B2(n_0_31), .ZN(FF_inputs[0]));
   NAND2_X1 i_0_1 (.A1(n_0_31), .A2(n_0), .ZN(n_0_0));
   INV_X1 i_0_2 (.A(load_data[0]), .ZN(n_0_1));
   NAND2_X1 i_0_3 (.A1(n_0_3), .A2(n_0_2), .ZN(FF_inputs[1]));
   NAND2_X1 i_0_4 (.A1(n_0_31), .A2(n_6), .ZN(n_0_2));
   NAND2_X1 i_0_5 (.A1(load_data[1]), .A2(load), .ZN(n_0_3));
   NAND2_X1 i_0_6 (.A1(n_0_5), .A2(n_0_4), .ZN(FF_inputs[2]));
   NAND2_X1 i_0_7 (.A1(n_0_31), .A2(n_7), .ZN(n_0_4));
   NAND2_X1 i_0_8 (.A1(load_data[2]), .A2(load), .ZN(n_0_5));
   NAND2_X1 i_0_9 (.A1(n_0_7), .A2(n_0_6), .ZN(FF_inputs[3]));
   NAND2_X1 i_0_10 (.A1(n_0_31), .A2(n_8), .ZN(n_0_6));
   NAND2_X1 i_0_11 (.A1(load_data[3]), .A2(load), .ZN(n_0_7));
   NAND2_X1 i_0_12 (.A1(n_0_9), .A2(n_0_8), .ZN(FF_inputs[4]));
   NAND2_X1 i_0_13 (.A1(n_0_31), .A2(n_1), .ZN(n_0_8));
   NAND2_X1 i_0_14 (.A1(load_data[4]), .A2(load), .ZN(n_0_9));
   NAND2_X1 i_0_15 (.A1(n_0_11), .A2(n_0_10), .ZN(FF_inputs[5]));
   NAND2_X1 i_0_16 (.A1(n_0_31), .A2(n_9), .ZN(n_0_10));
   NAND2_X1 i_0_17 (.A1(load_data[5]), .A2(load), .ZN(n_0_11));
   NAND2_X1 i_0_18 (.A1(n_0_13), .A2(n_0_12), .ZN(FF_inputs[6]));
   NAND2_X1 i_0_19 (.A1(n_0_31), .A2(n_10), .ZN(n_0_12));
   NAND2_X1 i_0_20 (.A1(load_data[6]), .A2(load), .ZN(n_0_13));
   NAND2_X1 i_0_21 (.A1(n_0_15), .A2(n_0_14), .ZN(FF_inputs[7]));
   NAND2_X1 i_0_22 (.A1(n_0_31), .A2(n_2), .ZN(n_0_14));
   NAND2_X1 i_0_23 (.A1(load_data[7]), .A2(load), .ZN(n_0_15));
   NAND2_X1 i_0_24 (.A1(n_0_17), .A2(n_0_16), .ZN(FF_inputs[8]));
   NAND2_X1 i_0_25 (.A1(n_11), .A2(n_0_31), .ZN(n_0_16));
   NAND2_X1 i_0_26 (.A1(load_data[8]), .A2(load), .ZN(n_0_17));
   NAND2_X1 i_0_27 (.A1(n_0_19), .A2(n_0_18), .ZN(FF_inputs[9]));
   NAND2_X1 i_0_28 (.A1(n_12), .A2(n_0_31), .ZN(n_0_18));
   NAND2_X1 i_0_29 (.A1(load_data[9]), .A2(load), .ZN(n_0_19));
   NAND2_X1 i_0_30 (.A1(n_0_21), .A2(n_0_20), .ZN(FF_inputs[10]));
   NAND2_X1 i_0_31 (.A1(n_3), .A2(n_0_31), .ZN(n_0_20));
   NAND2_X1 i_0_32 (.A1(load_data[10]), .A2(load), .ZN(n_0_21));
   NAND2_X1 i_0_33 (.A1(n_0_23), .A2(n_0_22), .ZN(FF_inputs[11]));
   NAND2_X1 i_0_34 (.A1(n_13), .A2(n_0_31), .ZN(n_0_22));
   NAND2_X1 i_0_35 (.A1(load_data[11]), .A2(load), .ZN(n_0_23));
   NAND2_X1 i_0_36 (.A1(n_0_25), .A2(n_0_24), .ZN(FF_inputs[12]));
   NAND2_X1 i_0_37 (.A1(n_4), .A2(n_0_31), .ZN(n_0_24));
   NAND2_X1 i_0_38 (.A1(load_data[12]), .A2(load), .ZN(n_0_25));
   NAND2_X1 i_0_39 (.A1(n_0_27), .A2(n_0_26), .ZN(FF_inputs[13]));
   NAND2_X1 i_0_40 (.A1(n_5), .A2(n_0_31), .ZN(n_0_26));
   NAND2_X1 i_0_41 (.A1(load_data[13]), .A2(load), .ZN(n_0_27));
   NAND2_X1 i_0_42 (.A1(n_0_29), .A2(n_0_28), .ZN(FF_inputs[14]));
   NAND2_X1 i_0_43 (.A1(n_0_31), .A2(n_14), .ZN(n_0_28));
   NAND2_X1 i_0_44 (.A1(load_data[14]), .A2(load), .ZN(n_0_29));
   NAND2_X1 i_0_45 (.A1(n_0_32), .A2(n_0_30), .ZN(FF_inputs[15]));
   NAND2_X1 i_0_46 (.A1(n_0_31), .A2(n_15), .ZN(n_0_30));
   INV_X1 i_0_47 (.A(load), .ZN(n_0_31));
   NAND2_X1 i_0_48 (.A1(load_data[15]), .A2(load), .ZN(n_0_32));
   XOR2_X1 i_1_15 (.A(count_enable), .B(count[0]), .Z(n_0));
   XOR2_X1 i_1_0 (.A(n_1_4), .B(count[4]), .Z(n_1));
   XOR2_X1 i_1_22 (.A(n_1_7), .B(count[7]), .Z(n_2));
   XOR2_X1 i_1_25 (.A(n_1_10), .B(count[10]), .Z(n_3));
   XOR2_X1 i_1_1 (.A(n_1_15), .B(count[12]), .Z(n_4));
   XNOR2_X1 i_1_2 (.A(n_1_14), .B(count[13]), .ZN(n_5));
   XOR2_X1 i_1_3 (.A(count[1]), .B(n_1_0), .Z(n_6));
   AND2_X1 i_1_4 (.A1(count_enable), .A2(count[0]), .ZN(n_1_0));
   XNOR2_X1 i_1_5 (.A(count[2]), .B(n_1_1), .ZN(n_7));
   NAND2_X1 i_1_6 (.A1(n_1_0), .A2(count[1]), .ZN(n_1_1));
   XOR2_X1 i_1_7 (.A(count[3]), .B(n_1_2), .Z(n_8));
   AND4_X1 i_1_8 (.A1(count_enable), .A2(count[2]), .A3(count[1]), .A4(count[0]), 
      .ZN(n_1_2));
   XNOR2_X1 i_1_9 (.A(count[5]), .B(n_1_3), .ZN(n_9));
   NAND2_X1 i_1_10 (.A1(count[4]), .A2(n_1_4), .ZN(n_1_3));
   AND2_X1 i_1_11 (.A1(n_1_2), .A2(count[3]), .ZN(n_1_4));
   XOR2_X1 i_1_12 (.A(count[6]), .B(n_1_5), .Z(n_10));
   AND4_X1 i_1_13 (.A1(n_1_2), .A2(count[5]), .A3(count[4]), .A4(count[3]), 
      .ZN(n_1_5));
   XNOR2_X1 i_1_14 (.A(count[8]), .B(n_1_6), .ZN(n_11));
   NAND2_X1 i_1_16 (.A1(count[7]), .A2(n_1_7), .ZN(n_1_6));
   AND2_X1 i_1_17 (.A1(n_1_5), .A2(count[6]), .ZN(n_1_7));
   XOR2_X1 i_1_18 (.A(count[9]), .B(n_1_8), .Z(n_12));
   AND4_X1 i_1_19 (.A1(n_1_5), .A2(count[8]), .A3(count[7]), .A4(count[6]), 
      .ZN(n_1_8));
   XNOR2_X1 i_1_20 (.A(count[11]), .B(n_1_9), .ZN(n_13));
   NAND2_X1 i_1_21 (.A1(count[10]), .A2(n_1_10), .ZN(n_1_9));
   AND2_X1 i_1_23 (.A1(n_1_8), .A2(count[9]), .ZN(n_1_10));
   INV_X1 i_1_24 (.A(n_1_11), .ZN(n_14));
   OAI21_X1 i_1_26 (.A(n_1_12), .B1(count[14]), .B2(n_1_13), .ZN(n_1_11));
   NAND2_X1 i_1_27 (.A1(count[14]), .A2(n_1_13), .ZN(n_1_12));
   AND3_X1 i_1_28 (.A1(count[12]), .A2(n_1_15), .A3(count[13]), .ZN(n_1_13));
   NAND2_X1 i_1_29 (.A1(count[12]), .A2(n_1_15), .ZN(n_1_14));
   INV_X1 i_1_30 (.A(n_1_16), .ZN(n_1_15));
   NAND4_X1 i_1_31 (.A1(count[11]), .A2(n_1_8), .A3(count[10]), .A4(count[9]), 
      .ZN(n_1_16));
   OAI22_X1 i_1_32 (.A1(n_1_19), .A2(n_1_17), .B1(count[15]), .B2(n_1_12), 
      .ZN(n_15));
   AND4_X1 i_1_33 (.A1(count[12]), .A2(n_1_18), .A3(count[14]), .A4(count[13]), 
      .ZN(n_1_17));
   INV_X1 i_1_34 (.A(n_1_16), .ZN(n_1_18));
   INV_X1 i_1_35 (.A(count[15]), .ZN(n_1_19));
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

   wire [15:0]x0_data;
   wire [15:0]x1_data;
   wire [15:0]tolerance;
   wire [15:0]result;
   wire adder_negative_flag;
   wire adder_overflow;
   wire [15:0]adder_out;
   wire [15:0]error;
   wire [15:0]n;
   wire [15:0]loop_counter;
   wire [1:0]step_inputs_selector;
   wire [1:0]address_inputs_selector;
   wire [1:0]adder_inputs_selector;
   wire result_load;
   wire address_load;
   wire loop_counter_load;
   wire adder_is_add;
   wire step_load;
   wire memory_read;
   wire tolerance_load;
   wire [15:0]address1;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire [15:0]address2;
   wire n_0_1_0;
   wire n_0_1_1;
   wire n_0_1_2;
   wire n_0_2_0;
   wire n_0_2_1;
   wire n_0_2_2;
   wire n_0_2_3;
   wire [15:0]adder_operand2;
   wire n_0_2_4;
   wire n_0_2_5;
   wire n_0_2_6;
   wire n_0_2_7;
   wire n_0_2_8;
   wire n_0_2_9;
   wire n_0_2_10;
   wire n_0_2_11;
   wire n_0_2_12;
   wire n_0_2_13;
   wire n_0_2_14;
   wire n_0_2_15;
   wire n_0_2_16;
   wire n_0_2_17;
   wire n_0_2_18;
   wire n_0_1;
   wire n_0_3_0;
   wire n_0_3_1;
   wire n_0_3_2;
   wire [15:0]adder_operand1;
   wire n_0_3_3;
   wire n_0_3_4;
   wire n_0_3_5;
   wire n_0_3_6;
   wire n_0_3_7;
   wire n_0_3_8;
   wire n_0_3_9;
   wire n_0_3_10;
   wire n_0_3_11;
   wire n_0_3_12;
   wire n_0_3_13;
   wire n_0_3_14;
   wire n_0_3_15;
   wire n_0_3_16;
   wire n_0_3_17;
   wire n_0_3_18;
   wire n_0_3_19;
   wire [15:0]step_reg_in;
   wire n_0_3_20;
   wire n_0_3_21;
   wire n_0_3_22;
   wire n_0_3_23;
   wire n_0_3_24;
   wire n_0_3_25;
   wire n_0_3_26;
   wire n_0_3_27;
   wire n_0_3_28;
   wire n_0_3_29;
   wire n_0_3_30;
   wire n_0_3_31;
   wire n_0_3_32;
   wire n_0_3_33;
   wire n_0_3_34;
   wire n_0_2;
   wire n_0_3_35;
   wire n_0_3_36;
   wire n_0_3_37;
   wire n_0_3_38;
   wire counter_zero;
   wire n_0_0;

   Register__0_427 data1_reg (.clk(clk), .rst(rst), .load(memory_read), .data_in(
      memory_data1), .data_out(x0_data));
   Register__0_430 data2_reg (.clk(clk), .rst(rst), .load(memory_read), .data_in(
      memory_data2), .data_out(x1_data));
   Register__0_433 tolerance_reg (.clk(clk), .rst(rst), .load(tolerance_load), 
      .data_in(memory_data2), .data_out(tolerance));
   Register__0_436 result_reg (.clk(clk), .rst(rst), .load(result_load), 
      .data_in(adder_out), .data_out(result));
   carry_select_adder adder (.A(adder_operand1), .B(adder_operand2), 
      .is_subtract(n_0_0), .result(adder_out), .carry(), .overflow_flag(
      adder_overflow), .negative(adder_negative_flag));
   Register__0_439 error_reg (.clk(clk), .rst(n_0_1), .load(
      adder_inputs_selector[0]), .data_in(adder_out), .data_out(error));
   Register__0_442 step_reg (.clk(clk), .rst(rst), .load(n_0_2), .data_in(
      step_reg_in), .data_out(step_out));
   Register n_reg (.clk(clk), .rst(rst), .load(tolerance_load), .data_in(
      memory_data1), .data_out(n));
   NegEdgeCounter__parameterized0 loop_counter_reg (.clk(clk), .rst(rst), 
      .load(loop_counter_load), .count_enable(adder_inputs_selector[0]), 
      .load_data(n), .count(loop_counter));
   StepControlFSM controlFSM (.clk(clk), .rst(rst), .init(init), .start(start), 
      .multiplier_done(), .divider_done(), .adder_overflow(adder_overflow), 
      .multiplier_overflow(), .divider_overflow(), .adder_negative_flag(
      adder_negative_flag), .counter_zero(counter_zero), .error_load(
      adder_inputs_selector[0]), .n_load(tolerance_load), .tolerance_load(), 
      .memory_read(memory_read), .step_load(step_load), .adder_is_add(
      adder_is_add), .error_clear(loop_counter_load), .done(done), .proceed(
      proceed), .multiplier_start(), .divider_start(), .address_load(
      address_load), .loop_counter_load(), .decrement_counter(), 
      .increment_addresses(), .result_load(result_load), .error_failure(
      error_failure), .dividend_load(), .adder_inputs_selector({
      adder_inputs_selector[1], uc_0}), .multiplier_inputs_selector(), 
      .address_inputs_selector({address_inputs_selector[1], uc_1}), 
      .step_inputs_selector(step_inputs_selector));
   NegEdgeCounter__0_421 address1_reg (.clk(clk), .rst(rst), .load(address_load), 
      .count_enable(adder_inputs_selector[0]), .load_data(address1), .count(
      memory_address1));
   NegEdgeCounter address2_reg (.clk(clk), .rst(rst), .load(address_load), 
      .count_enable(adder_inputs_selector[0]), .load_data(address2), .count(
      memory_address2));
   NAND2_X1 i_0_0_0 (.A1(n_0_0_0), .A2(n_0_0_1), .ZN(address1[1]));
   NAND2_X1 i_0_0_1 (.A1(x0_address[1]), .A2(address_inputs_selector[1]), 
      .ZN(n_0_0_0));
   NAND2_X1 i_0_0_2 (.A1(n_0_0_2), .A2(step_load), .ZN(n_0_0_1));
   INV_X1 i_0_0_3 (.A(address_inputs_selector[1]), .ZN(n_0_0_2));
   AND2_X1 i_0_0_4 (.A1(x0_address[0]), .A2(address_inputs_selector[1]), 
      .ZN(address1[0]));
   AND2_X1 i_0_0_5 (.A1(x0_address[2]), .A2(address_inputs_selector[1]), 
      .ZN(address1[2]));
   AND2_X1 i_0_0_6 (.A1(x0_address[3]), .A2(address_inputs_selector[1]), 
      .ZN(address1[3]));
   AND2_X1 i_0_0_7 (.A1(x0_address[4]), .A2(address_inputs_selector[1]), 
      .ZN(address1[4]));
   AND2_X1 i_0_0_8 (.A1(x0_address[5]), .A2(address_inputs_selector[1]), 
      .ZN(address1[5]));
   AND2_X1 i_0_0_9 (.A1(x0_address[6]), .A2(address_inputs_selector[1]), 
      .ZN(address1[6]));
   AND2_X1 i_0_0_10 (.A1(x0_address[7]), .A2(address_inputs_selector[1]), 
      .ZN(address1[7]));
   AND2_X1 i_0_0_11 (.A1(x0_address[8]), .A2(address_inputs_selector[1]), 
      .ZN(address1[8]));
   AND2_X1 i_0_0_12 (.A1(x0_address[9]), .A2(address_inputs_selector[1]), 
      .ZN(address1[9]));
   AND2_X1 i_0_0_13 (.A1(x0_address[10]), .A2(address_inputs_selector[1]), 
      .ZN(address1[10]));
   AND2_X1 i_0_0_14 (.A1(x0_address[11]), .A2(address_inputs_selector[1]), 
      .ZN(address1[11]));
   AND2_X1 i_0_0_15 (.A1(x0_address[12]), .A2(address_inputs_selector[1]), 
      .ZN(address1[12]));
   AND2_X1 i_0_0_16 (.A1(x0_address[13]), .A2(address_inputs_selector[1]), 
      .ZN(address1[13]));
   AND2_X1 i_0_0_17 (.A1(x0_address[14]), .A2(address_inputs_selector[1]), 
      .ZN(address1[14]));
   AND2_X1 i_0_0_18 (.A1(x0_address[15]), .A2(address_inputs_selector[1]), 
      .ZN(address1[15]));
   NAND2_X1 i_0_1_0 (.A1(n_0_1_0), .A2(n_0_1_2), .ZN(address2[0]));
   INV_X1 i_0_1_1 (.A(x1_address[0]), .ZN(n_0_1_0));
   OR2_X1 i_0_1_2 (.A1(address_inputs_selector[1]), .A2(step_load), .ZN(n_0_1_1));
   AND2_X1 i_0_1_3 (.A1(x1_address[1]), .A2(n_0_1_1), .ZN(address2[1]));
   AND2_X1 i_0_1_4 (.A1(x1_address[2]), .A2(n_0_1_1), .ZN(address2[2]));
   AND2_X1 i_0_1_5 (.A1(x1_address[3]), .A2(n_0_1_1), .ZN(address2[3]));
   AND2_X1 i_0_1_6 (.A1(x1_address[4]), .A2(n_0_1_1), .ZN(address2[4]));
   AND2_X1 i_0_1_7 (.A1(x1_address[5]), .A2(n_0_1_1), .ZN(address2[5]));
   AND2_X1 i_0_1_8 (.A1(x1_address[6]), .A2(n_0_1_1), .ZN(address2[6]));
   AND2_X1 i_0_1_9 (.A1(x1_address[7]), .A2(n_0_1_1), .ZN(address2[7]));
   AND2_X1 i_0_1_10 (.A1(x1_address[8]), .A2(n_0_1_1), .ZN(address2[8]));
   AND2_X1 i_0_1_11 (.A1(x1_address[9]), .A2(n_0_1_1), .ZN(address2[9]));
   AND2_X1 i_0_1_12 (.A1(x1_address[10]), .A2(n_0_1_1), .ZN(address2[10]));
   AND2_X1 i_0_1_13 (.A1(x1_address[11]), .A2(n_0_1_1), .ZN(address2[11]));
   AND2_X1 i_0_1_14 (.A1(x1_address[12]), .A2(n_0_1_1), .ZN(address2[12]));
   AND2_X1 i_0_1_15 (.A1(x1_address[13]), .A2(n_0_1_1), .ZN(address2[13]));
   AND2_X1 i_0_1_16 (.A1(x1_address[14]), .A2(n_0_1_1), .ZN(address2[14]));
   AND2_X1 i_0_1_17 (.A1(x1_address[15]), .A2(n_0_1_1), .ZN(address2[15]));
   BUF_X1 i_0_1_18 (.A(n_0_1_1), .Z(n_0_1_2));
   INV_X1 i_0_2_0 (.A(adder_inputs_selector[0]), .ZN(n_0_2_0));
   NOR2_X1 i_0_2_1 (.A1(n_0_2_0), .A2(adder_inputs_selector[1]), .ZN(n_0_2_1));
   NOR2_X1 i_0_2_2 (.A1(adder_inputs_selector[1]), .A2(adder_inputs_selector[0]), 
      .ZN(n_0_2_2));
   AOI222_X1 i_0_2_3 (.A1(result[0]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(x1_data[0]), 
      .C1(adder_inputs_selector[1]), .C2(tolerance[0]), .ZN(n_0_2_3));
   INV_X1 i_0_2_4 (.A(n_0_2_3), .ZN(adder_operand2[0]));
   AOI222_X1 i_0_2_5 (.A1(result[1]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(x1_data[1]), 
      .C1(adder_inputs_selector[1]), .C2(tolerance[1]), .ZN(n_0_2_4));
   INV_X1 i_0_2_6 (.A(n_0_2_4), .ZN(adder_operand2[1]));
   AOI222_X1 i_0_2_7 (.A1(result[2]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(x1_data[2]), 
      .C1(adder_inputs_selector[1]), .C2(tolerance[2]), .ZN(n_0_2_5));
   INV_X1 i_0_2_8 (.A(n_0_2_5), .ZN(adder_operand2[2]));
   AOI222_X1 i_0_2_9 (.A1(result[3]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(x1_data[3]), 
      .C1(adder_inputs_selector[1]), .C2(tolerance[3]), .ZN(n_0_2_6));
   INV_X1 i_0_2_10 (.A(n_0_2_6), .ZN(adder_operand2[3]));
   AOI222_X1 i_0_2_11 (.A1(result[4]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[4]), .C1(adder_inputs_selector[1]), .C2(tolerance[4]), .ZN(n_0_2_7));
   INV_X1 i_0_2_12 (.A(n_0_2_7), .ZN(adder_operand2[4]));
   AOI222_X1 i_0_2_13 (.A1(result[5]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[5]), .C1(adder_inputs_selector[1]), .C2(tolerance[5]), .ZN(n_0_2_8));
   INV_X1 i_0_2_14 (.A(n_0_2_8), .ZN(adder_operand2[5]));
   AOI222_X1 i_0_2_15 (.A1(result[6]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[6]), .C1(adder_inputs_selector[1]), .C2(tolerance[6]), .ZN(n_0_2_9));
   INV_X1 i_0_2_16 (.A(n_0_2_9), .ZN(adder_operand2[6]));
   AOI222_X1 i_0_2_17 (.A1(result[7]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[7]), .C1(adder_inputs_selector[1]), .C2(tolerance[7]), .ZN(
      n_0_2_10));
   INV_X1 i_0_2_18 (.A(n_0_2_10), .ZN(adder_operand2[7]));
   AOI222_X1 i_0_2_19 (.A1(result[8]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[8]), .C1(adder_inputs_selector[1]), .C2(tolerance[8]), .ZN(
      n_0_2_11));
   INV_X1 i_0_2_20 (.A(n_0_2_11), .ZN(adder_operand2[8]));
   AOI222_X1 i_0_2_21 (.A1(result[9]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[9]), .C1(adder_inputs_selector[1]), .C2(tolerance[9]), .ZN(
      n_0_2_12));
   INV_X1 i_0_2_22 (.A(n_0_2_12), .ZN(adder_operand2[9]));
   AOI222_X1 i_0_2_23 (.A1(result[10]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[10]), .C1(adder_inputs_selector[1]), .C2(tolerance[10]), .ZN(
      n_0_2_13));
   INV_X1 i_0_2_24 (.A(n_0_2_13), .ZN(adder_operand2[10]));
   AOI222_X1 i_0_2_25 (.A1(result[11]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[11]), .C1(adder_inputs_selector[1]), .C2(tolerance[11]), .ZN(
      n_0_2_14));
   INV_X1 i_0_2_26 (.A(n_0_2_14), .ZN(adder_operand2[11]));
   AOI222_X1 i_0_2_27 (.A1(result[12]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[12]), .C1(adder_inputs_selector[1]), .C2(tolerance[12]), .ZN(
      n_0_2_15));
   INV_X1 i_0_2_28 (.A(n_0_2_15), .ZN(adder_operand2[12]));
   AOI222_X1 i_0_2_29 (.A1(result[13]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[13]), .C1(adder_inputs_selector[1]), .C2(tolerance[13]), .ZN(
      n_0_2_16));
   INV_X1 i_0_2_30 (.A(n_0_2_16), .ZN(adder_operand2[13]));
   AOI222_X1 i_0_2_31 (.A1(result[14]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[14]), .C1(adder_inputs_selector[1]), .C2(tolerance[14]), .ZN(
      n_0_2_17));
   INV_X1 i_0_2_32 (.A(n_0_2_17), .ZN(adder_operand2[14]));
   AOI222_X1 i_0_2_33 (.A1(result[15]), .A2(n_0_2_1), .B1(n_0_2_2), .B2(
      x1_data[15]), .C1(adder_inputs_selector[1]), .C2(tolerance[15]), .ZN(
      n_0_2_18));
   INV_X1 i_0_2_34 (.A(n_0_2_18), .ZN(adder_operand2[15]));
   OR2_X1 i_0_3_0 (.A1(loop_counter_load), .A2(rst), .ZN(n_0_1));
   NOR2_X1 i_0_3_1 (.A1(adder_inputs_selector[1]), .A2(adder_inputs_selector[0]), 
      .ZN(n_0_3_0));
   INV_X1 i_0_3_2 (.A(n_0_3_0), .ZN(n_0_3_1));
   OAI22_X1 i_0_3_3 (.A1(n_0_3_1), .A2(x0_data[0]), .B1(n_0_3_0), .B2(error[0]), 
      .ZN(n_0_3_2));
   INV_X1 i_0_3_4 (.A(n_0_3_2), .ZN(adder_operand1[0]));
   OAI22_X1 i_0_3_5 (.A1(n_0_3_1), .A2(x0_data[1]), .B1(n_0_3_0), .B2(error[1]), 
      .ZN(n_0_3_3));
   INV_X1 i_0_3_6 (.A(n_0_3_3), .ZN(adder_operand1[1]));
   OAI22_X1 i_0_3_7 (.A1(n_0_3_1), .A2(x0_data[2]), .B1(n_0_3_0), .B2(error[2]), 
      .ZN(n_0_3_4));
   INV_X1 i_0_3_8 (.A(n_0_3_4), .ZN(adder_operand1[2]));
   OAI22_X1 i_0_3_9 (.A1(n_0_3_1), .A2(x0_data[3]), .B1(n_0_3_0), .B2(error[3]), 
      .ZN(n_0_3_5));
   INV_X1 i_0_3_10 (.A(n_0_3_5), .ZN(adder_operand1[3]));
   OAI22_X1 i_0_3_11 (.A1(n_0_3_1), .A2(x0_data[4]), .B1(n_0_3_0), .B2(error[4]), 
      .ZN(n_0_3_6));
   INV_X1 i_0_3_12 (.A(n_0_3_6), .ZN(adder_operand1[4]));
   OAI22_X1 i_0_3_13 (.A1(n_0_3_1), .A2(x0_data[5]), .B1(n_0_3_0), .B2(error[5]), 
      .ZN(n_0_3_7));
   INV_X1 i_0_3_14 (.A(n_0_3_7), .ZN(adder_operand1[5]));
   OAI22_X1 i_0_3_15 (.A1(n_0_3_1), .A2(x0_data[6]), .B1(n_0_3_0), .B2(error[6]), 
      .ZN(n_0_3_8));
   INV_X1 i_0_3_16 (.A(n_0_3_8), .ZN(adder_operand1[6]));
   OAI22_X1 i_0_3_17 (.A1(n_0_3_1), .A2(x0_data[7]), .B1(n_0_3_0), .B2(error[7]), 
      .ZN(n_0_3_9));
   INV_X1 i_0_3_18 (.A(n_0_3_9), .ZN(adder_operand1[7]));
   OAI22_X1 i_0_3_19 (.A1(n_0_3_1), .A2(x0_data[8]), .B1(n_0_3_0), .B2(error[8]), 
      .ZN(n_0_3_10));
   INV_X1 i_0_3_20 (.A(n_0_3_10), .ZN(adder_operand1[8]));
   OAI22_X1 i_0_3_21 (.A1(n_0_3_1), .A2(x0_data[9]), .B1(n_0_3_0), .B2(error[9]), 
      .ZN(n_0_3_11));
   INV_X1 i_0_3_22 (.A(n_0_3_11), .ZN(adder_operand1[9]));
   OAI22_X1 i_0_3_23 (.A1(n_0_3_1), .A2(x0_data[10]), .B1(n_0_3_0), .B2(
      error[10]), .ZN(n_0_3_12));
   INV_X1 i_0_3_24 (.A(n_0_3_12), .ZN(adder_operand1[10]));
   OAI22_X1 i_0_3_25 (.A1(n_0_3_1), .A2(x0_data[11]), .B1(n_0_3_0), .B2(
      error[11]), .ZN(n_0_3_13));
   INV_X1 i_0_3_26 (.A(n_0_3_13), .ZN(adder_operand1[11]));
   OAI22_X1 i_0_3_27 (.A1(n_0_3_1), .A2(x0_data[12]), .B1(n_0_3_0), .B2(
      error[12]), .ZN(n_0_3_14));
   INV_X1 i_0_3_28 (.A(n_0_3_14), .ZN(adder_operand1[12]));
   OAI22_X1 i_0_3_29 (.A1(n_0_3_1), .A2(x0_data[13]), .B1(n_0_3_0), .B2(
      error[13]), .ZN(n_0_3_15));
   INV_X1 i_0_3_30 (.A(n_0_3_15), .ZN(adder_operand1[13]));
   OAI22_X1 i_0_3_31 (.A1(n_0_3_1), .A2(x0_data[14]), .B1(n_0_3_0), .B2(
      error[14]), .ZN(n_0_3_16));
   INV_X1 i_0_3_32 (.A(n_0_3_16), .ZN(adder_operand1[14]));
   OAI22_X1 i_0_3_33 (.A1(n_0_3_1), .A2(x0_data[15]), .B1(n_0_3_0), .B2(
      error[15]), .ZN(n_0_3_17));
   INV_X1 i_0_3_34 (.A(n_0_3_17), .ZN(adder_operand1[15]));
   NOR2_X1 i_0_3_35 (.A1(step_inputs_selector[0]), .A2(step_inputs_selector[1]), 
      .ZN(n_0_3_18));
   AOI22_X1 i_0_3_36 (.A1(n_0_3_18), .A2(memory_data1[0]), .B1(step_in[0]), 
      .B2(step_inputs_selector[1]), .ZN(n_0_3_19));
   INV_X1 i_0_3_37 (.A(n_0_3_19), .ZN(step_reg_in[0]));
   AOI22_X1 i_0_3_38 (.A1(n_0_3_18), .A2(memory_data1[1]), .B1(
      step_inputs_selector[1]), .B2(step_in[1]), .ZN(n_0_3_20));
   INV_X1 i_0_3_39 (.A(n_0_3_20), .ZN(step_reg_in[1]));
   AOI22_X1 i_0_3_40 (.A1(n_0_3_18), .A2(memory_data1[2]), .B1(
      step_inputs_selector[1]), .B2(step_in[2]), .ZN(n_0_3_21));
   INV_X1 i_0_3_41 (.A(n_0_3_21), .ZN(step_reg_in[2]));
   AOI22_X1 i_0_3_42 (.A1(n_0_3_18), .A2(memory_data1[3]), .B1(
      step_inputs_selector[1]), .B2(step_in[3]), .ZN(n_0_3_22));
   INV_X1 i_0_3_43 (.A(n_0_3_22), .ZN(step_reg_in[3]));
   AOI22_X1 i_0_3_44 (.A1(n_0_3_18), .A2(memory_data1[4]), .B1(
      step_inputs_selector[1]), .B2(step_in[4]), .ZN(n_0_3_23));
   INV_X1 i_0_3_45 (.A(n_0_3_23), .ZN(step_reg_in[4]));
   AOI22_X1 i_0_3_46 (.A1(n_0_3_18), .A2(memory_data1[5]), .B1(
      step_inputs_selector[1]), .B2(step_in[5]), .ZN(n_0_3_24));
   INV_X1 i_0_3_47 (.A(n_0_3_24), .ZN(step_reg_in[5]));
   AOI22_X1 i_0_3_48 (.A1(n_0_3_18), .A2(memory_data1[6]), .B1(
      step_inputs_selector[1]), .B2(step_in[6]), .ZN(n_0_3_25));
   INV_X1 i_0_3_49 (.A(n_0_3_25), .ZN(step_reg_in[6]));
   AOI22_X1 i_0_3_50 (.A1(n_0_3_18), .A2(memory_data1[7]), .B1(
      step_inputs_selector[1]), .B2(step_in[7]), .ZN(n_0_3_26));
   INV_X1 i_0_3_51 (.A(n_0_3_26), .ZN(step_reg_in[7]));
   AOI22_X1 i_0_3_52 (.A1(n_0_3_18), .A2(memory_data1[8]), .B1(
      step_inputs_selector[1]), .B2(step_in[8]), .ZN(n_0_3_27));
   INV_X1 i_0_3_53 (.A(n_0_3_27), .ZN(step_reg_in[8]));
   AOI22_X1 i_0_3_54 (.A1(n_0_3_18), .A2(memory_data1[9]), .B1(
      step_inputs_selector[1]), .B2(step_in[9]), .ZN(n_0_3_28));
   INV_X1 i_0_3_55 (.A(n_0_3_28), .ZN(step_reg_in[9]));
   AOI22_X1 i_0_3_56 (.A1(n_0_3_18), .A2(memory_data1[10]), .B1(
      step_inputs_selector[1]), .B2(step_in[10]), .ZN(n_0_3_29));
   INV_X1 i_0_3_57 (.A(n_0_3_29), .ZN(step_reg_in[10]));
   AOI22_X1 i_0_3_58 (.A1(n_0_3_18), .A2(memory_data1[11]), .B1(
      step_inputs_selector[1]), .B2(step_in[11]), .ZN(n_0_3_30));
   INV_X1 i_0_3_59 (.A(n_0_3_30), .ZN(step_reg_in[11]));
   AOI22_X1 i_0_3_60 (.A1(n_0_3_18), .A2(memory_data1[12]), .B1(
      step_inputs_selector[1]), .B2(step_in[12]), .ZN(n_0_3_31));
   INV_X1 i_0_3_61 (.A(n_0_3_31), .ZN(step_reg_in[12]));
   AOI22_X1 i_0_3_62 (.A1(n_0_3_18), .A2(memory_data1[13]), .B1(
      step_inputs_selector[1]), .B2(step_in[13]), .ZN(n_0_3_32));
   INV_X1 i_0_3_63 (.A(n_0_3_32), .ZN(step_reg_in[13]));
   AOI22_X1 i_0_3_64 (.A1(n_0_3_18), .A2(memory_data1[14]), .B1(
      step_inputs_selector[1]), .B2(step_in[14]), .ZN(n_0_3_33));
   INV_X1 i_0_3_65 (.A(n_0_3_33), .ZN(step_reg_in[14]));
   AOI22_X1 i_0_3_66 (.A1(n_0_3_18), .A2(memory_data1[15]), .B1(
      step_inputs_selector[1]), .B2(step_in[15]), .ZN(n_0_3_34));
   INV_X1 i_0_3_67 (.A(n_0_3_34), .ZN(step_reg_in[15]));
   OR2_X1 i_0_3_68 (.A1(read_step), .A2(step_load), .ZN(n_0_2));
   NOR4_X1 i_0_3_69 (.A1(loop_counter[1]), .A2(loop_counter[0]), .A3(
      loop_counter[2]), .A4(loop_counter[3]), .ZN(n_0_3_35));
   NOR4_X1 i_0_3_70 (.A1(loop_counter[5]), .A2(loop_counter[4]), .A3(
      loop_counter[6]), .A4(loop_counter[7]), .ZN(n_0_3_36));
   NOR4_X1 i_0_3_71 (.A1(loop_counter[9]), .A2(loop_counter[8]), .A3(
      loop_counter[10]), .A4(loop_counter[11]), .ZN(n_0_3_37));
   NOR4_X1 i_0_3_72 (.A1(loop_counter[13]), .A2(loop_counter[12]), .A3(
      loop_counter[14]), .A4(loop_counter[15]), .ZN(n_0_3_38));
   AND4_X1 i_0_3_73 (.A1(n_0_3_35), .A2(n_0_3_36), .A3(n_0_3_37), .A4(n_0_3_38), 
      .ZN(counter_zero));
   INV_X1 i_0_3_74 (.A(adder_is_add), .ZN(n_0_0));
endmodule
