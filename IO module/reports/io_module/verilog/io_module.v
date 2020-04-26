/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sat Apr 25 22:13:00 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1161822265 */

/* blackbox module RAM_bbox_0 */

/* blackbox module RAM_bbox */

module adder__1_90(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [1:0]A;
   input [1:0]B;
   input is_subtract;
   output [1:0]result;
   output carry;
   output overflow_flag;
   output negative;

   INV_X1 i_8 (.A(A[0]), .ZN(result[0]));
   XOR2_X1 i_0_0 (.A(A[1]), .B(A[0]), .Z(result[1]));
endmodule

module adder__1_99(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [1:0]A;
   input [1:0]B;
   input is_subtract;
   output [1:0]result;
   output carry;
   output overflow_flag;
   output negative;

   XOR2_X1 i_0_0 (.A(A[1]), .B(A[0]), .Z(result[1]));
endmodule

module io_fsm(clk, reset, int, process, eob, data, out1, out2, out3, out4, start, 
      ready, next);
   input clk;
   input reset;
   input int;
   input process;
   input eob;
   inout [31:0]data;
   output [7:0]out1;
   output [7:0]out2;
   output [7:0]out3;
   output [7:0]out4;
   output [3:0]start;
   input ready;
   output next;

   wire [1:0]temp2;
   wire [1:0]temp;
   wire [1:0]current_state;
   wire [1:0]counter2;
   wire [1:0]next_state;
   wire [3:0]finish;
   wire [1:0]counter;
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

   adder__1_90 add2 (.A(counter2), .B(), .is_subtract(), .result(temp2), .carry(), 
      .overflow_flag(), .negative());
   adder__1_99 add1 (.A(counter), .B(), .is_subtract(), .result({temp[1], uc_0}), 
      .carry(), .overflow_flag(), .negative());
   DFFR_X1 \current_state_reg[1]  (.D(next_state[1]), .RN(n_19), .CK(clk), 
      .Q(current_state[1]), .QN());
   DFFR_X1 \current_state_reg[0]  (.D(next_state[0]), .RN(n_19), .CK(clk), 
      .Q(current_state[0]), .QN());
   DLH_X1 next_reg (.D(n_17), .G(n_18), .Q(next));
   DLH_X1 \start_reg[3]  (.D(n_5), .G(n_16), .Q(start[3]));
   DLH_X1 \start_reg[2]  (.D(n_4), .G(n_16), .Q(start[2]));
   DLH_X1 \start_reg[1]  (.D(n_3), .G(n_16), .Q(start[1]));
   DLH_X1 \start_reg[0]  (.D(n_2), .G(n_16), .Q(start[0]));
   DLH_X1 \counter2_reg[1]  (.D(temp2[1]), .G(n_15), .Q(counter2[1]));
   DLH_X1 \counter2_reg[0]  (.D(temp2[0]), .G(n_15), .Q(counter2[0]));
   DLH_X1 \next_state_reg[1]  (.D(n_6), .G(n_8), .Q(next_state[1]));
   DLH_X1 \next_state_reg[0]  (.D(n_7), .G(n_8), .Q(next_state[0]));
   DLH_X1 \finish_reg[2]  (.D(n_11), .G(n_14), .Q(finish[2]));
   DLH_X1 \finish_reg[1]  (.D(n_10), .G(n_13), .Q(finish[1]));
   DLH_X1 \finish_reg[0]  (.D(n_9), .G(n_12), .Q(finish[0]));
   DFFR_X1 \counter_reg[0]  (.D(n_1), .RN(n_19), .CK(clk), .Q(counter[0]), .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_0), .RN(n_19), .CK(clk), .Q(counter[1]), .QN());
   MUX2_X1 i_0_0 (.A(temp[1]), .B(counter[1]), .S(n_0_10), .Z(n_0));
   XNOR2_X1 i_0_1 (.A(counter[0]), .B(n_0_10), .ZN(n_1));
   NOR3_X1 i_0_2 (.A1(n_0_4), .A2(finish[0]), .A3(reset), .ZN(n_2));
   NOR3_X1 i_0_3 (.A1(n_0_4), .A2(finish[1]), .A3(reset), .ZN(n_3));
   NOR3_X1 i_0_4 (.A1(n_0_4), .A2(finish[2]), .A3(reset), .ZN(n_4));
   NOR2_X1 i_0_5 (.A1(n_0_4), .A2(reset), .ZN(n_5));
   INV_X1 i_0_6 (.A(n_7), .ZN(n_6));
   NOR2_X1 i_0_7 (.A1(current_state[1]), .A2(current_state[0]), .ZN(n_7));
   AND4_X1 i_0_8 (.A1(int), .A2(n_0_0), .A3(n_19), .A4(n_0_13), .ZN(n_8));
   XNOR2_X1 i_0_9 (.A(current_state[0]), .B(process), .ZN(n_0_0));
   NOR2_X1 i_0_10 (.A1(reset), .A2(n_0_1), .ZN(n_9));
   NOR2_X1 i_0_11 (.A1(eob), .A2(finish[0]), .ZN(n_0_1));
   NOR2_X1 i_0_12 (.A1(reset), .A2(n_0_2), .ZN(n_10));
   NOR2_X1 i_0_13 (.A1(eob), .A2(finish[1]), .ZN(n_0_2));
   AOI211_X1 i_0_14 (.A(n_0_12), .B(reset), .C1(n_0_3), .C2(counter[0]), 
      .ZN(n_11));
   NOR2_X1 i_0_15 (.A1(eob), .A2(finish[2]), .ZN(n_0_3));
   OAI21_X1 i_0_16 (.A(n_19), .B1(n_0_10), .B2(n_0_4), .ZN(n_12));
   OR2_X1 i_0_17 (.A1(counter[1]), .A2(counter[0]), .ZN(n_0_4));
   INV_X1 i_0_18 (.A(n_0_5), .ZN(n_13));
   AOI21_X1 i_0_19 (.A(reset), .B1(counter[0]), .B2(n_0_6), .ZN(n_0_5));
   NOR2_X1 i_0_20 (.A1(n_0_10), .A2(counter[1]), .ZN(n_0_6));
   OAI21_X1 i_0_21 (.A(n_19), .B1(n_0_8), .B2(n_0_7), .ZN(n_14));
   NAND3_X1 i_0_22 (.A1(n_0_13), .A2(current_state[0]), .A3(counter[1]), 
      .ZN(n_0_7));
   AOI21_X1 i_0_23 (.A(counter[0]), .B1(n_0_11), .B2(counter2[1]), .ZN(n_0_8));
   NOR4_X1 i_0_24 (.A1(n_0_10), .A2(n_0_9), .A3(reset), .A4(counter[0]), 
      .ZN(n_15));
   NAND2_X1 i_0_25 (.A1(n_19), .A2(n_0_10), .ZN(n_16));
   NOR2_X1 i_0_26 (.A1(n_0_9), .A2(counter[0]), .ZN(n_17));
   NAND2_X1 i_0_27 (.A1(counter[1]), .A2(eob), .ZN(n_0_9));
   NOR3_X1 i_0_28 (.A1(n_0_10), .A2(counter[0]), .A3(reset), .ZN(n_18));
   NAND2_X1 i_0_29 (.A1(n_0_13), .A2(current_state[0]), .ZN(n_0_10));
   INV_X1 i_0_30 (.A(counter2[0]), .ZN(n_0_11));
   INV_X1 i_0_31 (.A(counter[1]), .ZN(n_0_12));
   INV_X1 i_0_32 (.A(current_state[1]), .ZN(n_0_13));
   INV_X1 i_0_33 (.A(reset), .ZN(n_19));
endmodule

module adder__parameterized0__1_214(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   XOR2_X1 i_0_0 (.A(B[0]), .B(A[0]), .Z(result[0]));
   XNOR2_X1 i_0_1 (.A(n_0_12), .B(n_0_0), .ZN(result[1]));
   XOR2_X1 i_0_2 (.A(B[1]), .B(A[1]), .Z(n_0_0));
   XNOR2_X1 i_0_3 (.A(n_0_11), .B(n_0_1), .ZN(result[2]));
   XNOR2_X1 i_0_4 (.A(B[2]), .B(A[2]), .ZN(n_0_1));
   AOI22_X1 i_0_5 (.A1(n_0_7), .A2(n_0_2), .B1(n_0_15), .B2(n_0_8), .ZN(
      result[3]));
   OR2_X1 i_0_6 (.A1(n_0_16), .A2(n_0_8), .ZN(n_0_2));
   XNOR2_X1 i_0_7 (.A(n_0_7), .B(n_0_3), .ZN(result[4]));
   XNOR2_X1 i_0_8 (.A(B[4]), .B(A[4]), .ZN(n_0_3));
   XOR2_X1 i_0_9 (.A(A[5]), .B(n_0_5), .Z(result[5]));
   XNOR2_X1 i_0_10 (.A(A[6]), .B(n_0_4), .ZN(result[6]));
   NAND2_X1 i_0_11 (.A1(n_0_5), .A2(A[5]), .ZN(n_0_4));
   NAND2_X1 i_0_12 (.A1(n_0_17), .A2(n_0_6), .ZN(n_0_5));
   OAI21_X1 i_0_13 (.A(n_0_7), .B1(A[4]), .B2(B[4]), .ZN(n_0_6));
   AOI21_X1 i_0_14 (.A(n_0_15), .B1(n_0_8), .B2(n_0_16), .ZN(n_0_7));
   OAI21_X1 i_0_15 (.A(n_0_9), .B1(A[2]), .B2(B[2]), .ZN(n_0_8));
   INV_X1 i_0_16 (.A(n_0_10), .ZN(n_0_9));
   AOI21_X1 i_0_17 (.A(n_0_11), .B1(A[2]), .B2(B[2]), .ZN(n_0_10));
   AOI21_X1 i_0_18 (.A(n_0_13), .B1(n_0_12), .B2(n_0_14), .ZN(n_0_11));
   NAND2_X1 i_0_19 (.A1(B[0]), .A2(A[0]), .ZN(n_0_12));
   NOR2_X1 i_0_20 (.A1(B[1]), .A2(A[1]), .ZN(n_0_13));
   NAND2_X1 i_0_21 (.A1(B[1]), .A2(A[1]), .ZN(n_0_14));
   NOR2_X1 i_0_22 (.A1(B[3]), .A2(A[3]), .ZN(n_0_15));
   NAND2_X1 i_0_23 (.A1(B[3]), .A2(A[3]), .ZN(n_0_16));
   NAND2_X1 i_0_24 (.A1(B[4]), .A2(A[4]), .ZN(n_0_17));
endmodule

module adder__parameterized0__1_205(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   XOR2_X1 i_0_0 (.A(B[1]), .B(B[0]), .Z(result[1]));
   AND2_X1 i_0_1 (.A1(n_0_2), .A2(n_0_0), .ZN(result[2]));
   OAI21_X1 i_0_2 (.A(B[2]), .B1(B[1]), .B2(B[0]), .ZN(n_0_0));
   XOR2_X1 i_0_3 (.A(B[3]), .B(n_0_2), .Z(result[3]));
   XOR2_X1 i_0_4 (.A(B[4]), .B(n_0_1), .Z(result[4]));
   NOR2_X1 i_0_5 (.A1(n_0_1), .A2(B[4]), .ZN(result[5]));
   OR2_X1 i_0_6 (.A1(n_0_2), .A2(B[3]), .ZN(n_0_1));
   OR3_X1 i_0_7 (.A1(B[2]), .A2(B[1]), .A3(B[0]), .ZN(n_0_2));
endmodule

module adder__parameterized0__1_196(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   INV_X1 i_0_0 (.A(A[0]), .ZN(n_0_0));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(B[0]), .ZN(n_0_1));
   OAI21_X1 i_0_2 (.A(n_0_1), .B1(B[0]), .B2(n_0_0), .ZN(result[0]));
   XNOR2_X1 i_0_3 (.A(B[1]), .B(A[1]), .ZN(n_0_2));
   INV_X1 i_0_4 (.A(n_0_1), .ZN(n_0_3));
   NAND2_X1 i_0_5 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_4));
   OAI21_X1 i_0_6 (.A(n_0_4), .B1(n_0_3), .B2(n_0_2), .ZN(result[1]));
   INV_X1 i_0_7 (.A(B[1]), .ZN(n_0_5));
   OAI21_X1 i_0_8 (.A(n_0_4), .B1(n_0_5), .B2(A[1]), .ZN(n_0_6));
   XNOR2_X1 i_0_9 (.A(A[2]), .B(B[2]), .ZN(n_0_7));
   XNOR2_X1 i_0_10 (.A(n_0_6), .B(n_0_7), .ZN(result[2]));
   INV_X1 i_0_11 (.A(A[2]), .ZN(n_0_8));
   AOI22_X1 i_0_12 (.A1(n_0_6), .A2(n_0_7), .B1(n_0_8), .B2(B[2]), .ZN(n_0_9));
   XOR2_X1 i_0_13 (.A(A[3]), .B(B[3]), .Z(n_0_10));
   XNOR2_X1 i_0_14 (.A(n_0_9), .B(n_0_10), .ZN(result[3]));
   INV_X1 i_0_15 (.A(B[3]), .ZN(n_0_11));
   OAI22_X1 i_0_16 (.A1(n_0_9), .A2(n_0_10), .B1(n_0_11), .B2(A[3]), .ZN(n_0_12));
   XOR2_X1 i_0_17 (.A(B[4]), .B(A[4]), .Z(n_0_13));
   XOR2_X1 i_0_18 (.A(n_0_12), .B(n_0_13), .Z(result[4]));
   INV_X1 i_0_19 (.A(A[4]), .ZN(n_0_14));
   OAI22_X1 i_0_20 (.A1(n_0_12), .A2(n_0_13), .B1(n_0_14), .B2(B[4]), .ZN(n_0_15));
   XNOR2_X1 i_0_21 (.A(B[5]), .B(A[5]), .ZN(n_0_16));
   XOR2_X1 i_0_22 (.A(n_0_15), .B(n_0_16), .Z(result[5]));
   INV_X1 i_0_23 (.A(B[5]), .ZN(n_0_17));
   AOI22_X1 i_0_24 (.A1(n_0_15), .A2(n_0_16), .B1(n_0_17), .B2(A[5]), .ZN(
      result[6]));
endmodule

module decompressor__1_215(clk, reset, start, bit, value, store, out);
   input clk;
   input reset;
   input start;
   input bit;
   input [5:0]value;
   output store;
   output [31:0]out;

   wire [6:0]new_pos;
   wire [6:0]remain;
   wire [6:0]temp;
   wire next;
   wire [6:0]reg_temp;
   wire [4:0]counter;
   wire [4:0]counter2;
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
   wire [6:0]new_value;
   wire n_0_77;
   wire n_0_78;
   wire n_0_79;
   wire work;
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

   adder__parameterized0__1_214 add1 (.A(new_value), .B({uc_0, uc_1, counter[4], 
      counter[3], counter[2], counter[1], counter[0]}), .is_subtract(), .result(
      new_pos), .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_205 sub1 (.A(), .B({uc_2, uc_3, counter2[4], 
      counter2[3], counter2[2], counter2[1], counter2[0]}), .is_subtract(), 
      .result({uc_4, remain[5], remain[4], remain[3], remain[2], remain[1], uc_5}), 
      .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_196 sub2 (.A({uc_6, value[5], value[4], value[3], 
      value[2], value[1], value[0]}), .B({uc_7, remain[5], remain[4], remain[3], 
      remain[2], remain[1], counter2[0]}), .is_subtract(), .result(temp), .carry(), 
      .overflow_flag(), .negative());
   DFF_X1 \out_reg[31]  (.D(n_2), .CK(clk), .Q(out[31]), .QN());
   DFF_X1 \out_reg[30]  (.D(n_3), .CK(clk), .Q(out[30]), .QN());
   DFF_X1 \out_reg[29]  (.D(n_4), .CK(clk), .Q(out[29]), .QN());
   DFF_X1 \out_reg[28]  (.D(n_5), .CK(clk), .Q(out[28]), .QN());
   DFF_X1 \out_reg[27]  (.D(n_6), .CK(clk), .Q(out[27]), .QN());
   DFF_X1 \out_reg[26]  (.D(n_7), .CK(clk), .Q(out[26]), .QN());
   DFF_X1 \out_reg[25]  (.D(n_8), .CK(clk), .Q(out[25]), .QN());
   DFF_X1 \out_reg[24]  (.D(n_9), .CK(clk), .Q(out[24]), .QN());
   DFF_X1 \out_reg[23]  (.D(n_10), .CK(clk), .Q(out[23]), .QN());
   DFF_X1 \out_reg[22]  (.D(n_11), .CK(clk), .Q(out[22]), .QN());
   DFF_X1 \out_reg[21]  (.D(n_12), .CK(clk), .Q(out[21]), .QN());
   DFF_X1 \out_reg[20]  (.D(n_13), .CK(clk), .Q(out[20]), .QN());
   DFF_X1 \out_reg[19]  (.D(n_14), .CK(clk), .Q(out[19]), .QN());
   DFF_X1 \out_reg[18]  (.D(n_15), .CK(clk), .Q(out[18]), .QN());
   DFF_X1 \out_reg[17]  (.D(n_16), .CK(clk), .Q(out[17]), .QN());
   DFF_X1 \out_reg[16]  (.D(n_17), .CK(clk), .Q(out[16]), .QN());
   DFF_X1 \out_reg[15]  (.D(n_18), .CK(clk), .Q(out[15]), .QN());
   DFF_X1 \out_reg[14]  (.D(n_19), .CK(clk), .Q(out[14]), .QN());
   DFF_X1 \out_reg[13]  (.D(n_20), .CK(clk), .Q(out[13]), .QN());
   DFF_X1 \out_reg[12]  (.D(n_21), .CK(clk), .Q(out[12]), .QN());
   DFF_X1 \out_reg[11]  (.D(n_22), .CK(clk), .Q(out[11]), .QN());
   DFF_X1 \out_reg[10]  (.D(n_23), .CK(clk), .Q(out[10]), .QN());
   DFF_X1 \out_reg[9]  (.D(n_24), .CK(clk), .Q(out[9]), .QN());
   DFF_X1 \out_reg[8]  (.D(n_25), .CK(clk), .Q(out[8]), .QN());
   DFF_X1 \out_reg[7]  (.D(n_26), .CK(clk), .Q(out[7]), .QN());
   DFF_X1 \out_reg[6]  (.D(n_27), .CK(clk), .Q(out[6]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_28), .CK(clk), .Q(out[5]), .QN());
   DFF_X1 \out_reg[4]  (.D(n_29), .CK(clk), .Q(out[4]), .QN());
   DFF_X1 \out_reg[3]  (.D(n_30), .CK(clk), .Q(out[3]), .QN());
   DFF_X1 \out_reg[2]  (.D(n_31), .CK(clk), .Q(out[2]), .QN());
   DFF_X1 \out_reg[1]  (.D(n_32), .CK(clk), .Q(out[1]), .QN());
   DFF_X1 \out_reg[0]  (.D(n_33), .CK(clk), .Q(out[0]), .QN());
   DFF_X1 store_reg (.D(n_34), .CK(clk), .Q(store), .QN());
   DFFS_X1 next_reg (.D(n_46), .SN(n_47), .CK(n_1), .Q(next), .QN());
   CLKGATETST_X1 clk_gate_reg_temp_reg (.CK(clk), .E(n_40), .SE(1'b0), .GCK(n_0));
   DFF_X1 \reg_temp_reg[6]  (.D(temp[6]), .CK(n_0), .Q(reg_temp[6]), .QN());
   DFF_X1 \reg_temp_reg[5]  (.D(temp[5]), .CK(n_0), .Q(reg_temp[5]), .QN());
   DFF_X1 \reg_temp_reg[4]  (.D(temp[4]), .CK(n_0), .Q(reg_temp[4]), .QN());
   DFF_X1 \reg_temp_reg[3]  (.D(temp[3]), .CK(n_0), .Q(reg_temp[3]), .QN());
   DFF_X1 \reg_temp_reg[2]  (.D(temp[2]), .CK(n_0), .Q(reg_temp[2]), .QN());
   DFF_X1 \reg_temp_reg[1]  (.D(temp[1]), .CK(n_0), .Q(reg_temp[1]), .QN());
   DFF_X1 \reg_temp_reg[0]  (.D(temp[0]), .CK(n_0), .Q(reg_temp[0]), .QN());
   DFFR_X1 \counter_reg[4]  (.D(n_39), .RN(n_47), .CK(n_1), .Q(counter[4]), 
      .QN());
   DFFR_X1 \counter_reg[3]  (.D(n_38), .RN(n_47), .CK(n_1), .Q(counter[3]), 
      .QN());
   DFFR_X1 \counter_reg[2]  (.D(n_37), .RN(n_47), .CK(n_1), .Q(counter[2]), 
      .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_36), .RN(n_47), .CK(n_1), .Q(counter[1]), 
      .QN());
   DFFR_X1 \counter_reg[0]  (.D(n_35), .RN(n_47), .CK(n_1), .Q(counter[0]), 
      .QN());
   DFF_X1 \counter2_reg[4]  (.D(n_45), .CK(n_48), .Q(counter2[4]), .QN());
   DFF_X1 \counter2_reg[3]  (.D(n_44), .CK(n_48), .Q(counter2[3]), .QN());
   DFF_X1 \counter2_reg[2]  (.D(n_43), .CK(n_48), .Q(counter2[2]), .QN());
   DFF_X1 \counter2_reg[1]  (.D(n_42), .CK(n_48), .Q(counter2[1]), .QN());
   DFF_X1 \counter2_reg[0]  (.D(n_41), .CK(n_48), .Q(counter2[0]), .QN());
   CLKGATETST_X1 clk_gate_next_reg (.CK(clk), .E(work), .SE(1'b0), .GCK(n_1));
   MUX2_X1 i_0_0 (.A(out[31]), .B(bit), .S(n_0_75), .Z(n_2));
   MUX2_X1 i_0_1 (.A(out[30]), .B(bit), .S(n_0_67), .Z(n_3));
   MUX2_X1 i_0_2 (.A(out[29]), .B(bit), .S(n_0_64), .Z(n_4));
   MUX2_X1 i_0_3 (.A(out[28]), .B(bit), .S(n_0_60), .Z(n_5));
   MUX2_X1 i_0_4 (.A(out[27]), .B(bit), .S(n_0_59), .Z(n_6));
   MUX2_X1 i_0_5 (.A(out[26]), .B(bit), .S(n_0_56), .Z(n_7));
   MUX2_X1 i_0_6 (.A(out[25]), .B(bit), .S(n_0_53), .Z(n_8));
   MUX2_X1 i_0_7 (.A(out[24]), .B(bit), .S(n_0_50), .Z(n_9));
   MUX2_X1 i_0_8 (.A(out[23]), .B(bit), .S(n_0_48), .Z(n_10));
   MUX2_X1 i_0_9 (.A(out[22]), .B(bit), .S(n_0_45), .Z(n_11));
   MUX2_X1 i_0_10 (.A(out[21]), .B(bit), .S(n_0_43), .Z(n_12));
   MUX2_X1 i_0_11 (.A(out[20]), .B(bit), .S(n_0_42), .Z(n_13));
   MUX2_X1 i_0_12 (.A(out[19]), .B(bit), .S(n_0_39), .Z(n_14));
   MUX2_X1 i_0_13 (.A(out[18]), .B(bit), .S(n_0_37), .Z(n_15));
   MUX2_X1 i_0_14 (.A(out[17]), .B(bit), .S(n_0_35), .Z(n_16));
   MUX2_X1 i_0_15 (.A(out[16]), .B(bit), .S(n_0_32), .Z(n_17));
   MUX2_X1 i_0_16 (.A(out[15]), .B(bit), .S(n_0_30), .Z(n_18));
   MUX2_X1 i_0_17 (.A(out[14]), .B(bit), .S(n_0_26), .Z(n_19));
   MUX2_X1 i_0_18 (.A(out[13]), .B(bit), .S(n_0_24), .Z(n_20));
   MUX2_X1 i_0_19 (.A(out[12]), .B(bit), .S(n_0_23), .Z(n_21));
   MUX2_X1 i_0_20 (.A(out[11]), .B(bit), .S(n_0_22), .Z(n_22));
   MUX2_X1 i_0_21 (.A(out[10]), .B(bit), .S(n_0_19), .Z(n_23));
   MUX2_X1 i_0_22 (.A(out[9]), .B(bit), .S(n_0_17), .Z(n_24));
   MUX2_X1 i_0_23 (.A(out[8]), .B(bit), .S(n_0_15), .Z(n_25));
   MUX2_X1 i_0_24 (.A(out[7]), .B(bit), .S(n_0_13), .Z(n_26));
   MUX2_X1 i_0_25 (.A(out[6]), .B(bit), .S(n_0_11), .Z(n_27));
   MUX2_X1 i_0_26 (.A(out[5]), .B(bit), .S(n_0_9), .Z(n_28));
   MUX2_X1 i_0_27 (.A(out[4]), .B(bit), .S(n_0_7), .Z(n_29));
   MUX2_X1 i_0_28 (.A(out[3]), .B(bit), .S(n_0_5), .Z(n_30));
   MUX2_X1 i_0_29 (.A(out[2]), .B(bit), .S(n_0_4), .Z(n_31));
   MUX2_X1 i_0_30 (.A(out[1]), .B(bit), .S(n_0_3), .Z(n_32));
   MUX2_X1 i_0_31 (.A(out[0]), .B(bit), .S(n_0_2), .Z(n_33));
   MUX2_X1 i_0_32 (.A(store), .B(n_0_1), .S(n_47), .Z(n_34));
   AND2_X1 i_0_33 (.A1(new_pos[0]), .A2(n_0_0), .ZN(n_35));
   NOR3_X1 i_0_34 (.A1(n_0_81), .A2(n_0_90), .A3(n_0_80), .ZN(n_36));
   AND2_X1 i_0_35 (.A1(new_pos[2]), .A2(n_0_0), .ZN(n_37));
   NOR3_X1 i_0_36 (.A1(n_0_82), .A2(n_0_90), .A3(n_0_80), .ZN(n_38));
   AND2_X1 i_0_37 (.A1(new_pos[4]), .A2(n_0_0), .ZN(n_39));
   NOR2_X1 i_0_38 (.A1(n_0_90), .A2(n_0_80), .ZN(n_0_0));
   NOR2_X1 i_0_39 (.A1(n_0_80), .A2(n_0_79), .ZN(n_0_1));
   AOI211_X1 i_0_40 (.A(n_0_51), .B(n_0_14), .C1(n_0_6), .C2(n_0_93), .ZN(n_0_2));
   AOI211_X1 i_0_41 (.A(n_0_55), .B(n_0_14), .C1(n_0_6), .C2(n_0_81), .ZN(n_0_3));
   AOI211_X1 i_0_42 (.A(n_0_57), .B(n_0_14), .C1(n_0_6), .C2(n_0_71), .ZN(n_0_4));
   NOR3_X1 i_0_43 (.A1(counter[2]), .A2(n_0_6), .A3(n_0_14), .ZN(n_0_5));
   NOR2_X1 i_0_44 (.A1(n_0_20), .A2(new_pos[2]), .ZN(n_0_6));
   NOR3_X1 i_0_45 (.A1(n_0_61), .A2(n_0_8), .A3(n_0_14), .ZN(n_0_7));
   AOI21_X1 i_0_46 (.A(n_0_20), .B1(n_0_78), .B2(new_pos[2]), .ZN(n_0_8));
   NOR3_X1 i_0_47 (.A1(n_0_70), .A2(n_0_10), .A3(n_0_14), .ZN(n_0_9));
   AOI21_X1 i_0_48 (.A(n_0_20), .B1(new_pos[1]), .B2(new_pos[2]), .ZN(n_0_10));
   NOR3_X1 i_0_49 (.A1(n_0_69), .A2(n_0_12), .A3(n_0_14), .ZN(n_0_11));
   AOI21_X1 i_0_50 (.A(n_0_20), .B1(n_0_92), .B2(new_pos[2]), .ZN(n_0_12));
   AOI21_X1 i_0_51 (.A(n_0_14), .B1(n_0_31), .B2(n_0_82), .ZN(n_0_13));
   NAND3_X1 i_0_52 (.A1(n_40), .A2(n_0_86), .A3(n_0_87), .ZN(n_0_14));
   AOI211_X1 i_0_53 (.A(n_0_46), .B(n_0_16), .C1(counter[3]), .C2(n_0_51), 
      .ZN(n_0_15));
   AOI21_X1 i_0_54 (.A(n_0_28), .B1(n_0_78), .B2(new_pos[3]), .ZN(n_0_16));
   AOI211_X1 i_0_55 (.A(n_0_46), .B(n_0_18), .C1(counter[3]), .C2(n_0_55), 
      .ZN(n_0_17));
   AOI21_X1 i_0_56 (.A(n_0_28), .B1(new_pos[1]), .B2(new_pos[3]), .ZN(n_0_18));
   AOI211_X1 i_0_57 (.A(n_0_46), .B(n_0_21), .C1(counter[3]), .C2(n_0_57), 
      .ZN(n_0_19));
   NAND2_X1 i_0_58 (.A1(n_0_31), .A2(n_0_82), .ZN(n_0_20));
   AOI21_X1 i_0_59 (.A(n_0_28), .B1(n_0_92), .B2(new_pos[3]), .ZN(n_0_21));
   AOI21_X1 i_0_60 (.A(n_0_27), .B1(counter[2]), .B2(counter[3]), .ZN(n_0_22));
   AOI221_X1 i_0_61 (.A(n_0_27), .B1(n_0_31), .B2(n_0_93), .C1(counter[3]), 
      .C2(n_0_61), .ZN(n_0_23));
   AOI221_X1 i_0_62 (.A(n_0_46), .B1(n_0_31), .B2(n_0_25), .C1(n_0_70), .C2(
      counter[3]), .ZN(n_0_24));
   NAND3_X1 i_0_63 (.A1(new_pos[3]), .A2(new_pos[2]), .A3(new_pos[1]), .ZN(
      n_0_25));
   AOI221_X1 i_0_64 (.A(n_0_27), .B1(n_0_31), .B2(n_0_71), .C1(counter[3]), 
      .C2(n_0_69), .ZN(n_0_26));
   NAND3_X1 i_0_65 (.A1(n_0_87), .A2(n_0_28), .A3(n_40), .ZN(n_0_27));
   INV_X1 i_0_66 (.A(n_0_29), .ZN(n_0_28));
   AOI211_X1 i_0_67 (.A(new_pos[4]), .B(n_0_90), .C1(new_pos[2]), .C2(new_pos[3]), 
      .ZN(n_0_29));
   NOR2_X1 i_0_68 (.A1(n_0_46), .A2(n_0_31), .ZN(n_0_30));
   NOR2_X1 i_0_69 (.A1(n_0_90), .A2(new_pos[4]), .ZN(n_0_31));
   AOI211_X1 i_0_70 (.A(n_0_76), .B(n_0_34), .C1(n_0_33), .C2(counter[4]), 
      .ZN(n_0_32));
   OR2_X1 i_0_71 (.A1(n_0_51), .A2(counter[3]), .ZN(n_0_33));
   AOI21_X1 i_0_72 (.A(n_0_41), .B1(n_0_78), .B2(new_pos[4]), .ZN(n_0_34));
   AOI211_X1 i_0_73 (.A(n_0_66), .B(n_0_36), .C1(n_0_46), .C2(n_0_55), .ZN(
      n_0_35));
   AOI21_X1 i_0_74 (.A(n_0_41), .B1(new_pos[1]), .B2(new_pos[4]), .ZN(n_0_36));
   AOI211_X1 i_0_75 (.A(n_0_66), .B(n_0_38), .C1(n_0_46), .C2(n_0_57), .ZN(
      n_0_37));
   AOI21_X1 i_0_76 (.A(n_0_41), .B1(n_0_92), .B2(new_pos[4]), .ZN(n_0_38));
   AND2_X1 i_0_77 (.A1(n_0_41), .A2(n_0_40), .ZN(n_0_39));
   OAI21_X1 i_0_78 (.A(n_0_46), .B1(n_0_66), .B2(counter[2]), .ZN(n_0_40));
   NAND2_X1 i_0_79 (.A1(n_0_49), .A2(n_0_91), .ZN(n_0_41));
   AOI221_X1 i_0_80 (.A(n_0_66), .B1(n_0_61), .B2(n_0_46), .C1(n_0_49), .C2(
      n_0_63), .ZN(n_0_42));
   AOI221_X1 i_0_81 (.A(n_0_66), .B1(n_0_49), .B2(n_0_44), .C1(n_0_46), .C2(
      n_0_70), .ZN(n_0_43));
   NAND2_X1 i_0_82 (.A1(new_pos[1]), .A2(n_0_74), .ZN(n_0_44));
   AOI221_X1 i_0_83 (.A(n_0_66), .B1(n_0_49), .B2(n_0_47), .C1(n_0_46), .C2(
      n_0_69), .ZN(n_0_45));
   NAND2_X1 i_0_84 (.A1(n_40), .A2(n_0_87), .ZN(n_0_46));
   NAND2_X1 i_0_85 (.A1(n_0_74), .A2(n_0_92), .ZN(n_0_47));
   NOR2_X1 i_0_86 (.A1(n_0_66), .A2(n_0_49), .ZN(n_0_48));
   AOI21_X1 i_0_87 (.A(n_0_90), .B1(new_pos[3]), .B2(new_pos[4]), .ZN(n_0_49));
   AOI221_X1 i_0_88 (.A(n_0_76), .B1(n_0_51), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_52), .ZN(n_0_50));
   NAND3_X1 i_0_89 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_51));
   NAND3_X1 i_0_90 (.A1(n_0_78), .A2(new_pos[3]), .A3(new_pos[4]), .ZN(n_0_52));
   AOI221_X1 i_0_91 (.A(n_0_76), .B1(n_0_55), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_54), .ZN(n_0_53));
   NAND3_X1 i_0_92 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[1]), .ZN(
      n_0_54));
   NAND2_X1 i_0_93 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_55));
   AOI221_X1 i_0_94 (.A(n_0_76), .B1(n_0_57), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_58), .ZN(n_0_56));
   OAI21_X1 i_0_95 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_57));
   NAND3_X1 i_0_96 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(n_0_92), .ZN(n_0_58));
   AOI21_X1 i_0_97 (.A(n_0_72), .B1(n_0_68), .B2(counter[2]), .ZN(n_0_59));
   AOI221_X1 i_0_98 (.A(n_0_76), .B1(n_0_68), .B2(n_0_61), .C1(n_0_62), .C2(
      n_0_79), .ZN(n_0_60));
   AOI21_X1 i_0_99 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_61));
   NAND3_X1 i_0_100 (.A1(n_0_78), .A2(n_0_74), .A3(new_pos[3]), .ZN(n_0_62));
   NAND2_X1 i_0_101 (.A1(n_0_78), .A2(n_0_74), .ZN(n_0_63));
   AOI221_X1 i_0_102 (.A(n_0_76), .B1(n_0_70), .B2(n_0_68), .C1(n_0_65), 
      .C2(n_0_79), .ZN(n_0_64));
   NAND4_X1 i_0_103 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[2]), .A4(
      new_pos[1]), .ZN(n_0_65));
   OAI21_X1 i_0_104 (.A(n_40), .B1(n_0_86), .B2(n_0_87), .ZN(n_0_66));
   AOI221_X1 i_0_105 (.A(n_0_72), .B1(n_0_69), .B2(n_0_68), .C1(n_0_71), 
      .C2(n_0_79), .ZN(n_0_67));
   NOR2_X1 i_0_106 (.A1(n_0_87), .A2(n_0_86), .ZN(n_0_68));
   NOR3_X1 i_0_107 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_69));
   NOR2_X1 i_0_108 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_70));
   NAND2_X1 i_0_109 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_71));
   OR2_X1 i_0_110 (.A1(n_0_73), .A2(n_0_76), .ZN(n_0_72));
   AOI21_X1 i_0_111 (.A(n_0_90), .B1(n_0_74), .B2(new_pos[3]), .ZN(n_0_73));
   AND2_X1 i_0_112 (.A1(new_pos[4]), .A2(new_pos[2]), .ZN(n_0_74));
   NOR2_X1 i_0_113 (.A1(n_0_76), .A2(n_0_79), .ZN(n_0_75));
   INV_X1 i_0_114 (.A(n_0_76), .ZN(n_40));
   NAND2_X1 i_0_115 (.A1(n_47), .A2(work), .ZN(n_0_76));
   NOR2_X1 i_0_116 (.A1(n_0_83), .A2(reset), .ZN(n_41));
   NOR2_X1 i_0_117 (.A1(n_0_84), .A2(reset), .ZN(n_42));
   NOR2_X1 i_0_118 (.A1(n_0_85), .A2(reset), .ZN(n_43));
   NOR2_X1 i_0_119 (.A1(n_0_86), .A2(reset), .ZN(n_44));
   NOR2_X1 i_0_120 (.A1(n_0_87), .A2(reset), .ZN(n_45));
   MUX2_X1 i_0_121 (.A(reg_temp[0]), .B(value[0]), .S(start), .Z(new_value[0]));
   MUX2_X1 i_0_122 (.A(reg_temp[1]), .B(value[1]), .S(start), .Z(new_value[1]));
   MUX2_X1 i_0_123 (.A(reg_temp[2]), .B(value[2]), .S(start), .Z(new_value[2]));
   MUX2_X1 i_0_124 (.A(reg_temp[3]), .B(value[3]), .S(start), .Z(new_value[3]));
   MUX2_X1 i_0_125 (.A(reg_temp[4]), .B(value[4]), .S(start), .Z(new_value[4]));
   MUX2_X1 i_0_126 (.A(reg_temp[5]), .B(value[5]), .S(start), .Z(new_value[5]));
   NOR2_X1 i_0_127 (.A1(n_0_88), .A2(start), .ZN(new_value[6]));
   OAI21_X1 i_0_128 (.A(n_0_90), .B1(n_0_78), .B2(n_0_77), .ZN(n_46));
   OR4_X1 i_0_129 (.A1(new_pos[6]), .A2(new_pos[4]), .A3(new_pos[3]), .A4(
      new_pos[2]), .ZN(n_0_77));
   OR2_X1 i_0_130 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_78));
   NOR2_X1 i_0_131 (.A1(new_pos[6]), .A2(new_pos[5]), .ZN(n_0_79));
   INV_X1 i_0_132 (.A(n_0_80), .ZN(work));
   NOR2_X1 i_0_133 (.A1(n_0_89), .A2(start), .ZN(n_0_80));
   INV_X1 i_0_134 (.A(new_pos[1]), .ZN(n_0_81));
   INV_X1 i_0_135 (.A(new_pos[3]), .ZN(n_0_82));
   INV_X1 i_0_136 (.A(reset), .ZN(n_47));
   INV_X1 i_0_137 (.A(counter[0]), .ZN(n_0_83));
   INV_X1 i_0_138 (.A(counter[1]), .ZN(n_0_84));
   INV_X1 i_0_139 (.A(counter[2]), .ZN(n_0_85));
   INV_X1 i_0_140 (.A(counter[3]), .ZN(n_0_86));
   INV_X1 i_0_141 (.A(counter[4]), .ZN(n_0_87));
   INV_X1 i_0_142 (.A(clk), .ZN(n_48));
   INV_X1 i_0_143 (.A(reg_temp[6]), .ZN(n_0_88));
   INV_X1 i_0_144 (.A(next), .ZN(n_0_89));
   INV_X1 i_0_145 (.A(n_0_79), .ZN(n_0_90));
   INV_X1 i_0_146 (.A(n_0_74), .ZN(n_0_91));
   INV_X1 i_0_147 (.A(n_0_71), .ZN(n_0_92));
   INV_X1 i_0_148 (.A(n_0_78), .ZN(n_0_93));
