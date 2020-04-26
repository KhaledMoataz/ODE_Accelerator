/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed Apr 22 17:31:17 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1796731135 */

module full_adder__0_303(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   INV_X1 i_3 (.A(i_bit1), .ZN(o_sum));
endmodule

module full_adder__0_299(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_304(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_303 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(), .i_carry(), 
      .o_sum(o_result[0]), .o_carry());
   full_adder__0_299 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_314(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   adder_block__0_304 adder_block_inst1 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result(o_result), .intermediate_carry());
endmodule

module full_adder__0_328(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_carry), .A2(i_bit1), .ZN(o_carry));
endmodule

module adder_block__0_333(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_328 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_334(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_333 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({o_result_one_carry[2], o_result_one_carry[1], uc_0}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
   AND2_X1 i_0_2 (.A1(cin), .A2(o_result_one_carry[2]), .ZN(o_result[2]));
endmodule

module full_adder__0_49(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_carry), .Z(o_sum));
endmodule

module adder_block__0_54(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_49 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(), .i_carry(
      i_add1[0]), .o_sum(o_result[1]), .o_carry());
endmodule

module which_adder(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;

   adder_block__0_54 adder_block_inst2 (.i_add1(i_add1), .i_add2(), .cin(), 
      .o_result({uc_0, o_result_one_carry[1], uc_1}), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(i_add1[1]), .B(o_result_one_carry[1]), .S(cin), .Z(
      o_result[1]));
   XOR2_X1 i_0_1 (.A(i_add1[0]), .B(cin), .Z(o_result[0]));
endmodule

module adder__parameterized0(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [5:0]A;
   input [5:0]B;
   input is_subtract;
   output [5:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_314 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2(), .cin(), 
      .o_result({cs, result[1], result[0]}), .intermediate_carry());
   which_adder__0_334 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2(), .cin(cs), .o_result({n_0, result[3], result[2]}), 
      .intermediate_carry());
   which_adder Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), .i_add2(), 
      .cin(n_0), .o_result({uc_0, result[5], result[4]}), .intermediate_carry());
endmodule

module full_adder__0_72(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_68(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_73(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_72 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_68 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_63(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_59(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_64(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_63 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_59 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_74(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_73 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_64 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_92(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_88(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_93(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_92 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_88 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_83(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_79(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_84(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_83 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_79 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_94(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_93 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_84 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_112(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_108(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_113(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_112 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_108 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_103(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_99(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_104(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_103 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_99 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_114(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_113 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_104 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_132(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_128(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_133(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_132 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_128 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_123(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_119(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_124(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_123 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_119 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_134(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_133 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_124 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_152(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_148(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_153(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_152 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_148 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_143(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_139(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_144(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_143 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_139 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_154(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_153 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_144 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_172(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_168(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_173(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_172 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_168 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_163(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_159(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_164(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_163 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_159 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_174(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_173 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_164 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_192(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_188(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_193(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_192 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_188 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_183(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_179(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_184(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_183 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_179 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_194(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_193 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_184 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_212(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_208(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_213(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_212 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_208 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_203(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_199(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_204(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_203 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[0]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_199 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_214(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_213 adder_block_inst2 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_204 adder_block_inst1 (.i_add1(i_add1), .i_add2(i_add2), .cin(), 
      .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_232(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_228(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_233(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_232 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_228 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_223(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_219(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_224(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_223 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_219 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_234(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_233 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_224 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_252(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
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

   full_adder__0_252 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_248 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_243(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_239(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_244(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_243 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_239 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_254(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_253 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_244 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_272(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit2), .B(i_bit1), .ZN(o_sum));
   OR2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
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

   full_adder__0_272 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_268 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module full_adder__0_263(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
   AND2_X1 i_0_1 (.A1(i_bit2), .A2(i_bit1), .ZN(o_carry));
endmodule

module full_adder__0_259(i_bit1, i_bit2, i_carry, o_sum, o_carry);
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

module adder_block__0_264(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_263 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry(n_0));
   full_adder__0_259 full_adder_inst2 (.i_bit1(i_add1[1]), .i_bit2(i_add2[1]), 
      .i_carry(n_0), .o_sum(o_result[1]), .o_carry(o_result[2]));
endmodule

module which_adder__0_274(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_273 adder_block_inst2 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_0}), .cin(), .o_result(o_result_one_carry), .intermediate_carry());
   adder_block__0_264 adder_block_inst1 (.i_add1(i_add1), .i_add2({i_add2[1], 
      uc_1}), .cin(), .o_result(o_result_zero_carry), .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
   MUX2_X1 i_0_1 (.A(o_result_zero_carry[1]), .B(o_result_one_carry[1]), 
      .S(cin), .Z(o_result[1]));
   MUX2_X1 i_0_2 (.A(o_result_zero_carry[2]), .B(o_result_one_carry[2]), 
      .S(cin), .Z(o_result[2]));
endmodule

module full_adder__0_292(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XNOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .ZN(o_sum));
endmodule

module adder_block__0_293(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_292 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
endmodule

module full_adder__0_283(i_bit1, i_bit2, i_carry, o_sum, o_carry);
   input i_bit1;
   input i_bit2;
   input i_carry;
   output o_sum;
   output o_carry;

   XOR2_X1 i_0_0 (.A(i_bit1), .B(i_bit2), .Z(o_sum));
endmodule

module adder_block__0_284(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   full_adder__0_283 full_adder_inst1 (.i_bit1(i_add1[0]), .i_bit2(i_add2[1]), 
      .i_carry(), .o_sum(o_result[0]), .o_carry());
endmodule

module which_adder__0_294(i_add1, i_add2, cin, o_result, intermediate_carry);
   input [1:0]i_add1;
   input [1:0]i_add2;
   input cin;
   output [2:0]o_result;
   output intermediate_carry;

   wire [2:0]o_result_one_carry;
   wire [2:0]o_result_zero_carry;

   adder_block__0_293 adder_block_inst2 (.i_add1({uc_0, i_add1[0]}), .i_add2({
      i_add2[1], uc_1}), .cin(), .o_result({uc_2, uc_3, o_result_one_carry[0]}), 
      .intermediate_carry());
   adder_block__0_284 adder_block_inst1 (.i_add1({uc_4, i_add1[0]}), .i_add2({
      i_add2[1], uc_5}), .cin(), .o_result({uc_6, uc_7, o_result_zero_carry[0]}), 
      .intermediate_carry());
   MUX2_X1 i_0_0 (.A(o_result_zero_carry[0]), .B(o_result_one_carry[0]), 
      .S(cin), .Z(o_result[0]));
endmodule

module adder(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [23:0]A;
   input [23:0]B;
   input is_subtract;
   output [23:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire cs;

   which_adder__0_74 which_adder_0 (.i_add1({A[1], A[0]}), .i_add2({n_21, n_20}), 
      .cin(is_subtract), .o_result({cs, result[1], result[0]}), 
      .intermediate_carry());
   which_adder__0_94 Gen_Modules_1_which_adder_x (.i_add1({A[3], A[2]}), 
      .i_add2({n_19, n_18}), .cin(cs), .o_result({n_22, result[3], result[2]}), 
      .intermediate_carry());
   which_adder__0_114 Gen_Modules_2_which_adder_x (.i_add1({A[5], A[4]}), 
      .i_add2({n_17, n_16}), .cin(n_22), .o_result({n_23, result[5], result[4]}), 
      .intermediate_carry());
   which_adder__0_134 Gen_Modules_3_which_adder_x (.i_add1({A[7], A[6]}), 
      .i_add2({n_15, n_14}), .cin(n_23), .o_result({n_24, result[7], result[6]}), 
      .intermediate_carry());
   which_adder__0_154 Gen_Modules_4_which_adder_x (.i_add1({A[9], A[8]}), 
      .i_add2({n_13, n_12}), .cin(n_24), .o_result({n_25, result[9], result[8]}), 
      .intermediate_carry());
   which_adder__0_174 Gen_Modules_5_which_adder_x (.i_add1({A[11], A[10]}), 
      .i_add2({n_11, n_10}), .cin(n_25), .o_result({n_0, result[11], result[10]}), 
      .intermediate_carry());
   which_adder__0_194 Gen_Modules_6_which_adder_x (.i_add1({A[13], A[12]}), 
      .i_add2({n_9, n_8}), .cin(n_0), .o_result({n_1, result[13], result[12]}), 
      .intermediate_carry());
   which_adder__0_214 Gen_Modules_7_which_adder_x (.i_add1({A[15], A[14]}), 
      .i_add2({n_7, n_6}), .cin(n_1), .o_result({n_2, result[15], result[14]}), 
      .intermediate_carry());
   which_adder__0_234 Gen_Modules_8_which_adder_x (.i_add1({A[17], A[16]}), 
      .i_add2({is_subtract, uc_0}), .cin(n_2), .o_result({n_3, result[17], 
      result[16]}), .intermediate_carry());
   which_adder__0_254 Gen_Modules_9_which_adder_x (.i_add1({A[19], A[18]}), 
      .i_add2({is_subtract, uc_1}), .cin(n_3), .o_result({n_4, result[19], 
      result[18]}), .intermediate_carry());
   which_adder__0_274 Gen_Modules_10_which_adder_x (.i_add1({A[21], A[20]}), 
      .i_add2({is_subtract, uc_2}), .cin(n_4), .o_result({n_5, result[21], 
      result[20]}), .intermediate_carry());
   which_adder__0_294 Gen_Modules_11_which_adder_x (.i_add1({uc_3, A[22]}), 
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
   wire [45:0]rem;
   wire f;
   wire [5:0]counter;
   wire [15:0]B;
   wire sign;
   wire working;
   wire start_buffer;
   wire n_0_43;
   wire n_0_0;
   wire n_0_24;
   wire n_0_0_0;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_35;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_36;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_37;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_38;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_39;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_40;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_41;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_42;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_44;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_45;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_46;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_47;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_48;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_49;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_50;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
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
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_75;
   wire n_0_0_59;
   wire n_0_0_60;
   wire n_0_76;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_77;
   wire n_0_0_63;
   wire n_0_0_64;
   wire n_0_78;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_79;
   wire n_0_0_67;
   wire n_0_0_68;
   wire n_0_80;
   wire n_0_0_69;
   wire n_0_0_70;
   wire n_0_81;
   wire n_0_0_71;
   wire n_0_0_72;
   wire n_0_82;
   wire n_0_0_73;
   wire n_0_0_74;
   wire n_0_83;
   wire n_0_0_75;
   wire n_0_0_76;
   wire n_0_84;
   wire n_0_0_77;
   wire n_0_0_78;
   wire n_0_85;
   wire n_0_0_79;
   wire n_0_0_80;
   wire n_0_86;
   wire n_0_0_81;
   wire n_0_0_82;
   wire n_0_87;
   wire n_0_0_83;
   wire n_0_0_84;
   wire n_0_0_85;
   wire n_0_88;
   wire n_0_0_86;
   wire n_0_0_87;
   wire n_0_0_88;
   wire n_0_0_89;
   wire n_0_0_90;
   wire n_0_0_91;
   wire n_0_0_92;
   wire n_0_0_93;
   wire n_0_0_94;
   wire n_0_0_95;
   wire n_0_0_96;
   wire n_0_0_97;
   wire n_0_90;
   wire n_0_0_98;
   wire n_0_25;
   wire n_0_91;
   wire n_0_92;
   wire n_0_93;
   wire n_0_94;
   wire n_0_95;
   wire n_0_96;
   wire n_0_97;
   wire n_0_98;
   wire n_0_89;
   wire n_0_0_99;
   wire n_0_99;
   wire n_0_0_100;
   wire n_0_0_101;
   wire n_0_0_102;
   wire n_0_0_103;
   wire n_0_0_104;
   wire n_0_0_105;
   wire n_0_0_106;
   wire n_0_0_107;
   wire n_0_0_108;
   wire n_0_0_109;
   wire n_0_0_110;
   wire n_0_0_111;
   wire n_0_0_112;
   wire n_0_0_113;
   wire n_0_0_114;
   wire n_0_0_115;
   wire n_0_0_116;
   wire n_0_0_117;
   wire n_0_0_118;
   wire n_0_0_119;
   wire n_0_0_120;
   wire n_0_0_121;
   wire n_0_0_122;
   wire n_0_0_123;
   wire n_0_0_124;
   wire n_0_0_125;
   wire n_0_0_126;
   wire n_0_0_127;
   wire n_0_0_128;
   wire n_0_0_129;
   wire n_0_0_130;
   wire n_0_0_131;
   wire n_0_0_132;
   wire n_0_0_133;
   wire n_0_0_134;
   wire n_0_0_135;

   adder__parameterized0 adder_counter (.A(counter), .B(), .is_subtract(), 
      .result(counter_new_value), .carry(), .overflow_flag(), .negative());
   adder adder_loop (.A({uc_0, rem[45], rem[44], rem[43], rem[42], rem[41], 
      rem[40], rem[39], rem[38], rem[37], rem[36], rem[35], rem[34], rem[33], 
      rem[32], rem[31], rem[30], rem[29], rem[28], rem[27], rem[26], rem[25], 
      rem[24], rem[23]}), .B({uc_1, uc_2, uc_3, uc_4, uc_5, uc_6, uc_7, uc_8, 
      B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], B[7], B[6], B[5], 
      B[4], B[3], B[2], B[1], B[0]}), .is_subtract(f), .result({uc_9, n_0_23, 
      n_0_22, n_0_21, n_0_20, n_0_19, n_0_18, n_0_17, n_0_16, n_0_15, n_0_14, 
      n_0_13, n_0_12, n_0_11, n_0_10, n_0_9, n_0_8, n_0_7, n_0_6, n_0_5, n_0_4, 
      n_0_3, n_0_2, n_0_1}), .carry(), .overflow_flag(), .negative());
   DFF_X1 finish_reg (.D(n_0_99), .CK(n_0_0), .Q(finish), .QN());
   DFF_X1 \rem_reg[45]  (.D(n_0_72), .CK(n_0_0), .Q(rem[45]), .QN());
   DFF_X1 \rem_reg[44]  (.D(n_0_71), .CK(n_0_0), .Q(rem[44]), .QN());
   DFF_X1 \rem_reg[43]  (.D(n_0_70), .CK(n_0_0), .Q(rem[43]), .QN());
   DFF_X1 \rem_reg[42]  (.D(n_0_69), .CK(n_0_0), .Q(rem[42]), .QN());
   DFF_X1 \rem_reg[41]  (.D(n_0_68), .CK(n_0_0), .Q(rem[41]), .QN());
   DFF_X1 \rem_reg[40]  (.D(n_0_67), .CK(n_0_0), .Q(rem[40]), .QN());
   DFF_X1 \rem_reg[39]  (.D(n_0_66), .CK(n_0_0), .Q(rem[39]), .QN());
   DFF_X1 \rem_reg[38]  (.D(n_0_65), .CK(n_0_0), .Q(rem[38]), .QN());
   DFF_X1 \rem_reg[37]  (.D(n_0_64), .CK(n_0_0), .Q(rem[37]), .QN());
   DFF_X1 \rem_reg[36]  (.D(n_0_63), .CK(n_0_0), .Q(rem[36]), .QN());
   DFF_X1 \rem_reg[35]  (.D(n_0_62), .CK(n_0_0), .Q(rem[35]), .QN());
   DFF_X1 \rem_reg[34]  (.D(n_0_61), .CK(n_0_0), .Q(rem[34]), .QN());
   DFF_X1 \rem_reg[33]  (.D(n_0_60), .CK(n_0_0), .Q(rem[33]), .QN());
   DFF_X1 \rem_reg[32]  (.D(n_0_59), .CK(n_0_0), .Q(rem[32]), .QN());
   DFF_X1 \rem_reg[31]  (.D(n_0_58), .CK(n_0_0), .Q(rem[31]), .QN());
   DFF_X1 \rem_reg[30]  (.D(n_0_57), .CK(n_0_0), .Q(rem[30]), .QN());
   DFF_X1 \rem_reg[29]  (.D(n_0_56), .CK(n_0_0), .Q(rem[29]), .QN());
   DFF_X1 \rem_reg[28]  (.D(n_0_55), .CK(n_0_0), .Q(rem[28]), .QN());
   DFF_X1 \rem_reg[27]  (.D(n_0_54), .CK(n_0_0), .Q(rem[27]), .QN());
   DFF_X1 \rem_reg[26]  (.D(n_0_53), .CK(n_0_0), .Q(rem[26]), .QN());
   DFF_X1 \rem_reg[25]  (.D(n_0_52), .CK(n_0_0), .Q(rem[25]), .QN());
   DFF_X1 \rem_reg[24]  (.D(n_0_51), .CK(n_0_0), .Q(rem[24]), .QN());
   DFF_X1 \rem_reg[23]  (.D(n_0_50), .CK(n_0_0), .Q(rem[23]), .QN());
   DFF_X1 \rem_reg[22]  (.D(n_0_49), .CK(n_0_0), .Q(rem[22]), .QN());
   DFF_X1 \rem_reg[21]  (.D(n_0_48), .CK(n_0_0), .Q(rem[21]), .QN());
   DFF_X1 \rem_reg[20]  (.D(n_0_47), .CK(n_0_0), .Q(rem[20]), .QN());
   DFF_X1 \rem_reg[19]  (.D(n_0_46), .CK(n_0_0), .Q(rem[19]), .QN());
   DFF_X1 \rem_reg[18]  (.D(n_0_45), .CK(n_0_0), .Q(rem[18]), .QN());
   DFF_X1 \rem_reg[17]  (.D(n_0_44), .CK(n_0_0), .Q(rem[17]), .QN());
   DFF_X1 \rem_reg[16]  (.D(n_0_42), .CK(n_0_0), .Q(rem[16]), .QN());
   DFF_X1 \rem_reg[15]  (.D(n_0_41), .CK(n_0_0), .Q(rem[15]), .QN());
   DFF_X1 \rem_reg[14]  (.D(n_0_40), .CK(n_0_0), .Q(rem[14]), .QN());
   DFF_X1 \rem_reg[13]  (.D(n_0_39), .CK(n_0_0), .Q(rem[13]), .QN());
   DFF_X1 \rem_reg[12]  (.D(n_0_38), .CK(n_0_0), .Q(rem[12]), .QN());
   DFF_X1 \rem_reg[11]  (.D(n_0_37), .CK(n_0_0), .Q(rem[11]), .QN());
   DFF_X1 \rem_reg[10]  (.D(n_0_36), .CK(n_0_0), .Q(rem[10]), .QN());
   DFF_X1 \rem_reg[9]  (.D(n_0_35), .CK(n_0_0), .Q(rem[9]), .QN());
   DFF_X1 \rem_reg[8]  (.D(n_0_34), .CK(n_0_0), .Q(rem[8]), .QN());
   DFF_X1 \rem_reg[7]  (.D(n_0_33), .CK(n_0_0), .Q(rem[7]), .QN());
   DFF_X1 \rem_reg[6]  (.D(n_0_32), .CK(n_0_0), .Q(rem[6]), .QN());
   DFF_X1 \rem_reg[5]  (.D(n_0_31), .CK(n_0_0), .Q(rem[5]), .QN());
   DFF_X1 \rem_reg[4]  (.D(n_0_30), .CK(n_0_0), .Q(rem[4]), .QN());
   DFF_X1 \rem_reg[3]  (.D(n_0_29), .CK(n_0_0), .Q(rem[3]), .QN());
   DFF_X1 \rem_reg[2]  (.D(n_0_28), .CK(n_0_0), .Q(rem[2]), .QN());
   DFF_X1 \rem_reg[1]  (.D(n_0_27), .CK(n_0_0), .Q(rem[1]), .QN());
   DFF_X1 \rem_reg[0]  (.D(n_0_26), .CK(n_0_0), .Q(result[0]), .QN());
   DFF_X1 f_reg (.D(n_0_90), .CK(n_0_0), .Q(f), .QN());
   DFF_X1 \counter_reg[5]  (.D(n_0_98), .CK(n_0_0), .Q(counter[5]), .QN());
   DFF_X1 \counter_reg[4]  (.D(n_0_97), .CK(n_0_0), .Q(counter[4]), .QN());
   DFF_X1 \counter_reg[3]  (.D(n_0_96), .CK(n_0_0), .Q(counter[3]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_0_95), .CK(n_0_0), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_0_94), .CK(n_0_0), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_0_93), .CK(n_0_0), .Q(counter[0]), .QN());
   DFF_X1 \B_reg[15]  (.D(n_0_88), .CK(n_0_43), .Q(B[15]), .QN());
   DFF_X1 \B_reg[14]  (.D(n_0_87), .CK(n_0_43), .Q(B[14]), .QN());
   DFF_X1 \B_reg[13]  (.D(n_0_86), .CK(n_0_43), .Q(B[13]), .QN());
   DFF_X1 \B_reg[12]  (.D(n_0_85), .CK(n_0_43), .Q(B[12]), .QN());
   DFF_X1 \B_reg[11]  (.D(n_0_84), .CK(n_0_43), .Q(B[11]), .QN());
   DFF_X1 \B_reg[10]  (.D(n_0_83), .CK(n_0_43), .Q(B[10]), .QN());
   DFF_X1 \B_reg[9]  (.D(n_0_82), .CK(n_0_43), .Q(B[9]), .QN());
   DFF_X1 \B_reg[8]  (.D(n_0_81), .CK(n_0_43), .Q(B[8]), .QN());
   DFF_X1 \B_reg[7]  (.D(n_0_80), .CK(n_0_43), .Q(B[7]), .QN());
   DFF_X1 \B_reg[6]  (.D(n_0_79), .CK(n_0_43), .Q(B[6]), .QN());
   DFF_X1 \B_reg[5]  (.D(n_0_78), .CK(n_0_43), .Q(B[5]), .QN());
   DFF_X1 \B_reg[4]  (.D(n_0_77), .CK(n_0_43), .Q(B[4]), .QN());
   DFF_X1 \B_reg[3]  (.D(n_0_76), .CK(n_0_43), .Q(B[3]), .QN());
   DFF_X1 \B_reg[2]  (.D(n_0_75), .CK(n_0_43), .Q(B[2]), .QN());
   DFF_X1 \B_reg[1]  (.D(n_0_74), .CK(n_0_43), .Q(B[1]), .QN());
   DFF_X1 \B_reg[0]  (.D(n_0_73), .CK(n_0_43), .Q(B[0]), .QN());
   DFF_X1 sign_reg (.D(n_0_24), .CK(n_0_43), .Q(sign), .QN());
   DFF_X1 working_reg (.D(n_0_92), .CK(n_0_0), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_0_25), .CK(clk), .Q(start_buffer), .QN());
   CLKGATETST_X1 clk_gate_sign_reg (.CK(clk), .E(n_0_89), .SE(1'b0), .GCK(n_0_43));
   CLKGATETST_X1 clk_gate_rem_reg (.CK(clk), .E(n_0_91), .SE(1'b0), .GCK(n_0_0));
   NOR2_X1 i_0_0_0 (.A1(rst), .A2(n_0_0_0), .ZN(n_0_24));
   XNOR2_X1 i_0_0_1 (.A(divisor[15]), .B(dividen[15]), .ZN(n_0_0_0));
   NOR2_X1 i_0_0_2 (.A1(n_0_89), .A2(n_0_23), .ZN(n_0_26));
   AND2_X1 i_0_0_3 (.A1(result[0]), .A2(n_0_0_99), .ZN(n_0_27));
   AND2_X1 i_0_0_4 (.A1(rem[1]), .A2(n_0_0_99), .ZN(n_0_28));
   NOR2_X1 i_0_0_5 (.A1(n_0_0_131), .A2(n_0_89), .ZN(n_0_29));
   AND2_X1 i_0_0_6 (.A1(rem[3]), .A2(n_0_0_99), .ZN(n_0_30));
   AND2_X1 i_0_0_7 (.A1(rem[4]), .A2(n_0_0_99), .ZN(n_0_31));
   AND2_X1 i_0_0_8 (.A1(rem[5]), .A2(n_0_0_99), .ZN(n_0_32));
   AND2_X1 i_0_0_9 (.A1(rem[6]), .A2(n_0_0_99), .ZN(n_0_33));
   INV_X1 i_0_0_10 (.A(n_0_0_1), .ZN(n_0_34));
   AOI21_X1 i_0_0_11 (.A(n_0_0_2), .B1(n_0_0_99), .B2(rem[7]), .ZN(n_0_0_1));
   INV_X1 i_0_0_12 (.A(n_0_0_3), .ZN(n_0_0_2));
   NAND3_X1 i_0_0_13 (.A1(dividen[0]), .A2(n_0_0_102), .A3(n_0_0_127), .ZN(
      n_0_0_3));
   AOI211_X1 i_0_0_14 (.A(rst), .B(n_0_0_5), .C1(n_0_0_4), .C2(n_0_0_102), 
      .ZN(n_0_35));
   XOR2_X1 i_0_0_15 (.A(dividen[1]), .B(n_0_0_6), .Z(n_0_0_4));
   NOR2_X1 i_0_0_16 (.A1(rem[8]), .A2(n_0_0_102), .ZN(n_0_0_5));
   NAND2_X1 i_0_0_17 (.A1(dividen[15]), .A2(dividen[0]), .ZN(n_0_0_6));
   AOI211_X1 i_0_0_18 (.A(rst), .B(n_0_0_8), .C1(n_0_0_7), .C2(n_0_0_102), 
      .ZN(n_0_36));
   XOR2_X1 i_0_0_19 (.A(dividen[2]), .B(n_0_0_9), .Z(n_0_0_7));
   NOR2_X1 i_0_0_20 (.A1(rem[9]), .A2(n_0_0_102), .ZN(n_0_0_8));
   OAI21_X1 i_0_0_21 (.A(dividen[15]), .B1(dividen[1]), .B2(dividen[0]), 
      .ZN(n_0_0_9));
   AOI211_X1 i_0_0_22 (.A(rst), .B(n_0_0_11), .C1(n_0_0_10), .C2(n_0_0_102), 
      .ZN(n_0_37));
   XOR2_X1 i_0_0_23 (.A(dividen[3]), .B(n_0_0_12), .Z(n_0_0_10));
   NOR2_X1 i_0_0_24 (.A1(rem[10]), .A2(n_0_0_102), .ZN(n_0_0_11));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_56), .A2(dividen[15]), .ZN(n_0_0_12));
   AOI211_X1 i_0_0_26 (.A(rst), .B(n_0_0_14), .C1(n_0_0_13), .C2(n_0_0_102), 
      .ZN(n_0_38));
   XOR2_X1 i_0_0_27 (.A(dividen[4]), .B(n_0_0_15), .Z(n_0_0_13));
   NOR2_X1 i_0_0_28 (.A1(rem[11]), .A2(n_0_0_102), .ZN(n_0_0_14));
   OAI21_X1 i_0_0_29 (.A(dividen[15]), .B1(n_0_0_56), .B2(dividen[3]), .ZN(
      n_0_0_15));
   OAI21_X1 i_0_0_30 (.A(n_0_0_18), .B1(n_0_0_16), .B2(n_0_0_98), .ZN(n_0_39));
   XOR2_X1 i_0_0_31 (.A(dividen[5]), .B(n_0_0_17), .Z(n_0_0_16));
   NAND2_X1 i_0_0_32 (.A1(n_0_0_55), .A2(dividen[15]), .ZN(n_0_0_17));
   NAND2_X1 i_0_0_33 (.A1(rem[12]), .A2(n_0_0_99), .ZN(n_0_0_18));
   AOI211_X1 i_0_0_34 (.A(rst), .B(n_0_0_20), .C1(n_0_0_19), .C2(n_0_0_102), 
      .ZN(n_0_40));
   XOR2_X1 i_0_0_35 (.A(dividen[6]), .B(n_0_0_21), .Z(n_0_0_19));
   NOR2_X1 i_0_0_36 (.A1(rem[13]), .A2(n_0_0_102), .ZN(n_0_0_20));
   OAI21_X1 i_0_0_37 (.A(dividen[15]), .B1(n_0_0_55), .B2(dividen[5]), .ZN(
      n_0_0_21));
   AOI21_X1 i_0_0_38 (.A(n_0_0_23), .B1(n_0_0_22), .B2(n_0_0_102), .ZN(n_0_41));
   XOR2_X1 i_0_0_39 (.A(dividen[7]), .B(n_0_0_24), .Z(n_0_0_22));
   OAI21_X1 i_0_0_40 (.A(n_0_0_127), .B1(n_0_0_102), .B2(rem[14]), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_41 (.A1(n_0_0_54), .A2(dividen[15]), .ZN(n_0_0_24));
   AOI211_X1 i_0_0_42 (.A(rst), .B(n_0_0_26), .C1(n_0_0_25), .C2(n_0_0_102), 
      .ZN(n_0_42));
   XOR2_X1 i_0_0_43 (.A(dividen[8]), .B(n_0_0_27), .Z(n_0_0_25));
   NOR2_X1 i_0_0_44 (.A1(rem[15]), .A2(n_0_0_102), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_45 (.A1(n_0_0_53), .A2(dividen[15]), .ZN(n_0_0_27));
   AOI211_X1 i_0_0_46 (.A(rst), .B(n_0_0_29), .C1(n_0_0_28), .C2(n_0_0_102), 
      .ZN(n_0_44));
   XOR2_X1 i_0_0_47 (.A(dividen[9]), .B(n_0_0_30), .Z(n_0_0_28));
   NOR2_X1 i_0_0_48 (.A1(rem[16]), .A2(n_0_0_102), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_49 (.A1(n_0_0_52), .A2(dividen[15]), .ZN(n_0_0_30));
   AOI21_X1 i_0_0_50 (.A(n_0_0_32), .B1(n_0_0_31), .B2(n_0_0_102), .ZN(n_0_45));
   XOR2_X1 i_0_0_51 (.A(dividen[10]), .B(n_0_0_33), .Z(n_0_0_31));
   OAI21_X1 i_0_0_52 (.A(n_0_0_127), .B1(n_0_0_102), .B2(rem[17]), .ZN(n_0_0_32));
   NAND2_X1 i_0_0_53 (.A1(n_0_0_51), .A2(dividen[15]), .ZN(n_0_0_33));
   AOI211_X1 i_0_0_54 (.A(rst), .B(n_0_0_35), .C1(n_0_0_34), .C2(n_0_0_102), 
      .ZN(n_0_46));
   XOR2_X1 i_0_0_55 (.A(dividen[11]), .B(n_0_0_36), .Z(n_0_0_34));
   NOR2_X1 i_0_0_56 (.A1(rem[18]), .A2(n_0_0_102), .ZN(n_0_0_35));
   NAND2_X1 i_0_0_57 (.A1(n_0_0_50), .A2(dividen[15]), .ZN(n_0_0_36));
   AOI211_X1 i_0_0_58 (.A(rst), .B(n_0_0_38), .C1(n_0_0_37), .C2(n_0_0_102), 
      .ZN(n_0_47));
   XOR2_X1 i_0_0_59 (.A(dividen[12]), .B(n_0_0_39), .Z(n_0_0_37));
   NOR2_X1 i_0_0_60 (.A1(rem[19]), .A2(n_0_0_102), .ZN(n_0_0_38));
   NAND2_X1 i_0_0_61 (.A1(n_0_0_49), .A2(dividen[15]), .ZN(n_0_0_39));
   AOI211_X1 i_0_0_62 (.A(rst), .B(n_0_0_41), .C1(n_0_0_40), .C2(n_0_0_102), 
      .ZN(n_0_48));
   XOR2_X1 i_0_0_63 (.A(dividen[13]), .B(n_0_0_42), .Z(n_0_0_40));
   NOR2_X1 i_0_0_64 (.A1(rem[20]), .A2(n_0_0_102), .ZN(n_0_0_41));
   NAND2_X1 i_0_0_65 (.A1(n_0_0_48), .A2(dividen[15]), .ZN(n_0_0_42));
   AOI21_X1 i_0_0_66 (.A(n_0_0_44), .B1(n_0_0_43), .B2(n_0_0_102), .ZN(n_0_49));
   XOR2_X1 i_0_0_67 (.A(dividen[14]), .B(n_0_0_45), .Z(n_0_0_43));
   OAI21_X1 i_0_0_68 (.A(n_0_0_127), .B1(n_0_0_102), .B2(rem[21]), .ZN(n_0_0_44));
   OAI21_X1 i_0_0_69 (.A(dividen[15]), .B1(n_0_0_48), .B2(dividen[13]), .ZN(
      n_0_0_45));
   OAI33_X1 i_0_0_70 (.A1(n_0_0_48), .A2(n_0_0_46), .A3(dividen[13]), .B1(rst), 
      .B2(n_0_0_102), .B3(n_0_0_134), .ZN(n_0_50));
   NAND2_X1 i_0_0_71 (.A1(dividen[15]), .A2(n_0_0_47), .ZN(n_0_0_46));
   NOR2_X1 i_0_0_72 (.A1(n_0_0_98), .A2(dividen[14]), .ZN(n_0_0_47));
   OR2_X1 i_0_0_73 (.A1(n_0_0_49), .A2(dividen[12]), .ZN(n_0_0_48));
   OR2_X1 i_0_0_74 (.A1(n_0_0_50), .A2(dividen[11]), .ZN(n_0_0_49));
   OR2_X1 i_0_0_75 (.A1(n_0_0_51), .A2(dividen[10]), .ZN(n_0_0_50));
   OR2_X1 i_0_0_76 (.A1(n_0_0_52), .A2(dividen[9]), .ZN(n_0_0_51));
   OR2_X1 i_0_0_77 (.A1(n_0_0_53), .A2(dividen[8]), .ZN(n_0_0_52));
   OR2_X1 i_0_0_78 (.A1(n_0_0_54), .A2(dividen[7]), .ZN(n_0_0_53));
   OR3_X1 i_0_0_79 (.A1(n_0_0_55), .A2(dividen[5]), .A3(dividen[6]), .ZN(
      n_0_0_54));
   OR3_X1 i_0_0_80 (.A1(n_0_0_56), .A2(dividen[3]), .A3(dividen[4]), .ZN(
      n_0_0_55));
   OR3_X1 i_0_0_81 (.A1(dividen[2]), .A2(dividen[1]), .A3(dividen[0]), .ZN(
      n_0_0_56));
   AND2_X1 i_0_0_82 (.A1(n_0_1), .A2(n_0_0_99), .ZN(n_0_51));
   AND2_X1 i_0_0_83 (.A1(n_0_2), .A2(n_0_0_99), .ZN(n_0_52));
   AND2_X1 i_0_0_84 (.A1(n_0_3), .A2(n_0_0_99), .ZN(n_0_53));
   AND2_X1 i_0_0_85 (.A1(n_0_4), .A2(n_0_0_99), .ZN(n_0_54));
   AND2_X1 i_0_0_86 (.A1(n_0_5), .A2(n_0_0_99), .ZN(n_0_55));
   AND2_X1 i_0_0_87 (.A1(n_0_6), .A2(n_0_0_99), .ZN(n_0_56));
   AND2_X1 i_0_0_88 (.A1(n_0_7), .A2(n_0_0_99), .ZN(n_0_57));
   AND2_X1 i_0_0_89 (.A1(n_0_8), .A2(n_0_0_99), .ZN(n_0_58));
   AND2_X1 i_0_0_90 (.A1(n_0_9), .A2(n_0_0_99), .ZN(n_0_59));
   AND2_X1 i_0_0_91 (.A1(n_0_10), .A2(n_0_0_99), .ZN(n_0_60));
   AND2_X1 i_0_0_92 (.A1(n_0_11), .A2(n_0_0_99), .ZN(n_0_61));
   AND2_X1 i_0_0_93 (.A1(n_0_12), .A2(n_0_0_99), .ZN(n_0_62));
   AND2_X1 i_0_0_94 (.A1(n_0_13), .A2(n_0_0_99), .ZN(n_0_63));
   AND2_X1 i_0_0_95 (.A1(n_0_14), .A2(n_0_0_99), .ZN(n_0_64));
   AND2_X1 i_0_0_96 (.A1(n_0_15), .A2(n_0_0_99), .ZN(n_0_65));
   AND2_X1 i_0_0_97 (.A1(n_0_16), .A2(n_0_0_99), .ZN(n_0_66));
   AND2_X1 i_0_0_98 (.A1(n_0_17), .A2(n_0_0_99), .ZN(n_0_67));
   AND2_X1 i_0_0_99 (.A1(n_0_18), .A2(n_0_0_99), .ZN(n_0_68));
   AND2_X1 i_0_0_100 (.A1(n_0_19), .A2(n_0_0_99), .ZN(n_0_69));
   AND2_X1 i_0_0_101 (.A1(n_0_20), .A2(n_0_0_99), .ZN(n_0_70));
   AND2_X1 i_0_0_102 (.A1(n_0_21), .A2(n_0_0_99), .ZN(n_0_71));
   AND2_X1 i_0_0_103 (.A1(n_0_22), .A2(n_0_0_99), .ZN(n_0_72));
   AND2_X1 i_0_0_104 (.A1(n_0_0_127), .A2(divisor[0]), .ZN(n_0_73));
   NOR2_X1 i_0_0_105 (.A1(n_0_0_57), .A2(rst), .ZN(n_0_74));
   XOR2_X1 i_0_0_106 (.A(divisor[1]), .B(n_0_0_58), .Z(n_0_0_57));
   NAND2_X1 i_0_0_107 (.A1(divisor[0]), .A2(n_0_0_85), .ZN(n_0_0_58));
   NOR2_X1 i_0_0_108 (.A1(n_0_0_59), .A2(rst), .ZN(n_0_75));
   XOR2_X1 i_0_0_109 (.A(divisor[2]), .B(n_0_0_60), .Z(n_0_0_59));
   OAI21_X1 i_0_0_110 (.A(n_0_0_85), .B1(divisor[0]), .B2(divisor[1]), .ZN(
      n_0_0_60));
   NOR2_X1 i_0_0_111 (.A1(n_0_0_61), .A2(rst), .ZN(n_0_76));
   XOR2_X1 i_0_0_112 (.A(divisor[3]), .B(n_0_0_62), .Z(n_0_0_61));
   NAND2_X1 i_0_0_113 (.A1(n_0_0_85), .A2(n_0_0_97), .ZN(n_0_0_62));
   NOR2_X1 i_0_0_114 (.A1(n_0_0_63), .A2(rst), .ZN(n_0_77));
   XOR2_X1 i_0_0_115 (.A(divisor[4]), .B(n_0_0_64), .Z(n_0_0_63));
   NAND2_X1 i_0_0_116 (.A1(n_0_0_96), .A2(n_0_0_85), .ZN(n_0_0_64));
   NOR2_X1 i_0_0_117 (.A1(n_0_0_65), .A2(rst), .ZN(n_0_78));
   XOR2_X1 i_0_0_118 (.A(divisor[5]), .B(n_0_0_66), .Z(n_0_0_65));
   NAND2_X1 i_0_0_119 (.A1(n_0_0_95), .A2(n_0_0_85), .ZN(n_0_0_66));
   NOR2_X1 i_0_0_120 (.A1(n_0_0_67), .A2(rst), .ZN(n_0_79));
   XOR2_X1 i_0_0_121 (.A(divisor[6]), .B(n_0_0_68), .Z(n_0_0_67));
   OAI21_X1 i_0_0_122 (.A(n_0_0_85), .B1(n_0_0_95), .B2(divisor[5]), .ZN(
      n_0_0_68));
   NOR2_X1 i_0_0_123 (.A1(n_0_0_69), .A2(rst), .ZN(n_0_80));
   XOR2_X1 i_0_0_124 (.A(divisor[7]), .B(n_0_0_70), .Z(n_0_0_69));
   NAND2_X1 i_0_0_125 (.A1(n_0_0_94), .A2(n_0_0_85), .ZN(n_0_0_70));
   AOI21_X1 i_0_0_126 (.A(n_0_0_71), .B1(n_0_0_72), .B2(divisor[8]), .ZN(n_0_81));
   OAI21_X1 i_0_0_127 (.A(n_0_0_127), .B1(n_0_0_72), .B2(divisor[8]), .ZN(
      n_0_0_71));
   NOR2_X1 i_0_0_128 (.A1(n_0_0_93), .A2(n_0_0_135), .ZN(n_0_0_72));
   NOR2_X1 i_0_0_129 (.A1(n_0_0_73), .A2(rst), .ZN(n_0_82));
   XOR2_X1 i_0_0_130 (.A(divisor[9]), .B(n_0_0_74), .Z(n_0_0_73));
   NAND2_X1 i_0_0_131 (.A1(n_0_0_92), .A2(n_0_0_85), .ZN(n_0_0_74));
   NOR2_X1 i_0_0_132 (.A1(n_0_0_75), .A2(rst), .ZN(n_0_83));
   XOR2_X1 i_0_0_133 (.A(divisor[10]), .B(n_0_0_76), .Z(n_0_0_75));
   NAND2_X1 i_0_0_134 (.A1(n_0_0_91), .A2(n_0_0_85), .ZN(n_0_0_76));
   NOR2_X1 i_0_0_135 (.A1(n_0_0_77), .A2(rst), .ZN(n_0_84));
   XOR2_X1 i_0_0_136 (.A(divisor[11]), .B(n_0_0_78), .Z(n_0_0_77));
   NAND2_X1 i_0_0_137 (.A1(n_0_0_90), .A2(n_0_0_85), .ZN(n_0_0_78));
   NOR2_X1 i_0_0_138 (.A1(n_0_0_79), .A2(rst), .ZN(n_0_85));
   XOR2_X1 i_0_0_139 (.A(divisor[12]), .B(n_0_0_80), .Z(n_0_0_79));
   NAND2_X1 i_0_0_140 (.A1(n_0_0_89), .A2(n_0_0_85), .ZN(n_0_0_80));
   NOR2_X1 i_0_0_141 (.A1(n_0_0_81), .A2(rst), .ZN(n_0_86));
   XOR2_X1 i_0_0_142 (.A(divisor[13]), .B(n_0_0_82), .Z(n_0_0_81));
   NAND2_X1 i_0_0_143 (.A1(n_0_0_88), .A2(n_0_0_85), .ZN(n_0_0_82));
   NOR2_X1 i_0_0_144 (.A1(n_0_0_83), .A2(rst), .ZN(n_0_87));
   XOR2_X1 i_0_0_145 (.A(divisor[14]), .B(n_0_0_84), .Z(n_0_0_83));
   NAND2_X1 i_0_0_146 (.A1(n_0_0_87), .A2(n_0_0_85), .ZN(n_0_0_84));
   AND2_X1 i_0_0_147 (.A1(divisor[15]), .A2(n_0_0_102), .ZN(n_0_0_85));
   AND3_X1 i_0_0_148 (.A1(n_0_0_86), .A2(divisor[15]), .A3(n_0_0_127), .ZN(
      n_0_88));
   OAI21_X1 i_0_0_149 (.A(n_0_0_102), .B1(n_0_0_87), .B2(divisor[14]), .ZN(
      n_0_0_86));
   OR2_X1 i_0_0_150 (.A1(n_0_0_88), .A2(divisor[13]), .ZN(n_0_0_87));
   OR2_X1 i_0_0_151 (.A1(n_0_0_89), .A2(divisor[12]), .ZN(n_0_0_88));
   OR2_X1 i_0_0_152 (.A1(n_0_0_90), .A2(divisor[11]), .ZN(n_0_0_89));
   OR2_X1 i_0_0_153 (.A1(n_0_0_91), .A2(divisor[10]), .ZN(n_0_0_90));
   OR2_X1 i_0_0_154 (.A1(n_0_0_92), .A2(divisor[9]), .ZN(n_0_0_91));
   NAND2_X1 i_0_0_155 (.A1(n_0_0_93), .A2(n_0_0_130), .ZN(n_0_0_92));
   NOR2_X1 i_0_0_156 (.A1(n_0_0_94), .A2(divisor[7]), .ZN(n_0_0_93));
   OR3_X1 i_0_0_157 (.A1(n_0_0_95), .A2(divisor[5]), .A3(divisor[6]), .ZN(
      n_0_0_94));
   OR2_X1 i_0_0_158 (.A1(n_0_0_96), .A2(divisor[4]), .ZN(n_0_0_95));
   OR2_X1 i_0_0_159 (.A1(n_0_0_97), .A2(divisor[3]), .ZN(n_0_0_96));
   OR3_X1 i_0_0_160 (.A1(divisor[2]), .A2(divisor[1]), .A3(divisor[0]), .ZN(
      n_0_0_97));
   OAI21_X1 i_0_0_161 (.A(n_0_0_98), .B1(n_0_23), .B2(rst), .ZN(n_0_90));
   NAND2_X1 i_0_0_162 (.A1(n_0_0_102), .A2(n_0_0_127), .ZN(n_0_0_98));
   NOR2_X1 i_0_0_163 (.A1(n_0_0_128), .A2(rst), .ZN(n_0_25));
   OR2_X1 i_0_0_164 (.A1(n_0_89), .A2(working), .ZN(n_0_91));
   AND2_X1 i_0_0_165 (.A1(n_0_0_127), .A2(n_0_0_100), .ZN(n_0_92));
   AND2_X1 i_0_0_166 (.A1(counter_new_value[0]), .A2(n_0_0_99), .ZN(n_0_93));
   AND2_X1 i_0_0_167 (.A1(counter_new_value[1]), .A2(n_0_0_99), .ZN(n_0_94));
   AND2_X1 i_0_0_168 (.A1(counter_new_value[2]), .A2(n_0_0_99), .ZN(n_0_95));
   AND2_X1 i_0_0_169 (.A1(counter_new_value[3]), .A2(n_0_0_99), .ZN(n_0_96));
   AND2_X1 i_0_0_170 (.A1(counter_new_value[4]), .A2(n_0_0_99), .ZN(n_0_97));
   AND2_X1 i_0_0_171 (.A1(counter_new_value[5]), .A2(n_0_0_99), .ZN(n_0_98));
   INV_X1 i_0_0_172 (.A(n_0_0_99), .ZN(n_0_89));
   NOR2_X1 i_0_0_173 (.A1(rst), .A2(n_0_0_102), .ZN(n_0_0_99));
   NOR2_X1 i_0_0_174 (.A1(n_0_0_100), .A2(rst), .ZN(n_0_99));
   OR4_X1 i_0_0_175 (.A1(n_0_0_101), .A2(n_0_0_102), .A3(counter_new_value[3]), 
      .A4(counter_new_value[5]), .ZN(n_0_0_100));
   NAND4_X1 i_0_0_176 (.A1(counter_new_value[4]), .A2(counter_new_value[2]), 
      .A3(counter_new_value[1]), .A4(counter_new_value[0]), .ZN(n_0_0_101));
   NOR2_X1 i_0_0_177 (.A1(n_0_0_128), .A2(start_buffer), .ZN(n_0_0_102));
   NAND2_X1 i_0_0_178 (.A1(n_0_0_104), .A2(n_0_0_103), .ZN(overflow_flag));
   NOR4_X1 i_0_0_179 (.A1(rem[22]), .A2(rem[21]), .A3(rem[20]), .A4(rem[19]), 
      .ZN(n_0_0_103));
   NOR4_X1 i_0_0_180 (.A1(rem[18]), .A2(rem[17]), .A3(rem[16]), .A4(rem[15]), 
      .ZN(n_0_0_104));
   XNOR2_X1 i_0_0_181 (.A(rem[1]), .B(n_0_0_120), .ZN(result[1]));
   XNOR2_X1 i_0_0_182 (.A(rem[2]), .B(n_0_0_119), .ZN(result[2]));
   XOR2_X1 i_0_0_183 (.A(rem[3]), .B(n_0_0_118), .Z(result[3]));
   XNOR2_X1 i_0_0_184 (.A(rem[4]), .B(n_0_0_117), .ZN(result[4]));
   XNOR2_X1 i_0_0_185 (.A(rem[5]), .B(n_0_0_116), .ZN(result[5]));
   XNOR2_X1 i_0_0_186 (.A(rem[6]), .B(n_0_0_115), .ZN(result[6]));
   XNOR2_X1 i_0_0_187 (.A(rem[7]), .B(n_0_0_113), .ZN(result[7]));
   XNOR2_X1 i_0_0_188 (.A(n_0_0_132), .B(n_0_0_112), .ZN(result[8]));
   XNOR2_X1 i_0_0_189 (.A(rem[9]), .B(n_0_0_111), .ZN(result[9]));
   XNOR2_X1 i_0_0_190 (.A(rem[10]), .B(n_0_0_110), .ZN(result[10]));
   XOR2_X1 i_0_0_191 (.A(rem[11]), .B(n_0_0_109), .Z(result[11]));
   XNOR2_X1 i_0_0_192 (.A(rem[12]), .B(n_0_0_108), .ZN(result[12]));
   XNOR2_X1 i_0_0_193 (.A(rem[13]), .B(n_0_0_107), .ZN(result[13]));
   XOR2_X1 i_0_0_194 (.A(rem[14]), .B(n_0_0_106), .Z(result[14]));
   XNOR2_X1 i_0_0_195 (.A(rem[15]), .B(n_0_0_105), .ZN(result[15]));
   AOI21_X1 i_0_0_196 (.A(n_0_0_106), .B1(sign), .B2(rem[14]), .ZN(n_0_0_105));
   OAI21_X1 i_0_0_197 (.A(n_0_0_107), .B1(n_0_0_129), .B2(n_0_0_133), .ZN(
      n_0_0_106));
   AND2_X1 i_0_0_198 (.A1(n_0_0_108), .A2(n_0_0_121), .ZN(n_0_0_107));
   OAI21_X1 i_0_0_199 (.A(sign), .B1(n_0_0_122), .B2(rem[11]), .ZN(n_0_0_108));
   AND2_X1 i_0_0_200 (.A1(n_0_0_122), .A2(sign), .ZN(n_0_0_109));
   OAI21_X1 i_0_0_201 (.A(sign), .B1(n_0_0_123), .B2(rem[9]), .ZN(n_0_0_110));
   NAND2_X1 i_0_0_202 (.A1(n_0_0_123), .A2(sign), .ZN(n_0_0_111));
   NOR2_X1 i_0_0_203 (.A1(n_0_0_124), .A2(n_0_0_129), .ZN(n_0_0_112));
   AOI21_X1 i_0_0_204 (.A(n_0_0_114), .B1(sign), .B2(rem[6]), .ZN(n_0_0_113));
   INV_X1 i_0_0_205 (.A(n_0_0_115), .ZN(n_0_0_114));
   OAI21_X1 i_0_0_206 (.A(sign), .B1(n_0_0_125), .B2(rem[5]), .ZN(n_0_0_115));
   NAND2_X1 i_0_0_207 (.A1(n_0_0_125), .A2(sign), .ZN(n_0_0_116));
   AOI21_X1 i_0_0_208 (.A(n_0_0_118), .B1(sign), .B2(rem[3]), .ZN(n_0_0_117));
   OAI21_X1 i_0_0_209 (.A(n_0_0_119), .B1(n_0_0_129), .B2(n_0_0_131), .ZN(
      n_0_0_118));
   NAND2_X1 i_0_0_210 (.A1(n_0_0_126), .A2(sign), .ZN(n_0_0_119));
   NAND2_X1 i_0_0_211 (.A1(result[0]), .A2(sign), .ZN(n_0_0_120));
   NAND2_X1 i_0_0_212 (.A1(rem[12]), .A2(sign), .ZN(n_0_0_121));
   OR3_X1 i_0_0_213 (.A1(n_0_0_123), .A2(rem[9]), .A3(rem[10]), .ZN(n_0_0_122));
   NAND2_X1 i_0_0_214 (.A1(n_0_0_124), .A2(n_0_0_132), .ZN(n_0_0_123));
   NOR4_X1 i_0_0_215 (.A1(n_0_0_125), .A2(rem[5]), .A3(rem[6]), .A4(rem[7]), 
      .ZN(n_0_0_124));
   OR4_X1 i_0_0_216 (.A1(n_0_0_126), .A2(rem[2]), .A3(rem[3]), .A4(rem[4]), 
      .ZN(n_0_0_125));
   OR2_X1 i_0_0_217 (.A1(rem[1]), .A2(result[0]), .ZN(n_0_0_126));
   INV_X1 i_0_0_218 (.A(rst), .ZN(n_0_0_127));
   INV_X1 i_0_0_219 (.A(start), .ZN(n_0_0_128));
   INV_X1 i_0_0_220 (.A(sign), .ZN(n_0_0_129));
   INV_X1 i_0_0_221 (.A(divisor[8]), .ZN(n_0_0_130));
   INV_X1 i_0_0_222 (.A(rem[2]), .ZN(n_0_0_131));
   INV_X1 i_0_0_223 (.A(rem[8]), .ZN(n_0_0_132));
   INV_X1 i_0_0_224 (.A(rem[13]), .ZN(n_0_0_133));
   INV_X1 i_0_0_225 (.A(rem[22]), .ZN(n_0_0_134));
   INV_X1 i_0_0_226 (.A(n_0_0_85), .ZN(n_0_0_135));
endmodule
