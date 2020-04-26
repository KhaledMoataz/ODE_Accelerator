/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sun Apr 26 01:00:41 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1545579117 */

module FSM_START_EULAR(clk, rst_sync, inp, final_done, outp);
   input clk;
   input rst_sync;
   input inp;
   input final_done;
   output outp;

   wire current_state;
   wire n_0_0;
   wire n_0_1;

   DFF_X1 temp_out_reg (.D(n_1), .CK(clk), .Q(outp), .QN());
   DFF_X1 current_state_reg (.D(n_0), .CK(clk), .Q(current_state), .QN());
   AOI211_X1 i_0_0 (.A(rst_sync), .B(n_0_0), .C1(final_done), .C2(current_state), 
      .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(inp), .A2(current_state), .ZN(n_0_0));
   NOR3_X1 i_0_2 (.A1(n_0_1), .A2(rst_sync), .A3(current_state), .ZN(n_1));
   INV_X1 i_0_3 (.A(inp), .ZN(n_0_1));
endmodule

module PosEdgeDFF__1_44(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module full_adder__1_706(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__1_702(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_707(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_706 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__1_702 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_717(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_707 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module which_adder(i_add1, i_add2, cin, o_result, intermediate_carry);
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

   which_adder__1_717 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder Gen_Modules_1_which_adder_x (.i_add1({uc_0, A[2]}), .i_add2(), 
      .cin(cs), .o_result({uc_1, result[3], result[2]}), .intermediate_carry());
endmodule

module full_adder__1_872(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_877(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_872 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_887(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_877 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__1_854(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_859(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_854 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_860(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_859 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_834(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_839(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_834 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_840(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_839 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_814(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_819(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_814 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_820(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_819 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_794(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_799(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_794 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_800(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_799 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_774(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_779(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_774 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_780(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_779 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_754(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_759(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_754 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_760(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_759 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_734(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__1_739(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_734 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__1_740(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_739 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__1_888(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__1_887 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], uc_0}), .intermediate_carry());
   which_adder__1_860 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__1_840 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__1_820 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__1_800 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_780 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_760 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_740 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_5), .o_result({uc_1, result[15], result[14]}), 
      .intermediate_carry());
endmodule

module full_adder__1_546(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_542(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_547(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_546 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_542 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_557(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_547 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__1_575(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_571(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_576(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_575 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_571 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_566(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_562(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_567(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_566 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_562 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_577(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_576 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_567 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_595(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_591(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_596(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_595 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_591 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_586(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_582(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_587(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_586 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_582 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_597(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_596 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_587 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_615(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_611(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_616(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_615 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_611 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_606(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_602(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_607(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_606 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_602 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_617(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_616 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_607 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_635(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_631(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_636(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_635 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_631 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_626(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_622(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_627(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_626 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_622 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_637(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_636 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_627 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_655(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_651(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_656(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_655 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_651 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_646(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_642(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_647(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_646 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_642 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_657(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_656 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_647 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_675(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_671(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_676(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_675 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_671 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_666(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_662(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_667(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_666 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_662 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_677(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_676 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_667 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_695(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_691(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__1_696(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_695 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_691 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module full_adder__1_686(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_682(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__1_687(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_686 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_682 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__1_697(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_696 adder_block_inst2 (.i_add1({i_add1[1], uc_0}), .i_add2(
      i_add2), .cin(), .o_result({uc_1, o_result_one_carry[1], 
      o_result_one_carry[0]}), .intermediate_carry());
   adder_block__1_687 adder_block_inst1 (.i_add1({i_add1[1], uc_2}), .i_add2(
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

   which_adder__1_557 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], B[0]}), 
      .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__1_577 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__1_597 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__1_617 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__1_637 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_657 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_677 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_697 Gen_Modules_7_which_adder_x (.i_add1({A[15], uc_0}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({uc_1, result[15], 
      result[14]}), .intermediate_carry());
endmodule

module full_adder__1_282(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_287(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_282 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_297(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_287 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__1_311(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_316(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_311 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_317(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_316 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_331(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_336(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_331 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_337(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_336 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_351(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_356(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_351 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_357(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_356 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_371(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_376(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_371 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_377(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_376 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_391(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_396(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_391 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_397(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_396 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_411(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_416(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_411 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_417(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_416 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_431(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_436(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_431 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_437(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_436 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_451(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_456(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_451 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_457(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_456 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_471(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_476(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_471 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_477(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_476 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_491(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_496(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_491 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_497(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_496 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_511(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_516(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_511 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_517(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_516 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module which_adder__1_537(i_add1, i_add2, cin, o_result, intermediate_carry);
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

   which_adder__1_297 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(), .o_result({n_0, result[7], uc_0}), .intermediate_carry());
   which_adder__1_317 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_337 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_357 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_377 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__1_397 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[17], result[16]}), 
      .intermediate_carry());
   which_adder__1_417 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2(), .cin(n_5), .o_result({n_6, result[19], result[18]}), 
      .intermediate_carry());
   which_adder__1_437 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2(), .cin(n_6), .o_result({n_7, result[21], result[20]}), 
      .intermediate_carry());
   which_adder__1_457 Gen_Modules_11_which_adder_x (.i_add1({A[23], A[22]}), 
      .i_add2(), .cin(n_7), .o_result({n_8, result[23], result[22]}), 
      .intermediate_carry());
   which_adder__1_477 Gen_Modules_12_which_adder_x (.i_add1({A[25], A[24]}), 
      .i_add2(), .cin(n_8), .o_result({n_9, result[25], result[24]}), 
      .intermediate_carry());
   which_adder__1_497 Gen_Modules_13_which_adder_x (.i_add1({A[27], A[26]}), 
      .i_add2(), .cin(n_9), .o_result({n_10, result[27], result[26]}), 
      .intermediate_carry());
   which_adder__1_517 Gen_Modules_14_which_adder_x (.i_add1({A[29], A[28]}), 
      .i_add2(), .cin(n_10), .o_result({n_11, result[29], result[28]}), 
      .intermediate_carry());
   which_adder__1_537 Gen_Modules_15_which_adder_x (.i_add1({A[31], uc_1}), 
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
   adder__1_888 adder_multiplicand_complement (.A({n_100, n_98, n_96, n_94, n_90, 
      n_88, n_86, n_84, n_82, n_80, n_78, n_76, n_74, n_72, n_70, n_69}), .B(), 
      .is_subtract(), .result({multiplicand_complement[15], 
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
      n_95, n_93, n_89, n_87, n_85, n_83, n_81, n_79, n_77, n_75, n_73, n_71, 
      n_68}), .is_subtract(), .result(AB), .carry(), .overflow_flag(), .negative());
   adder__parameterized0 adder_round (.A({A[15], uc_3, A[13], A[12], A[11], 
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

module mul_stage(clk, rst, start_mul, data1, data2, done_mul, out, overflow_flag);
   input clk;
   input rst;
   input start_mul;
   input [15:0]data1;
   input [15:0]data2;
   output done_mul;
   output [15:0]out;
   output overflow_flag;

   multiplier multiplier_ (.clk(clk), .rst(rst), .multiplicand(data1), 
      .multiplier(data2), .start(start_mul), .result(out), .overflow_flag(
      overflow_flag), .finish(done_mul));
endmodule

module mul_buffer(clk, rst_sync, start_mult_in, d1, d2, start_mult_out, q1, q2);
   input clk;
   input rst_sync;
   input start_mult_in;
   input [15:0]d1;
   input [15:0]d2;
   output start_mult_out;
   output [15:0]q1;
   output [15:0]q2;

   DFF_X1 \temp2_reg[15]  (.D(n_31), .CK(clk), .Q(q2[15]), .QN());
   DFF_X1 \temp2_reg[14]  (.D(n_30), .CK(clk), .Q(q2[14]), .QN());
   DFF_X1 \temp2_reg[13]  (.D(n_29), .CK(clk), .Q(q2[13]), .QN());
   DFF_X1 \temp2_reg[12]  (.D(n_28), .CK(clk), .Q(q2[12]), .QN());
   DFF_X1 \temp2_reg[11]  (.D(n_27), .CK(clk), .Q(q2[11]), .QN());
   DFF_X1 \temp2_reg[10]  (.D(n_26), .CK(clk), .Q(q2[10]), .QN());
   DFF_X1 \temp2_reg[9]  (.D(n_25), .CK(clk), .Q(q2[9]), .QN());
   DFF_X1 \temp2_reg[8]  (.D(n_24), .CK(clk), .Q(q2[8]), .QN());
   DFF_X1 \temp2_reg[7]  (.D(n_23), .CK(clk), .Q(q2[7]), .QN());
   DFF_X1 \temp2_reg[6]  (.D(n_22), .CK(clk), .Q(q2[6]), .QN());
   DFF_X1 \temp2_reg[5]  (.D(n_21), .CK(clk), .Q(q2[5]), .QN());
   DFF_X1 \temp2_reg[4]  (.D(n_20), .CK(clk), .Q(q2[4]), .QN());
   DFF_X1 \temp2_reg[3]  (.D(n_19), .CK(clk), .Q(q2[3]), .QN());
   DFF_X1 \temp2_reg[2]  (.D(n_18), .CK(clk), .Q(q2[2]), .QN());
   DFF_X1 \temp2_reg[1]  (.D(n_17), .CK(clk), .Q(q2[1]), .QN());
   DFF_X1 \temp2_reg[0]  (.D(n_16), .CK(clk), .Q(q2[0]), .QN());
   DFF_X1 \temp1_reg[15]  (.D(n_15), .CK(clk), .Q(q1[15]), .QN());
   DFF_X1 \temp1_reg[14]  (.D(n_14), .CK(clk), .Q(q1[14]), .QN());
   DFF_X1 \temp1_reg[13]  (.D(n_13), .CK(clk), .Q(q1[13]), .QN());
   DFF_X1 \temp1_reg[12]  (.D(n_12), .CK(clk), .Q(q1[12]), .QN());
   DFF_X1 \temp1_reg[11]  (.D(n_11), .CK(clk), .Q(q1[11]), .QN());
   DFF_X1 \temp1_reg[10]  (.D(n_10), .CK(clk), .Q(q1[10]), .QN());
   DFF_X1 \temp1_reg[9]  (.D(n_9), .CK(clk), .Q(q1[9]), .QN());
   DFF_X1 \temp1_reg[8]  (.D(n_8), .CK(clk), .Q(q1[8]), .QN());
   DFF_X1 \temp1_reg[7]  (.D(n_7), .CK(clk), .Q(q1[7]), .QN());
   DFF_X1 \temp1_reg[6]  (.D(n_6), .CK(clk), .Q(q1[6]), .QN());
   DFF_X1 \temp1_reg[5]  (.D(n_5), .CK(clk), .Q(q1[5]), .QN());
   DFF_X1 \temp1_reg[4]  (.D(n_4), .CK(clk), .Q(q1[4]), .QN());
   DFF_X1 \temp1_reg[3]  (.D(n_3), .CK(clk), .Q(q1[3]), .QN());
   DFF_X1 \temp1_reg[2]  (.D(n_2), .CK(clk), .Q(q1[2]), .QN());
   DFF_X1 \temp1_reg[1]  (.D(n_1), .CK(clk), .Q(q1[1]), .QN());
   DFF_X1 \temp1_reg[0]  (.D(n_0), .CK(clk), .Q(q1[0]), .QN());
   DFF_X1 temp3_reg (.D(rst_sync), .CK(clk), .Q(start_mult_out), .QN());
   AND2_X1 i_0_0 (.A1(rst_sync), .A2(d1[0]), .ZN(n_0));
   AND2_X1 i_0_1 (.A1(rst_sync), .A2(d1[1]), .ZN(n_1));
   AND2_X1 i_0_2 (.A1(rst_sync), .A2(d1[2]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(rst_sync), .A2(d1[3]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(rst_sync), .A2(d1[4]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(rst_sync), .A2(d1[5]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(rst_sync), .A2(d1[6]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(rst_sync), .A2(d1[7]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(rst_sync), .A2(d1[8]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(rst_sync), .A2(d1[9]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(rst_sync), .A2(d1[10]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(rst_sync), .A2(d1[11]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(rst_sync), .A2(d1[12]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(rst_sync), .A2(d1[13]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(rst_sync), .A2(d1[14]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(rst_sync), .A2(d1[15]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(rst_sync), .A2(d2[0]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(rst_sync), .A2(d2[1]), .ZN(n_17));
   AND2_X1 i_0_18 (.A1(rst_sync), .A2(d2[2]), .ZN(n_18));
   AND2_X1 i_0_19 (.A1(rst_sync), .A2(d2[3]), .ZN(n_19));
   AND2_X1 i_0_20 (.A1(rst_sync), .A2(d2[4]), .ZN(n_20));
   AND2_X1 i_0_21 (.A1(rst_sync), .A2(d2[5]), .ZN(n_21));
   AND2_X1 i_0_22 (.A1(rst_sync), .A2(d2[6]), .ZN(n_22));
   AND2_X1 i_0_23 (.A1(rst_sync), .A2(d2[7]), .ZN(n_23));
   AND2_X1 i_0_24 (.A1(rst_sync), .A2(d2[8]), .ZN(n_24));
   AND2_X1 i_0_25 (.A1(rst_sync), .A2(d2[9]), .ZN(n_25));
   AND2_X1 i_0_26 (.A1(rst_sync), .A2(d2[10]), .ZN(n_26));
   AND2_X1 i_0_27 (.A1(rst_sync), .A2(d2[11]), .ZN(n_27));
   AND2_X1 i_0_28 (.A1(rst_sync), .A2(d2[12]), .ZN(n_28));
   AND2_X1 i_0_29 (.A1(rst_sync), .A2(d2[13]), .ZN(n_29));
   AND2_X1 i_0_30 (.A1(rst_sync), .A2(d2[14]), .ZN(n_30));
   AND2_X1 i_0_31 (.A1(rst_sync), .A2(d2[15]), .ZN(n_31));
endmodule

module PosEdgeDFF__1_26(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_29(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_32(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_35(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_38(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_41(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeCounter(clk, rst, load, count_enable, load_data, count);
   input clk;
   input rst;
   input load;
   input count_enable;
   input [5:0]load_data;
   output [5:0]count;

   wire [5:0]FF_inputs;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_0;

   PosEdgeDFF__1_26 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   PosEdgeDFF__1_29 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   PosEdgeDFF__1_32 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   PosEdgeDFF__1_35 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   PosEdgeDFF__1_38 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   PosEdgeDFF__1_41 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   NOR3_X1 i_0_0 (.A1(load), .A2(n_0_8), .A3(n_0_1), .ZN(FF_inputs[1]));
   AOI21_X1 i_0_1 (.A(count[1]), .B1(count[0]), .B2(count_enable), .ZN(n_0_1));
   NOR3_X1 i_0_2 (.A1(load), .A2(n_0_7), .A3(n_0_2), .ZN(FF_inputs[2]));
   NOR2_X1 i_0_3 (.A1(count[2]), .A2(n_0_8), .ZN(n_0_2));
   NOR2_X1 i_0_4 (.A1(n_0_3), .A2(load), .ZN(FF_inputs[3]));
   XNOR2_X1 i_0_5 (.A(count[3]), .B(n_0_7), .ZN(n_0_3));
   NOR3_X1 i_0_6 (.A1(load), .A2(n_0_6), .A3(n_0_4), .ZN(FF_inputs[4]));
   AOI21_X1 i_0_7 (.A(count[4]), .B1(count[3]), .B2(n_0_7), .ZN(n_0_4));
   NOR2_X1 i_0_8 (.A1(load), .A2(n_0_5), .ZN(FF_inputs[5]));
   XNOR2_X1 i_0_9 (.A(count[5]), .B(n_0_6), .ZN(n_0_5));
   AND3_X1 i_0_10 (.A1(count[4]), .A2(count[3]), .A3(n_0_7), .ZN(n_0_6));
   AND2_X1 i_0_11 (.A1(count[2]), .A2(n_0_8), .ZN(n_0_7));
   AND3_X1 i_0_12 (.A1(count[1]), .A2(count[0]), .A3(count_enable), .ZN(n_0_8));
   AOI211_X1 i_0_13 (.A(load), .B(n_0_0), .C1(count[0]), .C2(count_enable), 
      .ZN(FF_inputs[0]));
   NOR2_X1 i_0_14 (.A1(count[0]), .A2(count_enable), .ZN(n_0_0));
endmodule

module datapath(b, a, p_0);
   input [5:0]b;
   input [5:0]a;
   output p_0;

   NOR3_X1 i_0 (.A1(n_0), .A2(n_2), .A3(n_1), .ZN(p_0));
   NAND4_X1 i_1 (.A1(n_6), .A2(n_5), .A3(n_4), .A4(n_3), .ZN(n_0));
   XOR2_X1 i_2 (.A(b[5]), .B(a[5]), .Z(n_1));
   XOR2_X1 i_3 (.A(b[4]), .B(a[4]), .Z(n_2));
   XNOR2_X1 i_4 (.A(b[1]), .B(a[1]), .ZN(n_3));
   XNOR2_X1 i_5 (.A(b[0]), .B(a[0]), .ZN(n_4));
   XNOR2_X1 i_6 (.A(b[2]), .B(a[2]), .ZN(n_5));
   XNOR2_X1 i_7 (.A(b[3]), .B(a[3]), .ZN(n_6));
endmodule

module COMPARATOR_EULAR(a, b, decision);
   input [5:0]a;
   input [5:0]b;
   output decision;

   datapath i_0 (.b(b), .a(a), .p_0(decision));
endmodule

module acc_buffer(clk, rst_sync, done_mul_in, d, done_mul_out, q);
   input clk;
   input rst_sync;
   input done_mul_in;
   input [15:0]d;
   output done_mul_out;
   output [15:0]q;

   DFF_X1 \temp_reg[15]  (.D(n_15), .CK(clk), .Q(q[15]), .QN());
   DFF_X1 \temp_reg[14]  (.D(n_14), .CK(clk), .Q(q[14]), .QN());
   DFF_X1 \temp_reg[13]  (.D(n_13), .CK(clk), .Q(q[13]), .QN());
   DFF_X1 \temp_reg[12]  (.D(n_12), .CK(clk), .Q(q[12]), .QN());
   DFF_X1 \temp_reg[11]  (.D(n_11), .CK(clk), .Q(q[11]), .QN());
   DFF_X1 \temp_reg[10]  (.D(n_10), .CK(clk), .Q(q[10]), .QN());
   DFF_X1 \temp_reg[9]  (.D(n_9), .CK(clk), .Q(q[9]), .QN());
   DFF_X1 \temp_reg[8]  (.D(n_8), .CK(clk), .Q(q[8]), .QN());
   DFF_X1 \temp_reg[7]  (.D(n_7), .CK(clk), .Q(q[7]), .QN());
   DFF_X1 \temp_reg[6]  (.D(n_6), .CK(clk), .Q(q[6]), .QN());
   DFF_X1 \temp_reg[5]  (.D(n_5), .CK(clk), .Q(q[5]), .QN());
   DFF_X1 \temp_reg[4]  (.D(n_4), .CK(clk), .Q(q[4]), .QN());
   DFF_X1 \temp_reg[3]  (.D(n_3), .CK(clk), .Q(q[3]), .QN());
   DFF_X1 \temp_reg[2]  (.D(n_2), .CK(clk), .Q(q[2]), .QN());
   DFF_X1 \temp_reg[1]  (.D(n_1), .CK(clk), .Q(q[1]), .QN());
   DFF_X1 \temp_reg[0]  (.D(n_0), .CK(clk), .Q(q[0]), .QN());
   DFF_X1 temp2_reg (.D(n_16), .CK(clk), .Q(done_mul_out), .QN());
   AND2_X1 i_0_0 (.A1(d[0]), .A2(rst_sync), .ZN(n_0));
   AND2_X1 i_0_1 (.A1(rst_sync), .A2(d[1]), .ZN(n_1));
   AND2_X1 i_0_2 (.A1(rst_sync), .A2(d[2]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(rst_sync), .A2(d[3]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(rst_sync), .A2(d[4]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(rst_sync), .A2(d[5]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(rst_sync), .A2(d[6]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(rst_sync), .A2(d[7]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(rst_sync), .A2(d[8]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(rst_sync), .A2(d[9]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(rst_sync), .A2(d[10]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(rst_sync), .A2(d[11]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(rst_sync), .A2(d[12]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(rst_sync), .A2(d[13]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(rst_sync), .A2(d[14]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(rst_sync), .A2(d[15]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(done_mul_in), .A2(rst_sync), .ZN(n_16));
endmodule

module FSM_END_EULAR(clk, rst_sync, F, R, D, outp);
   input clk;
   input rst_sync;
   input F;
   input R;
   input D;
   output [1:0]outp;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;

   DFF_X1 \current_state_reg[0]  (.D(n_1), .CK(clk), .Q(outp[0]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0), .CK(clk), .Q(outp[1]), .QN());
   NOR3_X1 i_0_0 (.A1(rst_sync), .A2(n_0_2), .A3(n_0_0), .ZN(n_0));
   AOI21_X1 i_0_1 (.A(outp[1]), .B1(n_0_3), .B2(F), .ZN(n_0_0));
   AOI211_X1 i_0_2 (.A(rst_sync), .B(n_0_1), .C1(n_0_2), .C2(outp[1]), .ZN(n_1));
   AOI21_X1 i_0_3 (.A(outp[0]), .B1(R), .B2(outp[1]), .ZN(n_0_1));
   AND2_X1 i_0_4 (.A1(outp[0]), .A2(D), .ZN(n_0_2));
   INV_X1 i_0_5 (.A(outp[0]), .ZN(n_0_3));
endmodule

module PosEdgeDFF__1_23(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module full_adder__1_66(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_62(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_67(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_66 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_62 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_77(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_67 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__1_95(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_91(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_96(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_95 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_91 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_86(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_82(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_87(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_86 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_82 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_97(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_96 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_87 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_115(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_111(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_116(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_115 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_111 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_106(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_102(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_107(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_106 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_102 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_117(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_116 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_107 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_135(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_131(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_136(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_135 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_131 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_126(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_122(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_127(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_126 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_122 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_137(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_136 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_127 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_155(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_151(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_156(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_155 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_151 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_146(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_142(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_147(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_146 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_142 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_157(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_156 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_147 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_175(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_171(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_176(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_175 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_171 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_166(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_162(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_167(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_166 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_162 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_177(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_176 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_167 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_195(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_191(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_196(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_195 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_191 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_186(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_182(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_187(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_186 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_182 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_197(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_196 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_187 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_215(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_211(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_216(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_215 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__1_211 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_206(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_202(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_207(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_206 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__1_202 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_217(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire intermediate_carry_1;
   wire [2:0]o_result_one_carry;
   wire intermediate_carry_0;
   wire [2:0]o_result_zero_carry;

   adder_block__1_216 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry(intermediate_carry_1));
   adder_block__1_207 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
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

module adder__parameterized2(A, B, is_subtract, result, carry, overflow_flag, 
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

   which_adder__1_77 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], B[0]}), 
      .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__1_97 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__1_117 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__1_137 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__1_157 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_177 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_197 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_217 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({n_6, result[15], result[14]}), 
      .intermediate_carry(intermediate_cs));
   XOR2_X1 i_7_0 (.A(n_6), .B(intermediate_cs), .Z(overflow_flag));
endmodule

module ACCUMULATOR_EULAR(clk, rst_sync, inp, outp, overflow_flag);
   input clk;
   input rst_sync;
   input [15:0]inp;
   output [15:0]outp;
   output overflow_flag;

   wire overflow_flag_temp;
   wire [15:0]result;
   wire n_0_0;

   adder__parameterized2 adder_ (.A(inp), .B(outp), .is_subtract(), .result(
      result), .carry(), .overflow_flag(overflow_flag_temp), .negative());
   DFF_X1 temp_overflow_flag_reg (.D(n_0), .CK(clk), .Q(overflow_flag), .QN());
   DFF_X1 \accum_reg[15]  (.D(n_16), .CK(clk), .Q(outp[15]), .QN());
   DFF_X1 \accum_reg[14]  (.D(n_15), .CK(clk), .Q(outp[14]), .QN());
   DFF_X1 \accum_reg[13]  (.D(n_14), .CK(clk), .Q(outp[13]), .QN());
   DFF_X1 \accum_reg[12]  (.D(n_13), .CK(clk), .Q(outp[12]), .QN());
   DFF_X1 \accum_reg[11]  (.D(n_12), .CK(clk), .Q(outp[11]), .QN());
   DFF_X1 \accum_reg[10]  (.D(n_11), .CK(clk), .Q(outp[10]), .QN());
   DFF_X1 \accum_reg[9]  (.D(n_10), .CK(clk), .Q(outp[9]), .QN());
   DFF_X1 \accum_reg[8]  (.D(n_9), .CK(clk), .Q(outp[8]), .QN());
   DFF_X1 \accum_reg[7]  (.D(n_8), .CK(clk), .Q(outp[7]), .QN());
   DFF_X1 \accum_reg[6]  (.D(n_7), .CK(clk), .Q(outp[6]), .QN());
   DFF_X1 \accum_reg[5]  (.D(n_6), .CK(clk), .Q(outp[5]), .QN());
   DFF_X1 \accum_reg[4]  (.D(n_5), .CK(clk), .Q(outp[4]), .QN());
   DFF_X1 \accum_reg[3]  (.D(n_4), .CK(clk), .Q(outp[3]), .QN());
   DFF_X1 \accum_reg[2]  (.D(n_3), .CK(clk), .Q(outp[2]), .QN());
   DFF_X1 \accum_reg[1]  (.D(n_2), .CK(clk), .Q(outp[1]), .QN());
   DFF_X1 \accum_reg[0]  (.D(n_1), .CK(clk), .Q(outp[0]), .QN());
   INV_X1 i_0_0 (.A(rst_sync), .ZN(n_0_0));
   AND2_X1 i_0_1 (.A1(overflow_flag_temp), .A2(n_0_0), .ZN(n_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(result[0]), .ZN(n_1));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(result[1]), .ZN(n_2));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(result[2]), .ZN(n_3));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(result[3]), .ZN(n_4));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(result[4]), .ZN(n_5));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(result[5]), .ZN(n_6));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(result[6]), .ZN(n_7));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(result[7]), .ZN(n_8));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(result[8]), .ZN(n_9));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(result[9]), .ZN(n_10));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(result[10]), .ZN(n_11));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(result[11]), .ZN(n_12));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(result[12]), .ZN(n_13));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(result[13]), .ZN(n_14));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(result[14]), .ZN(n_15));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(result[15]), .ZN(n_16));
endmodule

module acc_stage(clk, rst, rst_sync, done_mul, data, out_data, overflow);
   input clk;
   input rst;
   input rst_sync;
   input done_mul;
   input [15:0]data;
   output [15:0]out_data;
   output overflow;

   wire rst_new;

   PosEdgeDFF__1_23 delay_cycle (.clk(clk), .rst(rst), .D(rst_sync), .enable(), 
      .Q(rst_new));
   ACCUMULATOR_EULAR accumulator (.clk(clk), .rst_sync(n_0), .inp(data), 
      .outp(out_data), .overflow_flag(overflow));
   OR2_X1 i_0_0 (.A1(rst_new), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module incrementor__1_20(in, out);
   input [15:0]in;
   output [15:0]out;

   wire \C[2] ;
   wire \C[3] ;
   wire \C[4] ;
   wire \C[5] ;
   wire \C[6] ;
   wire \C[7] ;
   wire \C[8] ;
   wire \C[9] ;
   wire \C[10] ;
   wire \C[11] ;
   wire \C[12] ;
   wire \C[13] ;
   wire \C[14] ;
   wire \C[15] ;

   INV_X1 i_0_0 (.A(in[0]), .ZN(out[0]));
   XOR2_X1 i_0_1 (.A(in[0]), .B(in[1]), .Z(out[1]));
   XOR2_X1 i_0_2 (.A(\C[2] ), .B(in[2]), .Z(out[2]));
   XOR2_X1 i_0_3 (.A(\C[3] ), .B(in[3]), .Z(out[3]));
   XOR2_X1 i_0_4 (.A(\C[4] ), .B(in[4]), .Z(out[4]));
   XOR2_X1 i_0_5 (.A(\C[5] ), .B(in[5]), .Z(out[5]));
   XOR2_X1 i_0_6 (.A(\C[6] ), .B(in[6]), .Z(out[6]));
   XOR2_X1 i_0_7 (.A(\C[7] ), .B(in[7]), .Z(out[7]));
   XOR2_X1 i_0_8 (.A(\C[8] ), .B(in[8]), .Z(out[8]));
   XOR2_X1 i_0_9 (.A(\C[9] ), .B(in[9]), .Z(out[9]));
   XOR2_X1 i_0_10 (.A(\C[10] ), .B(in[10]), .Z(out[10]));
   XOR2_X1 i_0_11 (.A(\C[11] ), .B(in[11]), .Z(out[11]));
   XOR2_X1 i_0_12 (.A(\C[12] ), .B(in[12]), .Z(out[12]));
   XOR2_X1 i_0_13 (.A(\C[13] ), .B(in[13]), .Z(out[13]));
   XOR2_X1 i_0_14 (.A(\C[14] ), .B(in[14]), .Z(out[14]));
   XOR2_X1 i_0_15 (.A(\C[15] ), .B(in[15]), .Z(out[15]));
   AND2_X1 i_0_16 (.A1(in[1]), .A2(in[0]), .ZN(\C[2] ));
   AND2_X1 i_0_17 (.A1(in[2]), .A2(\C[2] ), .ZN(\C[3] ));
   AND2_X1 i_0_18 (.A1(in[3]), .A2(\C[3] ), .ZN(\C[4] ));
   AND2_X1 i_0_19 (.A1(in[4]), .A2(\C[4] ), .ZN(\C[5] ));
   AND2_X1 i_0_20 (.A1(in[5]), .A2(\C[5] ), .ZN(\C[6] ));
   AND2_X1 i_0_21 (.A1(in[6]), .A2(\C[6] ), .ZN(\C[7] ));
   AND2_X1 i_0_22 (.A1(in[7]), .A2(\C[7] ), .ZN(\C[8] ));
   AND2_X1 i_0_23 (.A1(in[8]), .A2(\C[8] ), .ZN(\C[9] ));
   AND2_X1 i_0_24 (.A1(in[9]), .A2(\C[9] ), .ZN(\C[10] ));
   AND2_X1 i_0_25 (.A1(in[10]), .A2(\C[10] ), .ZN(\C[11] ));
   AND2_X1 i_0_26 (.A1(in[11]), .A2(\C[11] ), .ZN(\C[12] ));
   AND2_X1 i_0_27 (.A1(in[12]), .A2(\C[12] ), .ZN(\C[13] ));
   AND2_X1 i_0_28 (.A1(in[13]), .A2(\C[13] ), .ZN(\C[14] ));
   AND2_X1 i_0_29 (.A1(in[14]), .A2(\C[14] ), .ZN(\C[15] ));
endmodule

module mux_2_1__1_4(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in1[0]), .A2(n_0_0), .ZN(out[0]));
   OR2_X1 i_0_1 (.A1(in1[1]), .A2(sel), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(in1[2]), .A2(n_0_0), .ZN(out[2]));
   AND2_X1 i_0_3 (.A1(in1[3]), .A2(n_0_0), .ZN(out[3]));
   OR2_X1 i_0_4 (.A1(in1[4]), .A2(sel), .ZN(out[4]));
   OR2_X1 i_0_5 (.A1(in1[5]), .A2(sel), .ZN(out[5]));
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

module Register__1_2(clk, rst, load, data_in, data_out);
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

module incrementor(in, out);
   input [15:0]in;
   output [15:0]out;

   wire \C[2] ;
   wire \C[3] ;
   wire \C[4] ;
   wire \C[5] ;
   wire \C[6] ;
   wire \C[7] ;
   wire \C[8] ;
   wire \C[9] ;
   wire \C[10] ;
   wire \C[11] ;
   wire \C[12] ;
   wire \C[13] ;
   wire \C[14] ;
   wire \C[15] ;

   INV_X1 i_0_0 (.A(in[0]), .ZN(out[0]));
   XOR2_X1 i_0_1 (.A(in[0]), .B(in[1]), .Z(out[1]));
   XOR2_X1 i_0_2 (.A(\C[2] ), .B(in[2]), .Z(out[2]));
   XOR2_X1 i_0_3 (.A(\C[3] ), .B(in[3]), .Z(out[3]));
   XOR2_X1 i_0_4 (.A(\C[4] ), .B(in[4]), .Z(out[4]));
   XOR2_X1 i_0_5 (.A(\C[5] ), .B(in[5]), .Z(out[5]));
   XOR2_X1 i_0_6 (.A(\C[6] ), .B(in[6]), .Z(out[6]));
   XOR2_X1 i_0_7 (.A(\C[7] ), .B(in[7]), .Z(out[7]));
   XOR2_X1 i_0_8 (.A(\C[8] ), .B(in[8]), .Z(out[8]));
   XOR2_X1 i_0_9 (.A(\C[9] ), .B(in[9]), .Z(out[9]));
   XOR2_X1 i_0_10 (.A(\C[10] ), .B(in[10]), .Z(out[10]));
   XOR2_X1 i_0_11 (.A(\C[11] ), .B(in[11]), .Z(out[11]));
   XOR2_X1 i_0_12 (.A(\C[12] ), .B(in[12]), .Z(out[12]));
   XOR2_X1 i_0_13 (.A(\C[13] ), .B(in[13]), .Z(out[13]));
   XOR2_X1 i_0_14 (.A(\C[14] ), .B(in[14]), .Z(out[14]));
   XOR2_X1 i_0_15 (.A(\C[15] ), .B(in[15]), .Z(out[15]));
   AND2_X1 i_0_16 (.A1(in[1]), .A2(in[0]), .ZN(\C[2] ));
   AND2_X1 i_0_17 (.A1(in[2]), .A2(\C[2] ), .ZN(\C[3] ));
   AND2_X1 i_0_18 (.A1(in[3]), .A2(\C[3] ), .ZN(\C[4] ));
   AND2_X1 i_0_19 (.A1(in[4]), .A2(\C[4] ), .ZN(\C[5] ));
   AND2_X1 i_0_20 (.A1(in[5]), .A2(\C[5] ), .ZN(\C[6] ));
   AND2_X1 i_0_21 (.A1(in[6]), .A2(\C[6] ), .ZN(\C[7] ));
   AND2_X1 i_0_22 (.A1(in[7]), .A2(\C[7] ), .ZN(\C[8] ));
   AND2_X1 i_0_23 (.A1(in[8]), .A2(\C[8] ), .ZN(\C[9] ));
   AND2_X1 i_0_24 (.A1(in[9]), .A2(\C[9] ), .ZN(\C[10] ));
   AND2_X1 i_0_25 (.A1(in[10]), .A2(\C[10] ), .ZN(\C[11] ));
   AND2_X1 i_0_26 (.A1(in[11]), .A2(\C[11] ), .ZN(\C[12] ));
   AND2_X1 i_0_27 (.A1(in[12]), .A2(\C[12] ), .ZN(\C[13] ));
   AND2_X1 i_0_28 (.A1(in[13]), .A2(\C[13] ), .ZN(\C[14] ));
   AND2_X1 i_0_29 (.A1(in[14]), .A2(\C[14] ), .ZN(\C[15] ));
endmodule

module mux_2_1(sel, in1, in2, out);
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

module fetch_stage(reset, clk, enable, init_start, finished_one_row, final_done, 
      pc_mat_addr, pc_vec_addr);
   input reset;
   input clk;
   input enable;
   input init_start;
   input finished_one_row;
   input final_done;
   output [15:0]pc_mat_addr;
   output [15:0]pc_vec_addr;

   wire [15:0]inc_mat_out;
   wire [15:0]mux_mat_out;
   wire [15:0]inc_vec_out;
   wire [15:0]mux_vec_out;
   wire sel_mat;
   wire sel_vec;

   incrementor__1_20 inc_mat (.in(pc_mat_addr), .out(inc_mat_out));
   mux_2_1__1_4 mux_mat (.sel(sel_mat), .in1(inc_mat_out), .in2(), .out(
      mux_mat_out));
   Register__1_2 pc_matrix (.clk(clk), .rst(reset), .load(n_0), .data_in(
      mux_mat_out), .data_out(pc_mat_addr));
   incrementor inc_vec (.in(pc_vec_addr), .out(inc_vec_out));
   mux_2_1 mux_vec (.sel(sel_vec), .in1(inc_vec_out), .in2(), .out(mux_vec_out));
   Register pc_vector (.clk(clk), .rst(reset), .load(n_1), .data_in(mux_vec_out), 
      .data_out(pc_vec_addr));
   OR2_X1 i_0_0 (.A1(init_start), .A2(enable), .ZN(n_0));
   OR2_X1 i_0_1 (.A1(n_0), .A2(finished_one_row), .ZN(n_1));
   OR2_X1 i_0_2 (.A1(init_start), .A2(final_done), .ZN(sel_mat));
   OR2_X1 i_0_3 (.A1(sel_mat), .A2(finished_one_row), .ZN(sel_vec));
endmodule

module Pipeline(clk, rst, start, FINAL_DONE, return_default_state, shape_0, 
      shape_1, data_ready, out_acc, overflow, data_vec_mem, data_mat_mem, 
      pc_vec_addr, pc_mat_addr);
   input clk;
   input rst;
   input start;
   input FINAL_DONE;
   input return_default_state;
   input [5:0]shape_0;
   input [5:0]shape_1;
   output data_ready;
   output [15:0]out_acc;
   output overflow;
   input [15:0]data_vec_mem;
   input [15:0]data_mat_mem;
   output [15:0]pc_vec_addr;
   output [15:0]pc_mat_addr;

   wire init_start;
   wire new_start;
   wire mul_overflow;
   wire [15:0]mul_out;
   wire done_mul;
   wire [15:0]mul_buffer_out2;
   wire [15:0]mul_buffer_out1;
   wire start_mult;
   wire [5:0]col_count;
   wire finished_one_row;
   wire [15:0]data_to_acc;
   wire done_mul_acc;
   wire end_of_row;
   wire acc_overflow;
   wire fetch_enable;
   wire n_2_2;
   wire n_2_3;
   wire flush_mul_buffer;
   wire n_2_0;
   wire n_2_1;
   wire n_2_4;

   FSM_START_EULAR fsm_start (.clk(n_0), .rst_sync(rst), .inp(start), 
      .final_done(FINAL_DONE), .outp(init_start));
   PosEdgeDFF__1_44 delay_start_half_cycle (.clk(clk), .rst(rst), .D(init_start), 
      .enable(), .Q(new_start));
   mul_stage mul_stage_ (.clk(clk), .rst(rst), .start_mul(start_mult), .data1(
      mul_buffer_out1), .data2(mul_buffer_out2), .done_mul(done_mul), .out(
      mul_out), .overflow_flag(mul_overflow));
   mul_buffer mul_buffer_ (.clk(n_0), .rst_sync(n_1), .start_mult_in(), .d1(
      data_vec_mem), .d2(data_mat_mem), .start_mult_out(start_mult), .q1(
      mul_buffer_out1), .q2(mul_buffer_out2));
   PosEdgeCounter count_cloumns (.clk(clk), .rst(rst), .load(end_of_row), 
      .count_enable(start_mult), .load_data(), .count(col_count));
   COMPARATOR_EULAR if_end_of_row (.a(col_count), .b(shape_1), .decision(
      finished_one_row));
   acc_buffer acc_buffer_ (.clk(n_0), .rst_sync(n_2), .done_mul_in(done_mul), 
      .d(mul_out), .done_mul_out(done_mul_acc), .q(data_to_acc));
   FSM_END_EULAR fsm_end (.clk(n_0), .rst_sync(rst), .F(finished_one_row), 
      .R(done_mul_acc), .D(return_default_state), .outp({end_of_row, data_ready}));
   acc_stage acc_stage_ (.clk(clk), .rst(rst), .rst_sync(return_default_state), 
      .done_mul(), .data(data_to_acc), .out_data(out_acc), .overflow(
      acc_overflow));
   PosEdgeDFF delay_enable_half_cycle (.clk(n_0), .rst(rst), .D(flush_mul_buffer), 
      .enable(), .Q(fetch_enable));
   fetch_stage fetch_stage_ (.reset(rst), .clk(clk), .enable(fetch_enable), 
      .init_start(init_start), .finished_one_row(end_of_row), .final_done(
      FINAL_DONE), .pc_mat_addr(pc_mat_addr), .pc_vec_addr(pc_vec_addr));
   OR2_X1 i_0_0 (.A1(mul_overflow), .A2(acc_overflow), .ZN(overflow));
   INV_X1 i_1_0 (.A(clk), .ZN(n_0));
   INV_X1 i_2_3 (.A(end_of_row), .ZN(n_2_2));
   AOI211_X1 i_2_4 (.A(return_default_state), .B(new_start), .C1(n_2_2), 
      .C2(done_mul), .ZN(n_2_3));
   NAND2_X1 i_2_0 (.A1(n_2_4), .A2(n_2_3), .ZN(n_1));
   INV_X1 i_2_1 (.A(n_2_3), .ZN(flush_mul_buffer));
   NAND2_X1 i_2_2 (.A1(n_2_4), .A2(n_2_0), .ZN(n_2));
   NAND2_X1 i_2_5 (.A1(n_2_1), .A2(done_mul), .ZN(n_2_0));
   OAI21_X1 i_2_6 (.A(end_of_row), .B1(data_ready), .B2(done_mul_acc), .ZN(n_2_1));
   INV_X1 i_2_7 (.A(rst), .ZN(n_2_4));
endmodule

module FSM_START_EULAR__1(clk, rst_sync, inp, final_done, outp);
   input clk;
   input rst_sync;
   input inp;
   input final_done;
   output outp;

   wire current_state;
   wire n_0_0;
   wire n_0_1;

   DFF_X1 temp_out_reg (.D(n_1), .CK(clk), .Q(outp), .QN());
   DFF_X1 current_state_reg (.D(n_0), .CK(clk), .Q(current_state), .QN());
   AOI211_X1 i_0_0 (.A(rst_sync), .B(n_0_0), .C1(final_done), .C2(current_state), 
      .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(inp), .A2(current_state), .ZN(n_0_0));
   NOR3_X1 i_0_2 (.A1(n_0_1), .A2(rst_sync), .A3(current_state), .ZN(n_1));
   INV_X1 i_0_3 (.A(inp), .ZN(n_0_1));
endmodule

module PosEdgeDFF__1_44__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module full_adder__1_706__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__1_702__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_707__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_706__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
   full_adder__1_702__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_717__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_707__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module which_adder__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   AND2_X1 i_0_0 (.A1(cin), .A2(i_add1[0]), .ZN(o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized1__1(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [3:0]A;
   input [3:0]B;
   input is_subtract;
   output [3:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__1_717__1 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__1 Gen_Modules_1_which_adder_x (.i_add1({uc_0, A[2]}), .i_add2(), 
      .cin(cs), .o_result({uc_1, result[3], result[2]}), .intermediate_carry());
endmodule

module full_adder__1_872__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_877__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_872__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_887__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_877__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__1_854__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_859__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_854__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_860__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_859__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_834__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_839__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_834__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_840__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_839__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_814__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_819__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_814__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_820__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_819__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_794__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_799__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_794__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_800__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_799__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_774__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_779__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_774__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_780__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_779__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_754__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_759__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_754__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_760__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_759__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__1_734__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__1_739__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_734__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__1_740__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_739__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__1_888__1(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__1_887__1 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], uc_0}), .intermediate_carry());
   which_adder__1_860__1 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__1_840__1 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__1_820__1 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__1_800__1 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_780__1 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_760__1 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_740__1 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_5), .o_result({uc_1, result[15], result[14]}), 
      .intermediate_carry());
endmodule

module full_adder__1_546__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_542__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_547__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_546__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_542__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_557__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_547__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__1_575__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_571__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_576__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_575__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_571__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_566__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_562__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_567__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_566__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_562__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_577__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_576__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_567__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_595__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_591__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_596__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_595__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_591__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_586__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_582__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_587__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_586__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_582__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_597__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_596__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_587__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_615__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_611__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_616__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_615__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_611__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_606__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_602__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_607__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_606__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_602__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_617__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_616__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_607__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_635__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_631__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_636__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_635__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_631__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_626__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_622__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_627__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_626__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_622__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_637__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_636__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_627__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_655__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_651__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_656__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_655__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_651__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_646__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_642__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_647__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_646__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_642__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_657__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_656__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_647__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_675__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_671__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_676__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_675__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_671__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_666__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_662__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_667__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_666__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_662__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_677__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_676__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_667__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_695__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_691__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__1_696__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_695__1 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_691__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module full_adder__1_686__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_682__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__1_687__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_686__1 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_682__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__1_697__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_696__1 adder_block_inst2 (.i_add1({i_add1[1], uc_0}), .i_add2(
      i_add2), .cin(), .o_result({uc_1, o_result_one_carry[1], 
      o_result_one_carry[0]}), .intermediate_carry());
   adder_block__1_687__1 adder_block_inst1 (.i_add1({i_add1[1], uc_2}), .i_add2(
      i_add2), .cin(), .o_result({uc_3, o_result_zero_carry[1], 
      o_result_zero_carry[0]}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
endmodule

module adder__1(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__1_557__1 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], 
      B[0]}), .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__1_577__1 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__1_597__1 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__1_617__1 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__1_637__1 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_657__1 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_677__1 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_697__1 Gen_Modules_7_which_adder_x (.i_add1({A[15], uc_0}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({uc_1, result[15], 
      result[14]}), .intermediate_carry());
endmodule

module full_adder__1_282__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_287__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_282__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_297__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_287__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__1_311__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_316__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_311__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_317__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_316__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_331__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_336__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_331__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_337__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_336__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_351__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_356__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_351__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_357__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_356__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_371__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_376__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_371__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_377__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_376__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_391__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_396__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_391__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_397__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_396__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_411__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_416__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_411__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_417__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_416__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_431__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_436__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_431__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_437__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_436__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_451__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_456__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_451__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_457__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_456__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_471__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_476__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_471__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_477__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_476__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_491__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_496__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_491__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_497__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_496__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__1_511__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__1_516__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_511__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), 
      .i_carry(i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_517__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__1_516__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module which_adder__1_537__1(i_add1, i_add2, cin, o_result, intermediate_carry);
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

module adder__parameterized0__1(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [31:0]A;
   input [31:0]B;
   input is_subtract;
   output [31:0]result;
   output carry;
   output overflow_flag;
   output negative;

   which_adder__1_297__1 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(), .o_result({n_0, result[7], uc_0}), .intermediate_carry());
   which_adder__1_317__1 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_337__1 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_357__1 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_377__1 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__1_397__1 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[17], result[16]}), 
      .intermediate_carry());
   which_adder__1_417__1 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2(), .cin(n_5), .o_result({n_6, result[19], result[18]}), 
      .intermediate_carry());
   which_adder__1_437__1 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2(), .cin(n_6), .o_result({n_7, result[21], result[20]}), 
      .intermediate_carry());
   which_adder__1_457__1 Gen_Modules_11_which_adder_x (.i_add1({A[23], A[22]}), 
      .i_add2(), .cin(n_7), .o_result({n_8, result[23], result[22]}), 
      .intermediate_carry());
   which_adder__1_477__1 Gen_Modules_12_which_adder_x (.i_add1({A[25], A[24]}), 
      .i_add2(), .cin(n_8), .o_result({n_9, result[25], result[24]}), 
      .intermediate_carry());
   which_adder__1_497__1 Gen_Modules_13_which_adder_x (.i_add1({A[27], A[26]}), 
      .i_add2(), .cin(n_9), .o_result({n_10, result[27], result[26]}), 
      .intermediate_carry());
   which_adder__1_517__1 Gen_Modules_14_which_adder_x (.i_add1({A[29], A[28]}), 
      .i_add2(), .cin(n_10), .o_result({n_11, result[29], result[28]}), 
      .intermediate_carry());
   which_adder__1_537__1 Gen_Modules_15_which_adder_x (.i_add1({A[31], uc_1}), 
      .i_add2(), .cin(n_11), .o_result({uc_2, result[31], result[30]}), 
      .intermediate_carry());
endmodule

module multiplier__1(clk, rst, multiplicand, multiplier, start, result, 
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

   adder__parameterized1__1 adder_counter (.A({uc_0, counter[2], counter[1], 
      counter[0]}), .B(), .is_subtract(), .result({counter_finish, n_2, n_1, n_0}), 
      .carry(), .overflow_flag(), .negative());
   adder__1_888__1 adder_multiplicand_complement (.A({n_100, n_98, n_96, n_94, 
      n_90, n_88, n_86, n_84, n_82, n_80, n_78, n_76, n_74, n_72, n_70, n_69}), 
      .B(), .is_subtract(), .result({multiplicand_complement[15], 
      multiplicand_complement[14], multiplicand_complement[13], 
      multiplicand_complement[12], multiplicand_complement[11], 
      multiplicand_complement[10], multiplicand_complement[9], 
      multiplicand_complement[8], multiplicand_complement[7], 
      multiplicand_complement[6], multiplicand_complement[5], 
      multiplicand_complement[4], multiplicand_complement[3], 
      multiplicand_complement[2], multiplicand_complement[1], uc_1}), .carry(), 
      .overflow_flag(), .negative());
   adder__1 adder_loop (.A({A[15], uc_2, A[13], A[12], A[11], A[10], A[9], A[8], 
      A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]}), .B({n_101, n_99, n_97, 
      n_95, n_93, n_89, n_87, n_85, n_83, n_81, n_79, n_77, n_75, n_73, n_71, 
      n_68}), .is_subtract(), .result(AB), .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1 adder_round (.A({A[15], uc_3, A[13], A[12], A[11], 
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

module mul_stage__1(clk, rst, start_mul, data1, data2, done_mul, out, 
      overflow_flag);
   input clk;
   input rst;
   input start_mul;
   input [15:0]data1;
   input [15:0]data2;
   output done_mul;
   output [15:0]out;
   output overflow_flag;

   multiplier__1 multiplier_ (.clk(clk), .rst(rst), .multiplicand(data1), 
      .multiplier(data2), .start(start_mul), .result(out), .overflow_flag(
      overflow_flag), .finish(done_mul));
endmodule

module mul_buffer__1(clk, rst_sync, start_mult_in, d1, d2, start_mult_out, q1, 
      q2);
   input clk;
   input rst_sync;
   input start_mult_in;
   input [15:0]d1;
   input [15:0]d2;
   output start_mult_out;
   output [15:0]q1;
   output [15:0]q2;

   DFF_X1 \temp2_reg[15]  (.D(n_31), .CK(clk), .Q(q2[15]), .QN());
   DFF_X1 \temp2_reg[14]  (.D(n_30), .CK(clk), .Q(q2[14]), .QN());
   DFF_X1 \temp2_reg[13]  (.D(n_29), .CK(clk), .Q(q2[13]), .QN());
   DFF_X1 \temp2_reg[12]  (.D(n_28), .CK(clk), .Q(q2[12]), .QN());
   DFF_X1 \temp2_reg[11]  (.D(n_27), .CK(clk), .Q(q2[11]), .QN());
   DFF_X1 \temp2_reg[10]  (.D(n_26), .CK(clk), .Q(q2[10]), .QN());
   DFF_X1 \temp2_reg[9]  (.D(n_25), .CK(clk), .Q(q2[9]), .QN());
   DFF_X1 \temp2_reg[8]  (.D(n_24), .CK(clk), .Q(q2[8]), .QN());
   DFF_X1 \temp2_reg[7]  (.D(n_23), .CK(clk), .Q(q2[7]), .QN());
   DFF_X1 \temp2_reg[6]  (.D(n_22), .CK(clk), .Q(q2[6]), .QN());
   DFF_X1 \temp2_reg[5]  (.D(n_21), .CK(clk), .Q(q2[5]), .QN());
   DFF_X1 \temp2_reg[4]  (.D(n_20), .CK(clk), .Q(q2[4]), .QN());
   DFF_X1 \temp2_reg[3]  (.D(n_19), .CK(clk), .Q(q2[3]), .QN());
   DFF_X1 \temp2_reg[2]  (.D(n_18), .CK(clk), .Q(q2[2]), .QN());
   DFF_X1 \temp2_reg[1]  (.D(n_17), .CK(clk), .Q(q2[1]), .QN());
   DFF_X1 \temp2_reg[0]  (.D(n_16), .CK(clk), .Q(q2[0]), .QN());
   DFF_X1 \temp1_reg[15]  (.D(n_15), .CK(clk), .Q(q1[15]), .QN());
   DFF_X1 \temp1_reg[14]  (.D(n_14), .CK(clk), .Q(q1[14]), .QN());
   DFF_X1 \temp1_reg[13]  (.D(n_13), .CK(clk), .Q(q1[13]), .QN());
   DFF_X1 \temp1_reg[12]  (.D(n_12), .CK(clk), .Q(q1[12]), .QN());
   DFF_X1 \temp1_reg[11]  (.D(n_11), .CK(clk), .Q(q1[11]), .QN());
   DFF_X1 \temp1_reg[10]  (.D(n_10), .CK(clk), .Q(q1[10]), .QN());
   DFF_X1 \temp1_reg[9]  (.D(n_9), .CK(clk), .Q(q1[9]), .QN());
   DFF_X1 \temp1_reg[8]  (.D(n_8), .CK(clk), .Q(q1[8]), .QN());
   DFF_X1 \temp1_reg[7]  (.D(n_7), .CK(clk), .Q(q1[7]), .QN());
   DFF_X1 \temp1_reg[6]  (.D(n_6), .CK(clk), .Q(q1[6]), .QN());
   DFF_X1 \temp1_reg[5]  (.D(n_5), .CK(clk), .Q(q1[5]), .QN());
   DFF_X1 \temp1_reg[4]  (.D(n_4), .CK(clk), .Q(q1[4]), .QN());
   DFF_X1 \temp1_reg[3]  (.D(n_3), .CK(clk), .Q(q1[3]), .QN());
   DFF_X1 \temp1_reg[2]  (.D(n_2), .CK(clk), .Q(q1[2]), .QN());
   DFF_X1 \temp1_reg[1]  (.D(n_1), .CK(clk), .Q(q1[1]), .QN());
   DFF_X1 \temp1_reg[0]  (.D(n_0), .CK(clk), .Q(q1[0]), .QN());
   DFF_X1 temp3_reg (.D(rst_sync), .CK(clk), .Q(start_mult_out), .QN());
   AND2_X1 i_0_0 (.A1(rst_sync), .A2(d1[0]), .ZN(n_0));
   AND2_X1 i_0_1 (.A1(rst_sync), .A2(d1[1]), .ZN(n_1));
   AND2_X1 i_0_2 (.A1(rst_sync), .A2(d1[2]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(rst_sync), .A2(d1[3]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(rst_sync), .A2(d1[4]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(rst_sync), .A2(d1[5]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(rst_sync), .A2(d1[6]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(rst_sync), .A2(d1[7]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(rst_sync), .A2(d1[8]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(rst_sync), .A2(d1[9]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(rst_sync), .A2(d1[10]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(rst_sync), .A2(d1[11]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(rst_sync), .A2(d1[12]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(rst_sync), .A2(d1[13]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(rst_sync), .A2(d1[14]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(rst_sync), .A2(d1[15]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(rst_sync), .A2(d2[0]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(rst_sync), .A2(d2[1]), .ZN(n_17));
   AND2_X1 i_0_18 (.A1(rst_sync), .A2(d2[2]), .ZN(n_18));
   AND2_X1 i_0_19 (.A1(rst_sync), .A2(d2[3]), .ZN(n_19));
   AND2_X1 i_0_20 (.A1(rst_sync), .A2(d2[4]), .ZN(n_20));
   AND2_X1 i_0_21 (.A1(rst_sync), .A2(d2[5]), .ZN(n_21));
   AND2_X1 i_0_22 (.A1(rst_sync), .A2(d2[6]), .ZN(n_22));
   AND2_X1 i_0_23 (.A1(rst_sync), .A2(d2[7]), .ZN(n_23));
   AND2_X1 i_0_24 (.A1(rst_sync), .A2(d2[8]), .ZN(n_24));
   AND2_X1 i_0_25 (.A1(rst_sync), .A2(d2[9]), .ZN(n_25));
   AND2_X1 i_0_26 (.A1(rst_sync), .A2(d2[10]), .ZN(n_26));
   AND2_X1 i_0_27 (.A1(rst_sync), .A2(d2[11]), .ZN(n_27));
   AND2_X1 i_0_28 (.A1(rst_sync), .A2(d2[12]), .ZN(n_28));
   AND2_X1 i_0_29 (.A1(rst_sync), .A2(d2[13]), .ZN(n_29));
   AND2_X1 i_0_30 (.A1(rst_sync), .A2(d2[14]), .ZN(n_30));
   AND2_X1 i_0_31 (.A1(rst_sync), .A2(d2[15]), .ZN(n_31));
endmodule

module PosEdgeDFF__1_26__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_29__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_32__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_35__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_38__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1_41__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeCounter__1(clk, rst, load, count_enable, load_data, count);
   input clk;
   input rst;
   input load;
   input count_enable;
   input [5:0]load_data;
   output [5:0]count;

   wire [5:0]FF_inputs;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_0;

   PosEdgeDFF__1_26__1 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   PosEdgeDFF__1_29__1 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   PosEdgeDFF__1_32__1 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   PosEdgeDFF__1_35__1 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   PosEdgeDFF__1_38__1 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   PosEdgeDFF__1_41__1 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   NOR3_X1 i_0_0 (.A1(load), .A2(n_0_8), .A3(n_0_1), .ZN(FF_inputs[1]));
   AOI21_X1 i_0_1 (.A(count[1]), .B1(count[0]), .B2(count_enable), .ZN(n_0_1));
   NOR3_X1 i_0_2 (.A1(load), .A2(n_0_7), .A3(n_0_2), .ZN(FF_inputs[2]));
   NOR2_X1 i_0_3 (.A1(count[2]), .A2(n_0_8), .ZN(n_0_2));
   NOR2_X1 i_0_4 (.A1(n_0_3), .A2(load), .ZN(FF_inputs[3]));
   XNOR2_X1 i_0_5 (.A(count[3]), .B(n_0_7), .ZN(n_0_3));
   NOR3_X1 i_0_6 (.A1(load), .A2(n_0_6), .A3(n_0_4), .ZN(FF_inputs[4]));
   AOI21_X1 i_0_7 (.A(count[4]), .B1(count[3]), .B2(n_0_7), .ZN(n_0_4));
   NOR2_X1 i_0_8 (.A1(load), .A2(n_0_5), .ZN(FF_inputs[5]));
   XNOR2_X1 i_0_9 (.A(count[5]), .B(n_0_6), .ZN(n_0_5));
   AND3_X1 i_0_10 (.A1(count[4]), .A2(count[3]), .A3(n_0_7), .ZN(n_0_6));
   AND2_X1 i_0_11 (.A1(count[2]), .A2(n_0_8), .ZN(n_0_7));
   AND3_X1 i_0_12 (.A1(count[1]), .A2(count[0]), .A3(count_enable), .ZN(n_0_8));
   AOI211_X1 i_0_13 (.A(load), .B(n_0_0), .C1(count[0]), .C2(count_enable), 
      .ZN(FF_inputs[0]));
   NOR2_X1 i_0_14 (.A1(count[0]), .A2(count_enable), .ZN(n_0_0));
endmodule

module COMPARATOR_EULAR__1(a, b, decision);
   input [5:0]a;
   input [5:0]b;
   output decision;

   datapath i_0 (.b(b), .a(a), .p_0(decision));
endmodule

module acc_buffer__1(clk, rst_sync, done_mul_in, d, done_mul_out, q);
   input clk;
   input rst_sync;
   input done_mul_in;
   input [15:0]d;
   output done_mul_out;
   output [15:0]q;

   DFF_X1 \temp_reg[15]  (.D(n_15), .CK(clk), .Q(q[15]), .QN());
   DFF_X1 \temp_reg[14]  (.D(n_14), .CK(clk), .Q(q[14]), .QN());
   DFF_X1 \temp_reg[13]  (.D(n_13), .CK(clk), .Q(q[13]), .QN());
   DFF_X1 \temp_reg[12]  (.D(n_12), .CK(clk), .Q(q[12]), .QN());
   DFF_X1 \temp_reg[11]  (.D(n_11), .CK(clk), .Q(q[11]), .QN());
   DFF_X1 \temp_reg[10]  (.D(n_10), .CK(clk), .Q(q[10]), .QN());
   DFF_X1 \temp_reg[9]  (.D(n_9), .CK(clk), .Q(q[9]), .QN());
   DFF_X1 \temp_reg[8]  (.D(n_8), .CK(clk), .Q(q[8]), .QN());
   DFF_X1 \temp_reg[7]  (.D(n_7), .CK(clk), .Q(q[7]), .QN());
   DFF_X1 \temp_reg[6]  (.D(n_6), .CK(clk), .Q(q[6]), .QN());
   DFF_X1 \temp_reg[5]  (.D(n_5), .CK(clk), .Q(q[5]), .QN());
   DFF_X1 \temp_reg[4]  (.D(n_4), .CK(clk), .Q(q[4]), .QN());
   DFF_X1 \temp_reg[3]  (.D(n_3), .CK(clk), .Q(q[3]), .QN());
   DFF_X1 \temp_reg[2]  (.D(n_2), .CK(clk), .Q(q[2]), .QN());
   DFF_X1 \temp_reg[1]  (.D(n_1), .CK(clk), .Q(q[1]), .QN());
   DFF_X1 \temp_reg[0]  (.D(n_0), .CK(clk), .Q(q[0]), .QN());
   DFF_X1 temp2_reg (.D(n_16), .CK(clk), .Q(done_mul_out), .QN());
   AND2_X1 i_0_0 (.A1(d[0]), .A2(rst_sync), .ZN(n_0));
   AND2_X1 i_0_1 (.A1(rst_sync), .A2(d[1]), .ZN(n_1));
   AND2_X1 i_0_2 (.A1(rst_sync), .A2(d[2]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(rst_sync), .A2(d[3]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(rst_sync), .A2(d[4]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(rst_sync), .A2(d[5]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(rst_sync), .A2(d[6]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(rst_sync), .A2(d[7]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(rst_sync), .A2(d[8]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(rst_sync), .A2(d[9]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(rst_sync), .A2(d[10]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(rst_sync), .A2(d[11]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(rst_sync), .A2(d[12]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(rst_sync), .A2(d[13]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(rst_sync), .A2(d[14]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(rst_sync), .A2(d[15]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(done_mul_in), .A2(rst_sync), .ZN(n_16));
endmodule

module FSM_END_EULAR__1(clk, rst_sync, F, R, D, outp);
   input clk;
   input rst_sync;
   input F;
   input R;
   input D;
   output [1:0]outp;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;

   DFF_X1 \current_state_reg[0]  (.D(n_1), .CK(clk), .Q(outp[0]), .QN());
   DFF_X1 \current_state_reg[1]  (.D(n_0), .CK(clk), .Q(outp[1]), .QN());
   NOR3_X1 i_0_0 (.A1(rst_sync), .A2(n_0_2), .A3(n_0_0), .ZN(n_0));
   AOI21_X1 i_0_1 (.A(outp[1]), .B1(n_0_3), .B2(F), .ZN(n_0_0));
   AOI211_X1 i_0_2 (.A(rst_sync), .B(n_0_1), .C1(n_0_2), .C2(outp[1]), .ZN(n_1));
   AOI21_X1 i_0_3 (.A(outp[0]), .B1(R), .B2(outp[1]), .ZN(n_0_1));
   AND2_X1 i_0_4 (.A1(outp[0]), .A2(D), .ZN(n_0_2));
   INV_X1 i_0_5 (.A(outp[0]), .ZN(n_0_3));
endmodule

module PosEdgeDFF__1_23__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module full_adder__1_66__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_62__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_67__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_66__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_62__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_77__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__1_67__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__1_95__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_91__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_96__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_95__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_91__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_86__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_82__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_87__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_86__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_82__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_97__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_96__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_87__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_115__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_111__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_116__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_115__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_111__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_106__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_102__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_107__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_106__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_102__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_117__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_116__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_107__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_135__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_131__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_136__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_135__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_131__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_126__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_122__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_127__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_126__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_122__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_137__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_136__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_127__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_155__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_151__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_156__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_155__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_151__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_146__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_142__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_147__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_146__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_142__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_157__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_156__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_147__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_175__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_171__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_176__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_175__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_171__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_166__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_162__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_167__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_166__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_162__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_177__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_176__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_167__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_195__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_191__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_196__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_195__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_191__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_186__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_182__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_187__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_186__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__1_182__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_197__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__1_196__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__1_187__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__1_215__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_211__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_216__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_215__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__1_211__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__1_206__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__1_202__1(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__1_207__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__1_206__1 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__1_202__1 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__1_217__1(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire intermediate_carry_1;
   wire [2:0]o_result_one_carry;
   wire intermediate_carry_0;
   wire [2:0]o_result_zero_carry;

   adder_block__1_216__1 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_one_carry), .intermediate_carry(
      intermediate_carry_1));
   adder_block__1_207__1 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), 
      .cin(), .o_result(o_result_zero_carry), .intermediate_carry(
      intermediate_carry_0));
   MUX2_X1 i_0_0 (.A(intermediate_carry_0), .B(intermediate_carry_1), .S(cin), 
      .Z(intermediate_carry));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_3 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module adder__parameterized2__1(A, B, is_subtract, result, carry, overflow_flag, 
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

   which_adder__1_77__1 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], 
      B[0]}), .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__1_97__1 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__1_117__1 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__1_137__1 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__1_157__1 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__1_177__1 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__1_197__1 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__1_217__1 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({n_6, result[15], result[14]}), 
      .intermediate_carry(intermediate_cs));
   XOR2_X1 i_7_0 (.A(n_6), .B(intermediate_cs), .Z(overflow_flag));
endmodule

module ACCUMULATOR_EULAR__1(clk, rst_sync, inp, outp, overflow_flag);
   input clk;
   input rst_sync;
   input [15:0]inp;
   output [15:0]outp;
   output overflow_flag;

   wire overflow_flag_temp;
   wire [15:0]result;
   wire n_0_0;

   adder__parameterized2__1 adder_ (.A(inp), .B(outp), .is_subtract(), .result(
      result), .carry(), .overflow_flag(overflow_flag_temp), .negative());
   DFF_X1 temp_overflow_flag_reg (.D(n_0), .CK(clk), .Q(overflow_flag), .QN());
   DFF_X1 \accum_reg[15]  (.D(n_16), .CK(clk), .Q(outp[15]), .QN());
   DFF_X1 \accum_reg[14]  (.D(n_15), .CK(clk), .Q(outp[14]), .QN());
   DFF_X1 \accum_reg[13]  (.D(n_14), .CK(clk), .Q(outp[13]), .QN());
   DFF_X1 \accum_reg[12]  (.D(n_13), .CK(clk), .Q(outp[12]), .QN());
   DFF_X1 \accum_reg[11]  (.D(n_12), .CK(clk), .Q(outp[11]), .QN());
   DFF_X1 \accum_reg[10]  (.D(n_11), .CK(clk), .Q(outp[10]), .QN());
   DFF_X1 \accum_reg[9]  (.D(n_10), .CK(clk), .Q(outp[9]), .QN());
   DFF_X1 \accum_reg[8]  (.D(n_9), .CK(clk), .Q(outp[8]), .QN());
   DFF_X1 \accum_reg[7]  (.D(n_8), .CK(clk), .Q(outp[7]), .QN());
   DFF_X1 \accum_reg[6]  (.D(n_7), .CK(clk), .Q(outp[6]), .QN());
   DFF_X1 \accum_reg[5]  (.D(n_6), .CK(clk), .Q(outp[5]), .QN());
   DFF_X1 \accum_reg[4]  (.D(n_5), .CK(clk), .Q(outp[4]), .QN());
   DFF_X1 \accum_reg[3]  (.D(n_4), .CK(clk), .Q(outp[3]), .QN());
   DFF_X1 \accum_reg[2]  (.D(n_3), .CK(clk), .Q(outp[2]), .QN());
   DFF_X1 \accum_reg[1]  (.D(n_2), .CK(clk), .Q(outp[1]), .QN());
   DFF_X1 \accum_reg[0]  (.D(n_1), .CK(clk), .Q(outp[0]), .QN());
   INV_X1 i_0_0 (.A(rst_sync), .ZN(n_0_0));
   AND2_X1 i_0_1 (.A1(overflow_flag_temp), .A2(n_0_0), .ZN(n_0));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(result[0]), .ZN(n_1));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(result[1]), .ZN(n_2));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(result[2]), .ZN(n_3));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(result[3]), .ZN(n_4));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(result[4]), .ZN(n_5));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(result[5]), .ZN(n_6));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(result[6]), .ZN(n_7));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(result[7]), .ZN(n_8));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(result[8]), .ZN(n_9));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(result[9]), .ZN(n_10));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(result[10]), .ZN(n_11));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(result[11]), .ZN(n_12));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(result[12]), .ZN(n_13));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(result[13]), .ZN(n_14));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(result[14]), .ZN(n_15));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(result[15]), .ZN(n_16));
endmodule

module acc_stage__1(clk, rst, rst_sync, done_mul, data, out_data, overflow);
   input clk;
   input rst;
   input rst_sync;
   input done_mul;
   input [15:0]data;
   output [15:0]out_data;
   output overflow;

   wire rst_new;

   PosEdgeDFF__1_23__1 delay_cycle (.clk(clk), .rst(rst), .D(rst_sync), .enable(), 
      .Q(rst_new));
   ACCUMULATOR_EULAR__1 accumulator (.clk(clk), .rst_sync(n_0), .inp(data), 
      .outp(out_data), .overflow_flag(overflow));
   OR2_X1 i_0_0 (.A1(rst_new), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module incrementor__1_20__1(in, out);
   input [15:0]in;
   output [15:0]out;

   wire \C[2] ;
   wire \C[3] ;
   wire \C[4] ;
   wire \C[5] ;
   wire \C[6] ;
   wire \C[7] ;
   wire \C[8] ;
   wire \C[9] ;
   wire \C[10] ;
   wire \C[11] ;
   wire \C[12] ;
   wire \C[13] ;
   wire \C[14] ;
   wire \C[15] ;

   INV_X1 i_0_0 (.A(in[0]), .ZN(out[0]));
   XOR2_X1 i_0_1 (.A(in[0]), .B(in[1]), .Z(out[1]));
   XOR2_X1 i_0_2 (.A(\C[2] ), .B(in[2]), .Z(out[2]));
   XOR2_X1 i_0_3 (.A(\C[3] ), .B(in[3]), .Z(out[3]));
   XOR2_X1 i_0_4 (.A(\C[4] ), .B(in[4]), .Z(out[4]));
   XOR2_X1 i_0_5 (.A(\C[5] ), .B(in[5]), .Z(out[5]));
   XOR2_X1 i_0_6 (.A(\C[6] ), .B(in[6]), .Z(out[6]));
   XOR2_X1 i_0_7 (.A(\C[7] ), .B(in[7]), .Z(out[7]));
   XOR2_X1 i_0_8 (.A(\C[8] ), .B(in[8]), .Z(out[8]));
   XOR2_X1 i_0_9 (.A(\C[9] ), .B(in[9]), .Z(out[9]));
   XOR2_X1 i_0_10 (.A(\C[10] ), .B(in[10]), .Z(out[10]));
   XOR2_X1 i_0_11 (.A(\C[11] ), .B(in[11]), .Z(out[11]));
   XOR2_X1 i_0_12 (.A(\C[12] ), .B(in[12]), .Z(out[12]));
   XOR2_X1 i_0_13 (.A(\C[13] ), .B(in[13]), .Z(out[13]));
   XOR2_X1 i_0_14 (.A(\C[14] ), .B(in[14]), .Z(out[14]));
   XOR2_X1 i_0_15 (.A(\C[15] ), .B(in[15]), .Z(out[15]));
   AND2_X1 i_0_16 (.A1(in[1]), .A2(in[0]), .ZN(\C[2] ));
   AND2_X1 i_0_17 (.A1(in[2]), .A2(\C[2] ), .ZN(\C[3] ));
   AND2_X1 i_0_18 (.A1(in[3]), .A2(\C[3] ), .ZN(\C[4] ));
   AND2_X1 i_0_19 (.A1(in[4]), .A2(\C[4] ), .ZN(\C[5] ));
   AND2_X1 i_0_20 (.A1(in[5]), .A2(\C[5] ), .ZN(\C[6] ));
   AND2_X1 i_0_21 (.A1(in[6]), .A2(\C[6] ), .ZN(\C[7] ));
   AND2_X1 i_0_22 (.A1(in[7]), .A2(\C[7] ), .ZN(\C[8] ));
   AND2_X1 i_0_23 (.A1(in[8]), .A2(\C[8] ), .ZN(\C[9] ));
   AND2_X1 i_0_24 (.A1(in[9]), .A2(\C[9] ), .ZN(\C[10] ));
   AND2_X1 i_0_25 (.A1(in[10]), .A2(\C[10] ), .ZN(\C[11] ));
   AND2_X1 i_0_26 (.A1(in[11]), .A2(\C[11] ), .ZN(\C[12] ));
   AND2_X1 i_0_27 (.A1(in[12]), .A2(\C[12] ), .ZN(\C[13] ));
   AND2_X1 i_0_28 (.A1(in[13]), .A2(\C[13] ), .ZN(\C[14] ));
   AND2_X1 i_0_29 (.A1(in[14]), .A2(\C[14] ), .ZN(\C[15] ));
endmodule

module mux_2_1__1_4__1(sel, in1, in2, out);
   input sel;
   input [15:0]in1;
   input [15:0]in2;
   output [15:0]out;

   wire n_0_0;

   AND2_X1 i_0_0 (.A1(in1[0]), .A2(n_0_0), .ZN(out[0]));
   OR2_X1 i_0_1 (.A1(in1[1]), .A2(sel), .ZN(out[1]));
   AND2_X1 i_0_2 (.A1(in1[2]), .A2(n_0_0), .ZN(out[2]));
   AND2_X1 i_0_3 (.A1(in1[3]), .A2(n_0_0), .ZN(out[3]));
   OR2_X1 i_0_4 (.A1(in1[4]), .A2(sel), .ZN(out[4]));
   OR2_X1 i_0_5 (.A1(in1[5]), .A2(sel), .ZN(out[5]));
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

module Register__1_2__1(clk, rst, load, data_in, data_out);
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

module incrementor__1(in, out);
   input [15:0]in;
   output [15:0]out;

   wire \C[2] ;
   wire \C[3] ;
   wire \C[4] ;
   wire \C[5] ;
   wire \C[6] ;
   wire \C[7] ;
   wire \C[8] ;
   wire \C[9] ;
   wire \C[10] ;
   wire \C[11] ;
   wire \C[12] ;
   wire \C[13] ;
   wire \C[14] ;
   wire \C[15] ;

   INV_X1 i_0_0 (.A(in[0]), .ZN(out[0]));
   XOR2_X1 i_0_1 (.A(in[0]), .B(in[1]), .Z(out[1]));
   XOR2_X1 i_0_2 (.A(\C[2] ), .B(in[2]), .Z(out[2]));
   XOR2_X1 i_0_3 (.A(\C[3] ), .B(in[3]), .Z(out[3]));
   XOR2_X1 i_0_4 (.A(\C[4] ), .B(in[4]), .Z(out[4]));
   XOR2_X1 i_0_5 (.A(\C[5] ), .B(in[5]), .Z(out[5]));
   XOR2_X1 i_0_6 (.A(\C[6] ), .B(in[6]), .Z(out[6]));
   XOR2_X1 i_0_7 (.A(\C[7] ), .B(in[7]), .Z(out[7]));
   XOR2_X1 i_0_8 (.A(\C[8] ), .B(in[8]), .Z(out[8]));
   XOR2_X1 i_0_9 (.A(\C[9] ), .B(in[9]), .Z(out[9]));
   XOR2_X1 i_0_10 (.A(\C[10] ), .B(in[10]), .Z(out[10]));
   XOR2_X1 i_0_11 (.A(\C[11] ), .B(in[11]), .Z(out[11]));
   XOR2_X1 i_0_12 (.A(\C[12] ), .B(in[12]), .Z(out[12]));
   XOR2_X1 i_0_13 (.A(\C[13] ), .B(in[13]), .Z(out[13]));
   XOR2_X1 i_0_14 (.A(\C[14] ), .B(in[14]), .Z(out[14]));
   XOR2_X1 i_0_15 (.A(\C[15] ), .B(in[15]), .Z(out[15]));
   AND2_X1 i_0_16 (.A1(in[1]), .A2(in[0]), .ZN(\C[2] ));
   AND2_X1 i_0_17 (.A1(in[2]), .A2(\C[2] ), .ZN(\C[3] ));
   AND2_X1 i_0_18 (.A1(in[3]), .A2(\C[3] ), .ZN(\C[4] ));
   AND2_X1 i_0_19 (.A1(in[4]), .A2(\C[4] ), .ZN(\C[5] ));
   AND2_X1 i_0_20 (.A1(in[5]), .A2(\C[5] ), .ZN(\C[6] ));
   AND2_X1 i_0_21 (.A1(in[6]), .A2(\C[6] ), .ZN(\C[7] ));
   AND2_X1 i_0_22 (.A1(in[7]), .A2(\C[7] ), .ZN(\C[8] ));
   AND2_X1 i_0_23 (.A1(in[8]), .A2(\C[8] ), .ZN(\C[9] ));
   AND2_X1 i_0_24 (.A1(in[9]), .A2(\C[9] ), .ZN(\C[10] ));
   AND2_X1 i_0_25 (.A1(in[10]), .A2(\C[10] ), .ZN(\C[11] ));
   AND2_X1 i_0_26 (.A1(in[11]), .A2(\C[11] ), .ZN(\C[12] ));
   AND2_X1 i_0_27 (.A1(in[12]), .A2(\C[12] ), .ZN(\C[13] ));
   AND2_X1 i_0_28 (.A1(in[13]), .A2(\C[13] ), .ZN(\C[14] ));
   AND2_X1 i_0_29 (.A1(in[14]), .A2(\C[14] ), .ZN(\C[15] ));
endmodule

module mux_2_1__1(sel, in1, in2, out);
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

module Register__1(clk, rst, load, data_in, data_out);
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

module fetch_stage__1(reset, clk, enable, init_start, finished_one_row, 
      final_done, pc_mat_addr, pc_vec_addr);
   input reset;
   input clk;
   input enable;
   input init_start;
   input finished_one_row;
   input final_done;
   output [15:0]pc_mat_addr;
   output [15:0]pc_vec_addr;

   wire [15:0]inc_mat_out;
   wire [15:0]mux_mat_out;
   wire [15:0]inc_vec_out;
   wire [15:0]mux_vec_out;
   wire sel_mat;
   wire sel_vec;

   incrementor__1_20__1 inc_mat (.in(pc_mat_addr), .out(inc_mat_out));
   mux_2_1__1_4__1 mux_mat (.sel(sel_mat), .in1(inc_mat_out), .in2(), .out(
      mux_mat_out));
   Register__1_2__1 pc_matrix (.clk(clk), .rst(reset), .load(n_0), .data_in(
      mux_mat_out), .data_out(pc_mat_addr));
   incrementor__1 inc_vec (.in(pc_vec_addr), .out(inc_vec_out));
   mux_2_1__1 mux_vec (.sel(sel_vec), .in1(inc_vec_out), .in2(), .out(
      mux_vec_out));
   Register__1 pc_vector (.clk(clk), .rst(reset), .load(n_1), .data_in(
      mux_vec_out), .data_out(pc_vec_addr));
   OR2_X1 i_0_0 (.A1(init_start), .A2(enable), .ZN(n_0));
   OR2_X1 i_0_1 (.A1(n_0), .A2(finished_one_row), .ZN(n_1));
   OR2_X1 i_0_2 (.A1(init_start), .A2(final_done), .ZN(sel_mat));
   OR2_X1 i_0_3 (.A1(sel_mat), .A2(finished_one_row), .ZN(sel_vec));
endmodule

module Pipeline__1(clk, rst, start, FINAL_DONE, return_default_state, shape_0, 
      shape_1, data_ready, out_acc, overflow, data_vec_mem, data_mat_mem, 
      pc_vec_addr, pc_mat_addr);
   input clk;
   input rst;
   input start;
   input FINAL_DONE;
   input return_default_state;
   input [5:0]shape_0;
   input [5:0]shape_1;
   output data_ready;
   output [15:0]out_acc;
   output overflow;
   input [15:0]data_vec_mem;
   input [15:0]data_mat_mem;
   output [15:0]pc_vec_addr;
   output [15:0]pc_mat_addr;

   wire init_start;
   wire new_start;
   wire mul_overflow;
   wire [15:0]mul_out;
   wire done_mul;
   wire [15:0]mul_buffer_out2;
   wire [15:0]mul_buffer_out1;
   wire start_mult;
   wire [5:0]col_count;
   wire finished_one_row;
   wire [15:0]data_to_acc;
   wire done_mul_acc;
   wire end_of_row;
   wire acc_overflow;
   wire fetch_enable;
   wire n_2_2;
   wire n_2_3;
   wire flush_mul_buffer;
   wire n_2_0;
   wire n_2_1;
   wire n_2_4;

   FSM_START_EULAR__1 fsm_start (.clk(n_0), .rst_sync(rst), .inp(start), 
      .final_done(FINAL_DONE), .outp(init_start));
   PosEdgeDFF__1_44__1 delay_start_half_cycle (.clk(clk), .rst(rst), .D(
      init_start), .enable(), .Q(new_start));
   mul_stage__1 mul_stage_ (.clk(clk), .rst(rst), .start_mul(start_mult), 
      .data1(mul_buffer_out1), .data2(mul_buffer_out2), .done_mul(done_mul), 
      .out(mul_out), .overflow_flag(mul_overflow));
   mul_buffer__1 mul_buffer_ (.clk(n_0), .rst_sync(n_1), .start_mult_in(), 
      .d1(data_vec_mem), .d2(data_mat_mem), .start_mult_out(start_mult), 
      .q1(mul_buffer_out1), .q2(mul_buffer_out2));
   PosEdgeCounter__1 count_cloumns (.clk(clk), .rst(rst), .load(end_of_row), 
      .count_enable(start_mult), .load_data(), .count(col_count));
   COMPARATOR_EULAR__1 if_end_of_row (.a(col_count), .b(shape_1), .decision(
      finished_one_row));
   acc_buffer__1 acc_buffer_ (.clk(n_0), .rst_sync(n_2), .done_mul_in(done_mul), 
      .d(mul_out), .done_mul_out(done_mul_acc), .q(data_to_acc));
   FSM_END_EULAR__1 fsm_end (.clk(n_0), .rst_sync(rst), .F(finished_one_row), 
      .R(done_mul_acc), .D(return_default_state), .outp({end_of_row, data_ready}));
   acc_stage__1 acc_stage_ (.clk(clk), .rst(rst), .rst_sync(return_default_state), 
      .done_mul(), .data(data_to_acc), .out_data(out_acc), .overflow(
      acc_overflow));
   PosEdgeDFF__1 delay_enable_half_cycle (.clk(n_0), .rst(rst), .D(
      flush_mul_buffer), .enable(), .Q(fetch_enable));
   fetch_stage__1 fetch_stage_ (.reset(rst), .clk(clk), .enable(fetch_enable), 
      .init_start(init_start), .finished_one_row(end_of_row), .final_done(
      FINAL_DONE), .pc_mat_addr(pc_mat_addr), .pc_vec_addr(pc_vec_addr));
   OR2_X1 i_0_0 (.A1(mul_overflow), .A2(acc_overflow), .ZN(overflow));
   INV_X1 i_1_0 (.A(clk), .ZN(n_0));
   INV_X1 i_2_3 (.A(end_of_row), .ZN(n_2_2));
   AOI211_X1 i_2_4 (.A(return_default_state), .B(new_start), .C1(n_2_2), 
      .C2(done_mul), .ZN(n_2_3));
   NAND2_X1 i_2_0 (.A1(n_2_4), .A2(n_2_3), .ZN(n_1));
   INV_X1 i_2_1 (.A(n_2_3), .ZN(flush_mul_buffer));
   NAND2_X1 i_2_2 (.A1(n_2_4), .A2(n_2_0), .ZN(n_2));
   NAND2_X1 i_2_5 (.A1(n_2_1), .A2(done_mul), .ZN(n_2_0));
   OAI21_X1 i_2_6 (.A(end_of_row), .B1(data_ready), .B2(done_mul_acc), .ZN(n_2_1));
   INV_X1 i_2_7 (.A(rst), .ZN(n_2_4));
endmodule

module full_adder__2_368(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_364(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_369(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_368 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_364 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_379(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__2_369 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__2_397(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_393(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_398(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_397 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_393 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_388(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_384(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_389(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_388 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_384 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_399(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_398 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_389 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_417(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_413(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_418(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_417 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_413 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_408(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_404(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_409(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_408 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_404 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_419(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_418 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_409 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_437(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_433(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_438(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_437 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_433 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_428(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_424(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_429(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_428 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_424 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_439(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_438 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_429 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_457(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_453(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_458(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_457 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_453 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_448(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_444(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_449(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_448 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_444 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_459(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_458 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_449 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_477(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_473(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_478(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_477 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_473 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_468(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_464(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_469(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_468 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_464 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_479(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_478 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_469 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_497(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_493(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_498(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_497 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_493 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_488(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_484(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_489(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_488 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_484 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_499(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_498 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_489 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_517(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_513(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_518(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_517 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__2_513 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_508(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_504(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_509(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_508 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(intermediate_carry));
   full_adder__2_504 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(intermediate_carry), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_519(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire intermediate_carry_1;
   wire [2:0]o_result_one_carry;
   wire intermediate_carry_0;
   wire [2:0]o_result_zero_carry;

   adder_block__2_518 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry(intermediate_carry_1));
   adder_block__2_509 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
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

module adder__2_9(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;
   wire intermediate_cs;

   which_adder__2_379 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], B[0]}), 
      .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__2_399 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__2_419 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__2_439 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__2_459 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__2_479 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__2_499 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__2_519 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({n_6, result[15], result[14]}), 
      .intermediate_carry(intermediate_cs));
   XOR2_X1 i_7_0 (.A(n_6), .B(intermediate_cs), .Z(overflow_flag));
endmodule

module full_adder__2_528(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__2_524(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_529(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_528 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__2_524 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_539(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__2_529 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module which_adder__2_7(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   AND2_X1 i_0_0 (.A1(cin), .A2(i_add1[0]), .ZN(o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized1__2_10(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [3:0]A;
   input [3:0]B;
   input is_subtract;
   output [3:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__2_539 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__2_7 Gen_Modules_1_which_adder_x (.i_add1({uc_0, A[2]}), .i_add2(), 
      .cin(cs), .o_result({uc_1, result[3], result[2]}), .intermediate_carry());
endmodule

module full_adder__2_694(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_699(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_694 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_709(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__2_699 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__2_676(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_681(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_676 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_682(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_681 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_656(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_661(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_656 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_662(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_661 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_636(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_641(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_636 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_642(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_641 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_616(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_621(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_616 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_622(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_621 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_596(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_601(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_596 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_602(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_601 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_576(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_581(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_576 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_582(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_581 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_556(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__2_561(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_556 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__2_562(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_561 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__2_710(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__2_709 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], uc_0}), .intermediate_carry());
   which_adder__2_682 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__2_662 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__2_642 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__2_622 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__2_602 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__2_582 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__2_562 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_5), .o_result({uc_1, result[15], result[14]}), 
      .intermediate_carry());
endmodule

module full_adder__2_869(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_865(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_870(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_869 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_865 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_880(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__2_870 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__2_851(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_847(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_852(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_851 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_847 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_842(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_838(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_843(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_842 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_838 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_853(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_852 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_843 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_831(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_827(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_832(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_831 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_827 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_822(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_818(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_823(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_822 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_818 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_833(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_832 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_823 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_811(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_807(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_812(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_811 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_807 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_802(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_798(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_803(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_802 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_798 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_813(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_812 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_803 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_791(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_787(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_792(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_791 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_787 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_782(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_778(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_783(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_782 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_778 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_793(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_792 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_783 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_771(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_767(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_772(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_771 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_767 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_762(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_758(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_763(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_762 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_758 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_773(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_772 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_763 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_751(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_747(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_752(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_751 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_747 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__2_742(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_738(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__2_743(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_742 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_738 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_753(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_752 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__2_743 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__2_731(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_727(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__2_732(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_731 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_727 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module full_adder__2_722(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__2_718(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   wire n_0_0;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(n_0_0));
   XOR2_X1 i_0_1 (.A(n_0_0), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__2_723(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_722 full_adder_inst1 (.i_bit1(i_add1[1]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__2_718 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder__2_733(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__2_732 adder_block_inst2 (.i_add1({i_add1[1], uc_0}), .i_add2(
      i_add2), .cin(), .o_result({uc_1, o_result_one_carry[1], 
      o_result_one_carry[0]}), .intermediate_carry());
   adder_block__2_723 adder_block_inst1 (.i_add1({i_add1[1], uc_2}), .i_add2(
      i_add2), .cin(), .o_result({uc_3, o_result_zero_carry[1], 
      o_result_zero_carry[0]}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
endmodule

module adder__2_881(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [15:0]A;
   input [15:0]B;
   input is_subtract;
   output [15:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__2_880 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({B[1], B[0]}), 
      .cin(), .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__2_853 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({B[3], B[2]}), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__2_833 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({B[5], B[4]}), .cin(n_0), .o_result({n_1, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__2_813 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({B[7], B[6]}), .cin(n_1), .o_result({n_2, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__2_793 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({B[9], B[8]}), .cin(n_2), .o_result({n_3, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__2_773 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({B[11], B[10]}), .cin(n_3), .o_result({n_4, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__2_753 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({B[13], B[12]}), .cin(n_4), .o_result({n_5, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__2_733 Gen_Modules_7_which_adder_x (.i_add1({A[15], uc_0}), 
      .i_add2({B[15], B[14]}), .cin(n_5), .o_result({uc_1, result[15], 
      result[14]}), .intermediate_carry());
endmodule

module full_adder__2_104(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_109(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_104 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_119(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__2_109 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result[2], o_result[1], uc_0}), .intermediate_carry());
endmodule

module full_adder__2_133(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_138(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_133 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_139(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_138 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_153(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_158(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_153 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_159(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_158 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_173(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_178(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_173 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_179(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_178 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_193(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_198(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_193 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_199(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_198 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_213(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_218(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_213 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_219(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_218 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_233(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_238(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_233 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_239(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_238 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_253(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_258(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_253 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_259(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_258 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_273(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_278(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_273 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_279(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_278 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__2_293(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_298(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_293 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_299(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_298 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_313(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_318(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_313 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_319(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_318 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   AND2_X1 i_0_1 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
   XOR2_X1 i_0_2 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module full_adder__2_333(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__2_338(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__2_333 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__2_339(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__2_338 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module which_adder__2_359(i_add1, i_add2, cin, o_result, intermediate_carry);
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

module adder__parameterized0__2_8(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [31:0]A;
   input [31:0]B;
   input is_subtract;
   output [31:0]result;
   output carry;
   output overflow_flag;
   output negative;

   which_adder__2_119 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2(), .cin(), .o_result({n_0, result[7], uc_0}), .intermediate_carry());
   which_adder__2_139 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2(), .cin(n_0), .o_result({n_1, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__2_159 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2(), .cin(n_1), .o_result({n_2, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__2_179 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2(), .cin(n_2), .o_result({n_3, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__2_199 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2(), .cin(n_3), .o_result({n_4, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__2_219 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2(), .cin(n_4), .o_result({n_5, result[17], result[16]}), 
      .intermediate_carry());
   which_adder__2_239 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2(), .cin(n_5), .o_result({n_6, result[19], result[18]}), 
      .intermediate_carry());
   which_adder__2_259 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2(), .cin(n_6), .o_result({n_7, result[21], result[20]}), 
      .intermediate_carry());
   which_adder__2_279 Gen_Modules_11_which_adder_x (.i_add1({A[23], A[22]}), 
      .i_add2(), .cin(n_7), .o_result({n_8, result[23], result[22]}), 
      .intermediate_carry());
   which_adder__2_299 Gen_Modules_12_which_adder_x (.i_add1({A[25], A[24]}), 
      .i_add2(), .cin(n_8), .o_result({n_9, result[25], result[24]}), 
      .intermediate_carry());
   which_adder__2_319 Gen_Modules_13_which_adder_x (.i_add1({A[27], A[26]}), 
      .i_add2(), .cin(n_9), .o_result({n_10, result[27], result[26]}), 
      .intermediate_carry());
   which_adder__2_339 Gen_Modules_14_which_adder_x (.i_add1({A[29], A[28]}), 
      .i_add2(), .cin(n_10), .o_result({n_11, result[29], result[28]}), 
      .intermediate_carry());
   which_adder__2_359 Gen_Modules_15_which_adder_x (.i_add1({A[31], uc_1}), 
      .i_add2(), .cin(n_11), .o_result({uc_2, result[31], result[30]}), 
      .intermediate_carry());
endmodule

module multiplier__2_11(clk, rst, multiplicand, multiplier, start, result, 
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

   adder__parameterized1__2_10 adder_counter (.A({uc_0, counter[2], counter[1], 
      counter[0]}), .B(), .is_subtract(), .result({counter_finish, n_2, n_1, n_0}), 
      .carry(), .overflow_flag(), .negative());
   adder__2_710 adder_multiplicand_complement (.A({n_100, n_98, n_96, n_94, n_92, 
      n_89, n_87, n_85, n_83, n_81, n_79, n_77, n_75, n_73, n_71, n_70}), .B(), 
      .is_subtract(), .result({multiplicand_complement[15], 
      multiplicand_complement[14], multiplicand_complement[13], 
      multiplicand_complement[12], multiplicand_complement[11], 
      multiplicand_complement[10], multiplicand_complement[9], 
      multiplicand_complement[8], multiplicand_complement[7], 
      multiplicand_complement[6], multiplicand_complement[5], 
      multiplicand_complement[4], multiplicand_complement[3], 
      multiplicand_complement[2], multiplicand_complement[1], uc_1}), .carry(), 
      .overflow_flag(), .negative());
   adder__2_881 adder_loop (.A({A[15], uc_2, A[13], A[12], A[11], A[10], A[9], 
      A[8], A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]}), .B({n_101, n_99, 
      n_97, n_95, n_93, n_90, n_88, n_86, n_84, n_82, n_80, n_78, n_76, n_74, 
      n_72, n_69}), .is_subtract(), .result(AB), .carry(), .overflow_flag(), 
      .negative());
   adder__parameterized0__2_8 adder_round (.A({A[15], uc_3, A[13], A[12], A[11], 
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

module incrementor__2_4(in, out);
   input [15:0]in;
   output [15:0]out;

   wire \C[2] ;
   wire \C[3] ;
   wire \C[4] ;
   wire \C[5] ;
   wire \C[6] ;
   wire \C[7] ;
   wire \C[8] ;
   wire \C[9] ;
   wire \C[10] ;
   wire \C[11] ;
   wire \C[12] ;
   wire \C[13] ;
   wire \C[14] ;
   wire \C[15] ;

   INV_X1 i_0_0 (.A(in[0]), .ZN(out[0]));
   XOR2_X1 i_0_1 (.A(in[0]), .B(in[1]), .Z(out[1]));
   XOR2_X1 i_0_2 (.A(\C[2] ), .B(in[2]), .Z(out[2]));
   XOR2_X1 i_0_3 (.A(\C[3] ), .B(in[3]), .Z(out[3]));
   XOR2_X1 i_0_4 (.A(\C[4] ), .B(in[4]), .Z(out[4]));
   XOR2_X1 i_0_5 (.A(\C[5] ), .B(in[5]), .Z(out[5]));
   XOR2_X1 i_0_6 (.A(\C[6] ), .B(in[6]), .Z(out[6]));
   XOR2_X1 i_0_7 (.A(\C[7] ), .B(in[7]), .Z(out[7]));
   XOR2_X1 i_0_8 (.A(\C[8] ), .B(in[8]), .Z(out[8]));
   XOR2_X1 i_0_9 (.A(\C[9] ), .B(in[9]), .Z(out[9]));
   XOR2_X1 i_0_10 (.A(\C[10] ), .B(in[10]), .Z(out[10]));
   XOR2_X1 i_0_11 (.A(\C[11] ), .B(in[11]), .Z(out[11]));
   XOR2_X1 i_0_12 (.A(\C[12] ), .B(in[12]), .Z(out[12]));
   XOR2_X1 i_0_13 (.A(\C[13] ), .B(in[13]), .Z(out[13]));
   XOR2_X1 i_0_14 (.A(\C[14] ), .B(in[14]), .Z(out[14]));
   XOR2_X1 i_0_15 (.A(\C[15] ), .B(in[15]), .Z(out[15]));
   AND2_X1 i_0_16 (.A1(in[1]), .A2(in[0]), .ZN(\C[2] ));
   AND2_X1 i_0_17 (.A1(in[2]), .A2(\C[2] ), .ZN(\C[3] ));
   AND2_X1 i_0_18 (.A1(in[3]), .A2(\C[3] ), .ZN(\C[4] ));
   AND2_X1 i_0_19 (.A1(in[4]), .A2(\C[4] ), .ZN(\C[5] ));
   AND2_X1 i_0_20 (.A1(in[5]), .A2(\C[5] ), .ZN(\C[6] ));
   AND2_X1 i_0_21 (.A1(in[6]), .A2(\C[6] ), .ZN(\C[7] ));
   AND2_X1 i_0_22 (.A1(in[7]), .A2(\C[7] ), .ZN(\C[8] ));
   AND2_X1 i_0_23 (.A1(in[8]), .A2(\C[8] ), .ZN(\C[9] ));
   AND2_X1 i_0_24 (.A1(in[9]), .A2(\C[9] ), .ZN(\C[10] ));
   AND2_X1 i_0_25 (.A1(in[10]), .A2(\C[10] ), .ZN(\C[11] ));
   AND2_X1 i_0_26 (.A1(in[11]), .A2(\C[11] ), .ZN(\C[12] ));
   AND2_X1 i_0_27 (.A1(in[12]), .A2(\C[12] ), .ZN(\C[13] ));
   AND2_X1 i_0_28 (.A1(in[13]), .A2(\C[13] ), .ZN(\C[14] ));
   AND2_X1 i_0_29 (.A1(in[14]), .A2(\C[14] ), .ZN(\C[15] ));
endmodule

module Register__2_3(clk, rst, load, data_in, data_out);
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

module JOIN_PIPE(rst, clk, data_ready1, data_ready2, data_pipe1, data_pipe2, 
      h_step, clear, return_default_state, overflow_flag, finished, result_saved, 
      pc_saved);
   input rst;
   input clk;
   input data_ready1;
   input data_ready2;
   input [15:0]data_pipe1;
   input [15:0]data_pipe2;
   input [15:0]h_step;
   input clear;
   output return_default_state;
   output overflow_flag;
   output finished;
   output [15:0]result_saved;
   output [15:0]pc_saved;

   wire [15:0]result_add;
   wire done_mul;
   wire [15:0]pc_answer;
   wire finished_mul;
   wire n_1_0;

   adder__2_9 add (.A(data_pipe1), .B(data_pipe2), .is_subtract(), .result(
      result_add), .carry(), .overflow_flag(overflow_flag), .negative());
   multiplier__2_11 multiplier_ (.clk(clk), .rst(n_1), .multiplicand(result_add), 
      .multiplier(h_step), .start(return_default_state), .result(result_saved), 
      .overflow_flag(overflow_flag), .finish(done_mul));
   incrementor__2_4 inc_pc (.in(pc_saved), .out(pc_answer));
   Register__2_3 pc_write (.clk(clk), .rst(n_1), .load(finished), .data_in(
      pc_answer), .data_out(pc_saved));
   DFF_X1 finished_mul_reg (.D(n_0), .CK(clk), .Q(finished_mul), .QN());
   AND2_X1 i_0_0 (.A1(data_ready1), .A2(data_ready2), .ZN(return_default_state));
   INV_X1 i_1_0 (.A(rst), .ZN(n_1_0));
   NAND2_X1 i_1_1 (.A1(done_mul), .A2(n_1_0), .ZN(n_0));
   AND2_X1 i_1_2 (.A1(done_mul), .A2(finished_mul), .ZN(finished));
   OR2_X1 i_1_3 (.A1(rst), .A2(clear), .ZN(n_1));
endmodule

module PosEdgeDFF__2_14(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__2_17(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__2_20(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__2_23(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__2_26(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeDFF__2_1(clk, rst, D, enable, Q);
   input clk;
   input rst;
   input D;
   input enable;
   output Q;

   wire n_1_0;

   DFF_X1 Q_reg (.D(n_0), .CK(clk), .Q(Q), .QN());
   INV_X1 i_1_0 (.A(D), .ZN(n_1_0));
   NOR2_X1 i_1_1 (.A1(n_1_0), .A2(rst), .ZN(n_0));
endmodule

module PosEdgeCounter__2_2(clk, rst, load, count_enable, load_data, count);
   input clk;
   input rst;
   input load;
   input count_enable;
   input [5:0]load_data;
   output [5:0]count;

   wire [5:0]FF_inputs;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_0;

   PosEdgeDFF__2_14 generate_flipflops_5_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[5]), .enable(), .Q(count[5]));
   PosEdgeDFF__2_17 generate_flipflops_4_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[4]), .enable(), .Q(count[4]));
   PosEdgeDFF__2_20 generate_flipflops_3_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[3]), .enable(), .Q(count[3]));
   PosEdgeDFF__2_23 generate_flipflops_2_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[2]), .enable(), .Q(count[2]));
   PosEdgeDFF__2_26 generate_flipflops_1_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[1]), .enable(), .Q(count[1]));
   PosEdgeDFF__2_1 generate_flipflops_0_DFF (.clk(clk), .rst(rst), .D(
      FF_inputs[0]), .enable(), .Q(count[0]));
   NOR3_X1 i_0_2 (.A1(load), .A2(n_0_8), .A3(n_0_1), .ZN(FF_inputs[1]));
   AOI21_X1 i_0_3 (.A(count[1]), .B1(count[0]), .B2(count_enable), .ZN(n_0_1));
   NOR3_X1 i_0_4 (.A1(load), .A2(n_0_7), .A3(n_0_2), .ZN(FF_inputs[2]));
   NOR2_X1 i_0_5 (.A1(count[2]), .A2(n_0_8), .ZN(n_0_2));
   NOR2_X1 i_0_6 (.A1(n_0_3), .A2(load), .ZN(FF_inputs[3]));
   XNOR2_X1 i_0_7 (.A(count[3]), .B(n_0_7), .ZN(n_0_3));
   NOR3_X1 i_0_8 (.A1(load), .A2(n_0_6), .A3(n_0_4), .ZN(FF_inputs[4]));
   AOI21_X1 i_0_9 (.A(count[4]), .B1(count[3]), .B2(n_0_7), .ZN(n_0_4));
   NOR2_X1 i_0_10 (.A1(load), .A2(n_0_5), .ZN(FF_inputs[5]));
   XNOR2_X1 i_0_11 (.A(count[5]), .B(n_0_6), .ZN(n_0_5));
   AND3_X1 i_0_12 (.A1(count[4]), .A2(count[3]), .A3(n_0_7), .ZN(n_0_6));
   AND2_X1 i_0_13 (.A1(count[2]), .A2(n_0_8), .ZN(n_0_7));
   AND3_X1 i_0_14 (.A1(count[1]), .A2(count[0]), .A3(count_enable), .ZN(n_0_8));
   AOI211_X1 i_0_0 (.A(load), .B(n_0_0), .C1(count[0]), .C2(count_enable), 
      .ZN(FF_inputs[0]));
   NOR2_X1 i_0_1 (.A1(count[0]), .A2(count_enable), .ZN(n_0_0));
endmodule

module datapath__0_191(b, a, p_0);
   input [5:0]b;
   input [5:0]a;
   output p_0;

   NOR3_X1 i_0 (.A1(n_0), .A2(n_2), .A3(n_1), .ZN(p_0));
   NAND4_X1 i_1 (.A1(n_6), .A2(n_5), .A3(n_4), .A4(n_3), .ZN(n_0));
   XOR2_X1 i_2 (.A(b[5]), .B(a[5]), .Z(n_1));
   XOR2_X1 i_3 (.A(b[4]), .B(a[4]), .Z(n_2));
   XNOR2_X1 i_4 (.A(b[1]), .B(a[1]), .ZN(n_3));
   XNOR2_X1 i_5 (.A(b[0]), .B(a[0]), .ZN(n_4));
   XNOR2_X1 i_6 (.A(b[2]), .B(a[2]), .ZN(n_5));
   XNOR2_X1 i_7 (.A(b[3]), .B(a[3]), .ZN(n_6));
endmodule

module COMPARATOR_EULAR__2_0(a, b, decision);
   input [5:0]a;
   input [5:0]b;
   output decision;

   datapath__0_191 i_0 (.b(b), .a(a), .p_0(decision));
endmodule

module Main_Euler(clk, rst, start, h_step, data1_0, data2_0, data1_1, data2_1, 
      add1_0, add2_0, add1_1, add2_1, result_saved, pc_saved, result_stored, 
      finishh, errorr, shape1_0, shape1_1, shape2_0, shape2_1);
   input clk;
   input rst;
   input start;
   input [15:0]h_step;
   input [15:0]data1_0;
   input [15:0]data2_0;
   input [15:0]data1_1;
   input [15:0]data2_1;
   output [15:0]add1_0;
   output [15:0]add2_0;
   output [15:0]add1_1;
   output [15:0]add2_1;
   output [15:0]result_saved;
   output [15:0]pc_saved;
   output result_stored;
   output finishh;
   output errorr;
   input [5:0]shape1_0;
   input [5:0]shape1_1;
   input [5:0]shape2_0;
   input [5:0]shape2_1;

   wire overflow2;
   wire [15:0]data2;
   wire data_ready2;
   wire overflow1;
   wire [15:0]data1;
   wire data_ready1;
   wire overflow3;
   wire return_default_state;
   wire [5:0]row_count;
   wire end_op;
   wire DONE;
   wire n_0_1;
   wire n_0_0_0;
   wire n_0_2;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0;
   wire n_0_0_6;
   wire n_0_0_7;

   Pipeline pipeline2 (.clk(clk), .rst(n_0), .start(start), .FINAL_DONE(finishh), 
      .return_default_state(return_default_state), .shape_0(), .shape_1(shape2_1), 
      .data_ready(data_ready2), .out_acc(data2), .overflow(overflow2), 
      .data_vec_mem(data1_1), .data_mat_mem(data2_1), .pc_vec_addr(add1_1), 
      .pc_mat_addr(add2_1));
   Pipeline__1 pipeline1 (.clk(clk), .rst(n_0), .start(start), .FINAL_DONE(
      finishh), .return_default_state(return_default_state), .shape_0(), 
      .shape_1(shape1_1), .data_ready(data_ready1), .out_acc(data1), .overflow(
      overflow1), .data_vec_mem(data1_0), .data_mat_mem(data2_0), .pc_vec_addr(
      add1_0), .pc_mat_addr(add2_0));
   JOIN_PIPE join_pipe (.rst(rst), .clk(clk), .data_ready1(data_ready1), 
      .data_ready2(data_ready2), .data_pipe1(data1), .data_pipe2(data2), 
      .h_step(h_step), .clear(finishh), .return_default_state(
      return_default_state), .overflow_flag(overflow3), .finished(result_stored), 
      .result_saved(result_saved), .pc_saved(pc_saved));
   PosEdgeCounter__2_2 count_cloumns (.clk(n_0_0), .rst(rst), .load(DONE), 
      .count_enable(return_default_state), .load_data(), .count(row_count));
   COMPARATOR_EULAR__2_0 if_end_of_op (.a(row_count), .b(shape1_0), .decision(
      end_op));
   DFF_X1 DONE_reg (.D(n_0_3), .CK(clk), .Q(DONE), .QN());
   DFF_X1 error_reg (.D(n_0_2), .CK(clk), .Q(errorr), .QN());
   DFF_X1 finish_reg (.D(n_0_1), .CK(clk), .Q(finishh), .QN());
   AOI21_X1 i_0_0_0 (.A(rst), .B1(n_0_0_0), .B2(n_0_0_3), .ZN(n_0_1));
   MUX2_X1 i_0_0_1 (.A(n_0_0_2), .B(start), .S(finishh), .Z(n_0_0_0));
   AOI21_X1 i_0_0_2 (.A(rst), .B1(n_0_0_1), .B2(n_0_0_3), .ZN(n_0_2));
   NAND3_X1 i_0_0_3 (.A1(n_0_0_5), .A2(n_0_0_2), .A3(errorr), .ZN(n_0_0_1));
   NAND2_X1 i_0_0_4 (.A1(DONE), .A2(result_stored), .ZN(n_0_0_2));
   NOR3_X1 i_0_0_5 (.A1(overflow2), .A2(overflow3), .A3(overflow1), .ZN(n_0_0_3));
   NOR2_X1 i_0_0_7 (.A1(n_0_0_4), .A2(rst), .ZN(n_0_3));
   OAI21_X1 i_0_0_8 (.A(n_0_0_5), .B1(end_op), .B2(DONE), .ZN(n_0_0_4));
   NAND2_X1 i_0_0_9 (.A1(finishh), .A2(start), .ZN(n_0_0_5));
   INV_X1 i_0_0_10 (.A(clk), .ZN(n_0_0));
   NAND2_X1 i_0_0_6 (.A1(n_0_0_6), .A2(n_0_0_7), .ZN(n_0));
   INV_X1 i_0_0_11 (.A(rst), .ZN(n_0_0_6));
   INV_X1 i_0_0_12 (.A(finishh), .ZN(n_0_0_7));
endmodule