endmodule

module adder__parameterized0__1_303(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   XOR2_X1 i_0_0 (.A(B[0]), .B(A[0]), .Z(result[0]));
   XNOR2_X1 i_0_1 (.A(n_0_12), .B(n_0_0), .ZN(result[1]));
   XOR2_X1 i_0_2 (.A(B[1]), .B(A[1]), .Z(n_0_0));
   XNOR2_X1 i_0_3 (.A(n_0_11), .B(n_0_1), .ZN(result[2]));
   XNOR2_X1 i_0_4 (.A(B[2]), .B(A[2]), .ZN(n_0_1));
   AOI22_X1 i_0_5 (.A1(n_0_7), .A2(n_0_2), .B1(n_0_15), .B2(n_0_8), .ZN(
      result[3]));
   OR2_X1 i_0_6 (.A1(n_0_16), .A2(n_0_8), .ZN(n_0_2));
   XNOR2_X1 i_0_7 (.A(n_0_7), .B(n_0_3), .ZN(result[4]));
   XNOR2_X1 i_0_8 (.A(B[4]), .B(A[4]), .ZN(n_0_3));
   XOR2_X1 i_0_9 (.A(A[5]), .B(n_0_5), .Z(result[5]));
   XNOR2_X1 i_0_10 (.A(A[6]), .B(n_0_4), .ZN(result[6]));
   NAND2_X1 i_0_11 (.A1(n_0_5), .A2(A[5]), .ZN(n_0_4));
   NAND2_X1 i_0_12 (.A1(n_0_17), .A2(n_0_6), .ZN(n_0_5));
   OAI21_X1 i_0_13 (.A(n_0_7), .B1(A[4]), .B2(B[4]), .ZN(n_0_6));
   AOI21_X1 i_0_14 (.A(n_0_15), .B1(n_0_8), .B2(n_0_16), .ZN(n_0_7));
   OAI21_X1 i_0_15 (.A(n_0_9), .B1(A[2]), .B2(B[2]), .ZN(n_0_8));
   INV_X1 i_0_16 (.A(n_0_10), .ZN(n_0_9));
   AOI21_X1 i_0_17 (.A(n_0_11), .B1(A[2]), .B2(B[2]), .ZN(n_0_10));
   AOI21_X1 i_0_18 (.A(n_0_13), .B1(n_0_12), .B2(n_0_14), .ZN(n_0_11));
   NAND2_X1 i_0_19 (.A1(B[0]), .A2(A[0]), .ZN(n_0_12));
   NOR2_X1 i_0_20 (.A1(B[1]), .A2(A[1]), .ZN(n_0_13));
   NAND2_X1 i_0_21 (.A1(B[1]), .A2(A[1]), .ZN(n_0_14));
   NOR2_X1 i_0_22 (.A1(B[3]), .A2(A[3]), .ZN(n_0_15));
   NAND2_X1 i_0_23 (.A1(B[3]), .A2(A[3]), .ZN(n_0_16));
   NAND2_X1 i_0_24 (.A1(B[4]), .A2(A[4]), .ZN(n_0_17));
endmodule

module adder__parameterized0__1_294(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   XOR2_X1 i_0_0 (.A(B[1]), .B(B[0]), .Z(result[1]));
   AND2_X1 i_0_1 (.A1(n_0_2), .A2(n_0_0), .ZN(result[2]));
   OAI21_X1 i_0_2 (.A(B[2]), .B1(B[1]), .B2(B[0]), .ZN(n_0_0));
   XOR2_X1 i_0_3 (.A(B[3]), .B(n_0_2), .Z(result[3]));
   XOR2_X1 i_0_4 (.A(B[4]), .B(n_0_1), .Z(result[4]));
   NOR2_X1 i_0_5 (.A1(n_0_1), .A2(B[4]), .ZN(result[5]));
   OR2_X1 i_0_6 (.A1(n_0_2), .A2(B[3]), .ZN(n_0_1));
   OR3_X1 i_0_7 (.A1(B[2]), .A2(B[1]), .A3(B[0]), .ZN(n_0_2));
endmodule

module adder__parameterized0__1_285(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   INV_X1 i_0_0 (.A(A[0]), .ZN(n_0_0));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(B[0]), .ZN(n_0_1));
   OAI21_X1 i_0_2 (.A(n_0_1), .B1(B[0]), .B2(n_0_0), .ZN(result[0]));
   XNOR2_X1 i_0_3 (.A(B[1]), .B(A[1]), .ZN(n_0_2));
   INV_X1 i_0_4 (.A(n_0_1), .ZN(n_0_3));
   NAND2_X1 i_0_5 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_4));
   OAI21_X1 i_0_6 (.A(n_0_4), .B1(n_0_3), .B2(n_0_2), .ZN(result[1]));
   INV_X1 i_0_7 (.A(B[1]), .ZN(n_0_5));
   OAI21_X1 i_0_8 (.A(n_0_4), .B1(n_0_5), .B2(A[1]), .ZN(n_0_6));
   XNOR2_X1 i_0_9 (.A(A[2]), .B(B[2]), .ZN(n_0_7));
   XNOR2_X1 i_0_10 (.A(n_0_6), .B(n_0_7), .ZN(result[2]));
   INV_X1 i_0_11 (.A(A[2]), .ZN(n_0_8));
   AOI22_X1 i_0_12 (.A1(n_0_6), .A2(n_0_7), .B1(n_0_8), .B2(B[2]), .ZN(n_0_9));
   XOR2_X1 i_0_13 (.A(A[3]), .B(B[3]), .Z(n_0_10));
   XNOR2_X1 i_0_14 (.A(n_0_9), .B(n_0_10), .ZN(result[3]));
   INV_X1 i_0_15 (.A(B[3]), .ZN(n_0_11));
   OAI22_X1 i_0_16 (.A1(n_0_9), .A2(n_0_10), .B1(n_0_11), .B2(A[3]), .ZN(n_0_12));
   XOR2_X1 i_0_17 (.A(B[4]), .B(A[4]), .Z(n_0_13));
   XOR2_X1 i_0_18 (.A(n_0_12), .B(n_0_13), .Z(result[4]));
   INV_X1 i_0_19 (.A(A[4]), .ZN(n_0_14));
   OAI22_X1 i_0_20 (.A1(n_0_12), .A2(n_0_13), .B1(n_0_14), .B2(B[4]), .ZN(n_0_15));
   XNOR2_X1 i_0_21 (.A(B[5]), .B(A[5]), .ZN(n_0_16));
   XOR2_X1 i_0_22 (.A(n_0_15), .B(n_0_16), .Z(result[5]));
   INV_X1 i_0_23 (.A(B[5]), .ZN(n_0_17));
   AOI22_X1 i_0_24 (.A1(n_0_15), .A2(n_0_16), .B1(n_0_17), .B2(A[5]), .ZN(
      result[6]));
endmodule

