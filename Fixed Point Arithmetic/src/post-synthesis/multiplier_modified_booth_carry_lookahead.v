/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Apr 23 17:04:26 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3283234870 */

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
   wire [2:0]counter;
   wire working;
   wire start_buffer;
   wire n_0_2;
   wire n_0_1;
   wire n_0_4;
   wire n_0_5;
   wire n_0_0_0;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_0_1;
   wire n_0_10;
   wire n_0_0_2;
   wire n_0_11;
   wire n_0_0_3;
   wire n_0_12;
   wire n_0_0_4;
   wire n_0_13;
   wire n_0_0_5;
   wire n_0_14;
   wire n_0_0_6;
   wire n_0_15;
   wire n_0_0_7;
   wire n_0_16;
   wire n_0_0_8;
   wire n_0_17;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_18;
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
   wire n_0_0_68;
   wire n_0_0_69;
   wire n_0_0_73;
   wire n_0_0_74;
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
   wire n_0_19;
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
   wire n_0_0_32;
   wire n_0_0_117;
   wire n_0_0_118;
   wire n_0_0_119;
   wire n_0_0_120;
   wire n_0_0_121;
   wire n_0_20;
   wire n_0_21;
   wire n_0_0_122;
   wire n_0_22;
   wire n_0_0_123;
   wire n_0_23;
   wire n_0_0_124;
   wire n_0_24;
   wire n_0_0_125;
   wire n_0_25;
   wire n_0_0_126;
   wire n_0_26;
   wire n_0_0_127;
   wire n_0_27;
   wire n_0_0_128;
   wire n_0_28;
   wire n_0_0_129;
   wire n_0_29;
   wire n_0_0_130;
   wire n_0_30;
   wire n_0_0_131;
   wire n_0_31;
   wire n_0_0_132;
   wire n_0_32;
   wire n_0_0_133;
   wire n_0_33;
   wire n_0_0_134;
   wire n_0_34;
   wire n_0_0_135;
   wire n_0_35;
   wire n_0_0_136;
   wire n_0_0_137;
   wire n_0_36;
   wire n_0_0_138;
   wire n_0_0_139;
   wire n_0_0_140;
   wire n_0_0_141;
   wire n_0_0_142;
   wire n_0_0_144;
   wire n_0_0_145;
   wire n_0_0_146;
   wire n_0_0_148;
   wire n_0_0_151;
   wire n_0_0_153;
   wire n_0_0_154;
   wire n_0_0_155;
   wire n_0_0_159;
   wire n_0_3;
   wire n_0_37;
   wire n_0_38;
   wire n_0_40;
   wire n_0_0_160;
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
   wire n_0_59;
   wire n_0_0_161;
   wire n_0_0_162;
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
   wire n_0_0_174;
   wire n_0_0_175;
   wire n_0_0_176;
   wire n_0_0_177;
   wire n_0_0_178;
   wire n_0_0_179;
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
   wire n_0_0_201;
   wire n_0_0_202;
   wire n_0_0_203;
   wire n_0_0_208;
   wire n_0_0_209;
   wire n_0_0_210;
   wire n_0_0_212;
   wire n_0_0_213;
   wire n_0_0_214;
   wire n_0_0_215;
   wire n_0_0_216;
   wire n_0_0_217;
   wire n_0_0_218;
   wire n_0_0_219;
   wire n_0_0_220;
   wire n_0_0_221;
   wire n_0_0_222;
   wire n_0_0_223;
   wire n_0_0_224;
   wire n_0_0_225;
   wire n_0_0_226;
   wire n_0_0_227;
   wire n_0_0_70;
   wire n_0_0_71;
   wire n_0_0_72;
   wire n_0_0_75;
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
   wire n_0_0_143;
   wire n_0_0_147;
   wire n_0_0_149;
   wire n_0_0_150;
   wire n_0_0_152;
   wire n_0_0_156;
   wire n_0_0_157;
   wire n_0_0_158;
   wire n_0_0_163;
   wire n_0_0_200;
   wire n_0_0_204;
   wire n_0_0_205;
   wire n_0_39;
   wire n_0_0_206;
   wire n_0_58;
   wire n_0_0_207;
   wire n_0_0_211;

   DFF_X1 finish_reg (.D(n_0_59), .CK(n_0_1), .Q(finish), .QN());
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
   CLKGATETST_X1 clk_gate_multiplicand_buffer_reg (.CK(clk), .E(n_0_58), 
      .SE(1'b0), .GCK(n_0_0));
   DFF_X1 \multiplicand_buffer_reg[15]  (.D(n_0_57), .CK(n_0_0), .Q(
      multiplicand_buffer[15]), .QN());
   DFF_X1 \multiplicand_buffer_reg[14]  (.D(n_0_56), .CK(n_0_0), .Q(
      multiplicand_buffer[14]), .QN());
   DFF_X1 \multiplicand_buffer_reg[13]  (.D(n_0_55), .CK(n_0_0), .Q(
      multiplicand_buffer[13]), .QN());
   DFF_X1 \multiplicand_buffer_reg[12]  (.D(n_0_54), .CK(n_0_0), .Q(
      multiplicand_buffer[12]), .QN());
   DFF_X1 \multiplicand_buffer_reg[11]  (.D(n_0_53), .CK(n_0_0), .Q(
      multiplicand_buffer[11]), .QN());
   DFF_X1 \multiplicand_buffer_reg[10]  (.D(n_0_52), .CK(n_0_0), .Q(
      multiplicand_buffer[10]), .QN());
   DFF_X1 \multiplicand_buffer_reg[9]  (.D(n_0_51), .CK(n_0_0), .Q(
      multiplicand_buffer[9]), .QN());
   DFF_X1 \multiplicand_buffer_reg[8]  (.D(n_0_50), .CK(n_0_0), .Q(
      multiplicand_buffer[8]), .QN());
   DFF_X1 \multiplicand_buffer_reg[7]  (.D(n_0_49), .CK(n_0_0), .Q(
      multiplicand_buffer[7]), .QN());
   DFF_X1 \multiplicand_buffer_reg[6]  (.D(n_0_48), .CK(n_0_0), .Q(
      multiplicand_buffer[6]), .QN());
   DFF_X1 \multiplicand_buffer_reg[5]  (.D(n_0_47), .CK(n_0_0), .Q(
      multiplicand_buffer[5]), .QN());
   DFF_X1 \multiplicand_buffer_reg[4]  (.D(n_0_46), .CK(n_0_0), .Q(
      multiplicand_buffer[4]), .QN());
   DFF_X1 \multiplicand_buffer_reg[3]  (.D(n_0_45), .CK(n_0_0), .Q(
      multiplicand_buffer[3]), .QN());
   DFF_X1 \multiplicand_buffer_reg[2]  (.D(n_0_44), .CK(n_0_0), .Q(
      multiplicand_buffer[2]), .QN());
   DFF_X1 \multiplicand_buffer_reg[1]  (.D(n_0_43), .CK(n_0_0), .Q(
      multiplicand_buffer[1]), .QN());
   DFF_X1 \multiplicand_buffer_reg[0]  (.D(n_0_42), .CK(n_0_0), .Q(
      multiplicand_buffer[0]), .QN());
   DFF_X1 \Q_reg[16]  (.D(n_0_36), .CK(n_0_1), .Q(Q[16]), .QN());
   DFF_X1 \Q_reg[15]  (.D(n_0_35), .CK(n_0_1), .Q(Q[15]), .QN());
   DFF_X1 \Q_reg[14]  (.D(n_0_34), .CK(n_0_1), .Q(Q[14]), .QN());
   DFF_X1 \Q_reg[13]  (.D(n_0_33), .CK(n_0_1), .Q(Q[13]), .QN());
   DFF_X1 \Q_reg[12]  (.D(n_0_32), .CK(n_0_1), .Q(Q[12]), .QN());
   DFF_X1 \Q_reg[11]  (.D(n_0_31), .CK(n_0_1), .Q(Q[11]), .QN());
   DFF_X1 \Q_reg[10]  (.D(n_0_30), .CK(n_0_1), .Q(Q[10]), .QN());
   DFF_X1 \Q_reg[9]  (.D(n_0_29), .CK(n_0_1), .Q(Q[9]), .QN());
   DFF_X1 \Q_reg[8]  (.D(n_0_28), .CK(n_0_1), .Q(Q[8]), .QN());
   DFF_X1 \Q_reg[7]  (.D(n_0_27), .CK(n_0_1), .Q(Q[7]), .QN());
   DFF_X1 \Q_reg[6]  (.D(n_0_26), .CK(n_0_1), .Q(Q[6]), .QN());
   DFF_X1 \Q_reg[5]  (.D(n_0_25), .CK(n_0_1), .Q(Q[5]), .QN());
   DFF_X1 \Q_reg[4]  (.D(n_0_24), .CK(n_0_1), .Q(Q[4]), .QN());
   DFF_X1 \Q_reg[3]  (.D(n_0_23), .CK(n_0_1), .Q(Q[3]), .QN());
   DFF_X1 \Q_reg[2]  (.D(n_0_22), .CK(n_0_1), .Q(Q[2]), .QN());
   DFF_X1 \Q_reg[1]  (.D(n_0_21), .CK(n_0_1), .Q(Q[1]), .QN());
   DFF_X1 \Q_reg[0]  (.D(n_0_20), .CK(n_0_1), .Q(Q[0]), .QN());
   DFF_X1 \counter_reg[2]  (.D(n_0_40), .CK(n_0_1), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(n_0_39), .CK(n_0_1), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(n_0_38), .CK(n_0_1), .Q(counter[0]), .QN());
   DFF_X1 working_reg (.D(n_0_37), .CK(n_0_1), .Q(working), .QN());
   DFF_X1 start_buffer_reg (.D(n_0_2), .CK(clk), .Q(start_buffer), .QN());
   MUX2_X1 start_buffer_reg_enable_mux_0 (.A(start_buffer), .B(n_0_3), .S(n_0_4), 
      .Z(n_0_2));
   CLKGATETST_X1 clk_gate_A_reg (.CK(clk), .E(n_0_41), .SE(1'b0), .GCK(n_0_1));
   NAND2_X1 i_0_0_0 (.A1(start), .A2(n_0_0_207), .ZN(n_0_4));
   AOI21_X1 i_0_0_1 (.A(n_0_0_0), .B1(n_0_0_47), .B2(n_0_0_46), .ZN(n_0_5));
   OAI21_X1 i_0_0_2 (.A(n_0_0_207), .B1(n_0_0_47), .B2(n_0_0_46), .ZN(n_0_0_0));
   AOI211_X1 i_0_0_3 (.A(n_0_58), .B(n_0_0_43), .C1(n_0_0_45), .C2(n_0_0_44), 
      .ZN(n_0_6));
   AOI211_X1 i_0_0_4 (.A(n_0_58), .B(n_0_0_40), .C1(n_0_0_42), .C2(n_0_0_41), 
      .ZN(n_0_7));
   AOI211_X1 i_0_0_5 (.A(n_0_58), .B(n_0_0_37), .C1(n_0_0_39), .C2(n_0_0_38), 
      .ZN(n_0_8));
   AOI21_X1 i_0_0_6 (.A(n_0_0_1), .B1(n_0_0_61), .B2(n_0_0_36), .ZN(n_0_9));
   OAI21_X1 i_0_0_7 (.A(n_0_0_207), .B1(n_0_0_61), .B2(n_0_0_36), .ZN(n_0_0_1));
   AOI21_X1 i_0_0_8 (.A(n_0_0_2), .B1(n_0_0_66), .B2(n_0_0_35), .ZN(n_0_10));
   OAI21_X1 i_0_0_9 (.A(n_0_0_207), .B1(n_0_0_66), .B2(n_0_0_35), .ZN(n_0_0_2));
   AOI21_X1 i_0_0_10 (.A(n_0_0_3), .B1(n_0_0_33), .B2(n_0_0_70), .ZN(n_0_11));
   OAI21_X1 i_0_0_11 (.A(n_0_0_207), .B1(n_0_0_33), .B2(n_0_0_70), .ZN(n_0_0_3));
   AOI21_X1 i_0_0_12 (.A(n_0_0_4), .B1(n_0_0_30), .B2(n_0_0_29), .ZN(n_0_12));
   OAI21_X1 i_0_0_13 (.A(n_0_0_207), .B1(n_0_0_30), .B2(n_0_0_29), .ZN(n_0_0_4));
   AOI21_X1 i_0_0_14 (.A(n_0_0_5), .B1(n_0_0_27), .B2(n_0_0_26), .ZN(n_0_13));
   OAI21_X1 i_0_0_15 (.A(n_0_0_207), .B1(n_0_0_27), .B2(n_0_0_26), .ZN(n_0_0_5));
   AOI21_X1 i_0_0_16 (.A(n_0_0_6), .B1(n_0_0_24), .B2(n_0_0_23), .ZN(n_0_14));
   OAI21_X1 i_0_0_17 (.A(n_0_0_207), .B1(n_0_0_24), .B2(n_0_0_23), .ZN(n_0_0_6));
   AOI21_X1 i_0_0_18 (.A(n_0_0_7), .B1(n_0_0_22), .B2(n_0_0_21), .ZN(n_0_15));
   OAI21_X1 i_0_0_19 (.A(n_0_0_207), .B1(n_0_0_22), .B2(n_0_0_21), .ZN(n_0_0_7));
   AOI21_X1 i_0_0_20 (.A(n_0_0_8), .B1(n_0_0_87), .B2(n_0_0_20), .ZN(n_0_16));
   OAI21_X1 i_0_0_21 (.A(n_0_0_207), .B1(n_0_0_87), .B2(n_0_0_20), .ZN(n_0_0_8));
   AOI21_X1 i_0_0_22 (.A(n_0_0_9), .B1(n_0_0_18), .B2(n_0_0_10), .ZN(n_0_17));
   OAI21_X1 i_0_0_23 (.A(n_0_0_207), .B1(n_0_0_18), .B2(n_0_0_10), .ZN(n_0_0_9));
   NAND2_X1 i_0_0_24 (.A1(n_0_0_14), .A2(n_0_0_13), .ZN(n_0_0_10));
   AOI21_X1 i_0_0_25 (.A(n_0_0_11), .B1(n_0_0_92), .B2(n_0_0_12), .ZN(n_0_18));
   OAI21_X1 i_0_0_26 (.A(n_0_0_207), .B1(n_0_0_92), .B2(n_0_0_12), .ZN(n_0_0_11));
   AOI22_X1 i_0_0_27 (.A1(n_0_0_18), .A2(n_0_0_14), .B1(n_0_0_19), .B2(n_0_0_13), 
      .ZN(n_0_0_12));
   NAND3_X1 i_0_0_28 (.A1(n_0_0_17), .A2(n_0_0_16), .A3(A[14]), .ZN(n_0_0_13));
   INV_X1 i_0_0_29 (.A(n_0_0_15), .ZN(n_0_0_14));
   AOI21_X1 i_0_0_30 (.A(A[14]), .B1(n_0_0_17), .B2(n_0_0_16), .ZN(n_0_0_15));
   AOI22_X1 i_0_0_31 (.A1(n_0_0_110), .A2(n_0_0_94), .B1(n_0_0_150), .B2(
      n_0_0_91), .ZN(n_0_0_16));
   AOI22_X1 i_0_0_32 (.A1(multiplicand_buffer[14]), .A2(n_0_0_111), .B1(
      multiplicand_buffer[13]), .B2(n_0_0_151), .ZN(n_0_0_17));
   INV_X1 i_0_0_33 (.A(n_0_0_19), .ZN(n_0_0_18));
   AOI22_X1 i_0_0_34 (.A1(A[13]), .A2(n_0_0_88), .B1(n_0_0_87), .B2(n_0_0_20), 
      .ZN(n_0_0_19));
   OAI21_X1 i_0_0_35 (.A(n_0_0_83), .B1(n_0_0_22), .B2(n_0_0_21), .ZN(n_0_0_20));
   OAI21_X1 i_0_0_36 (.A(n_0_0_83), .B1(A[12]), .B2(n_0_0_84), .ZN(n_0_0_21));
   AOI22_X1 i_0_0_37 (.A1(A[11]), .A2(n_0_0_79), .B1(n_0_0_24), .B2(n_0_0_23), 
      .ZN(n_0_0_22));
   XNOR2_X1 i_0_0_38 (.A(n_0_0_227), .B(n_0_0_79), .ZN(n_0_0_23));
   INV_X1 i_0_0_39 (.A(n_0_0_25), .ZN(n_0_0_24));
   AOI22_X1 i_0_0_40 (.A1(A[10]), .A2(n_0_0_76), .B1(n_0_0_27), .B2(n_0_0_26), 
      .ZN(n_0_0_25));
   XNOR2_X1 i_0_0_41 (.A(n_0_0_226), .B(n_0_0_76), .ZN(n_0_0_26));
   INV_X1 i_0_0_42 (.A(n_0_0_28), .ZN(n_0_0_27));
   AOI22_X1 i_0_0_43 (.A1(A[9]), .A2(n_0_0_73), .B1(n_0_0_30), .B2(n_0_0_29), 
      .ZN(n_0_0_28));
   XOR2_X1 i_0_0_44 (.A(A[9]), .B(n_0_0_73), .Z(n_0_0_29));
   INV_X1 i_0_0_45 (.A(n_0_0_31), .ZN(n_0_0_30));
   AOI22_X1 i_0_0_46 (.A1(A[8]), .A2(n_0_0_71), .B1(n_0_0_33), .B2(n_0_0_70), 
      .ZN(n_0_0_31));
   INV_X1 i_0_0_47 (.A(n_0_0_34), .ZN(n_0_0_33));
   AOI22_X1 i_0_0_48 (.A1(A[7]), .A2(n_0_0_67), .B1(n_0_0_66), .B2(n_0_0_35), 
      .ZN(n_0_0_34));
   OAI21_X1 i_0_0_49 (.A(n_0_0_62), .B1(n_0_0_61), .B2(n_0_0_36), .ZN(n_0_0_35));
   AOI21_X1 i_0_0_50 (.A(n_0_0_37), .B1(A[5]), .B2(n_0_0_58), .ZN(n_0_0_36));
   NOR2_X1 i_0_0_51 (.A1(n_0_0_39), .A2(n_0_0_38), .ZN(n_0_0_37));
   XOR2_X1 i_0_0_52 (.A(n_0_0_225), .B(n_0_0_58), .Z(n_0_0_38));
   AOI21_X1 i_0_0_53 (.A(n_0_0_40), .B1(A[4]), .B2(n_0_0_55), .ZN(n_0_0_39));
   NOR2_X1 i_0_0_54 (.A1(n_0_0_42), .A2(n_0_0_41), .ZN(n_0_0_40));
   XOR2_X1 i_0_0_55 (.A(n_0_0_224), .B(n_0_0_55), .Z(n_0_0_41));
   AOI21_X1 i_0_0_56 (.A(n_0_0_43), .B1(A[3]), .B2(n_0_0_51), .ZN(n_0_0_42));
   NOR2_X1 i_0_0_57 (.A1(n_0_0_45), .A2(n_0_0_44), .ZN(n_0_0_43));
   XOR2_X1 i_0_0_58 (.A(n_0_0_223), .B(n_0_0_51), .Z(n_0_0_44));
   AOI22_X1 i_0_0_59 (.A1(A[2]), .A2(n_0_0_48), .B1(n_0_0_47), .B2(n_0_0_46), 
      .ZN(n_0_0_45));
   OAI21_X1 i_0_0_60 (.A(n_0_0_140), .B1(n_0_0_221), .B2(n_0_0_142), .ZN(
      n_0_0_46));
   XNOR2_X1 i_0_0_61 (.A(n_0_0_222), .B(n_0_0_48), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_62 (.A1(n_0_0_50), .A2(n_0_0_49), .ZN(n_0_0_48));
   AOI22_X1 i_0_0_63 (.A1(multiplicand_buffer[2]), .A2(n_0_0_111), .B1(n_0_0_150), 
      .B2(n_0_0_144), .ZN(n_0_0_49));
   AOI22_X1 i_0_0_64 (.A1(n_0_0_110), .A2(n_0_0_54), .B1(multiplicand_buffer[1]), 
      .B2(n_0_0_151), .ZN(n_0_0_50));
   NAND2_X1 i_0_0_65 (.A1(n_0_0_53), .A2(n_0_0_52), .ZN(n_0_0_51));
   AOI22_X1 i_0_0_66 (.A1(n_0_0_110), .A2(n_0_0_57), .B1(multiplicand_buffer[2]), 
      .B2(n_0_0_151), .ZN(n_0_0_52));
   AOI22_X1 i_0_0_67 (.A1(multiplicand_buffer[3]), .A2(n_0_0_111), .B1(n_0_0_150), 
      .B2(n_0_0_54), .ZN(n_0_0_53));
   AOI21_X1 i_0_0_68 (.A(n_0_0_120), .B1(multiplicand_buffer[2]), .B2(n_0_0_145), 
      .ZN(n_0_0_54));
   OAI21_X1 i_0_0_69 (.A(n_0_0_56), .B1(n_0_0_202), .B2(n_0_0_75), .ZN(n_0_0_55));
   AOI222_X1 i_0_0_70 (.A1(n_0_0_150), .A2(n_0_0_57), .B1(multiplicand_buffer[4]), 
      .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_60), .ZN(n_0_0_56));
   AOI21_X1 i_0_0_71 (.A(n_0_0_117), .B1(multiplicand_buffer[3]), .B2(n_0_0_119), 
      .ZN(n_0_0_57));
   OAI21_X1 i_0_0_72 (.A(n_0_0_59), .B1(n_0_0_203), .B2(n_0_0_75), .ZN(n_0_0_58));
   AOI222_X1 i_0_0_73 (.A1(n_0_0_150), .A2(n_0_0_60), .B1(multiplicand_buffer[5]), 
      .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_65), .ZN(n_0_0_59));
   AOI21_X1 i_0_0_74 (.A(n_0_0_157), .B1(multiplicand_buffer[4]), .B2(n_0_0_118), 
      .ZN(n_0_0_60));
   OAI21_X1 i_0_0_75 (.A(n_0_0_62), .B1(A[6]), .B2(n_0_0_63), .ZN(n_0_0_61));
   NAND2_X1 i_0_0_76 (.A1(A[6]), .A2(n_0_0_63), .ZN(n_0_0_62));
   OAI21_X1 i_0_0_77 (.A(n_0_0_64), .B1(n_0_0_158), .B2(n_0_0_75), .ZN(n_0_0_63));
   AOI222_X1 i_0_0_78 (.A1(n_0_0_150), .A2(n_0_0_65), .B1(multiplicand_buffer[6]), 
      .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_69), .ZN(n_0_0_64));
   AOI21_X1 i_0_0_79 (.A(n_0_0_149), .B1(multiplicand_buffer[5]), .B2(n_0_0_32), 
      .ZN(n_0_0_65));
   XOR2_X1 i_0_0_80 (.A(A[7]), .B(n_0_0_67), .Z(n_0_0_66));
   OAI21_X1 i_0_0_81 (.A(n_0_0_68), .B1(n_0_0_163), .B2(n_0_0_75), .ZN(n_0_0_67));
   AOI222_X1 i_0_0_82 (.A1(n_0_0_150), .A2(n_0_0_69), .B1(multiplicand_buffer[7]), 
      .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_114), .ZN(n_0_0_68));
   AOI21_X1 i_0_0_83 (.A(n_0_0_143), .B1(multiplicand_buffer[6]), .B2(n_0_0_147), 
      .ZN(n_0_0_69));
   OAI21_X1 i_0_0_84 (.A(n_0_0_74), .B1(n_0_0_204), .B2(n_0_0_75), .ZN(n_0_0_73));
   AOI222_X1 i_0_0_85 (.A1(n_0_0_150), .A2(n_0_0_107), .B1(
      multiplicand_buffer[9]), .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_78), 
      .ZN(n_0_0_74));
   OAI21_X1 i_0_0_86 (.A(n_0_0_77), .B1(n_0_0_208), .B2(n_0_0_75), .ZN(n_0_0_76));
   AOI222_X1 i_0_0_87 (.A1(n_0_0_150), .A2(n_0_0_78), .B1(
      multiplicand_buffer[10]), .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_82), 
      .ZN(n_0_0_77));
   AOI22_X1 i_0_0_88 (.A1(n_0_0_208), .A2(n_0_0_109), .B1(multiplicand_buffer[9]), 
      .B2(n_0_0_108), .ZN(n_0_0_78));
   NAND2_X1 i_0_0_89 (.A1(n_0_0_81), .A2(n_0_0_80), .ZN(n_0_0_79));
   AOI22_X1 i_0_0_90 (.A1(n_0_0_110), .A2(n_0_0_86), .B1(multiplicand_buffer[10]), 
      .B2(n_0_0_151), .ZN(n_0_0_80));
   AOI22_X1 i_0_0_91 (.A1(n_0_0_150), .A2(n_0_0_82), .B1(multiplicand_buffer[11]), 
      .B2(n_0_0_111), .ZN(n_0_0_81));
   AOI21_X1 i_0_0_92 (.A(n_0_0_105), .B1(multiplicand_buffer[10]), .B2(n_0_0_106), 
      .ZN(n_0_0_82));
   NAND2_X1 i_0_0_93 (.A1(A[12]), .A2(n_0_0_84), .ZN(n_0_0_83));
   OAI21_X1 i_0_0_94 (.A(n_0_0_85), .B1(n_0_0_209), .B2(n_0_0_75), .ZN(n_0_0_84));
   AOI222_X1 i_0_0_95 (.A1(n_0_0_150), .A2(n_0_0_86), .B1(
      multiplicand_buffer[12]), .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_90), 
      .ZN(n_0_0_85));
   AOI21_X1 i_0_0_96 (.A(n_0_0_102), .B1(multiplicand_buffer[11]), .B2(n_0_0_104), 
      .ZN(n_0_0_86));
   XOR2_X1 i_0_0_97 (.A(A[13]), .B(n_0_0_88), .Z(n_0_0_87));
   OAI21_X1 i_0_0_98 (.A(n_0_0_89), .B1(n_0_0_210), .B2(n_0_0_75), .ZN(n_0_0_88));
   AOI222_X1 i_0_0_99 (.A1(n_0_0_150), .A2(n_0_0_90), .B1(
      multiplicand_buffer[13]), .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_91), 
      .ZN(n_0_0_89));
   AOI22_X1 i_0_0_100 (.A1(n_0_0_210), .A2(n_0_0_102), .B1(
      multiplicand_buffer[12]), .B2(n_0_0_103), .ZN(n_0_0_90));
   AOI21_X1 i_0_0_101 (.A(n_0_0_100), .B1(multiplicand_buffer[13]), .B2(
      n_0_0_101), .ZN(n_0_0_91));
   NAND2_X1 i_0_0_102 (.A1(n_0_0_95), .A2(n_0_0_93), .ZN(n_0_0_92));
   AOI22_X1 i_0_0_103 (.A1(n_0_0_110), .A2(n_0_0_97), .B1(n_0_0_150), .B2(
      n_0_0_94), .ZN(n_0_0_93));
   AOI21_X1 i_0_0_104 (.A(n_0_0_98), .B1(multiplicand_buffer[14]), .B2(n_0_0_99), 
      .ZN(n_0_0_94));
   AOI22_X1 i_0_0_105 (.A1(multiplicand_buffer[15]), .A2(n_0_0_111), .B1(
      multiplicand_buffer[14]), .B2(n_0_0_151), .ZN(n_0_0_95));
   AOI21_X1 i_0_0_111 (.A(n_0_58), .B1(n_0_0_121), .B2(n_0_0_96), .ZN(n_0_19));
   OAI221_X1 i_0_0_112 (.A(Q[2]), .B1(A[14]), .B2(n_0_0_113), .C1(n_0_0_112), 
      .C2(n_0_0_97), .ZN(n_0_0_96));
   XNOR2_X1 i_0_0_106 (.A(multiplicand_buffer[15]), .B(n_0_0_98), .ZN(n_0_0_97));
   NOR2_X1 i_0_0_107 (.A1(multiplicand_buffer[14]), .A2(n_0_0_99), .ZN(n_0_0_98));
   INV_X1 i_0_0_108 (.A(n_0_0_100), .ZN(n_0_0_99));
   NOR2_X1 i_0_0_109 (.A1(multiplicand_buffer[13]), .A2(n_0_0_101), .ZN(
      n_0_0_100));
   NAND2_X1 i_0_0_110 (.A1(n_0_0_210), .A2(n_0_0_102), .ZN(n_0_0_101));
   INV_X1 i_0_0_113 (.A(n_0_0_103), .ZN(n_0_0_102));
   NAND2_X1 i_0_0_114 (.A1(n_0_0_209), .A2(n_0_0_105), .ZN(n_0_0_103));
   INV_X1 i_0_0_115 (.A(n_0_0_105), .ZN(n_0_0_104));
   NOR2_X1 i_0_0_116 (.A1(multiplicand_buffer[10]), .A2(n_0_0_106), .ZN(
      n_0_0_105));
   NAND2_X1 i_0_0_117 (.A1(n_0_0_208), .A2(n_0_0_109), .ZN(n_0_0_106));
   NAND2_X1 i_0_0_118 (.A1(n_0_0_203), .A2(n_0_0_117), .ZN(n_0_0_32));
   INV_X1 i_0_0_119 (.A(n_0_0_118), .ZN(n_0_0_117));
   NAND2_X1 i_0_0_120 (.A1(n_0_0_202), .A2(n_0_0_120), .ZN(n_0_0_118));
   INV_X1 i_0_0_121 (.A(n_0_0_120), .ZN(n_0_0_119));
   NOR2_X1 i_0_0_122 (.A1(multiplicand_buffer[2]), .A2(n_0_0_145), .ZN(n_0_0_120));
   OAI221_X1 i_0_0_123 (.A(n_0_0_205), .B1(A[14]), .B2(n_0_0_155), .C1(
      multiplicand_buffer[15]), .C2(n_0_0_156), .ZN(n_0_0_121));
   NOR2_X1 i_0_0_124 (.A1(n_0_0_205), .A2(n_0_58), .ZN(n_0_20));
   INV_X1 i_0_0_125 (.A(n_0_0_122), .ZN(n_0_21));
   AOI22_X1 i_0_0_126 (.A1(Q[3]), .A2(n_0_0_207), .B1(multiplier[0]), .B2(n_0_3), 
      .ZN(n_0_0_122));
   INV_X1 i_0_0_141 (.A(n_0_0_123), .ZN(n_0_22));
   AOI22_X1 i_0_0_142 (.A1(Q[4]), .A2(n_0_0_207), .B1(multiplier[1]), .B2(n_0_3), 
      .ZN(n_0_0_123));
   INV_X1 i_0_0_143 (.A(n_0_0_124), .ZN(n_0_23));
   AOI22_X1 i_0_0_144 (.A1(Q[5]), .A2(n_0_0_207), .B1(multiplier[2]), .B2(n_0_3), 
      .ZN(n_0_0_124));
   INV_X1 i_0_0_145 (.A(n_0_0_125), .ZN(n_0_24));
   AOI22_X1 i_0_0_146 (.A1(Q[6]), .A2(n_0_0_207), .B1(multiplier[3]), .B2(n_0_3), 
      .ZN(n_0_0_125));
   INV_X1 i_0_0_147 (.A(n_0_0_126), .ZN(n_0_25));
   AOI22_X1 i_0_0_148 (.A1(Q[7]), .A2(n_0_0_207), .B1(multiplier[4]), .B2(n_0_3), 
      .ZN(n_0_0_126));
   INV_X1 i_0_0_149 (.A(n_0_0_127), .ZN(n_0_26));
   AOI22_X1 i_0_0_150 (.A1(Q[8]), .A2(n_0_0_207), .B1(multiplier[5]), .B2(n_0_3), 
      .ZN(n_0_0_127));
   OAI21_X1 i_0_0_151 (.A(n_0_0_128), .B1(n_0_0_212), .B2(n_0_58), .ZN(n_0_27));
   NAND2_X1 i_0_0_152 (.A1(multiplier[6]), .A2(n_0_3), .ZN(n_0_0_128));
   OAI21_X1 i_0_0_153 (.A(n_0_0_129), .B1(n_0_0_213), .B2(n_0_58), .ZN(n_0_28));
   NAND2_X1 i_0_0_154 (.A1(multiplier[7]), .A2(n_0_3), .ZN(n_0_0_129));
   OAI21_X1 i_0_0_155 (.A(n_0_0_130), .B1(n_0_0_214), .B2(n_0_58), .ZN(n_0_29));
   NAND2_X1 i_0_0_156 (.A1(multiplier[8]), .A2(n_0_3), .ZN(n_0_0_130));
   OAI21_X1 i_0_0_157 (.A(n_0_0_131), .B1(n_0_0_215), .B2(n_0_58), .ZN(n_0_30));
   NAND2_X1 i_0_0_158 (.A1(multiplier[9]), .A2(n_0_3), .ZN(n_0_0_131));
   OAI21_X1 i_0_0_159 (.A(n_0_0_132), .B1(n_0_0_216), .B2(n_0_58), .ZN(n_0_31));
   NAND2_X1 i_0_0_160 (.A1(multiplier[10]), .A2(n_0_3), .ZN(n_0_0_132));
   OAI21_X1 i_0_0_161 (.A(n_0_0_133), .B1(n_0_0_217), .B2(n_0_58), .ZN(n_0_32));
   NAND2_X1 i_0_0_162 (.A1(multiplier[11]), .A2(n_0_3), .ZN(n_0_0_133));
   OAI21_X1 i_0_0_163 (.A(n_0_0_134), .B1(n_0_0_218), .B2(n_0_58), .ZN(n_0_33));
   NAND2_X1 i_0_0_164 (.A1(multiplier[12]), .A2(n_0_3), .ZN(n_0_0_134));
   OAI21_X1 i_0_0_165 (.A(n_0_0_135), .B1(n_0_0_219), .B2(n_0_58), .ZN(n_0_34));
   NAND2_X1 i_0_0_166 (.A1(multiplier[13]), .A2(n_0_3), .ZN(n_0_0_135));
   INV_X1 i_0_0_167 (.A(n_0_0_136), .ZN(n_0_35));
   AOI21_X1 i_0_0_168 (.A(n_0_0_137), .B1(multiplier[14]), .B2(n_0_3), .ZN(
      n_0_0_136));
   AOI211_X1 i_0_0_169 (.A(n_0_58), .B(n_0_0_153), .C1(n_0_0_220), .C2(n_0_0_154), 
      .ZN(n_0_0_137));
   OAI21_X1 i_0_0_170 (.A(n_0_0_159), .B1(n_0_0_139), .B2(n_0_0_138), .ZN(n_0_36));
   OAI21_X1 i_0_0_171 (.A(n_0_0_207), .B1(n_0_0_153), .B2(n_0_0_141), .ZN(
      n_0_0_138));
   INV_X1 i_0_0_172 (.A(n_0_0_140), .ZN(n_0_0_139));
   NAND2_X1 i_0_0_127 (.A1(n_0_0_153), .A2(n_0_0_141), .ZN(n_0_0_140));
   XNOR2_X1 i_0_0_128 (.A(A[1]), .B(n_0_0_142), .ZN(n_0_0_141));
   AOI222_X1 i_0_0_129 (.A1(multiplicand_buffer[1]), .A2(n_0_0_111), .B1(
      n_0_0_144), .B2(n_0_0_110), .C1(multiplicand_buffer[0]), .C2(n_0_0_148), 
      .ZN(n_0_0_142));
   AOI21_X1 i_0_0_130 (.A(n_0_0_146), .B1(multiplicand_buffer[1]), .B2(
      multiplicand_buffer[0]), .ZN(n_0_0_144));
   INV_X1 i_0_0_131 (.A(n_0_0_146), .ZN(n_0_0_145));
   NOR2_X1 i_0_0_132 (.A1(multiplicand_buffer[1]), .A2(multiplicand_buffer[0]), 
      .ZN(n_0_0_146));
   NAND2_X1 i_0_0_133 (.A1(n_0_0_75), .A2(n_0_0_152), .ZN(n_0_0_148));
   INV_X1 i_0_0_134 (.A(n_0_0_75), .ZN(n_0_0_151));
   NOR2_X1 i_0_0_135 (.A1(n_0_0_220), .A2(n_0_0_154), .ZN(n_0_0_153));
   NAND3_X1 i_0_0_136 (.A1(multiplicand_buffer[0]), .A2(n_0_0_155), .A3(
      n_0_0_113), .ZN(n_0_0_154));
   INV_X1 i_0_0_137 (.A(n_0_0_156), .ZN(n_0_0_155));
   NAND2_X1 i_0_0_192 (.A1(multiplier[15]), .A2(n_0_3), .ZN(n_0_0_159));
   AND3_X1 i_0_0_138 (.A1(start), .A2(n_0_0_211), .A3(n_0_0_199), .ZN(n_0_3));
   NOR2_X1 i_0_0_139 (.A1(rst), .A2(n_0_59), .ZN(n_0_37));
   NOR2_X1 i_0_0_195 (.A1(counter[0]), .A2(n_0_58), .ZN(n_0_38));
   NOR3_X1 i_0_0_140 (.A1(n_0_58), .A2(n_0_0_161), .A3(n_0_0_160), .ZN(n_0_40));
   AOI21_X1 i_0_0_173 (.A(counter[2]), .B1(counter[1]), .B2(counter[0]), 
      .ZN(n_0_0_160));
   OR2_X1 i_0_0_199 (.A1(working), .A2(n_0_58), .ZN(n_0_41));
   AND2_X1 i_0_0_174 (.A1(n_0_0_199), .A2(multiplicand[0]), .ZN(n_0_42));
   AND2_X1 i_0_0_201 (.A1(n_0_0_199), .A2(multiplicand[1]), .ZN(n_0_43));
   AND2_X1 i_0_0_202 (.A1(n_0_0_199), .A2(multiplicand[2]), .ZN(n_0_44));
   AND2_X1 i_0_0_203 (.A1(n_0_0_199), .A2(multiplicand[3]), .ZN(n_0_45));
   AND2_X1 i_0_0_204 (.A1(n_0_0_199), .A2(multiplicand[4]), .ZN(n_0_46));
   AND2_X1 i_0_0_205 (.A1(n_0_0_199), .A2(multiplicand[5]), .ZN(n_0_47));
   AND2_X1 i_0_0_206 (.A1(n_0_0_199), .A2(multiplicand[6]), .ZN(n_0_48));
   AND2_X1 i_0_0_207 (.A1(n_0_0_199), .A2(multiplicand[7]), .ZN(n_0_49));
   AND2_X1 i_0_0_208 (.A1(n_0_0_199), .A2(multiplicand[8]), .ZN(n_0_50));
   AND2_X1 i_0_0_209 (.A1(n_0_0_199), .A2(multiplicand[9]), .ZN(n_0_51));
   AND2_X1 i_0_0_210 (.A1(n_0_0_199), .A2(multiplicand[10]), .ZN(n_0_52));
   AND2_X1 i_0_0_211 (.A1(n_0_0_199), .A2(multiplicand[11]), .ZN(n_0_53));
   AND2_X1 i_0_0_212 (.A1(n_0_0_199), .A2(multiplicand[12]), .ZN(n_0_54));
   AND2_X1 i_0_0_213 (.A1(n_0_0_199), .A2(multiplicand[13]), .ZN(n_0_55));
   AND2_X1 i_0_0_214 (.A1(n_0_0_199), .A2(multiplicand[14]), .ZN(n_0_56));
   AND2_X1 i_0_0_215 (.A1(n_0_0_199), .A2(multiplicand[15]), .ZN(n_0_57));
   NOR2_X1 i_0_0_175 (.A1(n_0_58), .A2(n_0_0_162), .ZN(n_0_59));
   INV_X1 i_0_0_176 (.A(n_0_0_162), .ZN(n_0_0_161));
   NAND3_X1 i_0_0_177 (.A1(counter[1]), .A2(counter[0]), .A3(counter[2]), 
      .ZN(n_0_0_162));
   NOR2_X1 i_0_0_178 (.A1(n_0_0_201), .A2(n_0_0_164), .ZN(overflow_flag));
   OAI33_X1 i_0_0_179 (.A1(n_0_0_171), .A2(n_0_0_168), .A3(n_0_0_169), .B1(
      n_0_0_172), .B2(n_0_0_165), .B3(n_0_0_166), .ZN(n_0_0_164));
   OR4_X1 i_0_0_180 (.A1(A[14]), .A2(A[13]), .A3(A[12]), .A4(A[9]), .ZN(
      n_0_0_165));
   NAND3_X1 i_0_0_181 (.A1(n_0_0_227), .A2(n_0_0_226), .A3(n_0_0_167), .ZN(
      n_0_0_166));
   NOR3_X1 i_0_0_182 (.A1(A[8]), .A2(A[7]), .A3(A[6]), .ZN(n_0_0_167));
   NAND4_X1 i_0_0_183 (.A1(A[14]), .A2(A[13]), .A3(A[12]), .A4(A[11]), .ZN(
      n_0_0_168));
   NAND4_X1 i_0_0_184 (.A1(A[8]), .A2(A[7]), .A3(A[10]), .A4(A[9]), .ZN(
      n_0_0_169));
   INV_X1 i_0_0_185 (.A(n_0_0_170), .ZN(result[0]));
   OAI21_X1 i_0_0_186 (.A(n_0_0_198), .B1(Q[8]), .B2(Q[7]), .ZN(n_0_0_170));
   AOI21_X1 i_0_0_187 (.A(n_0_0_197), .B1(n_0_0_212), .B2(n_0_0_198), .ZN(
      result[1]));
   AOI21_X1 i_0_0_188 (.A(n_0_0_194), .B1(n_0_0_213), .B2(n_0_0_196), .ZN(
      result[2]));
   AOI21_X1 i_0_0_189 (.A(n_0_0_192), .B1(n_0_0_214), .B2(n_0_0_195), .ZN(
      result[3]));
   AOI21_X1 i_0_0_190 (.A(n_0_0_190), .B1(n_0_0_215), .B2(n_0_0_193), .ZN(
      result[4]));
   AOI21_X1 i_0_0_191 (.A(n_0_0_188), .B1(n_0_0_216), .B2(n_0_0_191), .ZN(
      result[5]));
   AOI21_X1 i_0_0_193 (.A(n_0_0_186), .B1(n_0_0_217), .B2(n_0_0_189), .ZN(
      result[6]));
   AOI21_X1 i_0_0_236 (.A(n_0_0_184), .B1(n_0_0_218), .B2(n_0_0_187), .ZN(
      result[7]));
   AOI21_X1 i_0_0_237 (.A(n_0_0_182), .B1(n_0_0_219), .B2(n_0_0_185), .ZN(
      result[8]));
   AOI21_X1 i_0_0_238 (.A(n_0_0_180), .B1(n_0_0_220), .B2(n_0_0_183), .ZN(
      result[9]));
   AOI21_X1 i_0_0_239 (.A(n_0_0_178), .B1(n_0_0_221), .B2(n_0_0_181), .ZN(
      result[10]));
   AOI21_X1 i_0_0_240 (.A(n_0_0_176), .B1(n_0_0_222), .B2(n_0_0_179), .ZN(
      result[11]));
   AOI21_X1 i_0_0_241 (.A(n_0_0_174), .B1(n_0_0_223), .B2(n_0_0_177), .ZN(
      result[12]));
   AOI22_X1 i_0_0_194 (.A1(A[4]), .A2(n_0_0_174), .B1(n_0_0_224), .B2(n_0_0_175), 
      .ZN(result[13]));
   AOI21_X1 i_0_0_196 (.A(n_0_0_172), .B1(n_0_0_225), .B2(n_0_0_173), .ZN(
      result[14]));
   AOI21_X1 i_0_0_197 (.A(n_0_0_171), .B1(A[6]), .B2(n_0_0_172), .ZN(result[15]));
   NOR2_X1 i_0_0_198 (.A1(A[6]), .A2(n_0_0_172), .ZN(n_0_0_171));
   NOR2_X1 i_0_0_200 (.A1(n_0_0_225), .A2(n_0_0_173), .ZN(n_0_0_172));
   NAND2_X1 i_0_0_216 (.A1(A[4]), .A2(n_0_0_174), .ZN(n_0_0_173));
   INV_X1 i_0_0_217 (.A(n_0_0_175), .ZN(n_0_0_174));
   NAND2_X1 i_0_0_218 (.A1(A[3]), .A2(n_0_0_176), .ZN(n_0_0_175));
   INV_X1 i_0_0_219 (.A(n_0_0_177), .ZN(n_0_0_176));
   NAND2_X1 i_0_0_220 (.A1(A[2]), .A2(n_0_0_178), .ZN(n_0_0_177));
   INV_X1 i_0_0_221 (.A(n_0_0_179), .ZN(n_0_0_178));
   NAND2_X1 i_0_0_222 (.A1(A[1]), .A2(n_0_0_180), .ZN(n_0_0_179));
   INV_X1 i_0_0_223 (.A(n_0_0_181), .ZN(n_0_0_180));
   NAND2_X1 i_0_0_224 (.A1(A[0]), .A2(n_0_0_182), .ZN(n_0_0_181));
   INV_X1 i_0_0_225 (.A(n_0_0_183), .ZN(n_0_0_182));
   NAND2_X1 i_0_0_226 (.A1(Q[16]), .A2(n_0_0_184), .ZN(n_0_0_183));
   INV_X1 i_0_0_227 (.A(n_0_0_185), .ZN(n_0_0_184));
   NAND2_X1 i_0_0_259 (.A1(Q[15]), .A2(n_0_0_186), .ZN(n_0_0_185));
   INV_X1 i_0_0_228 (.A(n_0_0_187), .ZN(n_0_0_186));
   NAND2_X1 i_0_0_229 (.A1(Q[14]), .A2(n_0_0_188), .ZN(n_0_0_187));
   INV_X1 i_0_0_230 (.A(n_0_0_189), .ZN(n_0_0_188));
   NAND2_X1 i_0_0_231 (.A1(Q[13]), .A2(n_0_0_190), .ZN(n_0_0_189));
   INV_X1 i_0_0_232 (.A(n_0_0_191), .ZN(n_0_0_190));
   NAND2_X1 i_0_0_233 (.A1(Q[12]), .A2(n_0_0_192), .ZN(n_0_0_191));
   INV_X1 i_0_0_234 (.A(n_0_0_193), .ZN(n_0_0_192));
   NAND2_X1 i_0_0_235 (.A1(Q[11]), .A2(n_0_0_194), .ZN(n_0_0_193));
   INV_X1 i_0_0_242 (.A(n_0_0_195), .ZN(n_0_0_194));
   NAND2_X1 i_0_0_243 (.A1(Q[10]), .A2(n_0_0_197), .ZN(n_0_0_195));
   INV_X1 i_0_0_244 (.A(n_0_0_197), .ZN(n_0_0_196));
   NOR2_X1 i_0_0_245 (.A1(n_0_0_212), .A2(n_0_0_198), .ZN(n_0_0_197));
   NAND2_X1 i_0_0_246 (.A1(Q[8]), .A2(Q[7]), .ZN(n_0_0_198));
   INV_X1 i_0_0_247 (.A(rst), .ZN(n_0_0_199));
   INV_X1 i_0_0_248 (.A(finish), .ZN(n_0_0_201));
   INV_X1 i_0_0_249 (.A(multiplicand_buffer[3]), .ZN(n_0_0_202));
   INV_X1 i_0_0_250 (.A(multiplicand_buffer[4]), .ZN(n_0_0_203));
   INV_X1 i_0_0_251 (.A(multiplicand_buffer[9]), .ZN(n_0_0_208));
   INV_X1 i_0_0_252 (.A(multiplicand_buffer[11]), .ZN(n_0_0_209));
   INV_X1 i_0_0_253 (.A(multiplicand_buffer[12]), .ZN(n_0_0_210));
   INV_X1 i_0_0_254 (.A(Q[9]), .ZN(n_0_0_212));
   INV_X1 i_0_0_255 (.A(Q[10]), .ZN(n_0_0_213));
   INV_X1 i_0_0_256 (.A(Q[11]), .ZN(n_0_0_214));
   INV_X1 i_0_0_257 (.A(Q[12]), .ZN(n_0_0_215));
   INV_X1 i_0_0_258 (.A(Q[13]), .ZN(n_0_0_216));
   INV_X1 i_0_0_260 (.A(Q[14]), .ZN(n_0_0_217));
   INV_X1 i_0_0_292 (.A(Q[15]), .ZN(n_0_0_218));
   INV_X1 i_0_0_293 (.A(Q[16]), .ZN(n_0_0_219));
   INV_X1 i_0_0_261 (.A(A[0]), .ZN(n_0_0_220));
   INV_X1 i_0_0_262 (.A(A[1]), .ZN(n_0_0_221));
   INV_X1 i_0_0_263 (.A(A[2]), .ZN(n_0_0_222));
   INV_X1 i_0_0_264 (.A(A[3]), .ZN(n_0_0_223));
   INV_X1 i_0_0_265 (.A(A[4]), .ZN(n_0_0_224));
   INV_X1 i_0_0_266 (.A(A[5]), .ZN(n_0_0_225));
   INV_X1 i_0_0_267 (.A(A[10]), .ZN(n_0_0_226));
   INV_X1 i_0_0_268 (.A(A[11]), .ZN(n_0_0_227));
   XOR2_X1 i_0_0_269 (.A(A[8]), .B(n_0_0_71), .Z(n_0_0_70));
   OAI21_X1 i_0_0_270 (.A(n_0_0_72), .B1(n_0_0_200), .B2(n_0_0_75), .ZN(n_0_0_71));
   AOI222_X1 i_0_0_271 (.A1(n_0_0_150), .A2(n_0_0_114), .B1(
      multiplicand_buffer[8]), .B2(n_0_0_111), .C1(n_0_0_110), .C2(n_0_0_107), 
      .ZN(n_0_0_72));
   NAND2_X1 i_0_0_272 (.A1(n_0_0_205), .A2(n_0_0_112), .ZN(n_0_0_75));
   AOI21_X1 i_0_0_273 (.A(n_0_0_109), .B1(multiplicand_buffer[8]), .B2(n_0_0_116), 
      .ZN(n_0_0_107));
   INV_X1 i_0_0_274 (.A(n_0_0_109), .ZN(n_0_0_108));
   NOR2_X1 i_0_0_275 (.A1(multiplicand_buffer[8]), .A2(n_0_0_116), .ZN(n_0_0_109));
   NOR3_X1 i_0_0_276 (.A1(n_0_0_205), .A2(n_0_0_112), .A3(n_0_0_156), .ZN(
      n_0_0_110));
   NOR3_X1 i_0_0_277 (.A1(Q[2]), .A2(n_0_0_112), .A3(n_0_0_156), .ZN(n_0_0_111));
   INV_X1 i_0_0_278 (.A(n_0_0_113), .ZN(n_0_0_112));
   NAND2_X1 i_0_0_279 (.A1(Q[1]), .A2(Q[0]), .ZN(n_0_0_113));
   INV_X1 i_0_0_280 (.A(n_0_0_115), .ZN(n_0_0_114));
   OAI21_X1 i_0_0_281 (.A(n_0_0_116), .B1(n_0_0_200), .B2(n_0_0_143), .ZN(
      n_0_0_115));
   NAND2_X1 i_0_0_282 (.A1(n_0_0_200), .A2(n_0_0_143), .ZN(n_0_0_116));
   NOR2_X1 i_0_0_283 (.A1(multiplicand_buffer[6]), .A2(n_0_0_147), .ZN(n_0_0_143));
   INV_X1 i_0_0_284 (.A(n_0_0_149), .ZN(n_0_0_147));
   NOR2_X1 i_0_0_285 (.A1(multiplicand_buffer[5]), .A2(n_0_0_32), .ZN(n_0_0_149));
   INV_X1 i_0_0_286 (.A(n_0_0_152), .ZN(n_0_0_150));
   NAND2_X1 i_0_0_287 (.A1(Q[2]), .A2(n_0_0_156), .ZN(n_0_0_152));
   NOR2_X1 i_0_0_288 (.A1(Q[1]), .A2(Q[0]), .ZN(n_0_0_156));
   INV_X1 i_0_0_289 (.A(n_0_0_32), .ZN(n_0_0_157));
   INV_X1 i_0_0_290 (.A(multiplicand_buffer[5]), .ZN(n_0_0_158));
   INV_X1 i_0_0_291 (.A(multiplicand_buffer[6]), .ZN(n_0_0_163));
   INV_X1 i_0_0_294 (.A(multiplicand_buffer[7]), .ZN(n_0_0_200));
   INV_X1 i_0_0_295 (.A(multiplicand_buffer[8]), .ZN(n_0_0_204));
   INV_X1 i_0_0_296 (.A(Q[2]), .ZN(n_0_0_205));
   AOI211_X1 i_0_0_297 (.A(n_0_0_206), .B(n_0_58), .C1(counter[1]), .C2(
      counter[0]), .ZN(n_0_39));
   NOR2_X1 i_0_0_298 (.A1(counter[1]), .A2(counter[0]), .ZN(n_0_0_206));
   INV_X1 i_0_0_299 (.A(n_0_0_207), .ZN(n_0_58));
   AOI21_X1 i_0_0_300 (.A(rst), .B1(n_0_0_211), .B2(start), .ZN(n_0_0_207));
   INV_X1 i_0_0_301 (.A(start_buffer), .ZN(n_0_0_211));
endmodule
