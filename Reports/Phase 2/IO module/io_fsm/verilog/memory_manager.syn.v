/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sat Apr 25 20:19:47 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3086036574 */

module adder__0_33(A, B, is_subtract, result, carry, overflow_flag, negative);
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

module adder(A, B, is_subtract, result, carry, overflow_flag, negative);
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
   wire n_0_19;
   wire [1:0]counter;
   wire n_0_12;
   wire n_0_13;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_18;
   wire n_0_17;
   wire n_0_0_0;
   wire n_0_14;
   wire n_0_0_1;
   wire n_0_15;
   wire n_0_0_2;
   wire n_0_16;
   wire n_0_0_3;
   wire n_0_7;
   wire n_0_0_4;
   wire n_0_8;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_9;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_6;
   wire n_0_5;
   wire n_0_4;
   wire n_0_0_9;
   wire n_0_10;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_11;

   assign out1[7] = data[7];
   assign out1[6] = data[6];
   assign out1[5] = data[5];
   assign out1[4] = data[4];
   assign out1[3] = data[3];
   assign out1[2] = data[2];
   assign out1[1] = data[1];
   assign out1[0] = data[0];
   assign out2[7] = data[15];
   assign out2[6] = data[14];
   assign out2[5] = data[13];
   assign out2[4] = data[12];
   assign out2[3] = data[11];
   assign out2[2] = data[10];
   assign out2[1] = data[9];
   assign out2[0] = data[8];
   assign out3[7] = data[23];
   assign out3[6] = data[22];
   assign out3[5] = data[21];
   assign out3[4] = data[20];
   assign out3[3] = data[19];
   assign out3[2] = data[18];
   assign out3[1] = data[17];
   assign out3[0] = data[16];
   assign out4[7] = data[31];
   assign out4[6] = data[30];
   assign out4[5] = data[29];
   assign out4[4] = data[28];
   assign out4[3] = data[27];
   assign out4[2] = data[26];
   assign out4[1] = data[25];
   assign out4[0] = data[24];

   adder__0_33 add2 (.A(counter2), .B(), .is_subtract(), .result(temp2), .carry(), 
      .overflow_flag(), .negative());
   adder add1 (.A(counter), .B(), .is_subtract(), .result({temp[1], uc_0}), 
      .carry(), .overflow_flag(), .negative());
   DFFR_X1 \current_state_reg[1]  (.D(next_state[1]), .RN(n_0_11), .CK(clk), 
      .Q(current_state[1]), .QN());
   DFFR_X1 \current_state_reg[0]  (.D(next_state[0]), .RN(n_0_11), .CK(clk), 
      .Q(current_state[0]), .QN());
   DLH_X1 next_reg (.D(n_0_4), .G(n_0_10), .Q(next));
   DLH_X1 \start_reg[3]  (.D(n_0_3), .G(n_0_5), .Q(start[3]));
   DLH_X1 \start_reg[2]  (.D(n_0_2), .G(n_0_5), .Q(start[2]));
   DLH_X1 \start_reg[1]  (.D(n_0_1), .G(n_0_5), .Q(start[1]));
   DLH_X1 \start_reg[0]  (.D(n_0_0), .G(n_0_5), .Q(start[0]));
   DLH_X1 \counter2_reg[1]  (.D(temp2[1]), .G(n_0_6), .Q(counter2[1]));
   DLH_X1 \counter2_reg[0]  (.D(temp2[0]), .G(n_0_6), .Q(counter2[0]));
   DLH_X1 \next_state_reg[1]  (.D(n_0_19), .G(n_0_17), .Q(next_state[1]));
   DLH_X1 \next_state_reg[0]  (.D(n_0_18), .G(n_0_17), .Q(next_state[0]));
   DLH_X1 \finish_reg[2]  (.D(n_0_16), .G(n_0_9), .Q(finish[2]));
   DLH_X1 \finish_reg[1]  (.D(n_0_15), .G(n_0_8), .Q(finish[1]));
   DLH_X1 \finish_reg[0]  (.D(n_0_14), .G(n_0_7), .Q(finish[0]));
   INV_X1 i_0_16 (.A(n_0_18), .ZN(n_0_19));
   DFFR_X1 \counter_reg[0]  (.D(n_0_13), .RN(n_0_11), .CK(clk), .Q(counter[0]), 
      .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_0_12), .RN(n_0_11), .CK(clk), .Q(counter[1]), 
      .QN());
   MUX2_X1 i_0_0_0 (.A(temp[1]), .B(counter[1]), .S(n_0_0_10), .Z(n_0_12));
   XNOR2_X1 i_0_0_1 (.A(counter[0]), .B(n_0_0_10), .ZN(n_0_13));
   NOR3_X1 i_0_0_2 (.A1(n_0_0_4), .A2(finish[0]), .A3(reset), .ZN(n_0_0));
   NOR3_X1 i_0_0_3 (.A1(n_0_0_4), .A2(finish[1]), .A3(reset), .ZN(n_0_1));
   NOR3_X1 i_0_0_4 (.A1(n_0_0_4), .A2(finish[2]), .A3(reset), .ZN(n_0_2));
   NOR2_X1 i_0_0_5 (.A1(n_0_0_4), .A2(reset), .ZN(n_0_3));
   NOR2_X1 i_0_0_6 (.A1(current_state[1]), .A2(current_state[0]), .ZN(n_0_18));
   AND4_X1 i_0_0_7 (.A1(int), .A2(n_0_0_0), .A3(n_0_11), .A4(n_0_0_13), .ZN(
      n_0_17));
   XNOR2_X1 i_0_0_8 (.A(current_state[0]), .B(process), .ZN(n_0_0_0));
   NOR2_X1 i_0_0_9 (.A1(reset), .A2(n_0_0_1), .ZN(n_0_14));
   NOR2_X1 i_0_0_10 (.A1(eob), .A2(finish[0]), .ZN(n_0_0_1));
   NOR2_X1 i_0_0_11 (.A1(reset), .A2(n_0_0_2), .ZN(n_0_15));
   NOR2_X1 i_0_0_12 (.A1(eob), .A2(finish[1]), .ZN(n_0_0_2));
   AOI211_X1 i_0_0_13 (.A(n_0_0_12), .B(reset), .C1(n_0_0_3), .C2(counter[0]), 
      .ZN(n_0_16));
   NOR2_X1 i_0_0_14 (.A1(eob), .A2(finish[2]), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_15 (.A(n_0_11), .B1(n_0_0_10), .B2(n_0_0_4), .ZN(n_0_7));
   OR2_X1 i_0_0_16 (.A1(counter[1]), .A2(counter[0]), .ZN(n_0_0_4));
   INV_X1 i_0_0_17 (.A(n_0_0_5), .ZN(n_0_8));
   AOI21_X1 i_0_0_18 (.A(reset), .B1(counter[0]), .B2(n_0_0_6), .ZN(n_0_0_5));
   NOR2_X1 i_0_0_19 (.A1(n_0_0_10), .A2(counter[1]), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_20 (.A(n_0_11), .B1(n_0_0_8), .B2(n_0_0_7), .ZN(n_0_9));
   NAND3_X1 i_0_0_21 (.A1(n_0_0_13), .A2(current_state[0]), .A3(counter[1]), 
      .ZN(n_0_0_7));
   AOI21_X1 i_0_0_22 (.A(counter[0]), .B1(n_0_0_11), .B2(counter2[1]), .ZN(
      n_0_0_8));
   NOR4_X1 i_0_0_23 (.A1(n_0_0_10), .A2(n_0_0_9), .A3(reset), .A4(counter[0]), 
      .ZN(n_0_6));
   NAND2_X1 i_0_0_24 (.A1(n_0_11), .A2(n_0_0_10), .ZN(n_0_5));
   NOR2_X1 i_0_0_25 (.A1(n_0_0_9), .A2(counter[0]), .ZN(n_0_4));
   NAND2_X1 i_0_0_26 (.A1(counter[1]), .A2(eob), .ZN(n_0_0_9));
   NOR3_X1 i_0_0_27 (.A1(n_0_0_10), .A2(counter[0]), .A3(reset), .ZN(n_0_10));
   NAND2_X1 i_0_0_28 (.A1(n_0_0_13), .A2(current_state[0]), .ZN(n_0_0_10));
   INV_X1 i_0_0_29 (.A(counter2[0]), .ZN(n_0_0_11));
   INV_X1 i_0_0_30 (.A(counter[1]), .ZN(n_0_0_12));
   INV_X1 i_0_0_31 (.A(current_state[1]), .ZN(n_0_0_13));
   INV_X1 i_0_0_32 (.A(reset), .ZN(n_0_11));
endmodule