module decompressor__1_304(clk, reset, start, bit, value, store, out);
   input clk;
   input reset;
   input start;
   input bit;
   input [5:0]value;
   output store;
   output [31:0]out;

   wire [6:0]new_pos;
   wire [6:0]remain;
   wire [6:0]temp;
   wire next;
   wire [6:0]reg_temp;
   wire [4:0]counter;
   wire [4:0]counter2;
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
   wire [6:0]new_value;
   wire n_0_77;
   wire n_0_78;
   wire n_0_79;
   wire work;
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

   adder__parameterized0__1_303 add1 (.A(new_value), .B({uc_0, uc_1, counter[4], 
      counter[3], counter[2], counter[1], counter[0]}), .is_subtract(), .result(
      new_pos), .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_294 sub1 (.A(), .B({uc_2, uc_3, counter2[4], 
      counter2[3], counter2[2], counter2[1], counter2[0]}), .is_subtract(), 
      .result({uc_4, remain[5], remain[4], remain[3], remain[2], remain[1], uc_5}), 
      .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_285 sub2 (.A({uc_6, value[5], value[4], value[3], 
      value[2], value[1], value[0]}), .B({uc_7, remain[5], remain[4], remain[3], 
      remain[2], remain[1], counter2[0]}), .is_subtract(), .result(temp), .carry(), 
      .overflow_flag(), .negative());
   DFF_X1 \out_reg[31]  (.D(n_2), .CK(clk), .Q(out[31]), .QN());
   DFF_X1 \out_reg[30]  (.D(n_3), .CK(clk), .Q(out[30]), .QN());
   DFF_X1 \out_reg[29]  (.D(n_4), .CK(clk), .Q(out[29]), .QN());
   DFF_X1 \out_reg[28]  (.D(n_5), .CK(clk), .Q(out[28]), .QN());
   DFF_X1 \out_reg[27]  (.D(n_6), .CK(clk), .Q(out[27]), .QN());
   DFF_X1 \out_reg[26]  (.D(n_7), .CK(clk), .Q(out[26]), .QN());
   DFF_X1 \out_reg[25]  (.D(n_8), .CK(clk), .Q(out[25]), .QN());
   DFF_X1 \out_reg[24]  (.D(n_9), .CK(clk), .Q(out[24]), .QN());
   DFF_X1 \out_reg[23]  (.D(n_10), .CK(clk), .Q(out[23]), .QN());
   DFF_X1 \out_reg[22]  (.D(n_11), .CK(clk), .Q(out[22]), .QN());
   DFF_X1 \out_reg[21]  (.D(n_12), .CK(clk), .Q(out[21]), .QN());
   DFF_X1 \out_reg[20]  (.D(n_13), .CK(clk), .Q(out[20]), .QN());
   DFF_X1 \out_reg[19]  (.D(n_14), .CK(clk), .Q(out[19]), .QN());
   DFF_X1 \out_reg[18]  (.D(n_15), .CK(clk), .Q(out[18]), .QN());
   DFF_X1 \out_reg[17]  (.D(n_16), .CK(clk), .Q(out[17]), .QN());
   DFF_X1 \out_reg[16]  (.D(n_17), .CK(clk), .Q(out[16]), .QN());
   DFF_X1 \out_reg[15]  (.D(n_18), .CK(clk), .Q(out[15]), .QN());
   DFF_X1 \out_reg[14]  (.D(n_19), .CK(clk), .Q(out[14]), .QN());
   DFF_X1 \out_reg[13]  (.D(n_20), .CK(clk), .Q(out[13]), .QN());
   DFF_X1 \out_reg[12]  (.D(n_21), .CK(clk), .Q(out[12]), .QN());
   DFF_X1 \out_reg[11]  (.D(n_22), .CK(clk), .Q(out[11]), .QN());
   DFF_X1 \out_reg[10]  (.D(n_23), .CK(clk), .Q(out[10]), .QN());
   DFF_X1 \out_reg[9]  (.D(n_24), .CK(clk), .Q(out[9]), .QN());
   DFF_X1 \out_reg[8]  (.D(n_25), .CK(clk), .Q(out[8]), .QN());
   DFF_X1 \out_reg[7]  (.D(n_26), .CK(clk), .Q(out[7]), .QN());
   DFF_X1 \out_reg[6]  (.D(n_27), .CK(clk), .Q(out[6]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_28), .CK(clk), .Q(out[5]), .QN());
   DFF_X1 \out_reg[4]  (.D(n_29), .CK(clk), .Q(out[4]), .QN());
   DFF_X1 \out_reg[3]  (.D(n_30), .CK(clk), .Q(out[3]), .QN());
   DFF_X1 \out_reg[2]  (.D(n_31), .CK(clk), .Q(out[2]), .QN());
   DFF_X1 \out_reg[1]  (.D(n_32), .CK(clk), .Q(out[1]), .QN());
   DFF_X1 \out_reg[0]  (.D(n_33), .CK(clk), .Q(out[0]), .QN());
   DFF_X1 store_reg (.D(n_34), .CK(clk), .Q(store), .QN());
   DFFS_X1 next_reg (.D(n_46), .SN(n_47), .CK(n_1), .Q(next), .QN());
   CLKGATETST_X1 clk_gate_reg_temp_reg (.CK(clk), .E(n_40), .SE(1'b0), .GCK(n_0));
   DFF_X1 \reg_temp_reg[6]  (.D(temp[6]), .CK(n_0), .Q(reg_temp[6]), .QN());
   DFF_X1 \reg_temp_reg[5]  (.D(temp[5]), .CK(n_0), .Q(reg_temp[5]), .QN());
   DFF_X1 \reg_temp_reg[4]  (.D(temp[4]), .CK(n_0), .Q(reg_temp[4]), .QN());
   DFF_X1 \reg_temp_reg[3]  (.D(temp[3]), .CK(n_0), .Q(reg_temp[3]), .QN());
   DFF_X1 \reg_temp_reg[2]  (.D(temp[2]), .CK(n_0), .Q(reg_temp[2]), .QN());
   DFF_X1 \reg_temp_reg[1]  (.D(temp[1]), .CK(n_0), .Q(reg_temp[1]), .QN());
   DFF_X1 \reg_temp_reg[0]  (.D(temp[0]), .CK(n_0), .Q(reg_temp[0]), .QN());
   DFFR_X1 \counter_reg[4]  (.D(n_39), .RN(n_47), .CK(n_1), .Q(counter[4]), 
      .QN());
   DFFR_X1 \counter_reg[3]  (.D(n_38), .RN(n_47), .CK(n_1), .Q(counter[3]), 
      .QN());
   DFFR_X1 \counter_reg[2]  (.D(n_37), .RN(n_47), .CK(n_1), .Q(counter[2]), 
      .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_36), .RN(n_47), .CK(n_1), .Q(counter[1]), 
      .QN());
   DFFR_X1 \counter_reg[0]  (.D(n_35), .RN(n_47), .CK(n_1), .Q(counter[0]), 
      .QN());
   DFF_X1 \counter2_reg[4]  (.D(n_45), .CK(n_48), .Q(counter2[4]), .QN());
   DFF_X1 \counter2_reg[3]  (.D(n_44), .CK(n_48), .Q(counter2[3]), .QN());
   DFF_X1 \counter2_reg[2]  (.D(n_43), .CK(n_48), .Q(counter2[2]), .QN());
   DFF_X1 \counter2_reg[1]  (.D(n_42), .CK(n_48), .Q(counter2[1]), .QN());
   DFF_X1 \counter2_reg[0]  (.D(n_41), .CK(n_48), .Q(counter2[0]), .QN());
   CLKGATETST_X1 clk_gate_next_reg (.CK(clk), .E(work), .SE(1'b0), .GCK(n_1));
   MUX2_X1 i_0_0 (.A(out[31]), .B(bit), .S(n_0_75), .Z(n_2));
   MUX2_X1 i_0_1 (.A(out[30]), .B(bit), .S(n_0_67), .Z(n_3));
   MUX2_X1 i_0_2 (.A(out[29]), .B(bit), .S(n_0_64), .Z(n_4));
   MUX2_X1 i_0_3 (.A(out[28]), .B(bit), .S(n_0_60), .Z(n_5));
   MUX2_X1 i_0_4 (.A(out[27]), .B(bit), .S(n_0_59), .Z(n_6));
   MUX2_X1 i_0_5 (.A(out[26]), .B(bit), .S(n_0_56), .Z(n_7));
   MUX2_X1 i_0_6 (.A(out[25]), .B(bit), .S(n_0_53), .Z(n_8));
   MUX2_X1 i_0_7 (.A(out[24]), .B(bit), .S(n_0_50), .Z(n_9));
   MUX2_X1 i_0_8 (.A(out[23]), .B(bit), .S(n_0_48), .Z(n_10));
   MUX2_X1 i_0_9 (.A(out[22]), .B(bit), .S(n_0_45), .Z(n_11));
   MUX2_X1 i_0_10 (.A(out[21]), .B(bit), .S(n_0_43), .Z(n_12));
   MUX2_X1 i_0_11 (.A(out[20]), .B(bit), .S(n_0_42), .Z(n_13));
   MUX2_X1 i_0_12 (.A(out[19]), .B(bit), .S(n_0_39), .Z(n_14));
   MUX2_X1 i_0_13 (.A(out[18]), .B(bit), .S(n_0_37), .Z(n_15));
   MUX2_X1 i_0_14 (.A(out[17]), .B(bit), .S(n_0_35), .Z(n_16));
   MUX2_X1 i_0_15 (.A(out[16]), .B(bit), .S(n_0_32), .Z(n_17));
   MUX2_X1 i_0_16 (.A(out[15]), .B(bit), .S(n_0_30), .Z(n_18));
   MUX2_X1 i_0_17 (.A(out[14]), .B(bit), .S(n_0_26), .Z(n_19));
   MUX2_X1 i_0_18 (.A(out[13]), .B(bit), .S(n_0_24), .Z(n_20));
   MUX2_X1 i_0_19 (.A(out[12]), .B(bit), .S(n_0_23), .Z(n_21));
   MUX2_X1 i_0_20 (.A(out[11]), .B(bit), .S(n_0_22), .Z(n_22));
   MUX2_X1 i_0_21 (.A(out[10]), .B(bit), .S(n_0_19), .Z(n_23));
   MUX2_X1 i_0_22 (.A(out[9]), .B(bit), .S(n_0_17), .Z(n_24));
   MUX2_X1 i_0_23 (.A(out[8]), .B(bit), .S(n_0_15), .Z(n_25));
   MUX2_X1 i_0_24 (.A(out[7]), .B(bit), .S(n_0_13), .Z(n_26));
   MUX2_X1 i_0_25 (.A(out[6]), .B(bit), .S(n_0_11), .Z(n_27));
   MUX2_X1 i_0_26 (.A(out[5]), .B(bit), .S(n_0_9), .Z(n_28));
   MUX2_X1 i_0_27 (.A(out[4]), .B(bit), .S(n_0_7), .Z(n_29));
   MUX2_X1 i_0_28 (.A(out[3]), .B(bit), .S(n_0_5), .Z(n_30));
   MUX2_X1 i_0_29 (.A(out[2]), .B(bit), .S(n_0_4), .Z(n_31));
   MUX2_X1 i_0_30 (.A(out[1]), .B(bit), .S(n_0_3), .Z(n_32));
   MUX2_X1 i_0_31 (.A(out[0]), .B(bit), .S(n_0_2), .Z(n_33));
   MUX2_X1 i_0_32 (.A(store), .B(n_0_1), .S(n_47), .Z(n_34));
   AND2_X1 i_0_33 (.A1(new_pos[0]), .A2(n_0_0), .ZN(n_35));
   NOR3_X1 i_0_34 (.A1(n_0_81), .A2(n_0_90), .A3(n_0_80), .ZN(n_36));
   AND2_X1 i_0_35 (.A1(new_pos[2]), .A2(n_0_0), .ZN(n_37));
   NOR3_X1 i_0_36 (.A1(n_0_82), .A2(n_0_90), .A3(n_0_80), .ZN(n_38));
   AND2_X1 i_0_37 (.A1(new_pos[4]), .A2(n_0_0), .ZN(n_39));
   NOR2_X1 i_0_38 (.A1(n_0_90), .A2(n_0_80), .ZN(n_0_0));
   NOR2_X1 i_0_39 (.A1(n_0_80), .A2(n_0_79), .ZN(n_0_1));
   AOI211_X1 i_0_40 (.A(n_0_51), .B(n_0_14), .C1(n_0_6), .C2(n_0_93), .ZN(n_0_2));
   AOI211_X1 i_0_41 (.A(n_0_55), .B(n_0_14), .C1(n_0_6), .C2(n_0_81), .ZN(n_0_3));
   AOI211_X1 i_0_42 (.A(n_0_57), .B(n_0_14), .C1(n_0_6), .C2(n_0_71), .ZN(n_0_4));
   NOR3_X1 i_0_43 (.A1(counter[2]), .A2(n_0_6), .A3(n_0_14), .ZN(n_0_5));
   NOR2_X1 i_0_44 (.A1(n_0_20), .A2(new_pos[2]), .ZN(n_0_6));
   NOR3_X1 i_0_45 (.A1(n_0_61), .A2(n_0_8), .A3(n_0_14), .ZN(n_0_7));
   AOI21_X1 i_0_46 (.A(n_0_20), .B1(n_0_78), .B2(new_pos[2]), .ZN(n_0_8));
   NOR3_X1 i_0_47 (.A1(n_0_70), .A2(n_0_10), .A3(n_0_14), .ZN(n_0_9));
   AOI21_X1 i_0_48 (.A(n_0_20), .B1(new_pos[1]), .B2(new_pos[2]), .ZN(n_0_10));
   NOR3_X1 i_0_49 (.A1(n_0_69), .A2(n_0_12), .A3(n_0_14), .ZN(n_0_11));
   AOI21_X1 i_0_50 (.A(n_0_20), .B1(n_0_92), .B2(new_pos[2]), .ZN(n_0_12));
   AOI21_X1 i_0_51 (.A(n_0_14), .B1(n_0_31), .B2(n_0_82), .ZN(n_0_13));
   NAND3_X1 i_0_52 (.A1(n_40), .A2(n_0_86), .A3(n_0_87), .ZN(n_0_14));
   AOI211_X1 i_0_53 (.A(n_0_46), .B(n_0_16), .C1(counter[3]), .C2(n_0_51), 
      .ZN(n_0_15));
   AOI21_X1 i_0_54 (.A(n_0_28), .B1(n_0_78), .B2(new_pos[3]), .ZN(n_0_16));
   AOI211_X1 i_0_55 (.A(n_0_46), .B(n_0_18), .C1(counter[3]), .C2(n_0_55), 
      .ZN(n_0_17));
   AOI21_X1 i_0_56 (.A(n_0_28), .B1(new_pos[1]), .B2(new_pos[3]), .ZN(n_0_18));
   AOI211_X1 i_0_57 (.A(n_0_46), .B(n_0_21), .C1(counter[3]), .C2(n_0_57), 
      .ZN(n_0_19));
   NAND2_X1 i_0_58 (.A1(n_0_31), .A2(n_0_82), .ZN(n_0_20));
   AOI21_X1 i_0_59 (.A(n_0_28), .B1(n_0_92), .B2(new_pos[3]), .ZN(n_0_21));
   AOI21_X1 i_0_60 (.A(n_0_27), .B1(counter[2]), .B2(counter[3]), .ZN(n_0_22));
   AOI221_X1 i_0_61 (.A(n_0_27), .B1(n_0_31), .B2(n_0_93), .C1(counter[3]), 
      .C2(n_0_61), .ZN(n_0_23));
   AOI221_X1 i_0_62 (.A(n_0_46), .B1(n_0_31), .B2(n_0_25), .C1(n_0_70), .C2(
      counter[3]), .ZN(n_0_24));
   NAND3_X1 i_0_63 (.A1(new_pos[3]), .A2(new_pos[2]), .A3(new_pos[1]), .ZN(
      n_0_25));
   AOI221_X1 i_0_64 (.A(n_0_27), .B1(n_0_31), .B2(n_0_71), .C1(counter[3]), 
      .C2(n_0_69), .ZN(n_0_26));
   NAND3_X1 i_0_65 (.A1(n_0_87), .A2(n_0_28), .A3(n_40), .ZN(n_0_27));
   INV_X1 i_0_66 (.A(n_0_29), .ZN(n_0_28));
   AOI211_X1 i_0_67 (.A(new_pos[4]), .B(n_0_90), .C1(new_pos[2]), .C2(new_pos[3]), 
      .ZN(n_0_29));
   NOR2_X1 i_0_68 (.A1(n_0_46), .A2(n_0_31), .ZN(n_0_30));
   NOR2_X1 i_0_69 (.A1(n_0_90), .A2(new_pos[4]), .ZN(n_0_31));
   AOI211_X1 i_0_70 (.A(n_0_76), .B(n_0_34), .C1(n_0_33), .C2(counter[4]), 
      .ZN(n_0_32));
   OR2_X1 i_0_71 (.A1(n_0_51), .A2(counter[3]), .ZN(n_0_33));
   AOI21_X1 i_0_72 (.A(n_0_41), .B1(n_0_78), .B2(new_pos[4]), .ZN(n_0_34));
   AOI211_X1 i_0_73 (.A(n_0_66), .B(n_0_36), .C1(n_0_46), .C2(n_0_55), .ZN(
      n_0_35));
   AOI21_X1 i_0_74 (.A(n_0_41), .B1(new_pos[1]), .B2(new_pos[4]), .ZN(n_0_36));
   AOI211_X1 i_0_75 (.A(n_0_66), .B(n_0_38), .C1(n_0_46), .C2(n_0_57), .ZN(
      n_0_37));
   AOI21_X1 i_0_76 (.A(n_0_41), .B1(n_0_92), .B2(new_pos[4]), .ZN(n_0_38));
   AND2_X1 i_0_77 (.A1(n_0_41), .A2(n_0_40), .ZN(n_0_39));
   OAI21_X1 i_0_78 (.A(n_0_46), .B1(n_0_66), .B2(counter[2]), .ZN(n_0_40));
   NAND2_X1 i_0_79 (.A1(n_0_49), .A2(n_0_91), .ZN(n_0_41));
   AOI221_X1 i_0_80 (.A(n_0_66), .B1(n_0_61), .B2(n_0_46), .C1(n_0_49), .C2(
      n_0_63), .ZN(n_0_42));
   AOI221_X1 i_0_81 (.A(n_0_66), .B1(n_0_49), .B2(n_0_44), .C1(n_0_46), .C2(
      n_0_70), .ZN(n_0_43));
   NAND2_X1 i_0_82 (.A1(new_pos[1]), .A2(n_0_74), .ZN(n_0_44));
   AOI221_X1 i_0_83 (.A(n_0_66), .B1(n_0_49), .B2(n_0_47), .C1(n_0_46), .C2(
      n_0_69), .ZN(n_0_45));
   NAND2_X1 i_0_84 (.A1(n_40), .A2(n_0_87), .ZN(n_0_46));
   NAND2_X1 i_0_85 (.A1(n_0_74), .A2(n_0_92), .ZN(n_0_47));
   NOR2_X1 i_0_86 (.A1(n_0_66), .A2(n_0_49), .ZN(n_0_48));
   AOI21_X1 i_0_87 (.A(n_0_90), .B1(new_pos[3]), .B2(new_pos[4]), .ZN(n_0_49));
   AOI221_X1 i_0_88 (.A(n_0_76), .B1(n_0_51), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_52), .ZN(n_0_50));
   NAND3_X1 i_0_89 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_51));
   NAND3_X1 i_0_90 (.A1(n_0_78), .A2(new_pos[3]), .A3(new_pos[4]), .ZN(n_0_52));
   AOI221_X1 i_0_91 (.A(n_0_76), .B1(n_0_55), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_54), .ZN(n_0_53));
   NAND3_X1 i_0_92 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[1]), .ZN(
      n_0_54));
   NAND2_X1 i_0_93 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_55));
   AOI221_X1 i_0_94 (.A(n_0_76), .B1(n_0_57), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_58), .ZN(n_0_56));
   OAI21_X1 i_0_95 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_57));
   NAND3_X1 i_0_96 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(n_0_92), .ZN(n_0_58));
   AOI21_X1 i_0_97 (.A(n_0_72), .B1(n_0_68), .B2(counter[2]), .ZN(n_0_59));
   AOI221_X1 i_0_98 (.A(n_0_76), .B1(n_0_68), .B2(n_0_61), .C1(n_0_62), .C2(
      n_0_79), .ZN(n_0_60));
   AOI21_X1 i_0_99 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_61));
   NAND3_X1 i_0_100 (.A1(n_0_78), .A2(n_0_74), .A3(new_pos[3]), .ZN(n_0_62));
   NAND2_X1 i_0_101 (.A1(n_0_78), .A2(n_0_74), .ZN(n_0_63));
   AOI221_X1 i_0_102 (.A(n_0_76), .B1(n_0_70), .B2(n_0_68), .C1(n_0_65), 
      .C2(n_0_79), .ZN(n_0_64));
   NAND4_X1 i_0_103 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[2]), .A4(
      new_pos[1]), .ZN(n_0_65));
   OAI21_X1 i_0_104 (.A(n_40), .B1(n_0_86), .B2(n_0_87), .ZN(n_0_66));
   AOI221_X1 i_0_105 (.A(n_0_72), .B1(n_0_69), .B2(n_0_68), .C1(n_0_71), 
      .C2(n_0_79), .ZN(n_0_67));
   NOR2_X1 i_0_106 (.A1(n_0_87), .A2(n_0_86), .ZN(n_0_68));
   NOR3_X1 i_0_107 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_69));
   NOR2_X1 i_0_108 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_70));
   NAND2_X1 i_0_109 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_71));
   OR2_X1 i_0_110 (.A1(n_0_73), .A2(n_0_76), .ZN(n_0_72));
   AOI21_X1 i_0_111 (.A(n_0_90), .B1(n_0_74), .B2(new_pos[3]), .ZN(n_0_73));
   AND2_X1 i_0_112 (.A1(new_pos[4]), .A2(new_pos[2]), .ZN(n_0_74));
   NOR2_X1 i_0_113 (.A1(n_0_76), .A2(n_0_79), .ZN(n_0_75));
   INV_X1 i_0_114 (.A(n_0_76), .ZN(n_40));
   NAND2_X1 i_0_115 (.A1(n_47), .A2(work), .ZN(n_0_76));
   NOR2_X1 i_0_116 (.A1(n_0_83), .A2(reset), .ZN(n_41));
   NOR2_X1 i_0_117 (.A1(n_0_84), .A2(reset), .ZN(n_42));
   NOR2_X1 i_0_118 (.A1(n_0_85), .A2(reset), .ZN(n_43));
   NOR2_X1 i_0_119 (.A1(n_0_86), .A2(reset), .ZN(n_44));
   NOR2_X1 i_0_120 (.A1(n_0_87), .A2(reset), .ZN(n_45));
   MUX2_X1 i_0_121 (.A(reg_temp[0]), .B(value[0]), .S(start), .Z(new_value[0]));
   MUX2_X1 i_0_122 (.A(reg_temp[1]), .B(value[1]), .S(start), .Z(new_value[1]));
   MUX2_X1 i_0_123 (.A(reg_temp[2]), .B(value[2]), .S(start), .Z(new_value[2]));
   MUX2_X1 i_0_124 (.A(reg_temp[3]), .B(value[3]), .S(start), .Z(new_value[3]));
   MUX2_X1 i_0_125 (.A(reg_temp[4]), .B(value[4]), .S(start), .Z(new_value[4]));
   MUX2_X1 i_0_126 (.A(reg_temp[5]), .B(value[5]), .S(start), .Z(new_value[5]));
   NOR2_X1 i_0_127 (.A1(n_0_88), .A2(start), .ZN(new_value[6]));
   OAI21_X1 i_0_128 (.A(n_0_90), .B1(n_0_78), .B2(n_0_77), .ZN(n_46));
   OR4_X1 i_0_129 (.A1(new_pos[6]), .A2(new_pos[4]), .A3(new_pos[3]), .A4(
      new_pos[2]), .ZN(n_0_77));
   OR2_X1 i_0_130 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_78));
   NOR2_X1 i_0_131 (.A1(new_pos[6]), .A2(new_pos[5]), .ZN(n_0_79));
   INV_X1 i_0_132 (.A(n_0_80), .ZN(work));
   NOR2_X1 i_0_133 (.A1(n_0_89), .A2(start), .ZN(n_0_80));
   INV_X1 i_0_134 (.A(new_pos[1]), .ZN(n_0_81));
   INV_X1 i_0_135 (.A(new_pos[3]), .ZN(n_0_82));
   INV_X1 i_0_136 (.A(reset), .ZN(n_47));
   INV_X1 i_0_137 (.A(counter[0]), .ZN(n_0_83));
   INV_X1 i_0_138 (.A(counter[1]), .ZN(n_0_84));
   INV_X1 i_0_139 (.A(counter[2]), .ZN(n_0_85));
   INV_X1 i_0_140 (.A(counter[3]), .ZN(n_0_86));
   INV_X1 i_0_141 (.A(counter[4]), .ZN(n_0_87));
   INV_X1 i_0_142 (.A(clk), .ZN(n_48));
   INV_X1 i_0_143 (.A(reg_temp[6]), .ZN(n_0_88));
   INV_X1 i_0_144 (.A(next), .ZN(n_0_89));
   INV_X1 i_0_145 (.A(n_0_79), .ZN(n_0_90));
   INV_X1 i_0_146 (.A(n_0_74), .ZN(n_0_91));
   INV_X1 i_0_147 (.A(n_0_71), .ZN(n_0_92));
   INV_X1 i_0_148 (.A(n_0_78), .ZN(n_0_93));
endmodule

module adder__1_108(A, B, is_subtract, result, carry, overflow_flag, negative);
   input [1:0]A;
   input [1:0]B;
   input is_subtract;
   output [1:0]result;
   output carry;
   output overflow_flag;
   output negative;

   XOR2_X1 i_0_0 (.A(B[0]), .B(B[1]), .Z(result[1]));
endmodule

module adder__parameterized0__1_392(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   XOR2_X1 i_0_0 (.A(B[0]), .B(A[0]), .Z(result[0]));
   XNOR2_X1 i_0_1 (.A(n_0_12), .B(n_0_0), .ZN(result[1]));
   XOR2_X1 i_0_2 (.A(B[1]), .B(A[1]), .Z(n_0_0));
   XNOR2_X1 i_0_3 (.A(n_0_11), .B(n_0_1), .ZN(result[2]));
   XNOR2_X1 i_0_4 (.A(B[2]), .B(A[2]), .ZN(n_0_1));
   AOI22_X1 i_0_5 (.A1(n_0_7), .A2(n_0_2), .B1(n_0_15), .B2(n_0_8), .ZN(
      result[3]));
   OR2_X1 i_0_6 (.A1(n_0_16), .A2(n_0_8), .ZN(n_0_2));
   XNOR2_X1 i_0_7 (.A(n_0_7), .B(n_0_3), .ZN(result[4]));
   XNOR2_X1 i_0_8 (.A(B[4]), .B(A[4]), .ZN(n_0_3));
   XOR2_X1 i_0_9 (.A(A[5]), .B(n_0_5), .Z(result[5]));
   XNOR2_X1 i_0_10 (.A(A[6]), .B(n_0_4), .ZN(result[6]));
   NAND2_X1 i_0_11 (.A1(n_0_5), .A2(A[5]), .ZN(n_0_4));
   NAND2_X1 i_0_12 (.A1(n_0_17), .A2(n_0_6), .ZN(n_0_5));
   OAI21_X1 i_0_13 (.A(n_0_7), .B1(A[4]), .B2(B[4]), .ZN(n_0_6));
   AOI21_X1 i_0_14 (.A(n_0_15), .B1(n_0_8), .B2(n_0_16), .ZN(n_0_7));
   OAI21_X1 i_0_15 (.A(n_0_9), .B1(A[2]), .B2(B[2]), .ZN(n_0_8));
   INV_X1 i_0_16 (.A(n_0_10), .ZN(n_0_9));
   AOI21_X1 i_0_17 (.A(n_0_11), .B1(A[2]), .B2(B[2]), .ZN(n_0_10));
   AOI21_X1 i_0_18 (.A(n_0_13), .B1(n_0_12), .B2(n_0_14), .ZN(n_0_11));
   NAND2_X1 i_0_19 (.A1(B[0]), .A2(A[0]), .ZN(n_0_12));
   NOR2_X1 i_0_20 (.A1(B[1]), .A2(A[1]), .ZN(n_0_13));
   NAND2_X1 i_0_21 (.A1(B[1]), .A2(A[1]), .ZN(n_0_14));
   NOR2_X1 i_0_22 (.A1(B[3]), .A2(A[3]), .ZN(n_0_15));
   NAND2_X1 i_0_23 (.A1(B[3]), .A2(A[3]), .ZN(n_0_16));
   NAND2_X1 i_0_24 (.A1(B[4]), .A2(A[4]), .ZN(n_0_17));
endmodule

module adder__parameterized0__1_383(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   XOR2_X1 i_0_0 (.A(B[1]), .B(B[0]), .Z(result[1]));
   AND2_X1 i_0_1 (.A1(n_0_2), .A2(n_0_0), .ZN(result[2]));
   OAI21_X1 i_0_2 (.A(B[2]), .B1(B[1]), .B2(B[0]), .ZN(n_0_0));
   XOR2_X1 i_0_3 (.A(B[3]), .B(n_0_2), .Z(result[3]));
   XOR2_X1 i_0_4 (.A(B[4]), .B(n_0_1), .Z(result[4]));
   NOR2_X1 i_0_5 (.A1(n_0_1), .A2(B[4]), .ZN(result[5]));
   OR2_X1 i_0_6 (.A1(n_0_2), .A2(B[3]), .ZN(n_0_1));
   OR3_X1 i_0_7 (.A1(B[2]), .A2(B[1]), .A3(B[0]), .ZN(n_0_2));
endmodule

module adder__parameterized0__1_374(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   INV_X1 i_0_0 (.A(A[0]), .ZN(n_0_0));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(B[0]), .ZN(n_0_1));
   OAI21_X1 i_0_2 (.A(n_0_1), .B1(B[0]), .B2(n_0_0), .ZN(result[0]));
   XNOR2_X1 i_0_3 (.A(B[1]), .B(A[1]), .ZN(n_0_2));
   INV_X1 i_0_4 (.A(n_0_1), .ZN(n_0_3));
   NAND2_X1 i_0_5 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_4));
   OAI21_X1 i_0_6 (.A(n_0_4), .B1(n_0_3), .B2(n_0_2), .ZN(result[1]));
   INV_X1 i_0_7 (.A(B[1]), .ZN(n_0_5));
   OAI21_X1 i_0_8 (.A(n_0_4), .B1(n_0_5), .B2(A[1]), .ZN(n_0_6));
   XNOR2_X1 i_0_9 (.A(A[2]), .B(B[2]), .ZN(n_0_7));
   XNOR2_X1 i_0_10 (.A(n_0_6), .B(n_0_7), .ZN(result[2]));
   INV_X1 i_0_11 (.A(A[2]), .ZN(n_0_8));
   AOI22_X1 i_0_12 (.A1(n_0_6), .A2(n_0_7), .B1(n_0_8), .B2(B[2]), .ZN(n_0_9));
   XOR2_X1 i_0_13 (.A(A[3]), .B(B[3]), .Z(n_0_10));
   XNOR2_X1 i_0_14 (.A(n_0_9), .B(n_0_10), .ZN(result[3]));
   INV_X1 i_0_15 (.A(B[3]), .ZN(n_0_11));
   OAI22_X1 i_0_16 (.A1(n_0_9), .A2(n_0_10), .B1(n_0_11), .B2(A[3]), .ZN(n_0_12));
   XOR2_X1 i_0_17 (.A(B[4]), .B(A[4]), .Z(n_0_13));
   XOR2_X1 i_0_18 (.A(n_0_12), .B(n_0_13), .Z(result[4]));
   INV_X1 i_0_19 (.A(A[4]), .ZN(n_0_14));
   OAI22_X1 i_0_20 (.A1(n_0_12), .A2(n_0_13), .B1(n_0_14), .B2(B[4]), .ZN(n_0_15));
   XNOR2_X1 i_0_21 (.A(B[5]), .B(A[5]), .ZN(n_0_16));
   XOR2_X1 i_0_22 (.A(n_0_15), .B(n_0_16), .Z(result[5]));
   INV_X1 i_0_23 (.A(B[5]), .ZN(n_0_17));
   AOI22_X1 i_0_24 (.A1(n_0_15), .A2(n_0_16), .B1(n_0_17), .B2(A[5]), .ZN(
      result[6]));
endmodule

