/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Apr 23 16:56:58 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1546139851 */

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

   wire [15:0]A;
   wire n_0_0;
   wire [15:0]multiplicand_buffer;
   wire [16:0]Q;
   wire [3:0]counter;
   wire working;
   wire start_buffer;
   wire n_0_2;
   wire n_0_1;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_0_0;
   wire n_0_9;
   wire n_0_10;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_11;
   wire n_0_12;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_13;
   wire n_0_0_5;
   wire n_0_14;
   wire n_0_0_6;
   wire n_0_15;
   wire n_0_0_7;
   wire n_0_16;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_17;
   wire n_0_18;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_19;
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
   wire n_0_0_66;
   wire n_0_0_67;
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
   wire n_0_0_30;
   wire n_0_0_104;
   wire n_0_0_105;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_0_110;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_0_111;
   wire n_0_28;
   wire n_0_0_112;
   wire n_0_29;
   wire n_0_0_113;
   wire n_0_30;
   wire n_0_0_114;
   wire n_0_31;
   wire n_0_0_115;
   wire n_0_32;
   wire n_0_0_116;
   wire n_0_33;
   wire n_0_0_117;
   wire n_0_34;
   wire n_0_0_118;
   wire n_0_35;
   wire n_0_0_119;
   wire n_0_36;
   wire n_0_0_120;
   wire n_0_37;
   wire n_0_0_121;
   wire n_0_38;
   wire n_0_0_122;
   wire n_0_39;
   wire n_0_0_123;
   wire n_0_40;
   wire n_0_0_124;
   wire n_0_41;
   wire n_0_0_125;
   wire n_0_42;
   wire n_0_0_126;
   wire n_0_0_127;
   wire n_0_0_128;
   wire n_0_0_129;
   wire n_0_3;
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
   wire n_0_60;
   wire n_0_0_132;
   wire n_0_0_133;
   wire n_0_59;
   wire n_0_0_134;
   wire n_0_0_135;
   wire n_0_0_136;
   wire n_0_0_137;
   wire n_0_0_138;
   wire n_0_0_139;
   wire n_0_0_140;
   wire n_0_0_141;
   wire n_0_0_142;
   wire n_0_0_143;
   wire n_0_0_144;
   wire n_0_0_145;
   wire n_0_0_146;
   wire n_0_0_147;
   wire n_0_0_148;
   wire n_0_0_149;
   wire n_0_0_150;
   wire n_0_0_151;
   wire n_0_0_152;
   wire n_0_0_153;
   wire n_0_0_154;
   wire n_0_0_155;
   wire n_0_0_156;
   wire n_0_0_157;
   wire n_0_0_158;
   wire n_0_0_159;
   wire n_0_0_160;
   wire n_0_0_161;
   wire n_0_0_162;
   wire n_0_0_163;
   wire n_0_0_164;
   wire n_0_0_165;
   wire n_0_0_166;
   wire n_0_0_167;
   wire n_0_0_168;
   wire n_0_0_169;
   wire n_0_0_170;
   wire n_0_0_171;
   wire n_0_0_172;
   wire n_0_0_173;
   wire n_0_0_177;
   wire n_0_0_180;
   wire n_0_0_181;
   wire n_0_0_182;
   wire n_0_0_183;
   wire n_0_0_184;
   wire n_0_0_185;
   wire n_0_0_186;
   wire n_0_0_187;
   wire n_0_0_188;
   wire n_0_0_189;
   wire n_0_0_190;
   wire n_0_0_191;
   wire n_0_0_192;
   wire n_0_0_193;
   wire n_0_0_194;
   wire n_0_0_195;
   wire n_0_0_196;
   wire n_0_0_197;
   wire n_0_0_198;
   wire n_0_0_199;
   wire n_0_0_200;
   wire n_0_0_201;
   wire n_0_0_29;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_63;
   wire n_0_0_64;
   wire n_0_0_65;
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
   wire n_0_0_106;
   wire n_0_0_107;
   wire n_0_0_108;
   wire n_0_0_109;
   wire n_0_0_130;
   wire n_0_0_131;
   wire n_0_0_174;
   wire n_0_0_175;
   wire n_0_0_176;
   wire n_0_0_178;
   wire n_0_0_179;

   DFF_X1 finish_reg (.D(n_0_60), .CK(n_0_1), .Q(finish), .QN());
   DFF_X1 \A_reg[14]  (.D(n_0_19), .CK(n_0_1), .Q(A[14]), .QN());
   DFF_X1 \A_reg[13]  (.D(n_0_18), .CK(n_0_1), .Q(A[13]), .QN());
   DFF_X1 \A_reg[12]  (.D(n_0_17), .CK(n_0_1), .Q(A[12]), .QN());
   DFF_X1 \A_reg[11]  (.D(n_0_16), .CK(n_0_1), .Q(A[11]), .QN());
   DFF_X1 \A_reg[10]  (.D(n_0_15), .CK(n_0_1), .Q(A[10]), .QN());
   DFF_X1 \A_reg[9]  (.D(n_0_14), .CK(n_0_1), .Q(A[9]), .QN());
   DFF_X1 \A_reg[8]  (.D(n_0_13), .CK(n_0_1), .Q(A[8]), .QN());
   DFF_X1 \A_reg[7]  (.D(n_0_12), .CK(n_0_1), .Q(A[7]), .QN());
   DFF_X1 \A_reg[6]  (.D(n_0_11), .CK(n_0_1), .Q(A[6]), .QN());
   DFF_X1 \A_reg[5]  (.D(n_0_10), .CK(n_0_1), .Q(A[5]), .QN());
   DFF_X1 \A_reg[4]  (.D(n_0_9), .CK(n_0_1), .Q(A[4]), .QN());
   DFF_X1 \A_reg[3]  (.D(n_0_8), .CK(n_0_1), .Q(A[3]), .QN());
   DFF_X1 \A_reg[2]  (.D(n_0_7), .CK(n_0_1), .Q(A[2]), .QN());
   DFF_X1 \A_reg[1]  (.D(n_0_6), .CK(n_0_1), .Q(A[1]), .QN());
   DFF_X1 \A_reg[0]  (.D(n_0_5), .CK(n_0_1), .Q(A[0]), .QN());
   CLKGATETST_X1 clk_gate_multiplicand_buffer_reg (.CK(clk), .E(n_0_59), 
      .SE(1'b0), .GCK(n_0_0));
   DFF_X1 \multiplicand_buffer_reg[15]  (.D(n_0_58), .CK(n_0_0), .Q(
      multiplicand_buffer[15]), .QN());
   DFF_X1 \multiplicand_buffer_reg[14]  (.D(n_0_57), .CK(n_0_0), .Q(
      multiplicand_buffer[14]), .QN());
   DFF_X1 \multiplicand_buffer_reg[13]  (.D(n_0_56), .CK(n_0_0), .Q(
      multiplicand_buffer[13]), .QN());
   DFF_X1 \multiplicand_buffer_reg[12]  (.D(n_0_55), .CK(n_0_0), .Q(
      multiplicand_buffer[12]), .QN());
   DFF_X1 \multiplicand_buffer_reg[11]  (.D(n_0_54), .CK(n_0_0), .Q(
      multiplicand_buffer[11]), .QN());
   DFF_X1 \multiplicand_buffer_reg[10]  (.D(n_0_53), .CK(n_0_0), .Q(
      multiplicand_buffer[10]), .QN());
   DFF_X1 \multiplicand_buffer_reg[9]  (.D(n_0_52), .CK(n_0_0), .Q(
      multiplicand_buffer[9]), .QN());
   DFF_X1 \multiplicand_buffer_reg[8]  (.D(n_0_51), .CK(n_0_0), .Q(
      multiplicand_buffer[8]), .QN());
   DFF_X1 \multiplicand_buffer_reg[7]  (.D(n_0_50), .CK(n_0_0), .Q(
      multiplicand_buffer[7]), .QN());
   DFF_X1 \multiplicand_buffer_reg[6]  (.D(n_0_49), .CK(n_0_0), .Q(
      multiplicand_buffer[6]), .QN());
   DFF_X1 \multiplicand_buffer_reg[5]  (.D(n_0_48), .CK(n_0_0), .Q(
      multiplicand_buffer[5]), .QN());
   DFF_X1 \multiplicand_buffer_reg[4]  (.D(n_0_47), .CK(n_0_0), .Q(
      multiplicand_buffer[4]), .QN());
   DFF_X1 \multiplicand_buffer_reg[3]  (.D(n_0_46), .CK(n_0_0), .Q(
      multiplicand_buffer[3]), .QN());
   DFF_X1 \multiplicand_buffer_reg[2]  (.D(n_0_45), .CK(n_0_0), .Q(
      multiplicand_buffer[2]), .QN());
   DFF_X1 \multiplicand_buffer_reg[1]  (.D(n_0_44), .CK(n_0_0), .Q(
      multiplicand_buffer[1]), .QN());
   DFF_X1 \multiplicand_buffer_reg[0]  (.D(n_0_43), .CK(n_0_0), .Q(
      multiplicand_buffer[0]), .QN());
   DFF_X1 \Q_reg[16]  (.D(n_0_42), .CK(n_0_1), .Q(Q[16]), .QN());
   DFF_X1 \Q_reg[15]  (.D(n_0_41), .CK(n_0_1), .Q(Q[15]), .QN());
   DFF_X1 \Q_reg[14]  (.D(n_0_40), .CK(n_0_1), .Q(Q[14]), .QN());
   DFF_X1 \Q_reg[13]  (.D(n_0_39), .CK(n_0_1), .Q(Q[13]), .QN());
   DFF_X1 \Q_reg[12]  (.D(n_0_38), .CK(n_0_1), .Q(Q[12]), .QN());
   DFF_X1 \Q_reg[11]  (.D(n_0_37), .CK(n_0_1), .Q(Q[11]), .QN());
   DFF_X1 \Q_reg[10]  (.D(n_0_36), .CK(n_0_1), .Q(Q[10]), .QN());
   DFF_X1 \Q_reg[9]  (.D(n_0_35), .CK(n_0_1), .Q(Q[9]), .QN());
   DFF_X1 \Q_reg[8]  (.D(n_0_34), .CK(n_0_1), .Q(Q[8]), .QN());
   DFF_X1 \Q_reg[7]  (.D(n_0_33), .CK(n_0_1), .Q(Q[7]), .QN());
   DFF_X1 \Q_reg[6]  (.D(n_0_32), .CK(n_0_1), .Q(Q[6]), .QN());
   DFF_X1 \Q_reg[5]  (.D(n_0_31), .CK(n_0_1), .Q(Q[5]), .QN());
   DFF_X1 \Q_reg[4]  (.D(n_0_30), .CK(n_0_1), .Q(Q[4]), .QN());
   DFF_X1 \Q_reg[3]  (.D(n_0_29), .CK(n_0_1), .Q(Q[3]), .QN());
   DFF_X1 \Q_reg[2]  (.D(n_0_28), .CK(n_0_1), .Q(Q[2]), .QN());
   DFF_X1 \Q_reg[1]  (.D(n_0_27), .CK(n_0_1), .Q(Q[1]), .QN());
   DFF_X1 \Q_reg[0]  (.D(n_0_26), .CK(n_0_1), .Q(Q[0]), .QN());
   DFF_X1 \counter_reg[3]  (.D(n_0_24), .CK(n_0_1), .Q(counter[3]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_0_23), .CK(n_0_1), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_0_22), .CK(n_0_1), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_0_21), .CK(n_0_1), .Q(counter[0]), .QN());
   DFF_X1 working_reg (.D(n_0_20), .CK(n_0_1), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_0_2), .CK(clk), .Q(start_buffer), .QN());
   MUX2_X1 start_buffer_reg_enable_mux_0 (.A(start_buffer), .B(n_0_3), .S(n_0_4), 
      .Z(n_0_2));
   CLKGATETST_X1 clk_gate_Q_reg (.CK(clk), .E(n_0_25), .SE(1'b0), .GCK(n_0_1));
   NAND2_X1 i_0_0_0 (.A1(start), .A2(n_0_0_134), .ZN(n_0_4));
   AOI211_X1 i_0_0_1 (.A(n_0_59), .B(n_0_0_61), .C1(n_0_0_128), .C2(n_0_0_62), 
      .ZN(n_0_5));
   AOI211_X1 i_0_0_2 (.A(n_0_59), .B(n_0_0_58), .C1(n_0_0_60), .C2(n_0_0_59), 
      .ZN(n_0_6));
   AOI211_X1 i_0_0_3 (.A(n_0_59), .B(n_0_0_55), .C1(n_0_0_57), .C2(n_0_0_56), 
      .ZN(n_0_7));
   AOI211_X1 i_0_0_4 (.A(n_0_59), .B(n_0_0_0), .C1(n_0_0_53), .C2(n_0_0_48), 
      .ZN(n_0_8));
   AOI21_X1 i_0_0_5 (.A(n_0_0_106), .B1(n_0_0_53), .B2(n_0_0_52), .ZN(n_0_0_0));
   AOI211_X1 i_0_0_6 (.A(n_0_59), .B(n_0_0_46), .C1(n_0_0_70), .C2(n_0_0_47), 
      .ZN(n_0_9));
   AOI21_X1 i_0_0_7 (.A(n_0_0_1), .B1(n_0_0_42), .B2(n_0_0_2), .ZN(n_0_10));
   OAI21_X1 i_0_0_8 (.A(n_0_0_134), .B1(n_0_0_42), .B2(n_0_0_2), .ZN(n_0_0_1));
   AOI21_X1 i_0_0_9 (.A(n_0_0_43), .B1(n_0_0_194), .B2(n_0_0_45), .ZN(n_0_0_2));
   AOI211_X1 i_0_0_10 (.A(n_0_59), .B(n_0_0_40), .C1(n_0_0_73), .C2(n_0_0_41), 
      .ZN(n_0_11));
   AOI221_X1 i_0_0_11 (.A(n_0_59), .B1(A[8]), .B2(n_0_0_3), .C1(n_0_0_196), 
      .C2(n_0_0_4), .ZN(n_0_12));
   INV_X1 i_0_0_12 (.A(n_0_0_4), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_13 (.A(n_0_0_35), .B1(n_0_0_38), .B2(n_0_0_37), .ZN(n_0_0_4));
   AOI21_X1 i_0_0_14 (.A(n_0_0_5), .B1(n_0_0_75), .B2(n_0_0_34), .ZN(n_0_13));
   OAI21_X1 i_0_0_15 (.A(n_0_0_134), .B1(n_0_0_75), .B2(n_0_0_34), .ZN(n_0_0_5));
   AOI211_X1 i_0_0_16 (.A(n_0_59), .B(n_0_0_6), .C1(n_0_0_32), .C2(n_0_0_27), 
      .ZN(n_0_14));
   AOI21_X1 i_0_0_17 (.A(n_0_0_50), .B1(n_0_0_32), .B2(n_0_0_31), .ZN(n_0_0_6));
   AOI21_X1 i_0_0_18 (.A(n_0_0_7), .B1(n_0_0_77), .B2(n_0_0_26), .ZN(n_0_15));
   OAI21_X1 i_0_0_19 (.A(n_0_0_134), .B1(n_0_0_77), .B2(n_0_0_26), .ZN(n_0_0_7));
   AOI21_X1 i_0_0_20 (.A(n_0_0_8), .B1(n_0_0_22), .B2(n_0_0_9), .ZN(n_0_16));
   OAI21_X1 i_0_0_21 (.A(n_0_0_134), .B1(n_0_0_22), .B2(n_0_0_9), .ZN(n_0_0_8));
   AOI21_X1 i_0_0_22 (.A(n_0_0_23), .B1(n_0_0_199), .B2(n_0_0_25), .ZN(n_0_0_9));
   AOI211_X1 i_0_0_23 (.A(n_0_59), .B(n_0_0_20), .C1(n_0_0_80), .C2(n_0_0_21), 
      .ZN(n_0_17));
   AOI21_X1 i_0_0_24 (.A(n_0_0_10), .B1(n_0_0_18), .B2(n_0_0_11), .ZN(n_0_18));
   OAI21_X1 i_0_0_25 (.A(n_0_0_134), .B1(n_0_0_18), .B2(n_0_0_11), .ZN(n_0_0_10));
   NAND2_X1 i_0_0_26 (.A1(n_0_0_15), .A2(n_0_0_14), .ZN(n_0_0_11));
   AOI21_X1 i_0_0_27 (.A(n_0_0_12), .B1(n_0_0_82), .B2(n_0_0_13), .ZN(n_0_19));
   OAI21_X1 i_0_0_28 (.A(n_0_0_134), .B1(n_0_0_82), .B2(n_0_0_13), .ZN(n_0_0_12));
   OAI22_X1 i_0_0_29 (.A1(n_0_0_18), .A2(n_0_0_15), .B1(n_0_0_19), .B2(n_0_0_14), 
      .ZN(n_0_0_13));
   OR2_X1 i_0_0_30 (.A1(A[14]), .A2(n_0_0_16), .ZN(n_0_0_14));
   NAND2_X1 i_0_0_31 (.A1(A[14]), .A2(n_0_0_16), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_32 (.A1(n_0_0_99), .A2(n_0_0_17), .ZN(n_0_0_16));
   XOR2_X1 i_0_0_33 (.A(multiplicand_buffer[14]), .B(n_0_0_86), .Z(n_0_0_17));
   INV_X1 i_0_0_34 (.A(n_0_0_19), .ZN(n_0_0_18));
   AOI21_X1 i_0_0_35 (.A(n_0_0_20), .B1(A[13]), .B2(n_0_0_81), .ZN(n_0_0_19));
   NOR2_X1 i_0_0_36 (.A1(n_0_0_80), .A2(n_0_0_21), .ZN(n_0_0_20));
   AOI21_X1 i_0_0_37 (.A(n_0_0_23), .B1(n_0_0_24), .B2(n_0_0_22), .ZN(n_0_0_21));
   AOI211_X1 i_0_0_38 (.A(n_0_0_100), .B(n_0_0_89), .C1(multiplicand_buffer[12]), 
      .C2(n_0_0_90), .ZN(n_0_0_22));
   NOR2_X1 i_0_0_39 (.A1(n_0_0_199), .A2(n_0_0_25), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_40 (.A1(n_0_0_199), .A2(n_0_0_25), .ZN(n_0_0_24));
   AOI22_X1 i_0_0_41 (.A1(A[11]), .A2(n_0_0_78), .B1(n_0_0_77), .B2(n_0_0_26), 
      .ZN(n_0_0_25));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_32), .A2(n_0_0_28), .ZN(n_0_0_26));
   INV_X1 i_0_0_43 (.A(n_0_0_28), .ZN(n_0_0_27));
   NAND2_X1 i_0_0_44 (.A1(n_0_0_31), .A2(n_0_0_50), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_45 (.A1(n_0_0_198), .A2(n_0_0_33), .ZN(n_0_0_31));
   OR2_X1 i_0_0_46 (.A1(n_0_0_198), .A2(n_0_0_33), .ZN(n_0_0_32));
   AOI22_X1 i_0_0_47 (.A1(A[9]), .A2(n_0_0_76), .B1(n_0_0_75), .B2(n_0_0_34), 
      .ZN(n_0_0_33));
   OAI21_X1 i_0_0_48 (.A(n_0_0_35), .B1(n_0_0_196), .B2(n_0_0_36), .ZN(n_0_0_34));
   NAND2_X1 i_0_0_49 (.A1(n_0_0_38), .A2(n_0_0_37), .ZN(n_0_0_35));
   NOR2_X1 i_0_0_50 (.A1(n_0_0_38), .A2(n_0_0_37), .ZN(n_0_0_36));
   AOI211_X1 i_0_0_51 (.A(n_0_0_100), .B(n_0_0_94), .C1(multiplicand_buffer[8]), 
      .C2(n_0_0_95), .ZN(n_0_0_37));
   INV_X1 i_0_0_52 (.A(n_0_0_39), .ZN(n_0_0_38));
   AOI21_X1 i_0_0_53 (.A(n_0_0_40), .B1(A[7]), .B2(n_0_0_74), .ZN(n_0_0_39));
   NOR2_X1 i_0_0_54 (.A1(n_0_0_73), .A2(n_0_0_41), .ZN(n_0_0_40));
   AOI21_X1 i_0_0_55 (.A(n_0_0_43), .B1(n_0_0_44), .B2(n_0_0_42), .ZN(n_0_0_41));
   AOI211_X1 i_0_0_56 (.A(n_0_0_100), .B(n_0_0_98), .C1(multiplicand_buffer[6]), 
      .C2(n_0_0_101), .ZN(n_0_0_42));
   NOR2_X1 i_0_0_57 (.A1(n_0_0_194), .A2(n_0_0_45), .ZN(n_0_0_43));
   NAND2_X1 i_0_0_58 (.A1(n_0_0_194), .A2(n_0_0_45), .ZN(n_0_0_44));
   AOI21_X1 i_0_0_59 (.A(n_0_0_46), .B1(A[5]), .B2(n_0_0_71), .ZN(n_0_0_45));
   NOR2_X1 i_0_0_60 (.A1(n_0_0_70), .A2(n_0_0_47), .ZN(n_0_0_46));
   AND2_X1 i_0_0_61 (.A1(n_0_0_53), .A2(n_0_0_49), .ZN(n_0_0_47));
   INV_X1 i_0_0_62 (.A(n_0_0_49), .ZN(n_0_0_48));
   NAND2_X1 i_0_0_63 (.A1(n_0_0_52), .A2(n_0_0_106), .ZN(n_0_0_49));
   NAND2_X1 i_0_0_64 (.A1(n_0_0_192), .A2(n_0_0_54), .ZN(n_0_0_52));
   OR2_X1 i_0_0_65 (.A1(n_0_0_192), .A2(n_0_0_54), .ZN(n_0_0_53));
   AOI21_X1 i_0_0_66 (.A(n_0_0_55), .B1(A[3]), .B2(n_0_0_68), .ZN(n_0_0_54));
   NOR2_X1 i_0_0_67 (.A1(n_0_0_57), .A2(n_0_0_56), .ZN(n_0_0_55));
   XOR2_X1 i_0_0_68 (.A(n_0_0_191), .B(n_0_0_68), .Z(n_0_0_56));
   AOI21_X1 i_0_0_69 (.A(n_0_0_58), .B1(A[2]), .B2(n_0_0_66), .ZN(n_0_0_57));
   NOR2_X1 i_0_0_70 (.A1(n_0_0_60), .A2(n_0_0_59), .ZN(n_0_0_58));
   XOR2_X1 i_0_0_71 (.A(n_0_0_190), .B(n_0_0_66), .Z(n_0_0_59));
   AOI21_X1 i_0_0_72 (.A(n_0_0_61), .B1(A[1]), .B2(n_0_0_176), .ZN(n_0_0_60));
   NOR2_X1 i_0_0_73 (.A1(n_0_0_128), .A2(n_0_0_62), .ZN(n_0_0_61));
   XOR2_X1 i_0_0_74 (.A(n_0_0_189), .B(n_0_0_176), .Z(n_0_0_62));
   OAI33_X1 i_0_0_75 (.A1(Q[1]), .A2(n_0_0_102), .A3(n_0_0_174), .B1(n_0_0_103), 
      .B2(n_0_0_67), .B3(n_0_0_109), .ZN(n_0_0_66));
   NOR2_X1 i_0_0_76 (.A1(n_0_0_174), .A2(n_0_0_131), .ZN(n_0_0_67));
   AND2_X1 i_0_0_77 (.A1(n_0_0_99), .A2(n_0_0_69), .ZN(n_0_0_68));
   OAI22_X1 i_0_0_78 (.A1(n_0_0_175), .A2(n_0_0_130), .B1(multiplicand_buffer[3]), 
      .B2(n_0_0_109), .ZN(n_0_0_69));
   XOR2_X1 i_0_0_79 (.A(n_0_0_193), .B(n_0_0_71), .Z(n_0_0_70));
   AND2_X1 i_0_0_80 (.A1(n_0_0_99), .A2(n_0_0_72), .ZN(n_0_0_71));
   XOR2_X1 i_0_0_81 (.A(multiplicand_buffer[5]), .B(n_0_0_104), .Z(n_0_0_72));
   XOR2_X1 i_0_0_82 (.A(n_0_0_195), .B(n_0_0_74), .Z(n_0_0_73));
   AOI211_X1 i_0_0_83 (.A(n_0_0_100), .B(n_0_0_96), .C1(multiplicand_buffer[7]), 
      .C2(n_0_0_97), .ZN(n_0_0_74));
   XNOR2_X1 i_0_0_84 (.A(n_0_0_197), .B(n_0_0_76), .ZN(n_0_0_75));
   AOI211_X1 i_0_0_85 (.A(n_0_0_100), .B(n_0_0_64), .C1(multiplicand_buffer[9]), 
      .C2(n_0_0_65), .ZN(n_0_0_76));
   XOR2_X1 i_0_0_86 (.A(A[11]), .B(n_0_0_78), .Z(n_0_0_77));
   AND2_X1 i_0_0_87 (.A1(n_0_0_99), .A2(n_0_0_79), .ZN(n_0_0_78));
   XOR2_X1 i_0_0_88 (.A(multiplicand_buffer[11]), .B(n_0_0_92), .Z(n_0_0_79));
   XNOR2_X1 i_0_0_89 (.A(A[13]), .B(n_0_0_81), .ZN(n_0_0_80));
   AOI211_X1 i_0_0_90 (.A(n_0_0_100), .B(n_0_0_87), .C1(multiplicand_buffer[13]), 
      .C2(n_0_0_88), .ZN(n_0_0_81));
   AOI21_X1 i_0_0_91 (.A(n_0_0_83), .B1(multiplicand_buffer[15]), .B2(n_0_0_84), 
      .ZN(n_0_0_82));
   OAI21_X1 i_0_0_92 (.A(n_0_0_99), .B1(multiplicand_buffer[15]), .B2(n_0_0_84), 
      .ZN(n_0_0_83));
   INV_X1 i_0_0_93 (.A(n_0_0_85), .ZN(n_0_0_84));
   AOI21_X1 i_0_0_94 (.A(n_0_0_86), .B1(n_0_0_102), .B2(multiplicand_buffer[14]), 
      .ZN(n_0_0_85));
   NOR2_X1 i_0_0_95 (.A1(Q[0]), .A2(n_0_0_87), .ZN(n_0_0_86));
   NOR2_X1 i_0_0_96 (.A1(multiplicand_buffer[13]), .A2(n_0_0_88), .ZN(n_0_0_87));
   NOR2_X1 i_0_0_97 (.A1(Q[0]), .A2(n_0_0_89), .ZN(n_0_0_88));
   NOR2_X1 i_0_0_98 (.A1(multiplicand_buffer[12]), .A2(n_0_0_90), .ZN(n_0_0_89));
   INV_X1 i_0_0_99 (.A(n_0_0_91), .ZN(n_0_0_90));
   AOI21_X1 i_0_0_100 (.A(n_0_0_92), .B1(n_0_0_102), .B2(multiplicand_buffer[11]), 
      .ZN(n_0_0_91));
   INV_X1 i_0_0_101 (.A(n_0_0_93), .ZN(n_0_0_92));
   AOI21_X1 i_0_0_102 (.A(n_0_0_63), .B1(n_0_0_102), .B2(multiplicand_buffer[10]), 
      .ZN(n_0_0_93));
   AOI21_X1 i_0_0_103 (.A(n_0_0_104), .B1(n_0_0_102), .B2(multiplicand_buffer[5]), 
      .ZN(n_0_0_30));
   INV_X1 i_0_0_104 (.A(n_0_0_105), .ZN(n_0_0_104));
   AOI21_X1 i_0_0_105 (.A(n_0_0_108), .B1(n_0_0_102), .B2(multiplicand_buffer[4]), 
      .ZN(n_0_0_105));
   NOR2_X1 i_0_0_106 (.A1(rst), .A2(n_0_60), .ZN(n_0_20));
   AND2_X1 i_0_0_107 (.A1(n_0_0_200), .A2(n_0_0_134), .ZN(n_0_21));
   AOI221_X1 i_0_0_108 (.A(n_0_59), .B1(n_0_0_201), .B2(n_0_0_200), .C1(
      counter[1]), .C2(counter[0]), .ZN(n_0_22));
   NOR3_X1 i_0_0_109 (.A1(n_0_59), .A2(n_0_0_132), .A3(n_0_0_110), .ZN(n_0_23));
   AOI21_X1 i_0_0_110 (.A(counter[2]), .B1(counter[1]), .B2(counter[0]), 
      .ZN(n_0_0_110));
   AOI221_X1 i_0_0_111 (.A(n_0_59), .B1(counter[3]), .B2(n_0_0_132), .C1(
      n_0_0_29), .C2(n_0_0_133), .ZN(n_0_24));
   OR2_X1 i_0_0_112 (.A1(working), .A2(n_0_59), .ZN(n_0_25));
   NOR2_X1 i_0_0_113 (.A1(n_0_0_103), .A2(n_0_59), .ZN(n_0_26));
   INV_X1 i_0_0_114 (.A(n_0_0_111), .ZN(n_0_27));
   AOI22_X1 i_0_0_115 (.A1(Q[2]), .A2(n_0_0_134), .B1(multiplier[0]), .B2(n_0_3), 
      .ZN(n_0_0_111));
   INV_X1 i_0_0_136 (.A(n_0_0_112), .ZN(n_0_28));
   AOI22_X1 i_0_0_137 (.A1(Q[3]), .A2(n_0_0_134), .B1(multiplier[1]), .B2(n_0_3), 
      .ZN(n_0_0_112));
   INV_X1 i_0_0_138 (.A(n_0_0_113), .ZN(n_0_29));
   AOI22_X1 i_0_0_139 (.A1(Q[4]), .A2(n_0_0_134), .B1(multiplier[2]), .B2(n_0_3), 
      .ZN(n_0_0_113));
   INV_X1 i_0_0_140 (.A(n_0_0_114), .ZN(n_0_30));
   AOI22_X1 i_0_0_141 (.A1(Q[5]), .A2(n_0_0_134), .B1(multiplier[3]), .B2(n_0_3), 
      .ZN(n_0_0_114));
   INV_X1 i_0_0_142 (.A(n_0_0_115), .ZN(n_0_31));
   AOI22_X1 i_0_0_143 (.A1(Q[6]), .A2(n_0_0_134), .B1(multiplier[4]), .B2(n_0_3), 
      .ZN(n_0_0_115));
   INV_X1 i_0_0_144 (.A(n_0_0_116), .ZN(n_0_32));
   AOI22_X1 i_0_0_145 (.A1(Q[7]), .A2(n_0_0_134), .B1(multiplier[5]), .B2(n_0_3), 
      .ZN(n_0_0_116));
   INV_X1 i_0_0_146 (.A(n_0_0_117), .ZN(n_0_33));
   AOI22_X1 i_0_0_147 (.A1(Q[8]), .A2(n_0_0_134), .B1(multiplier[6]), .B2(n_0_3), 
      .ZN(n_0_0_117));
   OAI21_X1 i_0_0_116 (.A(n_0_0_118), .B1(n_0_0_180), .B2(n_0_59), .ZN(n_0_34));
   NAND2_X1 i_0_0_117 (.A1(multiplier[7]), .A2(n_0_3), .ZN(n_0_0_118));
   OAI21_X1 i_0_0_118 (.A(n_0_0_119), .B1(n_0_0_181), .B2(n_0_59), .ZN(n_0_35));
   NAND2_X1 i_0_0_119 (.A1(multiplier[8]), .A2(n_0_3), .ZN(n_0_0_119));
   OAI21_X1 i_0_0_120 (.A(n_0_0_120), .B1(n_0_0_182), .B2(n_0_59), .ZN(n_0_36));
   NAND2_X1 i_0_0_121 (.A1(multiplier[9]), .A2(n_0_3), .ZN(n_0_0_120));
   OAI21_X1 i_0_0_154 (.A(n_0_0_121), .B1(n_0_0_183), .B2(n_0_59), .ZN(n_0_37));
   NAND2_X1 i_0_0_155 (.A1(multiplier[10]), .A2(n_0_3), .ZN(n_0_0_121));
   OAI21_X1 i_0_0_156 (.A(n_0_0_122), .B1(n_0_0_184), .B2(n_0_59), .ZN(n_0_38));
   NAND2_X1 i_0_0_157 (.A1(multiplier[11]), .A2(n_0_3), .ZN(n_0_0_122));
   OAI21_X1 i_0_0_158 (.A(n_0_0_123), .B1(n_0_0_185), .B2(n_0_59), .ZN(n_0_39));
   NAND2_X1 i_0_0_159 (.A1(multiplier[12]), .A2(n_0_3), .ZN(n_0_0_123));
   OAI21_X1 i_0_0_160 (.A(n_0_0_124), .B1(n_0_0_186), .B2(n_0_59), .ZN(n_0_40));
   NAND2_X1 i_0_0_161 (.A1(multiplier[13]), .A2(n_0_3), .ZN(n_0_0_124));
   OAI21_X1 i_0_0_162 (.A(n_0_0_125), .B1(n_0_0_187), .B2(n_0_59), .ZN(n_0_41));
   NAND2_X1 i_0_0_163 (.A1(multiplier[14]), .A2(n_0_3), .ZN(n_0_0_125));
   INV_X1 i_0_0_164 (.A(n_0_0_126), .ZN(n_0_42));
   AOI22_X1 i_0_0_165 (.A1(multiplier[15]), .A2(n_0_3), .B1(n_0_0_128), .B2(
      n_0_0_127), .ZN(n_0_0_126));
   AOI21_X1 i_0_0_166 (.A(n_0_59), .B1(n_0_0_188), .B2(n_0_0_129), .ZN(n_0_0_127));
   OR2_X1 i_0_0_122 (.A1(n_0_0_188), .A2(n_0_0_129), .ZN(n_0_0_128));
   NAND2_X1 i_0_0_123 (.A1(multiplicand_buffer[0]), .A2(n_0_0_99), .ZN(n_0_0_129));
   AND3_X1 i_0_0_124 (.A1(start), .A2(n_0_0_173), .A3(n_0_0_172), .ZN(n_0_3));
   AND2_X1 i_0_0_172 (.A1(n_0_0_172), .A2(multiplicand[0]), .ZN(n_0_43));
   AND2_X1 i_0_0_173 (.A1(n_0_0_172), .A2(multiplicand[1]), .ZN(n_0_44));
   AND2_X1 i_0_0_174 (.A1(n_0_0_172), .A2(multiplicand[2]), .ZN(n_0_45));
   AND2_X1 i_0_0_175 (.A1(n_0_0_172), .A2(multiplicand[3]), .ZN(n_0_46));
   AND2_X1 i_0_0_176 (.A1(n_0_0_172), .A2(multiplicand[4]), .ZN(n_0_47));
   AND2_X1 i_0_0_177 (.A1(n_0_0_172), .A2(multiplicand[5]), .ZN(n_0_48));
   AND2_X1 i_0_0_178 (.A1(n_0_0_172), .A2(multiplicand[6]), .ZN(n_0_49));
   AND2_X1 i_0_0_179 (.A1(n_0_0_172), .A2(multiplicand[7]), .ZN(n_0_50));
   AND2_X1 i_0_0_180 (.A1(n_0_0_172), .A2(multiplicand[8]), .ZN(n_0_51));
   AND2_X1 i_0_0_181 (.A1(n_0_0_172), .A2(multiplicand[9]), .ZN(n_0_52));
   AND2_X1 i_0_0_182 (.A1(n_0_0_172), .A2(multiplicand[10]), .ZN(n_0_53));
   AND2_X1 i_0_0_183 (.A1(n_0_0_172), .A2(multiplicand[11]), .ZN(n_0_54));
   AND2_X1 i_0_0_184 (.A1(n_0_0_172), .A2(multiplicand[12]), .ZN(n_0_55));
   AND2_X1 i_0_0_185 (.A1(n_0_0_172), .A2(multiplicand[13]), .ZN(n_0_56));
   AND2_X1 i_0_0_186 (.A1(n_0_0_172), .A2(multiplicand[14]), .ZN(n_0_57));
   AND2_X1 i_0_0_187 (.A1(n_0_0_172), .A2(multiplicand[15]), .ZN(n_0_58));
   NOR3_X1 i_0_0_125 (.A1(n_0_0_29), .A2(n_0_0_133), .A3(n_0_59), .ZN(n_0_60));
   INV_X1 i_0_0_126 (.A(n_0_0_133), .ZN(n_0_0_132));
   NAND3_X1 i_0_0_127 (.A1(counter[1]), .A2(counter[0]), .A3(counter[2]), 
      .ZN(n_0_0_133));
   INV_X1 i_0_0_128 (.A(n_0_0_134), .ZN(n_0_59));
   AOI21_X1 i_0_0_129 (.A(rst), .B1(start), .B2(n_0_0_173), .ZN(n_0_0_134));
   NOR2_X1 i_0_0_130 (.A1(n_0_0_177), .A2(n_0_0_135), .ZN(overflow_flag));
   OAI33_X1 i_0_0_131 (.A1(n_0_0_142), .A2(n_0_0_138), .A3(n_0_0_139), .B1(
      n_0_0_137), .B2(n_0_0_136), .B3(n_0_0_141), .ZN(n_0_0_135));
   NAND4_X1 i_0_0_132 (.A1(A[14]), .A2(A[13]), .A3(A[12]), .A4(A[11]), .ZN(
      n_0_0_136));
   NAND4_X1 i_0_0_133 (.A1(A[10]), .A2(A[9]), .A3(A[8]), .A4(A[7]), .ZN(
      n_0_0_137));
   NAND4_X1 i_0_0_134 (.A1(n_0_0_198), .A2(n_0_0_197), .A3(n_0_0_196), .A4(
      n_0_0_195), .ZN(n_0_0_138));
   OR4_X1 i_0_0_135 (.A1(A[14]), .A2(A[13]), .A3(A[12]), .A4(A[11]), .ZN(
      n_0_0_139));
   INV_X1 i_0_0_148 (.A(n_0_0_140), .ZN(result[0]));
   OAI21_X1 i_0_0_149 (.A(n_0_0_171), .B1(Q[8]), .B2(Q[7]), .ZN(n_0_0_140));
   AOI21_X1 i_0_0_150 (.A(n_0_0_170), .B1(n_0_0_180), .B2(n_0_0_171), .ZN(
      result[1]));
   AOI21_X1 i_0_0_151 (.A(n_0_0_167), .B1(n_0_0_181), .B2(n_0_0_169), .ZN(
      result[2]));
   AOI21_X1 i_0_0_152 (.A(n_0_0_165), .B1(n_0_0_182), .B2(n_0_0_168), .ZN(
      result[3]));
   AOI21_X1 i_0_0_153 (.A(n_0_0_163), .B1(n_0_0_183), .B2(n_0_0_166), .ZN(
      result[4]));
   AOI21_X1 i_0_0_205 (.A(n_0_0_161), .B1(n_0_0_184), .B2(n_0_0_164), .ZN(
      result[5]));
   AOI21_X1 i_0_0_206 (.A(n_0_0_159), .B1(n_0_0_185), .B2(n_0_0_162), .ZN(
      result[6]));
   AOI21_X1 i_0_0_207 (.A(n_0_0_157), .B1(n_0_0_186), .B2(n_0_0_160), .ZN(
      result[7]));
   AOI21_X1 i_0_0_208 (.A(n_0_0_155), .B1(n_0_0_187), .B2(n_0_0_158), .ZN(
      result[8]));
   AOI21_X1 i_0_0_209 (.A(n_0_0_153), .B1(n_0_0_188), .B2(n_0_0_156), .ZN(
      result[9]));
   AOI21_X1 i_0_0_210 (.A(n_0_0_151), .B1(n_0_0_189), .B2(n_0_0_154), .ZN(
      result[10]));
   AOI21_X1 i_0_0_211 (.A(n_0_0_149), .B1(n_0_0_190), .B2(n_0_0_152), .ZN(
      result[11]));
   AOI21_X1 i_0_0_212 (.A(n_0_0_147), .B1(n_0_0_191), .B2(n_0_0_150), .ZN(
      result[12]));
   AOI21_X1 i_0_0_213 (.A(n_0_0_145), .B1(n_0_0_192), .B2(n_0_0_148), .ZN(
      result[13]));
   AOI21_X1 i_0_0_214 (.A(n_0_0_143), .B1(n_0_0_193), .B2(n_0_0_146), .ZN(
      result[14]));
   AOI21_X1 i_0_0_215 (.A(n_0_0_141), .B1(A[6]), .B2(n_0_0_143), .ZN(result[15]));
   INV_X1 i_0_0_167 (.A(n_0_0_142), .ZN(n_0_0_141));
   NAND2_X1 i_0_0_168 (.A1(n_0_0_194), .A2(n_0_0_144), .ZN(n_0_0_142));
   INV_X1 i_0_0_218 (.A(n_0_0_144), .ZN(n_0_0_143));
   NAND2_X1 i_0_0_169 (.A1(A[5]), .A2(n_0_0_145), .ZN(n_0_0_144));
   INV_X1 i_0_0_170 (.A(n_0_0_146), .ZN(n_0_0_145));
   NAND2_X1 i_0_0_171 (.A1(A[4]), .A2(n_0_0_147), .ZN(n_0_0_146));
   INV_X1 i_0_0_188 (.A(n_0_0_148), .ZN(n_0_0_147));
   NAND2_X1 i_0_0_189 (.A1(A[3]), .A2(n_0_0_149), .ZN(n_0_0_148));
   INV_X1 i_0_0_190 (.A(n_0_0_150), .ZN(n_0_0_149));
   NAND2_X1 i_0_0_191 (.A1(A[2]), .A2(n_0_0_151), .ZN(n_0_0_150));
   INV_X1 i_0_0_192 (.A(n_0_0_152), .ZN(n_0_0_151));
   NAND2_X1 i_0_0_193 (.A1(A[1]), .A2(n_0_0_153), .ZN(n_0_0_152));
   INV_X1 i_0_0_228 (.A(n_0_0_154), .ZN(n_0_0_153));
   NAND2_X1 i_0_0_229 (.A1(A[0]), .A2(n_0_0_155), .ZN(n_0_0_154));
   INV_X1 i_0_0_230 (.A(n_0_0_156), .ZN(n_0_0_155));
   NAND2_X1 i_0_0_231 (.A1(Q[16]), .A2(n_0_0_157), .ZN(n_0_0_156));
   INV_X1 i_0_0_232 (.A(n_0_0_158), .ZN(n_0_0_157));
   NAND2_X1 i_0_0_233 (.A1(Q[15]), .A2(n_0_0_159), .ZN(n_0_0_158));
   INV_X1 i_0_0_234 (.A(n_0_0_160), .ZN(n_0_0_159));
   NAND2_X1 i_0_0_235 (.A1(Q[14]), .A2(n_0_0_161), .ZN(n_0_0_160));
   INV_X1 i_0_0_236 (.A(n_0_0_162), .ZN(n_0_0_161));
   NAND2_X1 i_0_0_237 (.A1(Q[13]), .A2(n_0_0_163), .ZN(n_0_0_162));
   INV_X1 i_0_0_194 (.A(n_0_0_164), .ZN(n_0_0_163));
   NAND2_X1 i_0_0_195 (.A1(Q[12]), .A2(n_0_0_165), .ZN(n_0_0_164));
   INV_X1 i_0_0_196 (.A(n_0_0_166), .ZN(n_0_0_165));
   NAND2_X1 i_0_0_197 (.A1(Q[11]), .A2(n_0_0_167), .ZN(n_0_0_166));
   INV_X1 i_0_0_198 (.A(n_0_0_168), .ZN(n_0_0_167));
   NAND2_X1 i_0_0_199 (.A1(Q[10]), .A2(n_0_0_170), .ZN(n_0_0_168));
   INV_X1 i_0_0_200 (.A(n_0_0_170), .ZN(n_0_0_169));
   NOR2_X1 i_0_0_201 (.A1(n_0_0_180), .A2(n_0_0_171), .ZN(n_0_0_170));
   NAND2_X1 i_0_0_202 (.A1(Q[8]), .A2(Q[7]), .ZN(n_0_0_171));
   INV_X1 i_0_0_203 (.A(rst), .ZN(n_0_0_172));
   INV_X1 i_0_0_204 (.A(start_buffer), .ZN(n_0_0_173));
   INV_X1 i_0_0_216 (.A(finish), .ZN(n_0_0_177));
   INV_X1 i_0_0_217 (.A(Q[9]), .ZN(n_0_0_180));
   INV_X1 i_0_0_219 (.A(Q[10]), .ZN(n_0_0_181));
   INV_X1 i_0_0_220 (.A(Q[11]), .ZN(n_0_0_182));
   INV_X1 i_0_0_221 (.A(Q[12]), .ZN(n_0_0_183));
   INV_X1 i_0_0_259 (.A(Q[13]), .ZN(n_0_0_184));
   INV_X1 i_0_0_260 (.A(Q[14]), .ZN(n_0_0_185));
   INV_X1 i_0_0_261 (.A(Q[15]), .ZN(n_0_0_186));
   INV_X1 i_0_0_262 (.A(Q[16]), .ZN(n_0_0_187));
   INV_X1 i_0_0_222 (.A(A[0]), .ZN(n_0_0_188));
   INV_X1 i_0_0_223 (.A(A[1]), .ZN(n_0_0_189));
   INV_X1 i_0_0_224 (.A(A[2]), .ZN(n_0_0_190));
   INV_X1 i_0_0_225 (.A(A[3]), .ZN(n_0_0_191));
   INV_X1 i_0_0_226 (.A(A[4]), .ZN(n_0_0_192));
   INV_X1 i_0_0_227 (.A(A[5]), .ZN(n_0_0_193));
   INV_X1 i_0_0_238 (.A(A[6]), .ZN(n_0_0_194));
   INV_X1 i_0_0_239 (.A(A[7]), .ZN(n_0_0_195));
   INV_X1 i_0_0_240 (.A(A[8]), .ZN(n_0_0_196));
   INV_X1 i_0_0_241 (.A(A[9]), .ZN(n_0_0_197));
   INV_X1 i_0_0_242 (.A(A[10]), .ZN(n_0_0_198));
   INV_X1 i_0_0_243 (.A(A[12]), .ZN(n_0_0_199));
   INV_X1 i_0_0_244 (.A(counter[0]), .ZN(n_0_0_200));
   INV_X1 i_0_0_245 (.A(counter[1]), .ZN(n_0_0_201));
   INV_X1 i_0_0_246 (.A(counter[3]), .ZN(n_0_0_29));
   NOR2_X1 i_0_0_247 (.A1(n_0_0_100), .A2(n_0_0_51), .ZN(n_0_0_50));
   XNOR2_X1 i_0_0_248 (.A(multiplicand_buffer[10]), .B(n_0_0_63), .ZN(n_0_0_51));
   NOR2_X1 i_0_0_249 (.A1(Q[0]), .A2(n_0_0_64), .ZN(n_0_0_63));
   NOR2_X1 i_0_0_250 (.A1(multiplicand_buffer[9]), .A2(n_0_0_65), .ZN(n_0_0_64));
   NOR2_X1 i_0_0_251 (.A1(Q[0]), .A2(n_0_0_94), .ZN(n_0_0_65));
   NOR2_X1 i_0_0_252 (.A1(multiplicand_buffer[8]), .A2(n_0_0_95), .ZN(n_0_0_94));
   NOR2_X1 i_0_0_253 (.A1(Q[0]), .A2(n_0_0_96), .ZN(n_0_0_95));
   NOR2_X1 i_0_0_254 (.A1(multiplicand_buffer[7]), .A2(n_0_0_97), .ZN(n_0_0_96));
   NOR2_X1 i_0_0_255 (.A1(Q[0]), .A2(n_0_0_98), .ZN(n_0_0_97));
   NOR2_X1 i_0_0_256 (.A1(n_0_0_101), .A2(multiplicand_buffer[6]), .ZN(n_0_0_98));
   INV_X1 i_0_0_257 (.A(n_0_0_100), .ZN(n_0_0_99));
   OAI22_X1 i_0_0_258 (.A1(Q[1]), .A2(Q[0]), .B1(n_0_0_103), .B2(n_0_0_102), 
      .ZN(n_0_0_100));
   INV_X1 i_0_0_263 (.A(n_0_0_30), .ZN(n_0_0_101));
   INV_X1 i_0_0_264 (.A(Q[0]), .ZN(n_0_0_102));
   INV_X1 i_0_0_265 (.A(Q[1]), .ZN(n_0_0_103));
   AOI21_X1 i_0_0_266 (.A(n_0_0_107), .B1(multiplicand_buffer[4]), .B2(n_0_0_108), 
      .ZN(n_0_0_106));
   OAI21_X1 i_0_0_267 (.A(n_0_0_99), .B1(multiplicand_buffer[4]), .B2(n_0_0_108), 
      .ZN(n_0_0_107));
   OAI21_X1 i_0_0_268 (.A(n_0_0_109), .B1(n_0_0_175), .B2(Q[0]), .ZN(n_0_0_108));
   INV_X1 i_0_0_269 (.A(n_0_0_130), .ZN(n_0_0_109));
   AOI21_X1 i_0_0_270 (.A(Q[0]), .B1(n_0_0_174), .B2(n_0_0_131), .ZN(n_0_0_130));
   NOR2_X1 i_0_0_271 (.A1(multiplicand_buffer[1]), .A2(multiplicand_buffer[0]), 
      .ZN(n_0_0_131));
   INV_X1 i_0_0_272 (.A(multiplicand_buffer[2]), .ZN(n_0_0_174));
   INV_X1 i_0_0_273 (.A(multiplicand_buffer[3]), .ZN(n_0_0_175));
   AOI211_X1 i_0_0_274 (.A(n_0_0_178), .B(n_0_0_100), .C1(multiplicand_buffer[1]), 
      .C2(n_0_0_179), .ZN(n_0_0_176));
   NOR2_X1 i_0_0_275 (.A1(multiplicand_buffer[1]), .A2(n_0_0_179), .ZN(n_0_0_178));
   AND2_X1 i_0_0_276 (.A1(n_0_0_102), .A2(multiplicand_buffer[0]), .ZN(n_0_0_179));
endmodule