module decompressor__1_393(clk, reset, start, bit, value, store, out);
   input clk;
   input reset;
   input start;
   input bit;
   input [5:0]value;
   output store;
   output [31:0]out;

   wire [6:0]new_pos;
   wire [6:0]remain;
   wire [6:0]temp;
   wire next;
   wire [6:0]reg_temp;
   wire [4:0]counter;
   wire [4:0]counter2;
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
   wire [6:0]new_value;
   wire n_0_77;
   wire n_0_78;
   wire n_0_79;
   wire work;
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

   adder__parameterized0__1_392 add1 (.A(new_value), .B({uc_0, uc_1, counter[4], 
      counter[3], counter[2], counter[1], counter[0]}), .is_subtract(), .result(
      new_pos), .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_383 sub1 (.A(), .B({uc_2, uc_3, counter2[4], 
      counter2[3], counter2[2], counter2[1], counter2[0]}), .is_subtract(), 
      .result({uc_4, remain[5], remain[4], remain[3], remain[2], remain[1], uc_5}), 
      .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_374 sub2 (.A({uc_6, value[5], value[4], value[3], 
      value[2], value[1], value[0]}), .B({uc_7, remain[5], remain[4], remain[3], 
      remain[2], remain[1], counter2[0]}), .is_subtract(), .result(temp), .carry(), 
      .overflow_flag(), .negative());
   DFF_X1 \out_reg[31]  (.D(n_2), .CK(clk), .Q(out[31]), .QN());
   DFF_X1 \out_reg[30]  (.D(n_3), .CK(clk), .Q(out[30]), .QN());
   DFF_X1 \out_reg[29]  (.D(n_4), .CK(clk), .Q(out[29]), .QN());
   DFF_X1 \out_reg[28]  (.D(n_5), .CK(clk), .Q(out[28]), .QN());
   DFF_X1 \out_reg[27]  (.D(n_6), .CK(clk), .Q(out[27]), .QN());
   DFF_X1 \out_reg[26]  (.D(n_7), .CK(clk), .Q(out[26]), .QN());
   DFF_X1 \out_reg[25]  (.D(n_8), .CK(clk), .Q(out[25]), .QN());
   DFF_X1 \out_reg[24]  (.D(n_9), .CK(clk), .Q(out[24]), .QN());
   DFF_X1 \out_reg[23]  (.D(n_10), .CK(clk), .Q(out[23]), .QN());
   DFF_X1 \out_reg[22]  (.D(n_11), .CK(clk), .Q(out[22]), .QN());
   DFF_X1 \out_reg[21]  (.D(n_12), .CK(clk), .Q(out[21]), .QN());
   DFF_X1 \out_reg[20]  (.D(n_13), .CK(clk), .Q(out[20]), .QN());
   DFF_X1 \out_reg[19]  (.D(n_14), .CK(clk), .Q(out[19]), .QN());
   DFF_X1 \out_reg[18]  (.D(n_15), .CK(clk), .Q(out[18]), .QN());
   DFF_X1 \out_reg[17]  (.D(n_16), .CK(clk), .Q(out[17]), .QN());
   DFF_X1 \out_reg[16]  (.D(n_17), .CK(clk), .Q(out[16]), .QN());
   DFF_X1 \out_reg[15]  (.D(n_18), .CK(clk), .Q(out[15]), .QN());
   DFF_X1 \out_reg[14]  (.D(n_19), .CK(clk), .Q(out[14]), .QN());
   DFF_X1 \out_reg[13]  (.D(n_20), .CK(clk), .Q(out[13]), .QN());
   DFF_X1 \out_reg[12]  (.D(n_21), .CK(clk), .Q(out[12]), .QN());
   DFF_X1 \out_reg[11]  (.D(n_22), .CK(clk), .Q(out[11]), .QN());
   DFF_X1 \out_reg[10]  (.D(n_23), .CK(clk), .Q(out[10]), .QN());
   DFF_X1 \out_reg[9]  (.D(n_24), .CK(clk), .Q(out[9]), .QN());
   DFF_X1 \out_reg[8]  (.D(n_25), .CK(clk), .Q(out[8]), .QN());
   DFF_X1 \out_reg[7]  (.D(n_26), .CK(clk), .Q(out[7]), .QN());
   DFF_X1 \out_reg[6]  (.D(n_27), .CK(clk), .Q(out[6]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_28), .CK(clk), .Q(out[5]), .QN());
   DFF_X1 \out_reg[4]  (.D(n_29), .CK(clk), .Q(out[4]), .QN());
   DFF_X1 \out_reg[3]  (.D(n_30), .CK(clk), .Q(out[3]), .QN());
   DFF_X1 \out_reg[2]  (.D(n_31), .CK(clk), .Q(out[2]), .QN());
   DFF_X1 \out_reg[1]  (.D(n_32), .CK(clk), .Q(out[1]), .QN());
   DFF_X1 \out_reg[0]  (.D(n_33), .CK(clk), .Q(out[0]), .QN());
   DFF_X1 store_reg (.D(n_34), .CK(clk), .Q(store), .QN());
   DFFS_X1 next_reg (.D(n_46), .SN(n_47), .CK(n_1), .Q(next), .QN());
   CLKGATETST_X1 clk_gate_reg_temp_reg (.CK(clk), .E(n_40), .SE(1'b0), .GCK(n_0));
   DFF_X1 \reg_temp_reg[6]  (.D(temp[6]), .CK(n_0), .Q(reg_temp[6]), .QN());
   DFF_X1 \reg_temp_reg[5]  (.D(temp[5]), .CK(n_0), .Q(reg_temp[5]), .QN());
   DFF_X1 \reg_temp_reg[4]  (.D(temp[4]), .CK(n_0), .Q(reg_temp[4]), .QN());
   DFF_X1 \reg_temp_reg[3]  (.D(temp[3]), .CK(n_0), .Q(reg_temp[3]), .QN());
   DFF_X1 \reg_temp_reg[2]  (.D(temp[2]), .CK(n_0), .Q(reg_temp[2]), .QN());
   DFF_X1 \reg_temp_reg[1]  (.D(temp[1]), .CK(n_0), .Q(reg_temp[1]), .QN());
   DFF_X1 \reg_temp_reg[0]  (.D(temp[0]), .CK(n_0), .Q(reg_temp[0]), .QN());
   DFFR_X1 \counter_reg[4]  (.D(n_39), .RN(n_47), .CK(n_1), .Q(counter[4]), 
      .QN());
   DFFR_X1 \counter_reg[3]  (.D(n_38), .RN(n_47), .CK(n_1), .Q(counter[3]), 
      .QN());
   DFFR_X1 \counter_reg[2]  (.D(n_37), .RN(n_47), .CK(n_1), .Q(counter[2]), 
      .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_36), .RN(n_47), .CK(n_1), .Q(counter[1]), 
      .QN());
   DFFR_X1 \counter_reg[0]  (.D(n_35), .RN(n_47), .CK(n_1), .Q(counter[0]), 
      .QN());
   DFF_X1 \counter2_reg[4]  (.D(n_45), .CK(n_48), .Q(counter2[4]), .QN());
   DFF_X1 \counter2_reg[3]  (.D(n_44), .CK(n_48), .Q(counter2[3]), .QN());
   DFF_X1 \counter2_reg[2]  (.D(n_43), .CK(n_48), .Q(counter2[2]), .QN());
   DFF_X1 \counter2_reg[1]  (.D(n_42), .CK(n_48), .Q(counter2[1]), .QN());
   DFF_X1 \counter2_reg[0]  (.D(n_41), .CK(n_48), .Q(counter2[0]), .QN());
   CLKGATETST_X1 clk_gate_next_reg (.CK(clk), .E(work), .SE(1'b0), .GCK(n_1));
   MUX2_X1 i_0_0 (.A(out[31]), .B(bit), .S(n_0_75), .Z(n_2));
   MUX2_X1 i_0_1 (.A(out[30]), .B(bit), .S(n_0_67), .Z(n_3));
   MUX2_X1 i_0_2 (.A(out[29]), .B(bit), .S(n_0_64), .Z(n_4));
   MUX2_X1 i_0_3 (.A(out[28]), .B(bit), .S(n_0_60), .Z(n_5));
   MUX2_X1 i_0_4 (.A(out[27]), .B(bit), .S(n_0_59), .Z(n_6));
   MUX2_X1 i_0_5 (.A(out[26]), .B(bit), .S(n_0_56), .Z(n_7));
   MUX2_X1 i_0_6 (.A(out[25]), .B(bit), .S(n_0_53), .Z(n_8));
   MUX2_X1 i_0_7 (.A(out[24]), .B(bit), .S(n_0_50), .Z(n_9));
   MUX2_X1 i_0_8 (.A(out[23]), .B(bit), .S(n_0_48), .Z(n_10));
   MUX2_X1 i_0_9 (.A(out[22]), .B(bit), .S(n_0_45), .Z(n_11));
   MUX2_X1 i_0_10 (.A(out[21]), .B(bit), .S(n_0_43), .Z(n_12));
   MUX2_X1 i_0_11 (.A(out[20]), .B(bit), .S(n_0_42), .Z(n_13));
   MUX2_X1 i_0_12 (.A(out[19]), .B(bit), .S(n_0_39), .Z(n_14));
   MUX2_X1 i_0_13 (.A(out[18]), .B(bit), .S(n_0_37), .Z(n_15));
   MUX2_X1 i_0_14 (.A(out[17]), .B(bit), .S(n_0_35), .Z(n_16));
   MUX2_X1 i_0_15 (.A(out[16]), .B(bit), .S(n_0_32), .Z(n_17));
   MUX2_X1 i_0_16 (.A(out[15]), .B(bit), .S(n_0_30), .Z(n_18));
   MUX2_X1 i_0_17 (.A(out[14]), .B(bit), .S(n_0_26), .Z(n_19));
   MUX2_X1 i_0_18 (.A(out[13]), .B(bit), .S(n_0_24), .Z(n_20));
   MUX2_X1 i_0_19 (.A(out[12]), .B(bit), .S(n_0_23), .Z(n_21));
   MUX2_X1 i_0_20 (.A(out[11]), .B(bit), .S(n_0_22), .Z(n_22));
   MUX2_X1 i_0_21 (.A(out[10]), .B(bit), .S(n_0_19), .Z(n_23));
   MUX2_X1 i_0_22 (.A(out[9]), .B(bit), .S(n_0_17), .Z(n_24));
   MUX2_X1 i_0_23 (.A(out[8]), .B(bit), .S(n_0_15), .Z(n_25));
   MUX2_X1 i_0_24 (.A(out[7]), .B(bit), .S(n_0_13), .Z(n_26));
   MUX2_X1 i_0_25 (.A(out[6]), .B(bit), .S(n_0_11), .Z(n_27));
   MUX2_X1 i_0_26 (.A(out[5]), .B(bit), .S(n_0_9), .Z(n_28));
   MUX2_X1 i_0_27 (.A(out[4]), .B(bit), .S(n_0_7), .Z(n_29));
   MUX2_X1 i_0_28 (.A(out[3]), .B(bit), .S(n_0_5), .Z(n_30));
   MUX2_X1 i_0_29 (.A(out[2]), .B(bit), .S(n_0_4), .Z(n_31));
   MUX2_X1 i_0_30 (.A(out[1]), .B(bit), .S(n_0_3), .Z(n_32));
   MUX2_X1 i_0_31 (.A(out[0]), .B(bit), .S(n_0_2), .Z(n_33));
   MUX2_X1 i_0_32 (.A(store), .B(n_0_1), .S(n_47), .Z(n_34));
   AND2_X1 i_0_33 (.A1(new_pos[0]), .A2(n_0_0), .ZN(n_35));
   NOR3_X1 i_0_34 (.A1(n_0_81), .A2(n_0_90), .A3(n_0_80), .ZN(n_36));
   AND2_X1 i_0_35 (.A1(new_pos[2]), .A2(n_0_0), .ZN(n_37));
   NOR3_X1 i_0_36 (.A1(n_0_82), .A2(n_0_90), .A3(n_0_80), .ZN(n_38));
   AND2_X1 i_0_37 (.A1(new_pos[4]), .A2(n_0_0), .ZN(n_39));
   NOR2_X1 i_0_38 (.A1(n_0_90), .A2(n_0_80), .ZN(n_0_0));
   NOR2_X1 i_0_39 (.A1(n_0_80), .A2(n_0_79), .ZN(n_0_1));
   AOI211_X1 i_0_40 (.A(n_0_51), .B(n_0_14), .C1(n_0_6), .C2(n_0_93), .ZN(n_0_2));
   AOI211_X1 i_0_41 (.A(n_0_55), .B(n_0_14), .C1(n_0_6), .C2(n_0_81), .ZN(n_0_3));
   AOI211_X1 i_0_42 (.A(n_0_57), .B(n_0_14), .C1(n_0_6), .C2(n_0_71), .ZN(n_0_4));
   NOR3_X1 i_0_43 (.A1(counter[2]), .A2(n_0_6), .A3(n_0_14), .ZN(n_0_5));
   NOR2_X1 i_0_44 (.A1(n_0_20), .A2(new_pos[2]), .ZN(n_0_6));
   NOR3_X1 i_0_45 (.A1(n_0_61), .A2(n_0_8), .A3(n_0_14), .ZN(n_0_7));
   AOI21_X1 i_0_46 (.A(n_0_20), .B1(n_0_78), .B2(new_pos[2]), .ZN(n_0_8));
   NOR3_X1 i_0_47 (.A1(n_0_70), .A2(n_0_10), .A3(n_0_14), .ZN(n_0_9));
   AOI21_X1 i_0_48 (.A(n_0_20), .B1(new_pos[1]), .B2(new_pos[2]), .ZN(n_0_10));
   NOR3_X1 i_0_49 (.A1(n_0_69), .A2(n_0_12), .A3(n_0_14), .ZN(n_0_11));
   AOI21_X1 i_0_50 (.A(n_0_20), .B1(n_0_92), .B2(new_pos[2]), .ZN(n_0_12));
   AOI21_X1 i_0_51 (.A(n_0_14), .B1(n_0_31), .B2(n_0_82), .ZN(n_0_13));
   NAND3_X1 i_0_52 (.A1(n_40), .A2(n_0_86), .A3(n_0_87), .ZN(n_0_14));
   AOI211_X1 i_0_53 (.A(n_0_46), .B(n_0_16), .C1(counter[3]), .C2(n_0_51), 
      .ZN(n_0_15));
   AOI21_X1 i_0_54 (.A(n_0_28), .B1(n_0_78), .B2(new_pos[3]), .ZN(n_0_16));
   AOI211_X1 i_0_55 (.A(n_0_46), .B(n_0_18), .C1(counter[3]), .C2(n_0_55), 
      .ZN(n_0_17));
   AOI21_X1 i_0_56 (.A(n_0_28), .B1(new_pos[1]), .B2(new_pos[3]), .ZN(n_0_18));
   AOI211_X1 i_0_57 (.A(n_0_46), .B(n_0_21), .C1(counter[3]), .C2(n_0_57), 
      .ZN(n_0_19));
   NAND2_X1 i_0_58 (.A1(n_0_31), .A2(n_0_82), .ZN(n_0_20));
   AOI21_X1 i_0_59 (.A(n_0_28), .B1(n_0_92), .B2(new_pos[3]), .ZN(n_0_21));
   AOI21_X1 i_0_60 (.A(n_0_27), .B1(counter[2]), .B2(counter[3]), .ZN(n_0_22));
   AOI221_X1 i_0_61 (.A(n_0_27), .B1(n_0_31), .B2(n_0_93), .C1(counter[3]), 
      .C2(n_0_61), .ZN(n_0_23));
   AOI221_X1 i_0_62 (.A(n_0_46), .B1(n_0_31), .B2(n_0_25), .C1(n_0_70), .C2(
      counter[3]), .ZN(n_0_24));
   NAND3_X1 i_0_63 (.A1(new_pos[3]), .A2(new_pos[2]), .A3(new_pos[1]), .ZN(
      n_0_25));
   AOI221_X1 i_0_64 (.A(n_0_27), .B1(n_0_31), .B2(n_0_71), .C1(counter[3]), 
      .C2(n_0_69), .ZN(n_0_26));
   NAND3_X1 i_0_65 (.A1(n_0_87), .A2(n_0_28), .A3(n_40), .ZN(n_0_27));
   INV_X1 i_0_66 (.A(n_0_29), .ZN(n_0_28));
   AOI211_X1 i_0_67 (.A(new_pos[4]), .B(n_0_90), .C1(new_pos[2]), .C2(new_pos[3]), 
      .ZN(n_0_29));
   NOR2_X1 i_0_68 (.A1(n_0_46), .A2(n_0_31), .ZN(n_0_30));
   NOR2_X1 i_0_69 (.A1(n_0_90), .A2(new_pos[4]), .ZN(n_0_31));
   AOI211_X1 i_0_70 (.A(n_0_76), .B(n_0_34), .C1(n_0_33), .C2(counter[4]), 
      .ZN(n_0_32));
   OR2_X1 i_0_71 (.A1(n_0_51), .A2(counter[3]), .ZN(n_0_33));
   AOI21_X1 i_0_72 (.A(n_0_41), .B1(n_0_78), .B2(new_pos[4]), .ZN(n_0_34));
   AOI211_X1 i_0_73 (.A(n_0_66), .B(n_0_36), .C1(n_0_46), .C2(n_0_55), .ZN(
      n_0_35));
   AOI21_X1 i_0_74 (.A(n_0_41), .B1(new_pos[1]), .B2(new_pos[4]), .ZN(n_0_36));
   AOI211_X1 i_0_75 (.A(n_0_66), .B(n_0_38), .C1(n_0_46), .C2(n_0_57), .ZN(
      n_0_37));
   AOI21_X1 i_0_76 (.A(n_0_41), .B1(n_0_92), .B2(new_pos[4]), .ZN(n_0_38));
   AND2_X1 i_0_77 (.A1(n_0_41), .A2(n_0_40), .ZN(n_0_39));
   OAI21_X1 i_0_78 (.A(n_0_46), .B1(n_0_66), .B2(counter[2]), .ZN(n_0_40));
   NAND2_X1 i_0_79 (.A1(n_0_49), .A2(n_0_91), .ZN(n_0_41));
   AOI221_X1 i_0_80 (.A(n_0_66), .B1(n_0_61), .B2(n_0_46), .C1(n_0_49), .C2(
      n_0_63), .ZN(n_0_42));
   AOI221_X1 i_0_81 (.A(n_0_66), .B1(n_0_49), .B2(n_0_44), .C1(n_0_46), .C2(
      n_0_70), .ZN(n_0_43));
   NAND2_X1 i_0_82 (.A1(new_pos[1]), .A2(n_0_74), .ZN(n_0_44));
   AOI221_X1 i_0_83 (.A(n_0_66), .B1(n_0_49), .B2(n_0_47), .C1(n_0_46), .C2(
      n_0_69), .ZN(n_0_45));
   NAND2_X1 i_0_84 (.A1(n_40), .A2(n_0_87), .ZN(n_0_46));
   NAND2_X1 i_0_85 (.A1(n_0_74), .A2(n_0_92), .ZN(n_0_47));
   NOR2_X1 i_0_86 (.A1(n_0_66), .A2(n_0_49), .ZN(n_0_48));
   AOI21_X1 i_0_87 (.A(n_0_90), .B1(new_pos[3]), .B2(new_pos[4]), .ZN(n_0_49));
   AOI221_X1 i_0_88 (.A(n_0_76), .B1(n_0_51), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_52), .ZN(n_0_50));
   NAND3_X1 i_0_89 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_51));
   NAND3_X1 i_0_90 (.A1(n_0_78), .A2(new_pos[3]), .A3(new_pos[4]), .ZN(n_0_52));
   AOI221_X1 i_0_91 (.A(n_0_76), .B1(n_0_55), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_54), .ZN(n_0_53));
   NAND3_X1 i_0_92 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[1]), .ZN(
      n_0_54));
   NAND2_X1 i_0_93 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_55));
   AOI221_X1 i_0_94 (.A(n_0_76), .B1(n_0_57), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_58), .ZN(n_0_56));
   OAI21_X1 i_0_95 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_57));
   NAND3_X1 i_0_96 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(n_0_92), .ZN(n_0_58));
   AOI21_X1 i_0_97 (.A(n_0_72), .B1(n_0_68), .B2(counter[2]), .ZN(n_0_59));
   AOI221_X1 i_0_98 (.A(n_0_76), .B1(n_0_68), .B2(n_0_61), .C1(n_0_62), .C2(
      n_0_79), .ZN(n_0_60));
   AOI21_X1 i_0_99 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_61));
   NAND3_X1 i_0_100 (.A1(n_0_78), .A2(n_0_74), .A3(new_pos[3]), .ZN(n_0_62));
   NAND2_X1 i_0_101 (.A1(n_0_78), .A2(n_0_74), .ZN(n_0_63));
   AOI221_X1 i_0_102 (.A(n_0_76), .B1(n_0_70), .B2(n_0_68), .C1(n_0_65), 
      .C2(n_0_79), .ZN(n_0_64));
   NAND4_X1 i_0_103 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[2]), .A4(
      new_pos[1]), .ZN(n_0_65));
   OAI21_X1 i_0_104 (.A(n_40), .B1(n_0_86), .B2(n_0_87), .ZN(n_0_66));
   AOI221_X1 i_0_105 (.A(n_0_72), .B1(n_0_69), .B2(n_0_68), .C1(n_0_71), 
      .C2(n_0_79), .ZN(n_0_67));
   NOR2_X1 i_0_106 (.A1(n_0_87), .A2(n_0_86), .ZN(n_0_68));
   NOR3_X1 i_0_107 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_69));
   NOR2_X1 i_0_108 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_70));
   NAND2_X1 i_0_109 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_71));
   OR2_X1 i_0_110 (.A1(n_0_73), .A2(n_0_76), .ZN(n_0_72));
   AOI21_X1 i_0_111 (.A(n_0_90), .B1(n_0_74), .B2(new_pos[3]), .ZN(n_0_73));
   AND2_X1 i_0_112 (.A1(new_pos[4]), .A2(new_pos[2]), .ZN(n_0_74));
   NOR2_X1 i_0_113 (.A1(n_0_76), .A2(n_0_79), .ZN(n_0_75));
   INV_X1 i_0_114 (.A(n_0_76), .ZN(n_40));
   NAND2_X1 i_0_115 (.A1(n_47), .A2(work), .ZN(n_0_76));
   NOR2_X1 i_0_116 (.A1(n_0_83), .A2(reset), .ZN(n_41));
   NOR2_X1 i_0_117 (.A1(n_0_84), .A2(reset), .ZN(n_42));
   NOR2_X1 i_0_118 (.A1(n_0_85), .A2(reset), .ZN(n_43));
   NOR2_X1 i_0_119 (.A1(n_0_86), .A2(reset), .ZN(n_44));
   NOR2_X1 i_0_120 (.A1(n_0_87), .A2(reset), .ZN(n_45));
   MUX2_X1 i_0_121 (.A(reg_temp[0]), .B(value[0]), .S(start), .Z(new_value[0]));
   MUX2_X1 i_0_122 (.A(reg_temp[1]), .B(value[1]), .S(start), .Z(new_value[1]));
   MUX2_X1 i_0_123 (.A(reg_temp[2]), .B(value[2]), .S(start), .Z(new_value[2]));
   MUX2_X1 i_0_124 (.A(reg_temp[3]), .B(value[3]), .S(start), .Z(new_value[3]));
   MUX2_X1 i_0_125 (.A(reg_temp[4]), .B(value[4]), .S(start), .Z(new_value[4]));
   MUX2_X1 i_0_126 (.A(reg_temp[5]), .B(value[5]), .S(start), .Z(new_value[5]));
   NOR2_X1 i_0_127 (.A1(n_0_88), .A2(start), .ZN(new_value[6]));
   OAI21_X1 i_0_128 (.A(n_0_90), .B1(n_0_78), .B2(n_0_77), .ZN(n_46));
   OR4_X1 i_0_129 (.A1(new_pos[6]), .A2(new_pos[4]), .A3(new_pos[3]), .A4(
      new_pos[2]), .ZN(n_0_77));
   OR2_X1 i_0_130 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_78));
   NOR2_X1 i_0_131 (.A1(new_pos[6]), .A2(new_pos[5]), .ZN(n_0_79));
   INV_X1 i_0_132 (.A(n_0_80), .ZN(work));
   NOR2_X1 i_0_133 (.A1(n_0_89), .A2(start), .ZN(n_0_80));
   INV_X1 i_0_134 (.A(new_pos[1]), .ZN(n_0_81));
   INV_X1 i_0_135 (.A(new_pos[3]), .ZN(n_0_82));
   INV_X1 i_0_136 (.A(reset), .ZN(n_47));
   INV_X1 i_0_137 (.A(counter[0]), .ZN(n_0_83));
   INV_X1 i_0_138 (.A(counter[1]), .ZN(n_0_84));
   INV_X1 i_0_139 (.A(counter[2]), .ZN(n_0_85));
   INV_X1 i_0_140 (.A(counter[3]), .ZN(n_0_86));
   INV_X1 i_0_141 (.A(counter[4]), .ZN(n_0_87));
   INV_X1 i_0_142 (.A(clk), .ZN(n_48));
   INV_X1 i_0_143 (.A(reg_temp[6]), .ZN(n_0_88));
   INV_X1 i_0_144 (.A(next), .ZN(n_0_89));
   INV_X1 i_0_145 (.A(n_0_79), .ZN(n_0_90));
   INV_X1 i_0_146 (.A(n_0_74), .ZN(n_0_91));
   INV_X1 i_0_147 (.A(n_0_71), .ZN(n_0_92));
   INV_X1 i_0_148 (.A(n_0_78), .ZN(n_0_93));
endmodule

module adder__parameterized0__1_117(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   XOR2_X1 i_0_0 (.A(B[0]), .B(A[0]), .Z(result[0]));
   XNOR2_X1 i_0_1 (.A(n_0_12), .B(n_0_0), .ZN(result[1]));
   XOR2_X1 i_0_2 (.A(B[1]), .B(A[1]), .Z(n_0_0));
   XNOR2_X1 i_0_3 (.A(n_0_11), .B(n_0_1), .ZN(result[2]));
   XNOR2_X1 i_0_4 (.A(B[2]), .B(A[2]), .ZN(n_0_1));
   AOI22_X1 i_0_5 (.A1(n_0_7), .A2(n_0_2), .B1(n_0_15), .B2(n_0_8), .ZN(
      result[3]));
   OR2_X1 i_0_6 (.A1(n_0_16), .A2(n_0_8), .ZN(n_0_2));
   XNOR2_X1 i_0_7 (.A(n_0_7), .B(n_0_3), .ZN(result[4]));
   XNOR2_X1 i_0_8 (.A(B[4]), .B(A[4]), .ZN(n_0_3));
   XOR2_X1 i_0_9 (.A(A[5]), .B(n_0_5), .Z(result[5]));
   XNOR2_X1 i_0_10 (.A(A[6]), .B(n_0_4), .ZN(result[6]));
   NAND2_X1 i_0_11 (.A1(n_0_5), .A2(A[5]), .ZN(n_0_4));
   NAND2_X1 i_0_12 (.A1(n_0_17), .A2(n_0_6), .ZN(n_0_5));
   OAI21_X1 i_0_13 (.A(n_0_7), .B1(A[4]), .B2(B[4]), .ZN(n_0_6));
   AOI21_X1 i_0_14 (.A(n_0_15), .B1(n_0_8), .B2(n_0_16), .ZN(n_0_7));
   OAI21_X1 i_0_15 (.A(n_0_9), .B1(A[2]), .B2(B[2]), .ZN(n_0_8));
   INV_X1 i_0_16 (.A(n_0_10), .ZN(n_0_9));
   AOI21_X1 i_0_17 (.A(n_0_11), .B1(A[2]), .B2(B[2]), .ZN(n_0_10));
   AOI21_X1 i_0_18 (.A(n_0_13), .B1(n_0_12), .B2(n_0_14), .ZN(n_0_11));
   NAND2_X1 i_0_19 (.A1(B[0]), .A2(A[0]), .ZN(n_0_12));
   NOR2_X1 i_0_20 (.A1(B[1]), .A2(A[1]), .ZN(n_0_13));
   NAND2_X1 i_0_21 (.A1(B[1]), .A2(A[1]), .ZN(n_0_14));
   NOR2_X1 i_0_22 (.A1(B[3]), .A2(A[3]), .ZN(n_0_15));
   NAND2_X1 i_0_23 (.A1(B[3]), .A2(A[3]), .ZN(n_0_16));
   NAND2_X1 i_0_24 (.A1(B[4]), .A2(A[4]), .ZN(n_0_17));
endmodule

module adder__parameterized0__1_126(A, B, is_subtract, result, carry, 
      overflow_flag, negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;

   XOR2_X1 i_0_0 (.A(B[1]), .B(B[0]), .Z(result[1]));
   AND2_X1 i_0_1 (.A1(n_0_2), .A2(n_0_0), .ZN(result[2]));
   OAI21_X1 i_0_2 (.A(B[2]), .B1(B[1]), .B2(B[0]), .ZN(n_0_0));
   XOR2_X1 i_0_3 (.A(B[3]), .B(n_0_2), .Z(result[3]));
   XOR2_X1 i_0_4 (.A(B[4]), .B(n_0_1), .Z(result[4]));
   NOR2_X1 i_0_5 (.A1(n_0_1), .A2(B[4]), .ZN(result[5]));
   OR2_X1 i_0_6 (.A1(n_0_2), .A2(B[3]), .ZN(n_0_1));
   OR3_X1 i_0_7 (.A1(B[2]), .A2(B[1]), .A3(B[0]), .ZN(n_0_2));
endmodule

module adder__parameterized0(A, B, is_subtract, result, carry, overflow_flag, 
      negative);
   input [6:0]A;
   input [6:0]B;
   input is_subtract;
   output [6:0]result;
   output carry;
   output overflow_flag;
   output negative;

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

   INV_X1 i_0_0 (.A(A[0]), .ZN(n_0_0));
   NAND2_X1 i_0_1 (.A1(n_0_0), .A2(B[0]), .ZN(n_0_1));
   OAI21_X1 i_0_2 (.A(n_0_1), .B1(B[0]), .B2(n_0_0), .ZN(result[0]));
   XNOR2_X1 i_0_3 (.A(B[1]), .B(A[1]), .ZN(n_0_2));
   INV_X1 i_0_4 (.A(n_0_1), .ZN(n_0_3));
   NAND2_X1 i_0_5 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_4));
   OAI21_X1 i_0_6 (.A(n_0_4), .B1(n_0_3), .B2(n_0_2), .ZN(result[1]));
   INV_X1 i_0_7 (.A(B[1]), .ZN(n_0_5));
   OAI21_X1 i_0_8 (.A(n_0_4), .B1(n_0_5), .B2(A[1]), .ZN(n_0_6));
   XNOR2_X1 i_0_9 (.A(A[2]), .B(B[2]), .ZN(n_0_7));
   XNOR2_X1 i_0_10 (.A(n_0_6), .B(n_0_7), .ZN(result[2]));
   INV_X1 i_0_11 (.A(A[2]), .ZN(n_0_8));
   AOI22_X1 i_0_12 (.A1(n_0_6), .A2(n_0_7), .B1(n_0_8), .B2(B[2]), .ZN(n_0_9));
   XOR2_X1 i_0_13 (.A(A[3]), .B(B[3]), .Z(n_0_10));
   XNOR2_X1 i_0_14 (.A(n_0_9), .B(n_0_10), .ZN(result[3]));
   INV_X1 i_0_15 (.A(B[3]), .ZN(n_0_11));
   OAI22_X1 i_0_16 (.A1(n_0_9), .A2(n_0_10), .B1(n_0_11), .B2(A[3]), .ZN(n_0_12));
   XOR2_X1 i_0_17 (.A(B[4]), .B(A[4]), .Z(n_0_13));
   XOR2_X1 i_0_18 (.A(n_0_12), .B(n_0_13), .Z(result[4]));
   INV_X1 i_0_19 (.A(A[4]), .ZN(n_0_14));
   OAI22_X1 i_0_20 (.A1(n_0_12), .A2(n_0_13), .B1(n_0_14), .B2(B[4]), .ZN(n_0_15));
   XNOR2_X1 i_0_21 (.A(B[5]), .B(A[5]), .ZN(n_0_16));
   XOR2_X1 i_0_22 (.A(n_0_15), .B(n_0_16), .Z(result[5]));
   INV_X1 i_0_23 (.A(B[5]), .ZN(n_0_17));
   AOI22_X1 i_0_24 (.A1(n_0_15), .A2(n_0_16), .B1(n_0_17), .B2(A[5]), .ZN(
      result[6]));
endmodule

module decompressor(clk, reset, start, bit, value, store, out);
   input clk;
   input reset;
   input start;
   input bit;
   input [5:0]value;
   output store;
   output [31:0]out;

   wire [6:0]new_pos;
   wire [6:0]remain;
   wire [6:0]temp;
   wire next;
   wire [6:0]reg_temp;
   wire [4:0]counter;
   wire [4:0]counter2;
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
   wire [6:0]new_value;
   wire n_0_77;
   wire n_0_78;
   wire n_0_79;
   wire work;
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

   adder__parameterized0__1_117 add1 (.A(new_value), .B({uc_0, uc_1, counter[4], 
      counter[3], counter[2], counter[1], counter[0]}), .is_subtract(), .result(
      new_pos), .carry(), .overflow_flag(), .negative());
   adder__parameterized0__1_126 sub1 (.A(), .B({uc_2, uc_3, counter2[4], 
      counter2[3], counter2[2], counter2[1], counter2[0]}), .is_subtract(), 
      .result({uc_4, remain[5], remain[4], remain[3], remain[2], remain[1], uc_5}), 
      .carry(), .overflow_flag(), .negative());
   adder__parameterized0 sub2 (.A({uc_6, value[5], value[4], value[3], value[2], 
      value[1], value[0]}), .B({uc_7, remain[5], remain[4], remain[3], remain[2], 
      remain[1], counter2[0]}), .is_subtract(), .result(temp), .carry(), 
      .overflow_flag(), .negative());
   DFF_X1 \out_reg[31]  (.D(n_2), .CK(clk), .Q(out[31]), .QN());
   DFF_X1 \out_reg[30]  (.D(n_3), .CK(clk), .Q(out[30]), .QN());
   DFF_X1 \out_reg[29]  (.D(n_4), .CK(clk), .Q(out[29]), .QN());
   DFF_X1 \out_reg[28]  (.D(n_5), .CK(clk), .Q(out[28]), .QN());
   DFF_X1 \out_reg[27]  (.D(n_6), .CK(clk), .Q(out[27]), .QN());
   DFF_X1 \out_reg[26]  (.D(n_7), .CK(clk), .Q(out[26]), .QN());
   DFF_X1 \out_reg[25]  (.D(n_8), .CK(clk), .Q(out[25]), .QN());
   DFF_X1 \out_reg[24]  (.D(n_9), .CK(clk), .Q(out[24]), .QN());
   DFF_X1 \out_reg[23]  (.D(n_10), .CK(clk), .Q(out[23]), .QN());
   DFF_X1 \out_reg[22]  (.D(n_11), .CK(clk), .Q(out[22]), .QN());
   DFF_X1 \out_reg[21]  (.D(n_12), .CK(clk), .Q(out[21]), .QN());
   DFF_X1 \out_reg[20]  (.D(n_13), .CK(clk), .Q(out[20]), .QN());
   DFF_X1 \out_reg[19]  (.D(n_14), .CK(clk), .Q(out[19]), .QN());
   DFF_X1 \out_reg[18]  (.D(n_15), .CK(clk), .Q(out[18]), .QN());
   DFF_X1 \out_reg[17]  (.D(n_16), .CK(clk), .Q(out[17]), .QN());
   DFF_X1 \out_reg[16]  (.D(n_17), .CK(clk), .Q(out[16]), .QN());
   DFF_X1 \out_reg[15]  (.D(n_18), .CK(clk), .Q(out[15]), .QN());
   DFF_X1 \out_reg[14]  (.D(n_19), .CK(clk), .Q(out[14]), .QN());
   DFF_X1 \out_reg[13]  (.D(n_20), .CK(clk), .Q(out[13]), .QN());
   DFF_X1 \out_reg[12]  (.D(n_21), .CK(clk), .Q(out[12]), .QN());
   DFF_X1 \out_reg[11]  (.D(n_22), .CK(clk), .Q(out[11]), .QN());
   DFF_X1 \out_reg[10]  (.D(n_23), .CK(clk), .Q(out[10]), .QN());
   DFF_X1 \out_reg[9]  (.D(n_24), .CK(clk), .Q(out[9]), .QN());
   DFF_X1 \out_reg[8]  (.D(n_25), .CK(clk), .Q(out[8]), .QN());
   DFF_X1 \out_reg[7]  (.D(n_26), .CK(clk), .Q(out[7]), .QN());
   DFF_X1 \out_reg[6]  (.D(n_27), .CK(clk), .Q(out[6]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_28), .CK(clk), .Q(out[5]), .QN());
   DFF_X1 \out_reg[4]  (.D(n_29), .CK(clk), .Q(out[4]), .QN());
   DFF_X1 \out_reg[3]  (.D(n_30), .CK(clk), .Q(out[3]), .QN());
   DFF_X1 \out_reg[2]  (.D(n_31), .CK(clk), .Q(out[2]), .QN());
   DFF_X1 \out_reg[1]  (.D(n_32), .CK(clk), .Q(out[1]), .QN());
   DFF_X1 \out_reg[0]  (.D(n_33), .CK(clk), .Q(out[0]), .QN());
   DFF_X1 store_reg (.D(n_34), .CK(clk), .Q(store), .QN());
   DFFS_X1 next_reg (.D(n_46), .SN(n_47), .CK(n_1), .Q(next), .QN());
   CLKGATETST_X1 clk_gate_reg_temp_reg (.CK(clk), .E(n_40), .SE(1'b0), .GCK(n_0));
   DFF_X1 \reg_temp_reg[6]  (.D(temp[6]), .CK(n_0), .Q(reg_temp[6]), .QN());
   DFF_X1 \reg_temp_reg[5]  (.D(temp[5]), .CK(n_0), .Q(reg_temp[5]), .QN());
   DFF_X1 \reg_temp_reg[4]  (.D(temp[4]), .CK(n_0), .Q(reg_temp[4]), .QN());
   DFF_X1 \reg_temp_reg[3]  (.D(temp[3]), .CK(n_0), .Q(reg_temp[3]), .QN());
   DFF_X1 \reg_temp_reg[2]  (.D(temp[2]), .CK(n_0), .Q(reg_temp[2]), .QN());
   DFF_X1 \reg_temp_reg[1]  (.D(temp[1]), .CK(n_0), .Q(reg_temp[1]), .QN());
   DFF_X1 \reg_temp_reg[0]  (.D(temp[0]), .CK(n_0), .Q(reg_temp[0]), .QN());
   DFFR_X1 \counter_reg[4]  (.D(n_39), .RN(n_47), .CK(n_1), .Q(counter[4]), 
      .QN());
   DFFR_X1 \counter_reg[3]  (.D(n_38), .RN(n_47), .CK(n_1), .Q(counter[3]), 
      .QN());
   DFFR_X1 \counter_reg[2]  (.D(n_37), .RN(n_47), .CK(n_1), .Q(counter[2]), 
      .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_36), .RN(n_47), .CK(n_1), .Q(counter[1]), 
      .QN());
   DFFR_X1 \counter_reg[0]  (.D(n_35), .RN(n_47), .CK(n_1), .Q(counter[0]), 
      .QN());
   DFF_X1 \counter2_reg[4]  (.D(n_45), .CK(n_48), .Q(counter2[4]), .QN());
   DFF_X1 \counter2_reg[3]  (.D(n_44), .CK(n_48), .Q(counter2[3]), .QN());
   DFF_X1 \counter2_reg[2]  (.D(n_43), .CK(n_48), .Q(counter2[2]), .QN());
   DFF_X1 \counter2_reg[1]  (.D(n_42), .CK(n_48), .Q(counter2[1]), .QN());
   DFF_X1 \counter2_reg[0]  (.D(n_41), .CK(n_48), .Q(counter2[0]), .QN());
   CLKGATETST_X1 clk_gate_next_reg (.CK(clk), .E(work), .SE(1'b0), .GCK(n_1));
   MUX2_X1 i_0_0 (.A(out[31]), .B(bit), .S(n_0_75), .Z(n_2));
   MUX2_X1 i_0_1 (.A(out[30]), .B(bit), .S(n_0_67), .Z(n_3));
   MUX2_X1 i_0_2 (.A(out[29]), .B(bit), .S(n_0_64), .Z(n_4));
   MUX2_X1 i_0_3 (.A(out[28]), .B(bit), .S(n_0_60), .Z(n_5));
   MUX2_X1 i_0_4 (.A(out[27]), .B(bit), .S(n_0_59), .Z(n_6));
   MUX2_X1 i_0_5 (.A(out[26]), .B(bit), .S(n_0_56), .Z(n_7));
   MUX2_X1 i_0_6 (.A(out[25]), .B(bit), .S(n_0_53), .Z(n_8));
   MUX2_X1 i_0_7 (.A(out[24]), .B(bit), .S(n_0_50), .Z(n_9));
   MUX2_X1 i_0_8 (.A(out[23]), .B(bit), .S(n_0_48), .Z(n_10));
   MUX2_X1 i_0_9 (.A(out[22]), .B(bit), .S(n_0_45), .Z(n_11));
   MUX2_X1 i_0_10 (.A(out[21]), .B(bit), .S(n_0_43), .Z(n_12));
   MUX2_X1 i_0_11 (.A(out[20]), .B(bit), .S(n_0_42), .Z(n_13));
   MUX2_X1 i_0_12 (.A(out[19]), .B(bit), .S(n_0_39), .Z(n_14));
   MUX2_X1 i_0_13 (.A(out[18]), .B(bit), .S(n_0_37), .Z(n_15));
   MUX2_X1 i_0_14 (.A(out[17]), .B(bit), .S(n_0_35), .Z(n_16));
   MUX2_X1 i_0_15 (.A(out[16]), .B(bit), .S(n_0_32), .Z(n_17));
   MUX2_X1 i_0_16 (.A(out[15]), .B(bit), .S(n_0_30), .Z(n_18));
   MUX2_X1 i_0_17 (.A(out[14]), .B(bit), .S(n_0_26), .Z(n_19));
   MUX2_X1 i_0_18 (.A(out[13]), .B(bit), .S(n_0_24), .Z(n_20));
   MUX2_X1 i_0_19 (.A(out[12]), .B(bit), .S(n_0_23), .Z(n_21));
   MUX2_X1 i_0_20 (.A(out[11]), .B(bit), .S(n_0_22), .Z(n_22));
   MUX2_X1 i_0_21 (.A(out[10]), .B(bit), .S(n_0_19), .Z(n_23));
   MUX2_X1 i_0_22 (.A(out[9]), .B(bit), .S(n_0_17), .Z(n_24));
   MUX2_X1 i_0_23 (.A(out[8]), .B(bit), .S(n_0_15), .Z(n_25));
   MUX2_X1 i_0_24 (.A(out[7]), .B(bit), .S(n_0_13), .Z(n_26));
   MUX2_X1 i_0_25 (.A(out[6]), .B(bit), .S(n_0_11), .Z(n_27));
   MUX2_X1 i_0_26 (.A(out[5]), .B(bit), .S(n_0_9), .Z(n_28));
   MUX2_X1 i_0_27 (.A(out[4]), .B(bit), .S(n_0_7), .Z(n_29));
   MUX2_X1 i_0_28 (.A(out[3]), .B(bit), .S(n_0_5), .Z(n_30));
   MUX2_X1 i_0_29 (.A(out[2]), .B(bit), .S(n_0_4), .Z(n_31));
   MUX2_X1 i_0_30 (.A(out[1]), .B(bit), .S(n_0_3), .Z(n_32));
   MUX2_X1 i_0_31 (.A(out[0]), .B(bit), .S(n_0_2), .Z(n_33));
   MUX2_X1 i_0_32 (.A(store), .B(n_0_1), .S(n_47), .Z(n_34));
   AND2_X1 i_0_33 (.A1(new_pos[0]), .A2(n_0_0), .ZN(n_35));
   NOR3_X1 i_0_34 (.A1(n_0_81), .A2(n_0_90), .A3(n_0_80), .ZN(n_36));
   AND2_X1 i_0_35 (.A1(new_pos[2]), .A2(n_0_0), .ZN(n_37));
   NOR3_X1 i_0_36 (.A1(n_0_82), .A2(n_0_90), .A3(n_0_80), .ZN(n_38));
   AND2_X1 i_0_37 (.A1(new_pos[4]), .A2(n_0_0), .ZN(n_39));
   NOR2_X1 i_0_38 (.A1(n_0_90), .A2(n_0_80), .ZN(n_0_0));
   NOR2_X1 i_0_39 (.A1(n_0_80), .A2(n_0_79), .ZN(n_0_1));
   AOI211_X1 i_0_40 (.A(n_0_51), .B(n_0_14), .C1(n_0_6), .C2(n_0_93), .ZN(n_0_2));
   AOI211_X1 i_0_41 (.A(n_0_55), .B(n_0_14), .C1(n_0_6), .C2(n_0_81), .ZN(n_0_3));
   AOI211_X1 i_0_42 (.A(n_0_57), .B(n_0_14), .C1(n_0_6), .C2(n_0_71), .ZN(n_0_4));
   NOR3_X1 i_0_43 (.A1(counter[2]), .A2(n_0_6), .A3(n_0_14), .ZN(n_0_5));
   NOR2_X1 i_0_44 (.A1(n_0_20), .A2(new_pos[2]), .ZN(n_0_6));
   NOR3_X1 i_0_45 (.A1(n_0_61), .A2(n_0_8), .A3(n_0_14), .ZN(n_0_7));
   AOI21_X1 i_0_46 (.A(n_0_20), .B1(n_0_78), .B2(new_pos[2]), .ZN(n_0_8));
   NOR3_X1 i_0_47 (.A1(n_0_70), .A2(n_0_10), .A3(n_0_14), .ZN(n_0_9));
   AOI21_X1 i_0_48 (.A(n_0_20), .B1(new_pos[1]), .B2(new_pos[2]), .ZN(n_0_10));
   NOR3_X1 i_0_49 (.A1(n_0_69), .A2(n_0_12), .A3(n_0_14), .ZN(n_0_11));
   AOI21_X1 i_0_50 (.A(n_0_20), .B1(n_0_92), .B2(new_pos[2]), .ZN(n_0_12));
   AOI21_X1 i_0_51 (.A(n_0_14), .B1(n_0_31), .B2(n_0_82), .ZN(n_0_13));
   NAND3_X1 i_0_52 (.A1(n_40), .A2(n_0_86), .A3(n_0_87), .ZN(n_0_14));
   AOI211_X1 i_0_53 (.A(n_0_46), .B(n_0_16), .C1(counter[3]), .C2(n_0_51), 
      .ZN(n_0_15));
   AOI21_X1 i_0_54 (.A(n_0_28), .B1(n_0_78), .B2(new_pos[3]), .ZN(n_0_16));
   AOI211_X1 i_0_55 (.A(n_0_46), .B(n_0_18), .C1(counter[3]), .C2(n_0_55), 
      .ZN(n_0_17));
   AOI21_X1 i_0_56 (.A(n_0_28), .B1(new_pos[1]), .B2(new_pos[3]), .ZN(n_0_18));
   AOI211_X1 i_0_57 (.A(n_0_46), .B(n_0_21), .C1(counter[3]), .C2(n_0_57), 
      .ZN(n_0_19));
   NAND2_X1 i_0_58 (.A1(n_0_31), .A2(n_0_82), .ZN(n_0_20));
   AOI21_X1 i_0_59 (.A(n_0_28), .B1(n_0_92), .B2(new_pos[3]), .ZN(n_0_21));
   AOI21_X1 i_0_60 (.A(n_0_27), .B1(counter[2]), .B2(counter[3]), .ZN(n_0_22));
   AOI221_X1 i_0_61 (.A(n_0_27), .B1(n_0_31), .B2(n_0_93), .C1(counter[3]), 
      .C2(n_0_61), .ZN(n_0_23));
   AOI221_X1 i_0_62 (.A(n_0_46), .B1(n_0_31), .B2(n_0_25), .C1(n_0_70), .C2(
      counter[3]), .ZN(n_0_24));
   NAND3_X1 i_0_63 (.A1(new_pos[3]), .A2(new_pos[2]), .A3(new_pos[1]), .ZN(
      n_0_25));
   AOI221_X1 i_0_64 (.A(n_0_27), .B1(n_0_31), .B2(n_0_71), .C1(counter[3]), 
      .C2(n_0_69), .ZN(n_0_26));
   NAND3_X1 i_0_65 (.A1(n_0_87), .A2(n_0_28), .A3(n_40), .ZN(n_0_27));
   INV_X1 i_0_66 (.A(n_0_29), .ZN(n_0_28));
   AOI211_X1 i_0_67 (.A(new_pos[4]), .B(n_0_90), .C1(new_pos[2]), .C2(new_pos[3]), 
      .ZN(n_0_29));
   NOR2_X1 i_0_68 (.A1(n_0_46), .A2(n_0_31), .ZN(n_0_30));
   NOR2_X1 i_0_69 (.A1(n_0_90), .A2(new_pos[4]), .ZN(n_0_31));
   AOI211_X1 i_0_70 (.A(n_0_76), .B(n_0_34), .C1(n_0_33), .C2(counter[4]), 
      .ZN(n_0_32));
   OR2_X1 i_0_71 (.A1(n_0_51), .A2(counter[3]), .ZN(n_0_33));
   AOI21_X1 i_0_72 (.A(n_0_41), .B1(n_0_78), .B2(new_pos[4]), .ZN(n_0_34));
   AOI211_X1 i_0_73 (.A(n_0_66), .B(n_0_36), .C1(n_0_46), .C2(n_0_55), .ZN(
      n_0_35));
   AOI21_X1 i_0_74 (.A(n_0_41), .B1(new_pos[1]), .B2(new_pos[4]), .ZN(n_0_36));
   AOI211_X1 i_0_75 (.A(n_0_66), .B(n_0_38), .C1(n_0_46), .C2(n_0_57), .ZN(
      n_0_37));
   AOI21_X1 i_0_76 (.A(n_0_41), .B1(n_0_92), .B2(new_pos[4]), .ZN(n_0_38));
   AND2_X1 i_0_77 (.A1(n_0_41), .A2(n_0_40), .ZN(n_0_39));
   OAI21_X1 i_0_78 (.A(n_0_46), .B1(n_0_66), .B2(counter[2]), .ZN(n_0_40));
   NAND2_X1 i_0_79 (.A1(n_0_49), .A2(n_0_91), .ZN(n_0_41));
   AOI221_X1 i_0_80 (.A(n_0_66), .B1(n_0_61), .B2(n_0_46), .C1(n_0_49), .C2(
      n_0_63), .ZN(n_0_42));
   AOI221_X1 i_0_81 (.A(n_0_66), .B1(n_0_49), .B2(n_0_44), .C1(n_0_46), .C2(
      n_0_70), .ZN(n_0_43));
   NAND2_X1 i_0_82 (.A1(new_pos[1]), .A2(n_0_74), .ZN(n_0_44));
   AOI221_X1 i_0_83 (.A(n_0_66), .B1(n_0_49), .B2(n_0_47), .C1(n_0_46), .C2(
      n_0_69), .ZN(n_0_45));
   NAND2_X1 i_0_84 (.A1(n_40), .A2(n_0_87), .ZN(n_0_46));
   NAND2_X1 i_0_85 (.A1(n_0_74), .A2(n_0_92), .ZN(n_0_47));
   NOR2_X1 i_0_86 (.A1(n_0_66), .A2(n_0_49), .ZN(n_0_48));
   AOI21_X1 i_0_87 (.A(n_0_90), .B1(new_pos[3]), .B2(new_pos[4]), .ZN(n_0_49));
   AOI221_X1 i_0_88 (.A(n_0_76), .B1(n_0_51), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_52), .ZN(n_0_50));
   NAND3_X1 i_0_89 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_51));
   NAND3_X1 i_0_90 (.A1(n_0_78), .A2(new_pos[3]), .A3(new_pos[4]), .ZN(n_0_52));
   AOI221_X1 i_0_91 (.A(n_0_76), .B1(n_0_55), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_54), .ZN(n_0_53));
   NAND3_X1 i_0_92 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[1]), .ZN(
      n_0_54));
   NAND2_X1 i_0_93 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_55));
   AOI221_X1 i_0_94 (.A(n_0_76), .B1(n_0_57), .B2(n_0_68), .C1(n_0_73), .C2(
      n_0_58), .ZN(n_0_56));
   OAI21_X1 i_0_95 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_57));
   NAND3_X1 i_0_96 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(n_0_92), .ZN(n_0_58));
   AOI21_X1 i_0_97 (.A(n_0_72), .B1(n_0_68), .B2(counter[2]), .ZN(n_0_59));
   AOI221_X1 i_0_98 (.A(n_0_76), .B1(n_0_68), .B2(n_0_61), .C1(n_0_62), .C2(
      n_0_79), .ZN(n_0_60));
   AOI21_X1 i_0_99 (.A(n_0_85), .B1(n_0_84), .B2(n_0_83), .ZN(n_0_61));
   NAND3_X1 i_0_100 (.A1(n_0_78), .A2(n_0_74), .A3(new_pos[3]), .ZN(n_0_62));
   NAND2_X1 i_0_101 (.A1(n_0_78), .A2(n_0_74), .ZN(n_0_63));
   AOI221_X1 i_0_102 (.A(n_0_76), .B1(n_0_70), .B2(n_0_68), .C1(n_0_65), 
      .C2(n_0_79), .ZN(n_0_64));
   NAND4_X1 i_0_103 (.A1(new_pos[4]), .A2(new_pos[3]), .A3(new_pos[2]), .A4(
      new_pos[1]), .ZN(n_0_65));
   OAI21_X1 i_0_104 (.A(n_40), .B1(n_0_86), .B2(n_0_87), .ZN(n_0_66));
   AOI221_X1 i_0_105 (.A(n_0_72), .B1(n_0_69), .B2(n_0_68), .C1(n_0_71), 
      .C2(n_0_79), .ZN(n_0_67));
   NOR2_X1 i_0_106 (.A1(n_0_87), .A2(n_0_86), .ZN(n_0_68));
   NOR3_X1 i_0_107 (.A1(n_0_85), .A2(n_0_84), .A3(n_0_83), .ZN(n_0_69));
   NOR2_X1 i_0_108 (.A1(n_0_85), .A2(n_0_84), .ZN(n_0_70));
   NAND2_X1 i_0_109 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_71));
   OR2_X1 i_0_110 (.A1(n_0_73), .A2(n_0_76), .ZN(n_0_72));
   AOI21_X1 i_0_111 (.A(n_0_90), .B1(n_0_74), .B2(new_pos[3]), .ZN(n_0_73));
   AND2_X1 i_0_112 (.A1(new_pos[4]), .A2(new_pos[2]), .ZN(n_0_74));
   NOR2_X1 i_0_113 (.A1(n_0_76), .A2(n_0_79), .ZN(n_0_75));
   INV_X1 i_0_114 (.A(n_0_76), .ZN(n_40));
   NAND2_X1 i_0_115 (.A1(n_47), .A2(work), .ZN(n_0_76));
   NOR2_X1 i_0_116 (.A1(n_0_83), .A2(reset), .ZN(n_41));
   NOR2_X1 i_0_117 (.A1(n_0_84), .A2(reset), .ZN(n_42));
   NOR2_X1 i_0_118 (.A1(n_0_85), .A2(reset), .ZN(n_43));
   NOR2_X1 i_0_119 (.A1(n_0_86), .A2(reset), .ZN(n_44));
   NOR2_X1 i_0_120 (.A1(n_0_87), .A2(reset), .ZN(n_45));
   MUX2_X1 i_0_121 (.A(reg_temp[0]), .B(value[0]), .S(start), .Z(new_value[0]));
   MUX2_X1 i_0_122 (.A(reg_temp[1]), .B(value[1]), .S(start), .Z(new_value[1]));
   MUX2_X1 i_0_123 (.A(reg_temp[2]), .B(value[2]), .S(start), .Z(new_value[2]));
   MUX2_X1 i_0_124 (.A(reg_temp[3]), .B(value[3]), .S(start), .Z(new_value[3]));
   MUX2_X1 i_0_125 (.A(reg_temp[4]), .B(value[4]), .S(start), .Z(new_value[4]));
   MUX2_X1 i_0_126 (.A(reg_temp[5]), .B(value[5]), .S(start), .Z(new_value[5]));
   NOR2_X1 i_0_127 (.A1(n_0_88), .A2(start), .ZN(new_value[6]));
   OAI21_X1 i_0_128 (.A(n_0_90), .B1(n_0_78), .B2(n_0_77), .ZN(n_46));
   OR4_X1 i_0_129 (.A1(new_pos[6]), .A2(new_pos[4]), .A3(new_pos[3]), .A4(
      new_pos[2]), .ZN(n_0_77));
   OR2_X1 i_0_130 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_78));
   NOR2_X1 i_0_131 (.A1(new_pos[6]), .A2(new_pos[5]), .ZN(n_0_79));
   INV_X1 i_0_132 (.A(n_0_80), .ZN(work));
   NOR2_X1 i_0_133 (.A1(n_0_89), .A2(start), .ZN(n_0_80));
   INV_X1 i_0_134 (.A(new_pos[1]), .ZN(n_0_81));
   INV_X1 i_0_135 (.A(new_pos[3]), .ZN(n_0_82));
   INV_X1 i_0_136 (.A(reset), .ZN(n_47));
   INV_X1 i_0_137 (.A(counter[0]), .ZN(n_0_83));
   INV_X1 i_0_138 (.A(counter[1]), .ZN(n_0_84));
   INV_X1 i_0_139 (.A(counter[2]), .ZN(n_0_85));
   INV_X1 i_0_140 (.A(counter[3]), .ZN(n_0_86));
   INV_X1 i_0_141 (.A(counter[4]), .ZN(n_0_87));
   INV_X1 i_0_142 (.A(clk), .ZN(n_48));
   INV_X1 i_0_143 (.A(reg_temp[6]), .ZN(n_0_88));
   INV_X1 i_0_144 (.A(next), .ZN(n_0_89));
   INV_X1 i_0_145 (.A(n_0_79), .ZN(n_0_90));
   INV_X1 i_0_146 (.A(n_0_74), .ZN(n_0_91));
   INV_X1 i_0_147 (.A(n_0_71), .ZN(n_0_92));
   INV_X1 i_0_148 (.A(n_0_78), .ZN(n_0_93));
endmodule

module memory_manager__1_81(clk, reset, store1, store2, write, temp1, temp2, 
      data1, data2, select);
   input clk;
   input reset;
   input store1;
   input store2;
   output write;
   output [31:0]temp1;
   output [31:0]temp2;
   input [31:0]data1;
   input [31:0]data2;
   output [1:0]select;

   wire counter;
   wire wait2;
   wire wait1;
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

   DFFR_X1 counter_reg (.D(n_70), .RN(n_69), .CK(clk), .Q(counter), .QN());
   DFF_X1 \select_reg[1]  (.D(n_67), .CK(n_68), .Q(select[1]), .QN());
   DFF_X1 \select_reg[0]  (.D(n_66), .CK(n_68), .Q(select[0]), .QN());
   DFF_X1 \temp2_reg[31]  (.D(n_65), .CK(n_68), .Q(temp2[31]), .QN());
   DFF_X1 \temp2_reg[30]  (.D(n_64), .CK(n_68), .Q(temp2[30]), .QN());
   DFF_X1 \temp2_reg[29]  (.D(n_63), .CK(n_68), .Q(temp2[29]), .QN());
   DFF_X1 \temp2_reg[28]  (.D(n_62), .CK(n_68), .Q(temp2[28]), .QN());
   DFF_X1 \temp2_reg[27]  (.D(n_61), .CK(n_68), .Q(temp2[27]), .QN());
   DFF_X1 \temp2_reg[26]  (.D(n_60), .CK(n_68), .Q(temp2[26]), .QN());
   DFF_X1 \temp2_reg[25]  (.D(n_59), .CK(n_68), .Q(temp2[25]), .QN());
   DFF_X1 \temp2_reg[24]  (.D(n_58), .CK(n_68), .Q(temp2[24]), .QN());
   DFF_X1 \temp2_reg[23]  (.D(n_57), .CK(n_68), .Q(temp2[23]), .QN());
   DFF_X1 \temp2_reg[22]  (.D(n_56), .CK(n_68), .Q(temp2[22]), .QN());
   DFF_X1 \temp2_reg[21]  (.D(n_55), .CK(n_68), .Q(temp2[21]), .QN());
   DFF_X1 \temp2_reg[20]  (.D(n_54), .CK(n_68), .Q(temp2[20]), .QN());
   DFF_X1 \temp2_reg[19]  (.D(n_53), .CK(n_68), .Q(temp2[19]), .QN());
   DFF_X1 \temp2_reg[18]  (.D(n_52), .CK(n_68), .Q(temp2[18]), .QN());
   DFF_X1 \temp2_reg[17]  (.D(n_51), .CK(n_68), .Q(temp2[17]), .QN());
   DFF_X1 \temp2_reg[16]  (.D(n_50), .CK(n_68), .Q(temp2[16]), .QN());
   DFF_X1 \temp2_reg[15]  (.D(n_49), .CK(n_68), .Q(temp2[15]), .QN());
   DFF_X1 \temp2_reg[14]  (.D(n_48), .CK(n_68), .Q(temp2[14]), .QN());
   DFF_X1 \temp2_reg[13]  (.D(n_47), .CK(n_68), .Q(temp2[13]), .QN());
   DFF_X1 \temp2_reg[12]  (.D(n_46), .CK(n_68), .Q(temp2[12]), .QN());
   DFF_X1 \temp2_reg[11]  (.D(n_45), .CK(n_68), .Q(temp2[11]), .QN());
   DFF_X1 \temp2_reg[10]  (.D(n_44), .CK(n_68), .Q(temp2[10]), .QN());
   DFF_X1 \temp2_reg[9]  (.D(n_43), .CK(n_68), .Q(temp2[9]), .QN());
   DFF_X1 \temp2_reg[8]  (.D(n_42), .CK(n_68), .Q(temp2[8]), .QN());
   DFF_X1 \temp2_reg[7]  (.D(n_41), .CK(n_68), .Q(temp2[7]), .QN());
   DFF_X1 \temp2_reg[6]  (.D(n_40), .CK(n_68), .Q(temp2[6]), .QN());
   DFF_X1 \temp2_reg[5]  (.D(n_39), .CK(n_68), .Q(temp2[5]), .QN());
   DFF_X1 \temp2_reg[4]  (.D(n_38), .CK(n_68), .Q(temp2[4]), .QN());
   DFF_X1 \temp2_reg[3]  (.D(n_37), .CK(n_68), .Q(temp2[3]), .QN());
   DFF_X1 \temp2_reg[2]  (.D(n_36), .CK(n_68), .Q(temp2[2]), .QN());
   DFF_X1 \temp2_reg[1]  (.D(n_35), .CK(n_68), .Q(temp2[1]), .QN());
   DFF_X1 \temp2_reg[0]  (.D(n_34), .CK(n_68), .Q(temp2[0]), .QN());
   DFF_X1 \temp1_reg[31]  (.D(n_33), .CK(n_68), .Q(temp1[31]), .QN());
   DFF_X1 \temp1_reg[30]  (.D(n_32), .CK(n_68), .Q(temp1[30]), .QN());
   DFF_X1 \temp1_reg[29]  (.D(n_31), .CK(n_68), .Q(temp1[29]), .QN());
   DFF_X1 \temp1_reg[28]  (.D(n_30), .CK(n_68), .Q(temp1[28]), .QN());
   DFF_X1 \temp1_reg[27]  (.D(n_29), .CK(n_68), .Q(temp1[27]), .QN());
   DFF_X1 \temp1_reg[26]  (.D(n_28), .CK(n_68), .Q(temp1[26]), .QN());
   DFF_X1 \temp1_reg[25]  (.D(n_27), .CK(n_68), .Q(temp1[25]), .QN());
   DFF_X1 \temp1_reg[24]  (.D(n_26), .CK(n_68), .Q(temp1[24]), .QN());
   DFF_X1 \temp1_reg[23]  (.D(n_25), .CK(n_68), .Q(temp1[23]), .QN());
   DFF_X1 \temp1_reg[22]  (.D(n_24), .CK(n_68), .Q(temp1[22]), .QN());
   DFF_X1 \temp1_reg[21]  (.D(n_23), .CK(n_68), .Q(temp1[21]), .QN());
   DFF_X1 \temp1_reg[20]  (.D(n_22), .CK(n_68), .Q(temp1[20]), .QN());
   DFF_X1 \temp1_reg[19]  (.D(n_21), .CK(n_68), .Q(temp1[19]), .QN());
   DFF_X1 \temp1_reg[18]  (.D(n_20), .CK(n_68), .Q(temp1[18]), .QN());
   DFF_X1 \temp1_reg[17]  (.D(n_19), .CK(n_68), .Q(temp1[17]), .QN());
   DFF_X1 \temp1_reg[16]  (.D(n_18), .CK(n_68), .Q(temp1[16]), .QN());
   DFF_X1 \temp1_reg[15]  (.D(n_17), .CK(n_68), .Q(temp1[15]), .QN());
   DFF_X1 \temp1_reg[14]  (.D(n_16), .CK(n_68), .Q(temp1[14]), .QN());
   DFF_X1 \temp1_reg[13]  (.D(n_15), .CK(n_68), .Q(temp1[13]), .QN());
   DFF_X1 \temp1_reg[12]  (.D(n_14), .CK(n_68), .Q(temp1[12]), .QN());
   DFF_X1 \temp1_reg[11]  (.D(n_13), .CK(n_68), .Q(temp1[11]), .QN());
   DFF_X1 \temp1_reg[10]  (.D(n_12), .CK(n_68), .Q(temp1[10]), .QN());
   DFF_X1 \temp1_reg[9]  (.D(n_11), .CK(n_68), .Q(temp1[9]), .QN());
   DFF_X1 \temp1_reg[8]  (.D(n_10), .CK(n_68), .Q(temp1[8]), .QN());
   DFF_X1 \temp1_reg[7]  (.D(n_9), .CK(n_68), .Q(temp1[7]), .QN());
   DFF_X1 \temp1_reg[6]  (.D(n_8), .CK(n_68), .Q(temp1[6]), .QN());
   DFF_X1 \temp1_reg[5]  (.D(n_7), .CK(n_68), .Q(temp1[5]), .QN());
   DFF_X1 \temp1_reg[4]  (.D(n_6), .CK(n_68), .Q(temp1[4]), .QN());
   DFF_X1 \temp1_reg[3]  (.D(n_5), .CK(n_68), .Q(temp1[3]), .QN());
   DFF_X1 \temp1_reg[2]  (.D(n_4), .CK(n_68), .Q(temp1[2]), .QN());
   DFF_X1 \temp1_reg[1]  (.D(n_3), .CK(n_68), .Q(temp1[1]), .QN());
   DFF_X1 \temp1_reg[0]  (.D(n_2), .CK(n_68), .Q(temp1[0]), .QN());
   DFF_X1 wait2_reg (.D(n_1), .CK(n_68), .Q(wait2), .QN());
   DFF_X1 wait1_reg (.D(n_0), .CK(n_68), .Q(wait1), .QN());
   NAND2_X1 i_0_0 (.A1(n_0_2), .A2(n_0_0), .ZN(n_0));
   NAND2_X1 i_0_1 (.A1(wait1), .A2(n_0_11), .ZN(n_0_0));
   NAND2_X1 i_0_2 (.A1(n_0_3), .A2(n_0_1), .ZN(n_1));
   NAND2_X1 i_0_3 (.A1(wait2), .A2(n_0_9), .ZN(n_0_1));
   MUX2_X1 i_0_4 (.A(data1[0]), .B(temp1[0]), .S(n_0_2), .Z(n_2));
   MUX2_X1 i_0_5 (.A(data1[1]), .B(temp1[1]), .S(n_0_2), .Z(n_3));
   MUX2_X1 i_0_6 (.A(data1[2]), .B(temp1[2]), .S(n_0_2), .Z(n_4));
   MUX2_X1 i_0_7 (.A(data1[3]), .B(temp1[3]), .S(n_0_2), .Z(n_5));
   MUX2_X1 i_0_8 (.A(data1[4]), .B(temp1[4]), .S(n_0_2), .Z(n_6));
   MUX2_X1 i_0_9 (.A(data1[5]), .B(temp1[5]), .S(n_0_2), .Z(n_7));
   MUX2_X1 i_0_10 (.A(data1[6]), .B(temp1[6]), .S(n_0_2), .Z(n_8));
   MUX2_X1 i_0_11 (.A(data1[7]), .B(temp1[7]), .S(n_0_2), .Z(n_9));
   MUX2_X1 i_0_12 (.A(data1[8]), .B(temp1[8]), .S(n_0_2), .Z(n_10));
   MUX2_X1 i_0_13 (.A(data1[9]), .B(temp1[9]), .S(n_0_2), .Z(n_11));
   MUX2_X1 i_0_14 (.A(data1[10]), .B(temp1[10]), .S(n_0_2), .Z(n_12));
   MUX2_X1 i_0_15 (.A(data1[11]), .B(temp1[11]), .S(n_0_2), .Z(n_13));
   MUX2_X1 i_0_16 (.A(data1[12]), .B(temp1[12]), .S(n_0_2), .Z(n_14));
   MUX2_X1 i_0_17 (.A(data1[13]), .B(temp1[13]), .S(n_0_2), .Z(n_15));
   MUX2_X1 i_0_18 (.A(data1[14]), .B(temp1[14]), .S(n_0_2), .Z(n_16));
   MUX2_X1 i_0_19 (.A(data1[15]), .B(temp1[15]), .S(n_0_2), .Z(n_17));
   MUX2_X1 i_0_20 (.A(data1[16]), .B(temp1[16]), .S(n_0_2), .Z(n_18));
   MUX2_X1 i_0_21 (.A(data1[17]), .B(temp1[17]), .S(n_0_2), .Z(n_19));
   MUX2_X1 i_0_22 (.A(data1[18]), .B(temp1[18]), .S(n_0_2), .Z(n_20));
   MUX2_X1 i_0_23 (.A(data1[19]), .B(temp1[19]), .S(n_0_2), .Z(n_21));
   MUX2_X1 i_0_24 (.A(data1[20]), .B(temp1[20]), .S(n_0_2), .Z(n_22));
   MUX2_X1 i_0_25 (.A(data1[21]), .B(temp1[21]), .S(n_0_2), .Z(n_23));
   MUX2_X1 i_0_26 (.A(data1[22]), .B(temp1[22]), .S(n_0_2), .Z(n_24));
   MUX2_X1 i_0_27 (.A(data1[23]), .B(temp1[23]), .S(n_0_2), .Z(n_25));
   MUX2_X1 i_0_28 (.A(data1[24]), .B(temp1[24]), .S(n_0_2), .Z(n_26));
   MUX2_X1 i_0_29 (.A(data1[25]), .B(temp1[25]), .S(n_0_2), .Z(n_27));
   MUX2_X1 i_0_30 (.A(data1[26]), .B(temp1[26]), .S(n_0_2), .Z(n_28));
   MUX2_X1 i_0_31 (.A(data1[27]), .B(temp1[27]), .S(n_0_2), .Z(n_29));
   MUX2_X1 i_0_32 (.A(data1[28]), .B(temp1[28]), .S(n_0_2), .Z(n_30));
   MUX2_X1 i_0_33 (.A(data1[29]), .B(temp1[29]), .S(n_0_2), .Z(n_31));
   MUX2_X1 i_0_34 (.A(data1[30]), .B(temp1[30]), .S(n_0_2), .Z(n_32));
   MUX2_X1 i_0_35 (.A(data1[31]), .B(temp1[31]), .S(n_0_2), .Z(n_33));
   OAI211_X1 i_0_36 (.A(n_69), .B(store1), .C1(wait1), .C2(counter), .ZN(n_0_2));
   MUX2_X1 i_0_37 (.A(data2[0]), .B(temp2[0]), .S(n_0_3), .Z(n_34));
   MUX2_X1 i_0_38 (.A(data2[1]), .B(temp2[1]), .S(n_0_3), .Z(n_35));
   MUX2_X1 i_0_39 (.A(data2[2]), .B(temp2[2]), .S(n_0_3), .Z(n_36));
   MUX2_X1 i_0_40 (.A(data2[3]), .B(temp2[3]), .S(n_0_3), .Z(n_37));
   MUX2_X1 i_0_41 (.A(data2[4]), .B(temp2[4]), .S(n_0_3), .Z(n_38));
   MUX2_X1 i_0_42 (.A(data2[5]), .B(temp2[5]), .S(n_0_3), .Z(n_39));
   MUX2_X1 i_0_43 (.A(data2[6]), .B(temp2[6]), .S(n_0_3), .Z(n_40));
   MUX2_X1 i_0_44 (.A(data2[7]), .B(temp2[7]), .S(n_0_3), .Z(n_41));
   MUX2_X1 i_0_45 (.A(data2[8]), .B(temp2[8]), .S(n_0_3), .Z(n_42));
   MUX2_X1 i_0_46 (.A(data2[9]), .B(temp2[9]), .S(n_0_3), .Z(n_43));
   MUX2_X1 i_0_47 (.A(data2[10]), .B(temp2[10]), .S(n_0_3), .Z(n_44));
   MUX2_X1 i_0_48 (.A(data2[11]), .B(temp2[11]), .S(n_0_3), .Z(n_45));
   MUX2_X1 i_0_49 (.A(data2[12]), .B(temp2[12]), .S(n_0_3), .Z(n_46));
   MUX2_X1 i_0_50 (.A(data2[13]), .B(temp2[13]), .S(n_0_3), .Z(n_47));
   MUX2_X1 i_0_51 (.A(data2[14]), .B(temp2[14]), .S(n_0_3), .Z(n_48));
   MUX2_X1 i_0_52 (.A(data2[15]), .B(temp2[15]), .S(n_0_3), .Z(n_49));
   MUX2_X1 i_0_53 (.A(data2[16]), .B(temp2[16]), .S(n_0_3), .Z(n_50));
   MUX2_X1 i_0_54 (.A(data2[17]), .B(temp2[17]), .S(n_0_3), .Z(n_51));
   MUX2_X1 i_0_55 (.A(data2[18]), .B(temp2[18]), .S(n_0_3), .Z(n_52));
   MUX2_X1 i_0_56 (.A(data2[19]), .B(temp2[19]), .S(n_0_3), .Z(n_53));
   MUX2_X1 i_0_57 (.A(data2[20]), .B(temp2[20]), .S(n_0_3), .Z(n_54));
   MUX2_X1 i_0_58 (.A(data2[21]), .B(temp2[21]), .S(n_0_3), .Z(n_55));
   MUX2_X1 i_0_59 (.A(data2[22]), .B(temp2[22]), .S(n_0_3), .Z(n_56));
   MUX2_X1 i_0_60 (.A(data2[23]), .B(temp2[23]), .S(n_0_3), .Z(n_57));
   MUX2_X1 i_0_61 (.A(data2[24]), .B(temp2[24]), .S(n_0_3), .Z(n_58));
   MUX2_X1 i_0_62 (.A(data2[25]), .B(temp2[25]), .S(n_0_3), .Z(n_59));
   MUX2_X1 i_0_63 (.A(data2[26]), .B(temp2[26]), .S(n_0_3), .Z(n_60));
   MUX2_X1 i_0_64 (.A(data2[27]), .B(temp2[27]), .S(n_0_3), .Z(n_61));
   MUX2_X1 i_0_65 (.A(data2[28]), .B(temp2[28]), .S(n_0_3), .Z(n_62));
   MUX2_X1 i_0_66 (.A(data2[29]), .B(temp2[29]), .S(n_0_3), .Z(n_63));
   MUX2_X1 i_0_67 (.A(data2[30]), .B(temp2[30]), .S(n_0_3), .Z(n_64));
   MUX2_X1 i_0_68 (.A(data2[31]), .B(temp2[31]), .S(n_0_3), .Z(n_65));
   OAI211_X1 i_0_69 (.A(n_69), .B(store2), .C1(n_70), .C2(wait2), .ZN(n_0_3));
   NAND3_X1 i_0_70 (.A1(n_0_10), .A2(n_0_6), .A3(n_0_4), .ZN(n_66));
   NAND3_X1 i_0_71 (.A1(n_0_8), .A2(n_0_5), .A3(select[0]), .ZN(n_0_4));
   NAND3_X1 i_0_72 (.A1(n_0_7), .A2(n_0_6), .A3(n_0_5), .ZN(n_67));
   NAND2_X1 i_0_73 (.A1(wait1), .A2(n_0_9), .ZN(n_0_5));
   NAND2_X1 i_0_74 (.A1(wait2), .A2(n_0_11), .ZN(n_0_6));
   NAND3_X1 i_0_75 (.A1(n_0_10), .A2(n_0_8), .A3(select[1]), .ZN(n_0_7));
   NAND2_X1 i_0_76 (.A1(store1), .A2(n_0_9), .ZN(n_0_8));
   NOR2_X1 i_0_77 (.A1(counter), .A2(reset), .ZN(n_0_9));
   NAND2_X1 i_0_78 (.A1(store2), .A2(n_0_11), .ZN(n_0_10));
   NOR2_X1 i_0_79 (.A1(n_70), .A2(reset), .ZN(n_0_11));
   INV_X1 i_0_80 (.A(clk), .ZN(n_68));
   INV_X1 i_0_81 (.A(reset), .ZN(n_69));
   INV_X1 i_0_82 (.A(counter), .ZN(n_70));
endmodule

module memory_manager(clk, reset, store1, store2, write, temp1, temp2, data1, 
      data2, select);
   input clk;
   input reset;
   input store1;
   input store2;
   output write;
   output [31:0]temp1;
   output [31:0]temp2;
   input [31:0]data1;
   input [31:0]data2;
   output [1:0]select;

   wire counter;
   wire wait2;
   wire wait1;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_5;
   wire n_0_4;
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
   wire n_0_121;
   wire n_0_122;
   wire n_0_123;
   wire n_0_124;
   wire n_0_125;
   wire n_0_126;
   wire n_0_127;
   wire n_0_128;
   wire n_0_129;
   wire n_0_130;
   wire n_0_131;
   wire n_0_132;
   wire n_0_133;
   wire n_0_134;
   wire n_0_135;
   wire n_0_136;
   wire n_0_137;
   wire n_0_138;
   wire n_0_139;
   wire n_0_140;
   wire n_0_141;
   wire n_0_142;
   wire n_0_143;
   wire n_0_144;
   wire n_0_145;

   DFFR_X1 counter_reg (.D(n_71), .RN(n_70), .CK(clk), .Q(counter), .QN());
   DFF_X1 \select_reg[1]  (.D(n_4), .CK(n_5), .Q(select[1]), .QN());
   DFF_X1 \select_reg[0]  (.D(n_3), .CK(n_5), .Q(select[0]), .QN());
   DFF_X1 \temp2_reg[31]  (.D(n_69), .CK(n_5), .Q(temp2[31]), .QN());
   DFF_X1 \temp2_reg[30]  (.D(n_68), .CK(n_5), .Q(temp2[30]), .QN());
   DFF_X1 \temp2_reg[29]  (.D(n_67), .CK(n_5), .Q(temp2[29]), .QN());
   DFF_X1 \temp2_reg[28]  (.D(n_66), .CK(n_5), .Q(temp2[28]), .QN());
   DFF_X1 \temp2_reg[27]  (.D(n_65), .CK(n_5), .Q(temp2[27]), .QN());
   DFF_X1 \temp2_reg[26]  (.D(n_64), .CK(n_5), .Q(temp2[26]), .QN());
   DFF_X1 \temp2_reg[25]  (.D(n_63), .CK(n_5), .Q(temp2[25]), .QN());
   DFF_X1 \temp2_reg[24]  (.D(n_62), .CK(n_5), .Q(temp2[24]), .QN());
   DFF_X1 \temp2_reg[23]  (.D(n_61), .CK(n_5), .Q(temp2[23]), .QN());
   DFF_X1 \temp2_reg[22]  (.D(n_60), .CK(n_5), .Q(temp2[22]), .QN());
   DFF_X1 \temp2_reg[21]  (.D(n_59), .CK(n_5), .Q(temp2[21]), .QN());
   DFF_X1 \temp2_reg[20]  (.D(n_58), .CK(n_5), .Q(temp2[20]), .QN());
   DFF_X1 \temp2_reg[19]  (.D(n_57), .CK(n_5), .Q(temp2[19]), .QN());
   DFF_X1 \temp2_reg[18]  (.D(n_56), .CK(n_5), .Q(temp2[18]), .QN());
   DFF_X1 \temp2_reg[17]  (.D(n_55), .CK(n_5), .Q(temp2[17]), .QN());
   DFF_X1 \temp2_reg[16]  (.D(n_54), .CK(n_5), .Q(temp2[16]), .QN());
   DFF_X1 \temp2_reg[15]  (.D(n_53), .CK(n_5), .Q(temp2[15]), .QN());
   DFF_X1 \temp2_reg[14]  (.D(n_52), .CK(n_5), .Q(temp2[14]), .QN());
   DFF_X1 \temp2_reg[13]  (.D(n_51), .CK(n_5), .Q(temp2[13]), .QN());
   DFF_X1 \temp2_reg[12]  (.D(n_50), .CK(n_5), .Q(temp2[12]), .QN());
   DFF_X1 \temp2_reg[11]  (.D(n_49), .CK(n_5), .Q(temp2[11]), .QN());
   DFF_X1 \temp2_reg[10]  (.D(n_48), .CK(n_5), .Q(temp2[10]), .QN());
   DFF_X1 \temp2_reg[9]  (.D(n_47), .CK(n_5), .Q(temp2[9]), .QN());
   DFF_X1 \temp2_reg[8]  (.D(n_46), .CK(n_5), .Q(temp2[8]), .QN());
   DFF_X1 \temp2_reg[7]  (.D(n_45), .CK(n_5), .Q(temp2[7]), .QN());
   DFF_X1 \temp2_reg[6]  (.D(n_44), .CK(n_5), .Q(temp2[6]), .QN());
   DFF_X1 \temp2_reg[5]  (.D(n_43), .CK(n_5), .Q(temp2[5]), .QN());
   DFF_X1 \temp2_reg[4]  (.D(n_42), .CK(n_5), .Q(temp2[4]), .QN());
   DFF_X1 \temp2_reg[3]  (.D(n_41), .CK(n_5), .Q(temp2[3]), .QN());
   DFF_X1 \temp2_reg[2]  (.D(n_40), .CK(n_5), .Q(temp2[2]), .QN());
   DFF_X1 \temp2_reg[1]  (.D(n_39), .CK(n_5), .Q(temp2[1]), .QN());
   DFF_X1 \temp2_reg[0]  (.D(n_38), .CK(n_5), .Q(temp2[0]), .QN());
   DFF_X1 \temp1_reg[31]  (.D(n_37), .CK(n_5), .Q(temp1[31]), .QN());
   DFF_X1 \temp1_reg[30]  (.D(n_36), .CK(n_5), .Q(temp1[30]), .QN());
   DFF_X1 \temp1_reg[29]  (.D(n_35), .CK(n_5), .Q(temp1[29]), .QN());
   DFF_X1 \temp1_reg[28]  (.D(n_34), .CK(n_5), .Q(temp1[28]), .QN());
   DFF_X1 \temp1_reg[27]  (.D(n_33), .CK(n_5), .Q(temp1[27]), .QN());
   DFF_X1 \temp1_reg[26]  (.D(n_32), .CK(n_5), .Q(temp1[26]), .QN());
   DFF_X1 \temp1_reg[25]  (.D(n_31), .CK(n_5), .Q(temp1[25]), .QN());
   DFF_X1 \temp1_reg[24]  (.D(n_30), .CK(n_5), .Q(temp1[24]), .QN());
   DFF_X1 \temp1_reg[23]  (.D(n_29), .CK(n_5), .Q(temp1[23]), .QN());
   DFF_X1 \temp1_reg[22]  (.D(n_28), .CK(n_5), .Q(temp1[22]), .QN());
   DFF_X1 \temp1_reg[21]  (.D(n_27), .CK(n_5), .Q(temp1[21]), .QN());
   DFF_X1 \temp1_reg[20]  (.D(n_26), .CK(n_5), .Q(temp1[20]), .QN());
   DFF_X1 \temp1_reg[19]  (.D(n_25), .CK(n_5), .Q(temp1[19]), .QN());
   DFF_X1 \temp1_reg[18]  (.D(n_24), .CK(n_5), .Q(temp1[18]), .QN());
   DFF_X1 \temp1_reg[17]  (.D(n_23), .CK(n_5), .Q(temp1[17]), .QN());
   DFF_X1 \temp1_reg[16]  (.D(n_22), .CK(n_5), .Q(temp1[16]), .QN());
   DFF_X1 \temp1_reg[15]  (.D(n_21), .CK(n_5), .Q(temp1[15]), .QN());
   DFF_X1 \temp1_reg[14]  (.D(n_20), .CK(n_5), .Q(temp1[14]), .QN());
   DFF_X1 \temp1_reg[13]  (.D(n_19), .CK(n_5), .Q(temp1[13]), .QN());
   DFF_X1 \temp1_reg[12]  (.D(n_18), .CK(n_5), .Q(temp1[12]), .QN());
   DFF_X1 \temp1_reg[11]  (.D(n_17), .CK(n_5), .Q(temp1[11]), .QN());
   DFF_X1 \temp1_reg[10]  (.D(n_16), .CK(n_5), .Q(temp1[10]), .QN());
   DFF_X1 \temp1_reg[9]  (.D(n_15), .CK(n_5), .Q(temp1[9]), .QN());
   DFF_X1 \temp1_reg[8]  (.D(n_14), .CK(n_5), .Q(temp1[8]), .QN());
   DFF_X1 \temp1_reg[7]  (.D(n_13), .CK(n_5), .Q(temp1[7]), .QN());
   DFF_X1 \temp1_reg[6]  (.D(n_12), .CK(n_5), .Q(temp1[6]), .QN());
   DFF_X1 \temp1_reg[5]  (.D(n_11), .CK(n_5), .Q(temp1[5]), .QN());
   DFF_X1 \temp1_reg[4]  (.D(n_10), .CK(n_5), .Q(temp1[4]), .QN());
   DFF_X1 \temp1_reg[3]  (.D(n_9), .CK(n_5), .Q(temp1[3]), .QN());
   DFF_X1 \temp1_reg[2]  (.D(n_8), .CK(n_5), .Q(temp1[2]), .QN());
   DFF_X1 \temp1_reg[1]  (.D(n_7), .CK(n_5), .Q(temp1[1]), .QN());
   DFF_X1 \temp1_reg[0]  (.D(n_6), .CK(n_5), .Q(temp1[0]), .QN());
   DFF_X1 write_reg (.D(n_2), .CK(n_5), .Q(write), .QN());
   DFF_X1 wait2_reg (.D(n_1), .CK(n_5), .Q(wait2), .QN());
   DFF_X1 wait1_reg (.D(n_0), .CK(n_5), .Q(wait1), .QN());
   NAND2_X1 i_0_0 (.A1(n_0_4), .A2(n_0_0), .ZN(n_0));
   NAND2_X1 i_0_1 (.A1(wait1), .A2(n_0_13), .ZN(n_0_0));
   NAND2_X1 i_0_2 (.A1(n_0_5), .A2(n_0_1), .ZN(n_1));
   NAND2_X1 i_0_3 (.A1(wait2), .A2(n_0_11), .ZN(n_0_1));
   AOI21_X1 i_0_4 (.A(n_0_2), .B1(n_0_3), .B2(n_70), .ZN(n_2));
   NOR2_X1 i_0_5 (.A1(n_70), .A2(write), .ZN(n_0_2));
   NOR4_X1 i_0_6 (.A1(wait2), .A2(wait1), .A3(store2), .A4(store1), .ZN(n_0_3));
   NAND3_X1 i_0_7 (.A1(n_0_12), .A2(n_0_8), .A3(n_0_6), .ZN(n_3));
   NAND3_X1 i_0_8 (.A1(n_0_10), .A2(n_0_7), .A3(select[0]), .ZN(n_0_6));
   NAND3_X1 i_0_9 (.A1(n_0_9), .A2(n_0_8), .A3(n_0_7), .ZN(n_4));
   NAND2_X1 i_0_10 (.A1(wait1), .A2(n_0_11), .ZN(n_0_7));
   NAND2_X1 i_0_11 (.A1(wait2), .A2(n_0_13), .ZN(n_0_8));
   NAND3_X1 i_0_73 (.A1(n_0_12), .A2(n_0_10), .A3(select[1]), .ZN(n_0_9));
   NAND2_X1 i_0_74 (.A1(store1), .A2(n_0_11), .ZN(n_0_10));
   NOR2_X1 i_0_75 (.A1(counter), .A2(reset), .ZN(n_0_11));
   NAND2_X1 i_0_76 (.A1(store2), .A2(n_0_13), .ZN(n_0_12));
   NOR2_X1 i_0_77 (.A1(n_71), .A2(reset), .ZN(n_0_13));
   INV_X1 i_0_84 (.A(clk), .ZN(n_5));
   NAND2_X1 i_0_78 (.A1(n_70), .A2(n_0_143), .ZN(n_0_5));
   NAND2_X1 i_0_79 (.A1(n_70), .A2(n_0_77), .ZN(n_0_4));
   NAND2_X1 i_0_80 (.A1(n_0_15), .A2(n_0_14), .ZN(n_6));
   NAND3_X1 i_0_81 (.A1(n_70), .A2(data1[0]), .A3(n_0_77), .ZN(n_0_14));
   OAI21_X1 i_0_82 (.A(temp1[0]), .B1(reset), .B2(n_0_79), .ZN(n_0_15));
   NAND2_X1 i_0_12 (.A1(n_0_17), .A2(n_0_16), .ZN(n_7));
   NAND3_X1 i_0_13 (.A1(n_70), .A2(data1[1]), .A3(n_0_77), .ZN(n_0_16));
   OAI21_X1 i_0_14 (.A(temp1[1]), .B1(reset), .B2(n_0_79), .ZN(n_0_17));
   NAND2_X1 i_0_15 (.A1(n_0_19), .A2(n_0_18), .ZN(n_8));
   NAND3_X1 i_0_16 (.A1(n_70), .A2(data1[2]), .A3(n_0_77), .ZN(n_0_18));
   OAI21_X1 i_0_17 (.A(temp1[2]), .B1(reset), .B2(n_0_79), .ZN(n_0_19));
   NAND2_X1 i_0_18 (.A1(n_0_21), .A2(n_0_20), .ZN(n_9));
   NAND3_X1 i_0_19 (.A1(n_70), .A2(data1[3]), .A3(n_0_77), .ZN(n_0_20));
   OAI21_X1 i_0_20 (.A(temp1[3]), .B1(reset), .B2(n_0_79), .ZN(n_0_21));
   NAND2_X1 i_0_21 (.A1(n_0_23), .A2(n_0_22), .ZN(n_10));
   NAND3_X1 i_0_22 (.A1(n_70), .A2(data1[4]), .A3(n_0_77), .ZN(n_0_22));
   OAI21_X1 i_0_23 (.A(temp1[4]), .B1(reset), .B2(n_0_79), .ZN(n_0_23));
   NAND2_X1 i_0_24 (.A1(n_0_25), .A2(n_0_24), .ZN(n_11));
   NAND3_X1 i_0_25 (.A1(n_70), .A2(data1[5]), .A3(n_0_77), .ZN(n_0_24));
   OAI21_X1 i_0_26 (.A(temp1[5]), .B1(reset), .B2(n_0_79), .ZN(n_0_25));
   NAND2_X1 i_0_27 (.A1(n_0_27), .A2(n_0_26), .ZN(n_12));
   NAND3_X1 i_0_28 (.A1(n_70), .A2(data1[6]), .A3(n_0_77), .ZN(n_0_26));
   OAI21_X1 i_0_29 (.A(temp1[6]), .B1(reset), .B2(n_0_79), .ZN(n_0_27));
   NAND2_X1 i_0_30 (.A1(n_0_29), .A2(n_0_28), .ZN(n_13));
   NAND3_X1 i_0_31 (.A1(n_70), .A2(data1[7]), .A3(n_0_77), .ZN(n_0_28));
   OAI21_X1 i_0_32 (.A(temp1[7]), .B1(reset), .B2(n_0_79), .ZN(n_0_29));
   NAND2_X1 i_0_33 (.A1(n_0_31), .A2(n_0_30), .ZN(n_14));
   NAND3_X1 i_0_34 (.A1(n_70), .A2(data1[8]), .A3(n_0_77), .ZN(n_0_30));
   OAI21_X1 i_0_35 (.A(temp1[8]), .B1(reset), .B2(n_0_79), .ZN(n_0_31));
   NAND2_X1 i_0_36 (.A1(n_0_33), .A2(n_0_32), .ZN(n_15));
   NAND3_X1 i_0_37 (.A1(n_70), .A2(data1[9]), .A3(n_0_77), .ZN(n_0_32));
   OAI21_X1 i_0_38 (.A(temp1[9]), .B1(reset), .B2(n_0_79), .ZN(n_0_33));
   NAND2_X1 i_0_39 (.A1(n_0_35), .A2(n_0_34), .ZN(n_16));
   NAND3_X1 i_0_40 (.A1(n_70), .A2(data1[10]), .A3(n_0_77), .ZN(n_0_34));
   OAI21_X1 i_0_41 (.A(temp1[10]), .B1(reset), .B2(n_0_79), .ZN(n_0_35));
   NAND2_X1 i_0_42 (.A1(n_0_37), .A2(n_0_36), .ZN(n_17));
   NAND3_X1 i_0_43 (.A1(n_70), .A2(data1[11]), .A3(n_0_77), .ZN(n_0_36));
   OAI21_X1 i_0_44 (.A(temp1[11]), .B1(reset), .B2(n_0_79), .ZN(n_0_37));
   NAND2_X1 i_0_45 (.A1(n_0_39), .A2(n_0_38), .ZN(n_18));
   NAND3_X1 i_0_46 (.A1(n_70), .A2(data1[12]), .A3(n_0_77), .ZN(n_0_38));
   OAI21_X1 i_0_47 (.A(temp1[12]), .B1(reset), .B2(n_0_79), .ZN(n_0_39));
   NAND2_X1 i_0_48 (.A1(n_0_41), .A2(n_0_40), .ZN(n_19));
   NAND3_X1 i_0_49 (.A1(n_70), .A2(data1[13]), .A3(n_0_77), .ZN(n_0_40));
   OAI21_X1 i_0_50 (.A(temp1[13]), .B1(reset), .B2(n_0_79), .ZN(n_0_41));
   NAND2_X1 i_0_51 (.A1(n_0_43), .A2(n_0_42), .ZN(n_20));
   NAND3_X1 i_0_52 (.A1(n_70), .A2(data1[14]), .A3(n_0_77), .ZN(n_0_42));
   OAI21_X1 i_0_53 (.A(temp1[14]), .B1(reset), .B2(n_0_79), .ZN(n_0_43));
   NAND2_X1 i_0_54 (.A1(n_0_45), .A2(n_0_44), .ZN(n_21));
   NAND3_X1 i_0_55 (.A1(n_70), .A2(data1[15]), .A3(n_0_77), .ZN(n_0_44));
   OAI21_X1 i_0_56 (.A(temp1[15]), .B1(reset), .B2(n_0_79), .ZN(n_0_45));
   NAND2_X1 i_0_57 (.A1(n_0_47), .A2(n_0_46), .ZN(n_22));
   NAND3_X1 i_0_58 (.A1(n_70), .A2(data1[16]), .A3(n_0_77), .ZN(n_0_46));
   OAI21_X1 i_0_59 (.A(temp1[16]), .B1(reset), .B2(n_0_79), .ZN(n_0_47));
   NAND2_X1 i_0_60 (.A1(n_0_49), .A2(n_0_48), .ZN(n_23));
   NAND3_X1 i_0_61 (.A1(n_70), .A2(data1[17]), .A3(n_0_77), .ZN(n_0_48));
   OAI21_X1 i_0_62 (.A(temp1[17]), .B1(reset), .B2(n_0_79), .ZN(n_0_49));
   NAND2_X1 i_0_63 (.A1(n_0_51), .A2(n_0_50), .ZN(n_24));
   NAND3_X1 i_0_64 (.A1(n_70), .A2(data1[18]), .A3(n_0_77), .ZN(n_0_50));
   OAI21_X1 i_0_65 (.A(temp1[18]), .B1(reset), .B2(n_0_79), .ZN(n_0_51));
   NAND2_X1 i_0_66 (.A1(n_0_53), .A2(n_0_52), .ZN(n_25));
   NAND3_X1 i_0_67 (.A1(n_70), .A2(data1[19]), .A3(n_0_77), .ZN(n_0_52));
   OAI21_X1 i_0_68 (.A(temp1[19]), .B1(reset), .B2(n_0_79), .ZN(n_0_53));
   NAND2_X1 i_0_69 (.A1(n_0_55), .A2(n_0_54), .ZN(n_26));
   NAND3_X1 i_0_70 (.A1(n_70), .A2(data1[20]), .A3(n_0_77), .ZN(n_0_54));
   OAI21_X1 i_0_71 (.A(temp1[20]), .B1(reset), .B2(n_0_79), .ZN(n_0_55));
   NAND2_X1 i_0_72 (.A1(n_0_57), .A2(n_0_56), .ZN(n_27));
   NAND3_X1 i_0_83 (.A1(n_70), .A2(data1[21]), .A3(n_0_77), .ZN(n_0_56));
   OAI21_X1 i_0_85 (.A(temp1[21]), .B1(reset), .B2(n_0_79), .ZN(n_0_57));
   NAND2_X1 i_0_86 (.A1(n_0_59), .A2(n_0_58), .ZN(n_28));
   NAND3_X1 i_0_87 (.A1(n_70), .A2(data1[22]), .A3(n_0_77), .ZN(n_0_58));
   OAI21_X1 i_0_88 (.A(temp1[22]), .B1(reset), .B2(n_0_79), .ZN(n_0_59));
   NAND2_X1 i_0_89 (.A1(n_0_61), .A2(n_0_60), .ZN(n_29));
   NAND3_X1 i_0_90 (.A1(n_70), .A2(data1[23]), .A3(n_0_77), .ZN(n_0_60));
   OAI21_X1 i_0_91 (.A(temp1[23]), .B1(reset), .B2(n_0_79), .ZN(n_0_61));
   NAND2_X1 i_0_92 (.A1(n_0_63), .A2(n_0_62), .ZN(n_30));
   NAND3_X1 i_0_93 (.A1(n_70), .A2(data1[24]), .A3(n_0_77), .ZN(n_0_62));
   OAI21_X1 i_0_94 (.A(temp1[24]), .B1(reset), .B2(n_0_79), .ZN(n_0_63));
   NAND2_X1 i_0_95 (.A1(n_0_65), .A2(n_0_64), .ZN(n_31));
   NAND3_X1 i_0_96 (.A1(n_70), .A2(data1[25]), .A3(n_0_77), .ZN(n_0_64));
   OAI21_X1 i_0_97 (.A(temp1[25]), .B1(reset), .B2(n_0_79), .ZN(n_0_65));
   NAND2_X1 i_0_98 (.A1(n_0_67), .A2(n_0_66), .ZN(n_32));
   NAND3_X1 i_0_99 (.A1(n_70), .A2(data1[26]), .A3(n_0_77), .ZN(n_0_66));
   OAI21_X1 i_0_100 (.A(temp1[26]), .B1(reset), .B2(n_0_79), .ZN(n_0_67));
   NAND2_X1 i_0_101 (.A1(n_0_69), .A2(n_0_68), .ZN(n_33));
   NAND3_X1 i_0_102 (.A1(n_70), .A2(data1[27]), .A3(n_0_77), .ZN(n_0_68));
   OAI21_X1 i_0_103 (.A(temp1[27]), .B1(reset), .B2(n_0_79), .ZN(n_0_69));
   NAND2_X1 i_0_104 (.A1(n_0_71), .A2(n_0_70), .ZN(n_34));
   NAND3_X1 i_0_105 (.A1(n_70), .A2(data1[28]), .A3(n_0_77), .ZN(n_0_70));
   OAI21_X1 i_0_106 (.A(temp1[28]), .B1(reset), .B2(n_0_79), .ZN(n_0_71));
   NAND2_X1 i_0_107 (.A1(n_0_73), .A2(n_0_72), .ZN(n_35));
   NAND3_X1 i_0_108 (.A1(n_70), .A2(data1[29]), .A3(n_0_77), .ZN(n_0_72));
   OAI21_X1 i_0_109 (.A(temp1[29]), .B1(reset), .B2(n_0_79), .ZN(n_0_73));
   NAND2_X1 i_0_110 (.A1(n_0_75), .A2(n_0_74), .ZN(n_36));
   NAND3_X1 i_0_111 (.A1(n_70), .A2(data1[30]), .A3(n_0_77), .ZN(n_0_74));
   OAI21_X1 i_0_112 (.A(temp1[30]), .B1(reset), .B2(n_0_79), .ZN(n_0_75));
   NAND2_X1 i_0_113 (.A1(n_0_78), .A2(n_0_76), .ZN(n_37));
   NAND3_X1 i_0_114 (.A1(n_70), .A2(data1[31]), .A3(n_0_77), .ZN(n_0_76));
   INV_X1 i_0_115 (.A(n_0_79), .ZN(n_0_77));
   OAI21_X1 i_0_116 (.A(temp1[31]), .B1(reset), .B2(n_0_79), .ZN(n_0_78));
   OAI21_X1 i_0_117 (.A(store1), .B1(counter), .B2(wait1), .ZN(n_0_79));
   NAND2_X1 i_0_118 (.A1(n_0_81), .A2(n_0_80), .ZN(n_38));
   NAND3_X1 i_0_119 (.A1(n_70), .A2(data2[0]), .A3(n_0_143), .ZN(n_0_80));
   OAI21_X1 i_0_120 (.A(temp2[0]), .B1(reset), .B2(n_0_145), .ZN(n_0_81));
   NAND2_X1 i_0_121 (.A1(n_0_83), .A2(n_0_82), .ZN(n_39));
   NAND3_X1 i_0_122 (.A1(n_70), .A2(data2[1]), .A3(n_0_143), .ZN(n_0_82));
   OAI21_X1 i_0_123 (.A(temp2[1]), .B1(reset), .B2(n_0_145), .ZN(n_0_83));
   NAND2_X1 i_0_124 (.A1(n_0_85), .A2(n_0_84), .ZN(n_40));
   NAND3_X1 i_0_125 (.A1(n_70), .A2(data2[2]), .A3(n_0_143), .ZN(n_0_84));
   OAI21_X1 i_0_126 (.A(temp2[2]), .B1(reset), .B2(n_0_145), .ZN(n_0_85));
   NAND2_X1 i_0_127 (.A1(n_0_87), .A2(n_0_86), .ZN(n_41));
   NAND3_X1 i_0_128 (.A1(n_70), .A2(data2[3]), .A3(n_0_143), .ZN(n_0_86));
   OAI21_X1 i_0_129 (.A(temp2[3]), .B1(reset), .B2(n_0_145), .ZN(n_0_87));
   NAND2_X1 i_0_130 (.A1(n_0_89), .A2(n_0_88), .ZN(n_42));
   NAND3_X1 i_0_131 (.A1(n_70), .A2(data2[4]), .A3(n_0_143), .ZN(n_0_88));
   OAI21_X1 i_0_132 (.A(temp2[4]), .B1(reset), .B2(n_0_145), .ZN(n_0_89));
   NAND2_X1 i_0_133 (.A1(n_0_91), .A2(n_0_90), .ZN(n_43));
   NAND3_X1 i_0_134 (.A1(n_70), .A2(data2[5]), .A3(n_0_143), .ZN(n_0_90));
   OAI21_X1 i_0_135 (.A(temp2[5]), .B1(reset), .B2(n_0_145), .ZN(n_0_91));
   NAND2_X1 i_0_136 (.A1(n_0_93), .A2(n_0_92), .ZN(n_44));
   NAND3_X1 i_0_137 (.A1(n_70), .A2(data2[6]), .A3(n_0_143), .ZN(n_0_92));
   OAI21_X1 i_0_138 (.A(temp2[6]), .B1(reset), .B2(n_0_145), .ZN(n_0_93));
   NAND2_X1 i_0_139 (.A1(n_0_95), .A2(n_0_94), .ZN(n_45));
   NAND3_X1 i_0_140 (.A1(n_70), .A2(data2[7]), .A3(n_0_143), .ZN(n_0_94));
   OAI21_X1 i_0_141 (.A(temp2[7]), .B1(reset), .B2(n_0_145), .ZN(n_0_95));
   NAND2_X1 i_0_142 (.A1(n_0_97), .A2(n_0_96), .ZN(n_46));
   NAND3_X1 i_0_143 (.A1(n_70), .A2(data2[8]), .A3(n_0_143), .ZN(n_0_96));
   OAI21_X1 i_0_144 (.A(temp2[8]), .B1(reset), .B2(n_0_145), .ZN(n_0_97));
   NAND2_X1 i_0_145 (.A1(n_0_99), .A2(n_0_98), .ZN(n_47));
   NAND3_X1 i_0_146 (.A1(n_70), .A2(data2[9]), .A3(n_0_143), .ZN(n_0_98));
   OAI21_X1 i_0_147 (.A(temp2[9]), .B1(reset), .B2(n_0_145), .ZN(n_0_99));
   NAND2_X1 i_0_148 (.A1(n_0_101), .A2(n_0_100), .ZN(n_48));
   NAND3_X1 i_0_149 (.A1(n_70), .A2(data2[10]), .A3(n_0_143), .ZN(n_0_100));
   OAI21_X1 i_0_150 (.A(temp2[10]), .B1(reset), .B2(n_0_145), .ZN(n_0_101));
   NAND2_X1 i_0_151 (.A1(n_0_103), .A2(n_0_102), .ZN(n_49));
   NAND3_X1 i_0_152 (.A1(n_70), .A2(data2[11]), .A3(n_0_143), .ZN(n_0_102));
   OAI21_X1 i_0_153 (.A(temp2[11]), .B1(reset), .B2(n_0_145), .ZN(n_0_103));
   NAND2_X1 i_0_154 (.A1(n_0_105), .A2(n_0_104), .ZN(n_50));
   NAND3_X1 i_0_155 (.A1(n_70), .A2(data2[12]), .A3(n_0_143), .ZN(n_0_104));
   OAI21_X1 i_0_156 (.A(temp2[12]), .B1(reset), .B2(n_0_145), .ZN(n_0_105));
   NAND2_X1 i_0_157 (.A1(n_0_107), .A2(n_0_106), .ZN(n_51));
   NAND3_X1 i_0_158 (.A1(n_70), .A2(data2[13]), .A3(n_0_143), .ZN(n_0_106));
   OAI21_X1 i_0_159 (.A(temp2[13]), .B1(reset), .B2(n_0_145), .ZN(n_0_107));
   NAND2_X1 i_0_160 (.A1(n_0_109), .A2(n_0_108), .ZN(n_52));
   NAND3_X1 i_0_161 (.A1(n_70), .A2(data2[14]), .A3(n_0_143), .ZN(n_0_108));
   OAI21_X1 i_0_162 (.A(temp2[14]), .B1(reset), .B2(n_0_145), .ZN(n_0_109));
   NAND2_X1 i_0_163 (.A1(n_0_111), .A2(n_0_110), .ZN(n_53));
   NAND3_X1 i_0_164 (.A1(n_70), .A2(data2[15]), .A3(n_0_143), .ZN(n_0_110));
   OAI21_X1 i_0_165 (.A(temp2[15]), .B1(reset), .B2(n_0_145), .ZN(n_0_111));
   NAND2_X1 i_0_166 (.A1(n_0_113), .A2(n_0_112), .ZN(n_54));
   NAND3_X1 i_0_167 (.A1(n_70), .A2(data2[16]), .A3(n_0_143), .ZN(n_0_112));
   OAI21_X1 i_0_168 (.A(temp2[16]), .B1(reset), .B2(n_0_145), .ZN(n_0_113));
   NAND2_X1 i_0_169 (.A1(n_0_115), .A2(n_0_114), .ZN(n_55));
   NAND3_X1 i_0_170 (.A1(n_70), .A2(data2[17]), .A3(n_0_143), .ZN(n_0_114));
   OAI21_X1 i_0_171 (.A(temp2[17]), .B1(reset), .B2(n_0_145), .ZN(n_0_115));
   NAND2_X1 i_0_172 (.A1(n_0_117), .A2(n_0_116), .ZN(n_56));
   NAND3_X1 i_0_173 (.A1(n_70), .A2(data2[18]), .A3(n_0_143), .ZN(n_0_116));
   OAI21_X1 i_0_174 (.A(temp2[18]), .B1(reset), .B2(n_0_145), .ZN(n_0_117));
   NAND2_X1 i_0_175 (.A1(n_0_119), .A2(n_0_118), .ZN(n_57));
   NAND3_X1 i_0_176 (.A1(n_70), .A2(data2[19]), .A3(n_0_143), .ZN(n_0_118));
   OAI21_X1 i_0_177 (.A(temp2[19]), .B1(reset), .B2(n_0_145), .ZN(n_0_119));
   NAND2_X1 i_0_178 (.A1(n_0_121), .A2(n_0_120), .ZN(n_58));
   NAND3_X1 i_0_179 (.A1(n_70), .A2(data2[20]), .A3(n_0_143), .ZN(n_0_120));
   OAI21_X1 i_0_180 (.A(temp2[20]), .B1(reset), .B2(n_0_145), .ZN(n_0_121));
   NAND2_X1 i_0_181 (.A1(n_0_123), .A2(n_0_122), .ZN(n_59));
   NAND3_X1 i_0_182 (.A1(n_70), .A2(data2[21]), .A3(n_0_143), .ZN(n_0_122));
   OAI21_X1 i_0_183 (.A(temp2[21]), .B1(reset), .B2(n_0_145), .ZN(n_0_123));
   NAND2_X1 i_0_184 (.A1(n_0_125), .A2(n_0_124), .ZN(n_60));
   NAND3_X1 i_0_185 (.A1(n_70), .A2(data2[22]), .A3(n_0_143), .ZN(n_0_124));
   OAI21_X1 i_0_186 (.A(temp2[22]), .B1(reset), .B2(n_0_145), .ZN(n_0_125));
   NAND2_X1 i_0_187 (.A1(n_0_127), .A2(n_0_126), .ZN(n_61));
   NAND3_X1 i_0_188 (.A1(n_70), .A2(data2[23]), .A3(n_0_143), .ZN(n_0_126));
   OAI21_X1 i_0_189 (.A(temp2[23]), .B1(reset), .B2(n_0_145), .ZN(n_0_127));
   NAND2_X1 i_0_190 (.A1(n_0_129), .A2(n_0_128), .ZN(n_62));
   NAND3_X1 i_0_191 (.A1(n_70), .A2(data2[24]), .A3(n_0_143), .ZN(n_0_128));
   OAI21_X1 i_0_192 (.A(temp2[24]), .B1(reset), .B2(n_0_145), .ZN(n_0_129));
   NAND2_X1 i_0_193 (.A1(n_0_131), .A2(n_0_130), .ZN(n_63));
   NAND3_X1 i_0_194 (.A1(n_70), .A2(data2[25]), .A3(n_0_143), .ZN(n_0_130));
   OAI21_X1 i_0_195 (.A(temp2[25]), .B1(reset), .B2(n_0_145), .ZN(n_0_131));
   NAND2_X1 i_0_196 (.A1(n_0_133), .A2(n_0_132), .ZN(n_64));
   NAND3_X1 i_0_197 (.A1(n_70), .A2(data2[26]), .A3(n_0_143), .ZN(n_0_132));
   OAI21_X1 i_0_198 (.A(temp2[26]), .B1(reset), .B2(n_0_145), .ZN(n_0_133));
   NAND2_X1 i_0_199 (.A1(n_0_135), .A2(n_0_134), .ZN(n_65));
   NAND3_X1 i_0_200 (.A1(n_70), .A2(data2[27]), .A3(n_0_143), .ZN(n_0_134));
   OAI21_X1 i_0_201 (.A(temp2[27]), .B1(reset), .B2(n_0_145), .ZN(n_0_135));
   NAND2_X1 i_0_202 (.A1(n_0_137), .A2(n_0_136), .ZN(n_66));
   NAND3_X1 i_0_203 (.A1(n_70), .A2(data2[28]), .A3(n_0_143), .ZN(n_0_136));
   OAI21_X1 i_0_204 (.A(temp2[28]), .B1(reset), .B2(n_0_145), .ZN(n_0_137));
   NAND2_X1 i_0_205 (.A1(n_0_139), .A2(n_0_138), .ZN(n_67));
   NAND3_X1 i_0_206 (.A1(n_70), .A2(data2[29]), .A3(n_0_143), .ZN(n_0_138));
   OAI21_X1 i_0_207 (.A(temp2[29]), .B1(reset), .B2(n_0_145), .ZN(n_0_139));
   NAND2_X1 i_0_208 (.A1(n_0_141), .A2(n_0_140), .ZN(n_68));
   NAND3_X1 i_0_209 (.A1(n_70), .A2(data2[30]), .A3(n_0_143), .ZN(n_0_140));
   OAI21_X1 i_0_210 (.A(temp2[30]), .B1(reset), .B2(n_0_145), .ZN(n_0_141));
   NAND2_X1 i_0_211 (.A1(n_0_144), .A2(n_0_142), .ZN(n_69));
   NAND3_X1 i_0_212 (.A1(n_70), .A2(data2[31]), .A3(n_0_143), .ZN(n_0_142));
   INV_X1 i_0_213 (.A(n_0_145), .ZN(n_0_143));
   INV_X1 i_0_214 (.A(reset), .ZN(n_70));
   OAI21_X1 i_0_215 (.A(temp2[31]), .B1(reset), .B2(n_0_145), .ZN(n_0_144));
   OAI21_X1 i_0_216 (.A(store2), .B1(n_71), .B2(wait2), .ZN(n_0_145));
   INV_X1 i_0_217 (.A(counter), .ZN(n_71));
endmodule

module io_module(clk, reset, int, process, eob, data, ready, out, cpu_out);
   input clk;
   input reset;
   input int;
   input process;
   input eob;
   inout [31:0]data;
   input ready;
   input out;
   output cpu_out;

   wire rst;
   wire next;
   wire [3:0]start;
   wire [31:0]decoded1;
   wire store1;
   wire [31:0]decoded4;
   wire store4;
   wire [1:0]counter3;
   wire [31:0]decoded2;
   wire store2;
   wire [31:0]decoded3;
   wire store3;
   wire [1:0]select2;
   wire [31:0]temp3;
   wire [31:0]temp2;
   wire [1:0]select1;
   wire [31:0]temp4;
   wire [31:0]temp1;
   wire write1;
   wire counter;
   wire [1:0]addr2_reg;
   wire [31:0]MDR2_reg;
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
   wire n_0_0_17;
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
   wire n_0_0_35;
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
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;
   wire n_0_0_60;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_0_63;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_0_67;
   wire [31:0]MDR1_reg;
   wire n_0_0_68;
   wire n_0_0_69;
   wire n_0_0_70;
   wire n_0_0_71;
   wire n_0_0_72;
   wire n_0_0_73;
   wire n_0_0_74;
   wire n_0_0_75;
   wire n_0_0_76;
   wire n_0_0_77;
   wire n_0_0_78;
   wire n_0_0_79;
   wire n_0_0_80;
   wire n_0_0_81;
   wire n_0_0_82;
   wire n_0_0_83;
   wire n_0_0_84;
   wire n_0_0_85;
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
   wire n_0_0_98;
   wire n_0_0_99;
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
   wire n_0_0;
   wire n_0_1;
   wire [1:0]out_addr;
   wire n_0_3;
   wire n_0_2;

   assign cpu_out = out;

   /*RAM_bbox_0 r2 (.p_0(clk), .p_1(rst), .p_2(), .p_3(addr2_reg), .p_4(), 
      .p_5(MDR2_reg), .p_6());
   RAM_bbox r1 (.p_0(clk), .p_1(rst), .p_2(write1), .p_3({1'b0, n_0}), .p_4(
      out_addr), .p_5(MDR1_reg), .p_6());
      */
   io_fsm s (.clk(clk), .reset(reset), .int(int), .process(process), .eob(eob), 
      .data({data[31], data[30], data[29], data[28], data[27], data[26], 
      data[25], data[24], data[23], data[22], data[21], data[20], data[19], 
      data[18], data[17], data[16], data[15], data[14], data[13], data[12], 
      data[11], data[10], data[9], data[8], data[7], data[6], data[5], data[4], 
      data[3], data[2], data[1], data[0]}), .out1(), .out2(), .out3(), .out4(), 
      .start(start), .ready(), .next(next));
   decompressor__1_215 d1 (.clk(clk), .reset(reset), .start(start[0]), .bit(
      data[6]), .value({data[5], data[4], data[3], data[2], data[1], data[0]}), 
      .store(store1), .out(decoded1));
   decompressor__1_304 d4 (.clk(clk), .reset(reset), .start(start[3]), .bit(
      data[30]), .value({data[29], data[28], data[27], data[26], data[25], 
      data[24]}), .store(store4), .out(decoded4));
   adder__1_108 add2 (.A(), .B(out_addr), .is_subtract(), .result({counter3[1], 
      uc_0}), .carry(), .overflow_flag(), .negative());
   decompressor__1_393 d2 (.clk(clk), .reset(reset), .start(start[1]), .bit(
      data[14]), .value({data[13], data[12], data[11], data[10], data[9], 
      data[8]}), .store(store2), .out(decoded2));
   decompressor d3 (.clk(clk), .reset(reset), .start(start[2]), .bit(data[22]), 
      .value({data[21], data[20], data[19], data[18], data[17], data[16]}), 
      .store(store3), .out(decoded3));
   memory_manager__1_81 m1 (.clk(clk), .reset(reset), .store1(store2), .store2(
      store3), .write(), .temp1(temp2), .temp2(temp3), .data1(decoded2), 
      .data2(decoded3), .select(select2));
   memory_manager m2 (.clk(clk), .reset(reset), .store1(store1), .store2(store4), 
      .write(write1), .temp1(temp1), .temp2(temp4), .data1(decoded1), .data2(
      decoded4), .select(select1));
   DFFRS_X1 counter_reg (.D(counter), .RN(n_0_1), .SN(n_0_0), .CK(clk), .Q(
      counter), .QN());
   AND2_X1 i_0_0_0 (.A1(select2[0]), .A2(counter), .ZN(addr2_reg[0]));
   NAND2_X1 i_0_0_1 (.A1(n_0_0_1), .A2(n_0_0_0), .ZN(MDR2_reg[0]));
   AOI22_X1 i_0_0_2 (.A1(temp3[0]), .A2(n_0_0_64), .B1(temp2[0]), .B2(n_0_0_63), 
      .ZN(n_0_0_0));
   AOI22_X1 i_0_0_3 (.A1(decoded3[0]), .A2(n_0_0_67), .B1(decoded2[0]), .B2(
      n_0_0_66), .ZN(n_0_0_1));
   NAND2_X1 i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .ZN(MDR2_reg[1]));
   AOI22_X1 i_0_0_5 (.A1(temp3[1]), .A2(n_0_0_64), .B1(temp2[1]), .B2(n_0_0_63), 
      .ZN(n_0_0_2));
   AOI22_X1 i_0_0_6 (.A1(decoded3[1]), .A2(n_0_0_67), .B1(decoded2[1]), .B2(
      n_0_0_66), .ZN(n_0_0_3));
   NAND2_X1 i_0_0_7 (.A1(n_0_0_5), .A2(n_0_0_4), .ZN(MDR2_reg[2]));
   AOI22_X1 i_0_0_8 (.A1(temp3[2]), .A2(n_0_0_64), .B1(temp2[2]), .B2(n_0_0_63), 
      .ZN(n_0_0_4));
   AOI22_X1 i_0_0_9 (.A1(decoded3[2]), .A2(n_0_0_67), .B1(decoded2[2]), .B2(
      n_0_0_66), .ZN(n_0_0_5));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_7), .A2(n_0_0_6), .ZN(MDR2_reg[3]));
   AOI22_X1 i_0_0_11 (.A1(temp3[3]), .A2(n_0_0_64), .B1(temp2[3]), .B2(n_0_0_63), 
      .ZN(n_0_0_6));
   AOI22_X1 i_0_0_12 (.A1(decoded3[3]), .A2(n_0_0_67), .B1(decoded2[3]), 
      .B2(n_0_0_66), .ZN(n_0_0_7));
   NAND2_X1 i_0_0_13 (.A1(n_0_0_9), .A2(n_0_0_8), .ZN(MDR2_reg[4]));
   AOI22_X1 i_0_0_14 (.A1(temp3[4]), .A2(n_0_0_64), .B1(temp2[4]), .B2(n_0_0_63), 
      .ZN(n_0_0_8));
   AOI22_X1 i_0_0_15 (.A1(decoded3[4]), .A2(n_0_0_67), .B1(decoded2[4]), 
      .B2(n_0_0_66), .ZN(n_0_0_9));
   NAND2_X1 i_0_0_16 (.A1(n_0_0_11), .A2(n_0_0_10), .ZN(MDR2_reg[5]));
   AOI22_X1 i_0_0_17 (.A1(temp3[5]), .A2(n_0_0_64), .B1(temp2[5]), .B2(n_0_0_63), 
      .ZN(n_0_0_10));
   AOI22_X1 i_0_0_18 (.A1(decoded3[5]), .A2(n_0_0_67), .B1(decoded2[5]), 
      .B2(n_0_0_66), .ZN(n_0_0_11));
   NAND2_X1 i_0_0_19 (.A1(n_0_0_13), .A2(n_0_0_12), .ZN(MDR2_reg[6]));
   AOI22_X1 i_0_0_20 (.A1(temp3[6]), .A2(n_0_0_64), .B1(temp2[6]), .B2(n_0_0_63), 
      .ZN(n_0_0_12));
   AOI22_X1 i_0_0_21 (.A1(decoded3[6]), .A2(n_0_0_67), .B1(decoded2[6]), 
      .B2(n_0_0_66), .ZN(n_0_0_13));
   NAND2_X1 i_0_0_22 (.A1(n_0_0_15), .A2(n_0_0_14), .ZN(MDR2_reg[7]));
   AOI22_X1 i_0_0_23 (.A1(temp3[7]), .A2(n_0_0_64), .B1(temp2[7]), .B2(n_0_0_63), 
      .ZN(n_0_0_14));
   AOI22_X1 i_0_0_24 (.A1(decoded3[7]), .A2(n_0_0_67), .B1(decoded2[7]), 
      .B2(n_0_0_66), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_17), .A2(n_0_0_16), .ZN(MDR2_reg[8]));
   AOI22_X1 i_0_0_26 (.A1(temp3[8]), .A2(n_0_0_64), .B1(temp2[8]), .B2(n_0_0_63), 
      .ZN(n_0_0_16));
   AOI22_X1 i_0_0_27 (.A1(decoded3[8]), .A2(n_0_0_67), .B1(decoded2[8]), 
      .B2(n_0_0_66), .ZN(n_0_0_17));
   NAND2_X1 i_0_0_28 (.A1(n_0_0_19), .A2(n_0_0_18), .ZN(MDR2_reg[9]));
   AOI22_X1 i_0_0_29 (.A1(temp3[9]), .A2(n_0_0_64), .B1(temp2[9]), .B2(n_0_0_63), 
      .ZN(n_0_0_18));
   AOI22_X1 i_0_0_30 (.A1(decoded3[9]), .A2(n_0_0_67), .B1(decoded2[9]), 
      .B2(n_0_0_66), .ZN(n_0_0_19));
   NAND2_X1 i_0_0_31 (.A1(n_0_0_21), .A2(n_0_0_20), .ZN(MDR2_reg[10]));
   AOI22_X1 i_0_0_32 (.A1(temp3[10]), .A2(n_0_0_64), .B1(temp2[10]), .B2(
      n_0_0_63), .ZN(n_0_0_20));
   AOI22_X1 i_0_0_33 (.A1(decoded3[10]), .A2(n_0_0_67), .B1(decoded2[10]), 
      .B2(n_0_0_66), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_34 (.A1(n_0_0_23), .A2(n_0_0_22), .ZN(MDR2_reg[11]));
   AOI22_X1 i_0_0_35 (.A1(temp3[11]), .A2(n_0_0_64), .B1(temp2[11]), .B2(
      n_0_0_63), .ZN(n_0_0_22));
   AOI22_X1 i_0_0_36 (.A1(decoded3[11]), .A2(n_0_0_67), .B1(decoded2[11]), 
      .B2(n_0_0_66), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_37 (.A1(n_0_0_25), .A2(n_0_0_24), .ZN(MDR2_reg[12]));
   AOI22_X1 i_0_0_38 (.A1(temp3[12]), .A2(n_0_0_64), .B1(temp2[12]), .B2(
      n_0_0_63), .ZN(n_0_0_24));
   AOI22_X1 i_0_0_39 (.A1(decoded3[12]), .A2(n_0_0_67), .B1(decoded2[12]), 
      .B2(n_0_0_66), .ZN(n_0_0_25));
   NAND2_X1 i_0_0_40 (.A1(n_0_0_27), .A2(n_0_0_26), .ZN(MDR2_reg[13]));
   AOI22_X1 i_0_0_41 (.A1(temp3[13]), .A2(n_0_0_64), .B1(temp2[13]), .B2(
      n_0_0_63), .ZN(n_0_0_26));
   AOI22_X1 i_0_0_42 (.A1(decoded3[13]), .A2(n_0_0_67), .B1(decoded2[13]), 
      .B2(n_0_0_66), .ZN(n_0_0_27));
   NAND2_X1 i_0_0_43 (.A1(n_0_0_29), .A2(n_0_0_28), .ZN(MDR2_reg[14]));
   AOI22_X1 i_0_0_44 (.A1(temp3[14]), .A2(n_0_0_64), .B1(temp2[14]), .B2(
      n_0_0_63), .ZN(n_0_0_28));
   AOI22_X1 i_0_0_45 (.A1(decoded3[14]), .A2(n_0_0_67), .B1(decoded2[14]), 
      .B2(n_0_0_66), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_46 (.A1(n_0_0_31), .A2(n_0_0_30), .ZN(MDR2_reg[15]));
   AOI22_X1 i_0_0_47 (.A1(temp3[15]), .A2(n_0_0_64), .B1(temp2[15]), .B2(
      n_0_0_63), .ZN(n_0_0_30));
   AOI22_X1 i_0_0_48 (.A1(decoded3[15]), .A2(n_0_0_67), .B1(decoded2[15]), 
      .B2(n_0_0_66), .ZN(n_0_0_31));
   NAND2_X1 i_0_0_49 (.A1(n_0_0_33), .A2(n_0_0_32), .ZN(MDR2_reg[16]));
   AOI22_X1 i_0_0_50 (.A1(temp3[16]), .A2(n_0_0_64), .B1(temp2[16]), .B2(
      n_0_0_63), .ZN(n_0_0_32));
   AOI22_X1 i_0_0_51 (.A1(decoded3[16]), .A2(n_0_0_67), .B1(decoded2[16]), 
      .B2(n_0_0_66), .ZN(n_0_0_33));
   NAND2_X1 i_0_0_52 (.A1(n_0_0_35), .A2(n_0_0_34), .ZN(MDR2_reg[17]));
   AOI22_X1 i_0_0_53 (.A1(temp3[17]), .A2(n_0_0_64), .B1(temp2[17]), .B2(
      n_0_0_63), .ZN(n_0_0_34));
   AOI22_X1 i_0_0_54 (.A1(decoded3[17]), .A2(n_0_0_67), .B1(decoded2[17]), 
      .B2(n_0_0_66), .ZN(n_0_0_35));
   NAND2_X1 i_0_0_55 (.A1(n_0_0_37), .A2(n_0_0_36), .ZN(MDR2_reg[18]));
   AOI22_X1 i_0_0_56 (.A1(temp3[18]), .A2(n_0_0_64), .B1(temp2[18]), .B2(
      n_0_0_63), .ZN(n_0_0_36));
   AOI22_X1 i_0_0_57 (.A1(decoded3[18]), .A2(n_0_0_67), .B1(decoded2[18]), 
      .B2(n_0_0_66), .ZN(n_0_0_37));
   NAND2_X1 i_0_0_58 (.A1(n_0_0_39), .A2(n_0_0_38), .ZN(MDR2_reg[19]));
   AOI22_X1 i_0_0_59 (.A1(temp3[19]), .A2(n_0_0_64), .B1(temp2[19]), .B2(
      n_0_0_63), .ZN(n_0_0_38));
   AOI22_X1 i_0_0_60 (.A1(decoded3[19]), .A2(n_0_0_67), .B1(decoded2[19]), 
      .B2(n_0_0_66), .ZN(n_0_0_39));
   NAND2_X1 i_0_0_61 (.A1(n_0_0_41), .A2(n_0_0_40), .ZN(MDR2_reg[20]));
   AOI22_X1 i_0_0_62 (.A1(temp3[20]), .A2(n_0_0_64), .B1(temp2[20]), .B2(
      n_0_0_63), .ZN(n_0_0_40));
   AOI22_X1 i_0_0_63 (.A1(decoded3[20]), .A2(n_0_0_67), .B1(decoded2[20]), 
      .B2(n_0_0_66), .ZN(n_0_0_41));
   NAND2_X1 i_0_0_64 (.A1(n_0_0_43), .A2(n_0_0_42), .ZN(MDR2_reg[21]));
   AOI22_X1 i_0_0_65 (.A1(temp3[21]), .A2(n_0_0_64), .B1(temp2[21]), .B2(
      n_0_0_63), .ZN(n_0_0_42));
   AOI22_X1 i_0_0_66 (.A1(decoded3[21]), .A2(n_0_0_67), .B1(decoded2[21]), 
      .B2(n_0_0_66), .ZN(n_0_0_43));
   NAND2_X1 i_0_0_67 (.A1(n_0_0_45), .A2(n_0_0_44), .ZN(MDR2_reg[22]));
   AOI22_X1 i_0_0_68 (.A1(temp3[22]), .A2(n_0_0_64), .B1(temp2[22]), .B2(
      n_0_0_63), .ZN(n_0_0_44));
   AOI22_X1 i_0_0_69 (.A1(decoded3[22]), .A2(n_0_0_67), .B1(decoded2[22]), 
      .B2(n_0_0_66), .ZN(n_0_0_45));
   NAND2_X1 i_0_0_70 (.A1(n_0_0_47), .A2(n_0_0_46), .ZN(MDR2_reg[23]));
   AOI22_X1 i_0_0_71 (.A1(temp3[23]), .A2(n_0_0_64), .B1(temp2[23]), .B2(
      n_0_0_63), .ZN(n_0_0_46));
   AOI22_X1 i_0_0_72 (.A1(decoded3[23]), .A2(n_0_0_67), .B1(decoded2[23]), 
      .B2(n_0_0_66), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_73 (.A1(n_0_0_49), .A2(n_0_0_48), .ZN(MDR2_reg[24]));
   AOI22_X1 i_0_0_74 (.A1(temp3[24]), .A2(n_0_0_64), .B1(temp2[24]), .B2(
      n_0_0_63), .ZN(n_0_0_48));
   AOI22_X1 i_0_0_75 (.A1(decoded3[24]), .A2(n_0_0_67), .B1(decoded2[24]), 
      .B2(n_0_0_66), .ZN(n_0_0_49));
   NAND2_X1 i_0_0_76 (.A1(n_0_0_51), .A2(n_0_0_50), .ZN(MDR2_reg[25]));
   AOI22_X1 i_0_0_77 (.A1(temp3[25]), .A2(n_0_0_64), .B1(temp2[25]), .B2(
      n_0_0_63), .ZN(n_0_0_50));
   AOI22_X1 i_0_0_78 (.A1(decoded3[25]), .A2(n_0_0_67), .B1(decoded2[25]), 
      .B2(n_0_0_66), .ZN(n_0_0_51));
   NAND2_X1 i_0_0_79 (.A1(n_0_0_53), .A2(n_0_0_52), .ZN(MDR2_reg[26]));
   AOI22_X1 i_0_0_80 (.A1(temp3[26]), .A2(n_0_0_64), .B1(temp2[26]), .B2(
      n_0_0_63), .ZN(n_0_0_52));
   AOI22_X1 i_0_0_81 (.A1(decoded3[26]), .A2(n_0_0_67), .B1(decoded2[26]), 
      .B2(n_0_0_66), .ZN(n_0_0_53));
   NAND2_X1 i_0_0_82 (.A1(n_0_0_55), .A2(n_0_0_54), .ZN(MDR2_reg[27]));
   AOI22_X1 i_0_0_83 (.A1(temp3[27]), .A2(n_0_0_64), .B1(temp2[27]), .B2(
      n_0_0_63), .ZN(n_0_0_54));
   AOI22_X1 i_0_0_84 (.A1(decoded3[27]), .A2(n_0_0_67), .B1(decoded2[27]), 
      .B2(n_0_0_66), .ZN(n_0_0_55));
   NAND2_X1 i_0_0_85 (.A1(n_0_0_57), .A2(n_0_0_56), .ZN(MDR2_reg[28]));
   AOI22_X1 i_0_0_86 (.A1(temp3[28]), .A2(n_0_0_64), .B1(temp2[28]), .B2(
      n_0_0_63), .ZN(n_0_0_56));
   AOI22_X1 i_0_0_87 (.A1(decoded3[28]), .A2(n_0_0_67), .B1(decoded2[28]), 
      .B2(n_0_0_66), .ZN(n_0_0_57));
   NAND2_X1 i_0_0_88 (.A1(n_0_0_59), .A2(n_0_0_58), .ZN(MDR2_reg[29]));
   AOI22_X1 i_0_0_89 (.A1(temp3[29]), .A2(n_0_0_64), .B1(temp2[29]), .B2(
      n_0_0_63), .ZN(n_0_0_58));
   AOI22_X1 i_0_0_90 (.A1(decoded3[29]), .A2(n_0_0_67), .B1(decoded2[29]), 
      .B2(n_0_0_66), .ZN(n_0_0_59));
   NAND2_X1 i_0_0_91 (.A1(n_0_0_61), .A2(n_0_0_60), .ZN(MDR2_reg[30]));
   AOI22_X1 i_0_0_92 (.A1(temp3[30]), .A2(n_0_0_64), .B1(temp2[30]), .B2(
      n_0_0_63), .ZN(n_0_0_60));
   AOI22_X1 i_0_0_93 (.A1(decoded3[30]), .A2(n_0_0_67), .B1(decoded2[30]), 
      .B2(n_0_0_66), .ZN(n_0_0_61));
   NAND2_X1 i_0_0_94 (.A1(n_0_0_65), .A2(n_0_0_62), .ZN(MDR2_reg[31]));
   AOI22_X1 i_0_0_95 (.A1(temp3[31]), .A2(n_0_0_64), .B1(temp2[31]), .B2(
      n_0_0_63), .ZN(n_0_0_62));
   AND2_X1 i_0_0_96 (.A1(select2[1]), .A2(addr2_reg[1]), .ZN(n_0_0_63));
   AND2_X1 i_0_0_97 (.A1(select2[1]), .A2(select2[0]), .ZN(n_0_0_64));
   AOI22_X1 i_0_0_98 (.A1(decoded3[31]), .A2(n_0_0_67), .B1(decoded2[31]), 
      .B2(n_0_0_66), .ZN(n_0_0_65));
   NOR2_X1 i_0_0_99 (.A1(select2[1]), .A2(select2[0]), .ZN(n_0_0_66));
   NOR2_X1 i_0_0_100 (.A1(select2[1]), .A2(addr2_reg[1]), .ZN(n_0_0_67));
   NAND2_X1 i_0_0_101 (.A1(n_0_0_69), .A2(n_0_0_68), .ZN(MDR1_reg[0]));
   AOI22_X1 i_0_0_102 (.A1(temp4[0]), .A2(n_0_0_132), .B1(temp1[0]), .B2(
      n_0_0_131), .ZN(n_0_0_68));
   AOI22_X1 i_0_0_103 (.A1(decoded4[0]), .A2(n_0_0_135), .B1(decoded1[0]), 
      .B2(n_0_0_134), .ZN(n_0_0_69));
   NAND2_X1 i_0_0_104 (.A1(n_0_0_71), .A2(n_0_0_70), .ZN(MDR1_reg[1]));
   AOI22_X1 i_0_0_105 (.A1(temp4[1]), .A2(n_0_0_132), .B1(temp1[1]), .B2(
      n_0_0_131), .ZN(n_0_0_70));
   AOI22_X1 i_0_0_106 (.A1(decoded4[1]), .A2(n_0_0_135), .B1(decoded1[1]), 
      .B2(n_0_0_134), .ZN(n_0_0_71));
   NAND2_X1 i_0_0_107 (.A1(n_0_0_73), .A2(n_0_0_72), .ZN(MDR1_reg[2]));
   AOI22_X1 i_0_0_108 (.A1(temp4[2]), .A2(n_0_0_132), .B1(temp1[2]), .B2(
      n_0_0_131), .ZN(n_0_0_72));
   AOI22_X1 i_0_0_109 (.A1(decoded4[2]), .A2(n_0_0_135), .B1(decoded1[2]), 
      .B2(n_0_0_134), .ZN(n_0_0_73));
   NAND2_X1 i_0_0_110 (.A1(n_0_0_75), .A2(n_0_0_74), .ZN(MDR1_reg[3]));
   AOI22_X1 i_0_0_111 (.A1(temp4[3]), .A2(n_0_0_132), .B1(temp1[3]), .B2(
      n_0_0_131), .ZN(n_0_0_74));
   AOI22_X1 i_0_0_112 (.A1(decoded4[3]), .A2(n_0_0_135), .B1(decoded1[3]), 
      .B2(n_0_0_134), .ZN(n_0_0_75));
   NAND2_X1 i_0_0_113 (.A1(n_0_0_77), .A2(n_0_0_76), .ZN(MDR1_reg[4]));
   AOI22_X1 i_0_0_114 (.A1(temp4[4]), .A2(n_0_0_132), .B1(temp1[4]), .B2(
      n_0_0_131), .ZN(n_0_0_76));
   AOI22_X1 i_0_0_115 (.A1(decoded4[4]), .A2(n_0_0_135), .B1(decoded1[4]), 
      .B2(n_0_0_134), .ZN(n_0_0_77));
   NAND2_X1 i_0_0_116 (.A1(n_0_0_79), .A2(n_0_0_78), .ZN(MDR1_reg[5]));
   AOI22_X1 i_0_0_117 (.A1(temp4[5]), .A2(n_0_0_132), .B1(temp1[5]), .B2(
      n_0_0_131), .ZN(n_0_0_78));
   AOI22_X1 i_0_0_118 (.A1(decoded4[5]), .A2(n_0_0_135), .B1(decoded1[5]), 
      .B2(n_0_0_134), .ZN(n_0_0_79));
   NAND2_X1 i_0_0_119 (.A1(n_0_0_81), .A2(n_0_0_80), .ZN(MDR1_reg[6]));
   AOI22_X1 i_0_0_120 (.A1(temp4[6]), .A2(n_0_0_132), .B1(temp1[6]), .B2(
      n_0_0_131), .ZN(n_0_0_80));
   AOI22_X1 i_0_0_121 (.A1(decoded4[6]), .A2(n_0_0_135), .B1(decoded1[6]), 
      .B2(n_0_0_134), .ZN(n_0_0_81));
   NAND2_X1 i_0_0_122 (.A1(n_0_0_83), .A2(n_0_0_82), .ZN(MDR1_reg[7]));
   AOI22_X1 i_0_0_123 (.A1(temp4[7]), .A2(n_0_0_132), .B1(temp1[7]), .B2(
      n_0_0_131), .ZN(n_0_0_82));
   AOI22_X1 i_0_0_124 (.A1(decoded4[7]), .A2(n_0_0_135), .B1(decoded1[7]), 
      .B2(n_0_0_134), .ZN(n_0_0_83));
   NAND2_X1 i_0_0_125 (.A1(n_0_0_85), .A2(n_0_0_84), .ZN(MDR1_reg[8]));
   AOI22_X1 i_0_0_126 (.A1(temp4[8]), .A2(n_0_0_132), .B1(temp1[8]), .B2(
      n_0_0_131), .ZN(n_0_0_84));
   AOI22_X1 i_0_0_127 (.A1(decoded4[8]), .A2(n_0_0_135), .B1(decoded1[8]), 
      .B2(n_0_0_134), .ZN(n_0_0_85));
   NAND2_X1 i_0_0_128 (.A1(n_0_0_87), .A2(n_0_0_86), .ZN(MDR1_reg[9]));
   AOI22_X1 i_0_0_129 (.A1(temp4[9]), .A2(n_0_0_132), .B1(temp1[9]), .B2(
      n_0_0_131), .ZN(n_0_0_86));
   AOI22_X1 i_0_0_130 (.A1(decoded4[9]), .A2(n_0_0_135), .B1(decoded1[9]), 
      .B2(n_0_0_134), .ZN(n_0_0_87));
   NAND2_X1 i_0_0_131 (.A1(n_0_0_89), .A2(n_0_0_88), .ZN(MDR1_reg[10]));
   AOI22_X1 i_0_0_132 (.A1(temp4[10]), .A2(n_0_0_132), .B1(temp1[10]), .B2(
      n_0_0_131), .ZN(n_0_0_88));
   AOI22_X1 i_0_0_133 (.A1(decoded4[10]), .A2(n_0_0_135), .B1(decoded1[10]), 
      .B2(n_0_0_134), .ZN(n_0_0_89));
   NAND2_X1 i_0_0_134 (.A1(n_0_0_91), .A2(n_0_0_90), .ZN(MDR1_reg[11]));
   AOI22_X1 i_0_0_135 (.A1(temp4[11]), .A2(n_0_0_132), .B1(temp1[11]), .B2(
      n_0_0_131), .ZN(n_0_0_90));
   AOI22_X1 i_0_0_136 (.A1(decoded4[11]), .A2(n_0_0_135), .B1(decoded1[11]), 
      .B2(n_0_0_134), .ZN(n_0_0_91));
   NAND2_X1 i_0_0_137 (.A1(n_0_0_93), .A2(n_0_0_92), .ZN(MDR1_reg[12]));
   AOI22_X1 i_0_0_138 (.A1(temp4[12]), .A2(n_0_0_132), .B1(temp1[12]), .B2(
      n_0_0_131), .ZN(n_0_0_92));
   AOI22_X1 i_0_0_139 (.A1(decoded4[12]), .A2(n_0_0_135), .B1(decoded1[12]), 
      .B2(n_0_0_134), .ZN(n_0_0_93));
   NAND2_X1 i_0_0_140 (.A1(n_0_0_95), .A2(n_0_0_94), .ZN(MDR1_reg[13]));
   AOI22_X1 i_0_0_141 (.A1(temp4[13]), .A2(n_0_0_132), .B1(temp1[13]), .B2(
      n_0_0_131), .ZN(n_0_0_94));
   AOI22_X1 i_0_0_142 (.A1(decoded4[13]), .A2(n_0_0_135), .B1(decoded1[13]), 
      .B2(n_0_0_134), .ZN(n_0_0_95));
   NAND2_X1 i_0_0_143 (.A1(n_0_0_97), .A2(n_0_0_96), .ZN(MDR1_reg[14]));
   AOI22_X1 i_0_0_144 (.A1(temp4[14]), .A2(n_0_0_132), .B1(temp1[14]), .B2(
      n_0_0_131), .ZN(n_0_0_96));
   AOI22_X1 i_0_0_145 (.A1(decoded4[14]), .A2(n_0_0_135), .B1(decoded1[14]), 
      .B2(n_0_0_134), .ZN(n_0_0_97));
   NAND2_X1 i_0_0_146 (.A1(n_0_0_99), .A2(n_0_0_98), .ZN(MDR1_reg[15]));
   AOI22_X1 i_0_0_147 (.A1(temp4[15]), .A2(n_0_0_132), .B1(temp1[15]), .B2(
      n_0_0_131), .ZN(n_0_0_98));
   AOI22_X1 i_0_0_148 (.A1(decoded4[15]), .A2(n_0_0_135), .B1(decoded1[15]), 
      .B2(n_0_0_134), .ZN(n_0_0_99));
   NAND2_X1 i_0_0_149 (.A1(n_0_0_101), .A2(n_0_0_100), .ZN(MDR1_reg[16]));
   AOI22_X1 i_0_0_150 (.A1(temp4[16]), .A2(n_0_0_132), .B1(temp1[16]), .B2(
      n_0_0_131), .ZN(n_0_0_100));
   AOI22_X1 i_0_0_151 (.A1(decoded4[16]), .A2(n_0_0_135), .B1(decoded1[16]), 
      .B2(n_0_0_134), .ZN(n_0_0_101));
   NAND2_X1 i_0_0_152 (.A1(n_0_0_103), .A2(n_0_0_102), .ZN(MDR1_reg[17]));
   AOI22_X1 i_0_0_153 (.A1(temp4[17]), .A2(n_0_0_132), .B1(temp1[17]), .B2(
      n_0_0_131), .ZN(n_0_0_102));
   AOI22_X1 i_0_0_154 (.A1(decoded4[17]), .A2(n_0_0_135), .B1(decoded1[17]), 
      .B2(n_0_0_134), .ZN(n_0_0_103));
   NAND2_X1 i_0_0_155 (.A1(n_0_0_105), .A2(n_0_0_104), .ZN(MDR1_reg[18]));
   AOI22_X1 i_0_0_156 (.A1(temp4[18]), .A2(n_0_0_132), .B1(temp1[18]), .B2(
      n_0_0_131), .ZN(n_0_0_104));
   AOI22_X1 i_0_0_157 (.A1(decoded4[18]), .A2(n_0_0_135), .B1(decoded1[18]), 
      .B2(n_0_0_134), .ZN(n_0_0_105));
   NAND2_X1 i_0_0_158 (.A1(n_0_0_107), .A2(n_0_0_106), .ZN(MDR1_reg[19]));
   AOI22_X1 i_0_0_159 (.A1(temp4[19]), .A2(n_0_0_132), .B1(temp1[19]), .B2(
      n_0_0_131), .ZN(n_0_0_106));
   AOI22_X1 i_0_0_160 (.A1(decoded4[19]), .A2(n_0_0_135), .B1(decoded1[19]), 
      .B2(n_0_0_134), .ZN(n_0_0_107));
   NAND2_X1 i_0_0_161 (.A1(n_0_0_109), .A2(n_0_0_108), .ZN(MDR1_reg[20]));
   AOI22_X1 i_0_0_162 (.A1(temp4[20]), .A2(n_0_0_132), .B1(temp1[20]), .B2(
      n_0_0_131), .ZN(n_0_0_108));
   AOI22_X1 i_0_0_163 (.A1(decoded4[20]), .A2(n_0_0_135), .B1(decoded1[20]), 
      .B2(n_0_0_134), .ZN(n_0_0_109));
   NAND2_X1 i_0_0_164 (.A1(n_0_0_111), .A2(n_0_0_110), .ZN(MDR1_reg[21]));
   AOI22_X1 i_0_0_165 (.A1(temp4[21]), .A2(n_0_0_132), .B1(temp1[21]), .B2(
      n_0_0_131), .ZN(n_0_0_110));
   AOI22_X1 i_0_0_166 (.A1(decoded4[21]), .A2(n_0_0_135), .B1(decoded1[21]), 
      .B2(n_0_0_134), .ZN(n_0_0_111));
   NAND2_X1 i_0_0_167 (.A1(n_0_0_113), .A2(n_0_0_112), .ZN(MDR1_reg[22]));
   AOI22_X1 i_0_0_168 (.A1(temp4[22]), .A2(n_0_0_132), .B1(temp1[22]), .B2(
      n_0_0_131), .ZN(n_0_0_112));
   AOI22_X1 i_0_0_169 (.A1(decoded4[22]), .A2(n_0_0_135), .B1(decoded1[22]), 
      .B2(n_0_0_134), .ZN(n_0_0_113));
   NAND2_X1 i_0_0_170 (.A1(n_0_0_115), .A2(n_0_0_114), .ZN(MDR1_reg[23]));
   AOI22_X1 i_0_0_171 (.A1(temp4[23]), .A2(n_0_0_132), .B1(temp1[23]), .B2(
      n_0_0_131), .ZN(n_0_0_114));
   AOI22_X1 i_0_0_172 (.A1(decoded4[23]), .A2(n_0_0_135), .B1(decoded1[23]), 
      .B2(n_0_0_134), .ZN(n_0_0_115));
   NAND2_X1 i_0_0_173 (.A1(n_0_0_117), .A2(n_0_0_116), .ZN(MDR1_reg[24]));
   AOI22_X1 i_0_0_174 (.A1(temp4[24]), .A2(n_0_0_132), .B1(temp1[24]), .B2(
      n_0_0_131), .ZN(n_0_0_116));
   AOI22_X1 i_0_0_175 (.A1(decoded4[24]), .A2(n_0_0_135), .B1(decoded1[24]), 
      .B2(n_0_0_134), .ZN(n_0_0_117));
   NAND2_X1 i_0_0_176 (.A1(n_0_0_119), .A2(n_0_0_118), .ZN(MDR1_reg[25]));
   AOI22_X1 i_0_0_177 (.A1(temp4[25]), .A2(n_0_0_132), .B1(temp1[25]), .B2(
      n_0_0_131), .ZN(n_0_0_118));
   AOI22_X1 i_0_0_178 (.A1(decoded4[25]), .A2(n_0_0_135), .B1(decoded1[25]), 
      .B2(n_0_0_134), .ZN(n_0_0_119));
   NAND2_X1 i_0_0_179 (.A1(n_0_0_121), .A2(n_0_0_120), .ZN(MDR1_reg[26]));
   AOI22_X1 i_0_0_180 (.A1(temp4[26]), .A2(n_0_0_132), .B1(temp1[26]), .B2(
      n_0_0_131), .ZN(n_0_0_120));
   AOI22_X1 i_0_0_181 (.A1(decoded4[26]), .A2(n_0_0_135), .B1(decoded1[26]), 
      .B2(n_0_0_134), .ZN(n_0_0_121));
   NAND2_X1 i_0_0_182 (.A1(n_0_0_123), .A2(n_0_0_122), .ZN(MDR1_reg[27]));
   AOI22_X1 i_0_0_183 (.A1(temp4[27]), .A2(n_0_0_132), .B1(temp1[27]), .B2(
      n_0_0_131), .ZN(n_0_0_122));
   AOI22_X1 i_0_0_184 (.A1(decoded4[27]), .A2(n_0_0_135), .B1(decoded1[27]), 
      .B2(n_0_0_134), .ZN(n_0_0_123));
   NAND2_X1 i_0_0_185 (.A1(n_0_0_125), .A2(n_0_0_124), .ZN(MDR1_reg[28]));
   AOI22_X1 i_0_0_186 (.A1(temp4[28]), .A2(n_0_0_132), .B1(temp1[28]), .B2(
      n_0_0_131), .ZN(n_0_0_124));
   AOI22_X1 i_0_0_187 (.A1(decoded4[28]), .A2(n_0_0_135), .B1(decoded1[28]), 
      .B2(n_0_0_134), .ZN(n_0_0_125));
   NAND2_X1 i_0_0_188 (.A1(n_0_0_127), .A2(n_0_0_126), .ZN(MDR1_reg[29]));
   AOI22_X1 i_0_0_189 (.A1(temp4[29]), .A2(n_0_0_132), .B1(temp1[29]), .B2(
      n_0_0_131), .ZN(n_0_0_126));
   AOI22_X1 i_0_0_190 (.A1(decoded4[29]), .A2(n_0_0_135), .B1(decoded1[29]), 
      .B2(n_0_0_134), .ZN(n_0_0_127));
   NAND2_X1 i_0_0_191 (.A1(n_0_0_129), .A2(n_0_0_128), .ZN(MDR1_reg[30]));
   AOI22_X1 i_0_0_192 (.A1(temp4[30]), .A2(n_0_0_132), .B1(temp1[30]), .B2(
      n_0_0_131), .ZN(n_0_0_128));
   AOI22_X1 i_0_0_193 (.A1(decoded4[30]), .A2(n_0_0_135), .B1(decoded1[30]), 
      .B2(n_0_0_134), .ZN(n_0_0_129));
   NAND2_X1 i_0_0_194 (.A1(n_0_0_133), .A2(n_0_0_130), .ZN(MDR1_reg[31]));
   AOI22_X1 i_0_0_195 (.A1(temp4[31]), .A2(n_0_0_132), .B1(temp1[31]), .B2(
      n_0_0_131), .ZN(n_0_0_130));
   AND2_X1 i_0_0_196 (.A1(select1[1]), .A2(n_0), .ZN(n_0_0_131));
   AND2_X1 i_0_0_197 (.A1(select1[1]), .A2(select1[0]), .ZN(n_0_0_132));
   AOI22_X1 i_0_0_198 (.A1(decoded4[31]), .A2(n_0_0_135), .B1(decoded1[31]), 
      .B2(n_0_0_134), .ZN(n_0_0_133));
   NOR2_X1 i_0_0_199 (.A1(select1[1]), .A2(select1[0]), .ZN(n_0_0_134));
   NOR2_X1 i_0_0_200 (.A1(select1[1]), .A2(n_0), .ZN(n_0_0_135));
   INV_X1 i_0_0_201 (.A(next), .ZN(n_0_0));
   INV_X1 i_0_0_202 (.A(reset), .ZN(n_0_1));
   INV_X1 i_0_0_203 (.A(select2[0]), .ZN(addr2_reg[1]));
   INV_X1 i_0_0_204 (.A(select1[0]), .ZN(n_0));
   DFFR_X1 \counter2_reg[0]  (.D(n_0_3), .RN(n_0_1), .CK(clk), .Q(out_addr[0]), 
      .QN());
   DFFR_X1 \counter2_reg[1]  (.D(n_0_2), .RN(n_0_1), .CK(clk), .Q(out_addr[1]), 
      .QN());
   XOR2_X1 i_0_1_0 (.A(out_addr[0]), .B(out), .Z(n_0_3));
   MUX2_X1 i_0_1_1 (.A(out_addr[1]), .B(counter3[1]), .S(out), .Z(n_0_2));
endmodule
