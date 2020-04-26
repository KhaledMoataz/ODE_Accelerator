/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sat Apr 25 20:11:27 2020
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 4257688169 */

/* blackbox module adder_bbox_0 */

/* blackbox module adder_bbox_1 */

/* blackbox module adder_bbox */

module decompressor(clk, reset, start, bit, value, store, out);
   input clk;
   input reset;
   input start;
   input bit;
   input [5:0]value;
   output store;
   output [31:0]out;

   wire [6:0]remain;
   wire [6:0]temp;
   wire [6:0]new_pos;
   wire next;
   wire n_0_0;
   wire [6:0]reg_temp;
   wire [4:0]counter;
   wire [4:0]counter2;
   wire n_0_1;
   wire n_0_48;
   wire n_0_47;
   wire n_0_46;
   wire n_0_45;
   wire n_0_44;
   wire n_0_43;
   wire n_0_42;
   wire n_0_41;
   wire n_0_40;
   wire n_0_39;
   wire n_0_38;
   wire n_0_37;
   wire n_0_36;
   wire n_0_35;
   wire n_0_34;
   wire n_0_33;
   wire n_0_32;
   wire n_0_31;
   wire n_0_30;
   wire n_0_29;
   wire n_0_28;
   wire n_0_27;
   wire n_0_26;
   wire n_0_25;
   wire n_0_24;
   wire n_0_23;
   wire n_0_22;
   wire n_0_21;
   wire n_0_20;
   wire n_0_19;
   wire n_0_18;
   wire n_0_17;
   wire n_0_16;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
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
   wire n_0_7;
   wire n_0_0_67;
   wire [6:0]new_value;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_14;
   wire n_0_0_68;
   wire n_0_0_69;
   wire n_0_0_70;
   wire n_0_0_71;
   wire work;
   wire n_0_0_72;
   wire n_0_0_73;
   wire n_0_0_74;
   wire n_0_0_75;
   wire n_0_15;
   wire n_0_0_76;
   wire n_0_0_77;
   wire n_0_0_78;
   wire n_0_0_79;
   wire n_0_0_80;
   wire n_0_13;
   wire n_0_0_81;
   wire n_0_0_82;
   wire n_0_0_83;

   adder_bbox_0 sub1 (.p_0({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .p_1({
      1'b0, 1'b0, counter2[4], counter2[3], counter2[2], counter2[1], 
      counter2[0]}), .p_2(1'b1), .p_3(remain), .p_4(), .p_5(), .p_6());
   adder_bbox_1 sub2 (.p_0({1'b0, value[5], value[4], value[3], value[2], 
      value[1], value[0]}), .p_1(remain), .p_2(1'b1), .p_3(temp), .p_4(), .p_5(), 
      .p_6());
   adder_bbox add1 (.p_0(new_value), .p_1({1'b0, 1'b0, counter[4], counter[3], 
      counter[2], counter[1], counter[0]}), .p_2(1'b0), .p_3(new_pos), .p_4(), 
      .p_5(), .p_6());
   DFF_X1 \out_reg[31]  (.D(n_0_48), .CK(clk), .Q(out[31]), .QN());
   DFF_X1 \out_reg[30]  (.D(n_0_47), .CK(clk), .Q(out[30]), .QN());
   DFF_X1 \out_reg[29]  (.D(n_0_46), .CK(clk), .Q(out[29]), .QN());
   DFF_X1 \out_reg[28]  (.D(n_0_45), .CK(clk), .Q(out[28]), .QN());
   DFF_X1 \out_reg[27]  (.D(n_0_44), .CK(clk), .Q(out[27]), .QN());
   DFF_X1 \out_reg[26]  (.D(n_0_43), .CK(clk), .Q(out[26]), .QN());
   DFF_X1 \out_reg[25]  (.D(n_0_42), .CK(clk), .Q(out[25]), .QN());
   DFF_X1 \out_reg[24]  (.D(n_0_41), .CK(clk), .Q(out[24]), .QN());
   DFF_X1 \out_reg[23]  (.D(n_0_40), .CK(clk), .Q(out[23]), .QN());
   DFF_X1 \out_reg[22]  (.D(n_0_39), .CK(clk), .Q(out[22]), .QN());
   DFF_X1 \out_reg[21]  (.D(n_0_38), .CK(clk), .Q(out[21]), .QN());
   DFF_X1 \out_reg[20]  (.D(n_0_37), .CK(clk), .Q(out[20]), .QN());
   DFF_X1 \out_reg[19]  (.D(n_0_36), .CK(clk), .Q(out[19]), .QN());
   DFF_X1 \out_reg[18]  (.D(n_0_35), .CK(clk), .Q(out[18]), .QN());
   DFF_X1 \out_reg[17]  (.D(n_0_34), .CK(clk), .Q(out[17]), .QN());
   DFF_X1 \out_reg[16]  (.D(n_0_33), .CK(clk), .Q(out[16]), .QN());
   DFF_X1 \out_reg[15]  (.D(n_0_32), .CK(clk), .Q(out[15]), .QN());
   DFF_X1 \out_reg[14]  (.D(n_0_31), .CK(clk), .Q(out[14]), .QN());
   DFF_X1 \out_reg[13]  (.D(n_0_30), .CK(clk), .Q(out[13]), .QN());
   DFF_X1 \out_reg[12]  (.D(n_0_29), .CK(clk), .Q(out[12]), .QN());
   DFF_X1 \out_reg[11]  (.D(n_0_28), .CK(clk), .Q(out[11]), .QN());
   DFF_X1 \out_reg[10]  (.D(n_0_27), .CK(clk), .Q(out[10]), .QN());
   DFF_X1 \out_reg[9]  (.D(n_0_26), .CK(clk), .Q(out[9]), .QN());
   DFF_X1 \out_reg[8]  (.D(n_0_25), .CK(clk), .Q(out[8]), .QN());
   DFF_X1 \out_reg[7]  (.D(n_0_24), .CK(clk), .Q(out[7]), .QN());
   DFF_X1 \out_reg[6]  (.D(n_0_23), .CK(clk), .Q(out[6]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_0_22), .CK(clk), .Q(out[5]), .QN());
   DFF_X1 \out_reg[4]  (.D(n_0_21), .CK(clk), .Q(out[4]), .QN());
   DFF_X1 \out_reg[3]  (.D(n_0_20), .CK(clk), .Q(out[3]), .QN());
   DFF_X1 \out_reg[2]  (.D(n_0_19), .CK(clk), .Q(out[2]), .QN());
   DFF_X1 \out_reg[1]  (.D(n_0_18), .CK(clk), .Q(out[1]), .QN());
   DFF_X1 \out_reg[0]  (.D(n_0_17), .CK(clk), .Q(out[0]), .QN());
   DFF_X1 store_reg (.D(n_0_16), .CK(clk), .Q(store), .QN());
   DFFS_X1 next_reg (.D(n_0_14), .SN(n_0_15), .CK(n_0_1), .Q(next), .QN());
   CLKGATETST_X1 clk_gate_reg_temp_reg (.CK(clk), .E(n_0_7), .SE(1'b0), .GCK(
      n_0_0));
   DFF_X1 \reg_temp_reg[6]  (.D(temp[6]), .CK(n_0_0), .Q(reg_temp[6]), .QN());
   DFF_X1 \reg_temp_reg[5]  (.D(temp[5]), .CK(n_0_0), .Q(reg_temp[5]), .QN());
   DFF_X1 \reg_temp_reg[4]  (.D(temp[4]), .CK(n_0_0), .Q(reg_temp[4]), .QN());
   DFF_X1 \reg_temp_reg[3]  (.D(temp[3]), .CK(n_0_0), .Q(reg_temp[3]), .QN());
   DFF_X1 \reg_temp_reg[2]  (.D(temp[2]), .CK(n_0_0), .Q(reg_temp[2]), .QN());
   DFF_X1 \reg_temp_reg[1]  (.D(temp[1]), .CK(n_0_0), .Q(reg_temp[1]), .QN());
   DFF_X1 \reg_temp_reg[0]  (.D(temp[0]), .CK(n_0_0), .Q(reg_temp[0]), .QN());
   DFFR_X1 \counter_reg[4]  (.D(n_0_6), .RN(n_0_15), .CK(n_0_1), .Q(counter[4]), 
      .QN());
   DFFR_X1 \counter_reg[3]  (.D(n_0_5), .RN(n_0_15), .CK(n_0_1), .Q(counter[3]), 
      .QN());
   DFFR_X1 \counter_reg[2]  (.D(n_0_4), .RN(n_0_15), .CK(n_0_1), .Q(counter[2]), 
      .QN());
   DFFR_X1 \counter_reg[1]  (.D(n_0_3), .RN(n_0_15), .CK(n_0_1), .Q(counter[1]), 
      .QN());
   DFFR_X1 \counter_reg[0]  (.D(n_0_2), .RN(n_0_15), .CK(n_0_1), .Q(counter[0]), 
      .QN());
   DFF_X1 \counter2_reg[4]  (.D(n_0_12), .CK(n_0_13), .Q(counter2[4]), .QN());
   DFF_X1 \counter2_reg[3]  (.D(n_0_11), .CK(n_0_13), .Q(counter2[3]), .QN());
   DFF_X1 \counter2_reg[2]  (.D(n_0_10), .CK(n_0_13), .Q(counter2[2]), .QN());
   DFF_X1 \counter2_reg[1]  (.D(n_0_9), .CK(n_0_13), .Q(counter2[1]), .QN());
   DFF_X1 \counter2_reg[0]  (.D(n_0_8), .CK(n_0_13), .Q(counter2[0]), .QN());
   CLKGATETST_X1 clk_gate_counter_reg (.CK(clk), .E(work), .SE(1'b0), .GCK(n_0_1));
   MUX2_X1 i_0_0_0 (.A(out[31]), .B(bit), .S(n_0_0_65), .Z(n_0_48));
   MUX2_X1 i_0_0_1 (.A(out[30]), .B(bit), .S(n_0_0_54), .Z(n_0_47));
   MUX2_X1 i_0_0_2 (.A(out[29]), .B(bit), .S(n_0_0_53), .Z(n_0_46));
   MUX2_X1 i_0_0_3 (.A(out[28]), .B(bit), .S(n_0_0_50), .Z(n_0_45));
   MUX2_X1 i_0_0_4 (.A(out[27]), .B(bit), .S(n_0_0_49), .Z(n_0_44));
   MUX2_X1 i_0_0_5 (.A(out[26]), .B(bit), .S(n_0_0_47), .Z(n_0_43));
   MUX2_X1 i_0_0_6 (.A(out[25]), .B(bit), .S(n_0_0_45), .Z(n_0_42));
   MUX2_X1 i_0_0_7 (.A(out[24]), .B(bit), .S(n_0_0_42), .Z(n_0_41));
   MUX2_X1 i_0_0_8 (.A(out[23]), .B(bit), .S(n_0_0_40), .Z(n_0_40));
   MUX2_X1 i_0_0_9 (.A(out[22]), .B(bit), .S(n_0_0_36), .Z(n_0_39));
   MUX2_X1 i_0_0_10 (.A(out[21]), .B(bit), .S(n_0_0_35), .Z(n_0_38));
   MUX2_X1 i_0_0_11 (.A(out[20]), .B(bit), .S(n_0_0_33), .Z(n_0_37));
   MUX2_X1 i_0_0_12 (.A(out[19]), .B(bit), .S(n_0_0_28), .Z(n_0_36));
   MUX2_X1 i_0_0_13 (.A(out[18]), .B(bit), .S(n_0_0_25), .Z(n_0_35));
   MUX2_X1 i_0_0_14 (.A(out[17]), .B(bit), .S(n_0_0_24), .Z(n_0_34));
   MUX2_X1 i_0_0_15 (.A(out[16]), .B(bit), .S(n_0_0_22), .Z(n_0_33));
   MUX2_X1 i_0_0_16 (.A(out[15]), .B(bit), .S(n_0_0_21), .Z(n_0_32));
   MUX2_X1 i_0_0_17 (.A(out[14]), .B(bit), .S(n_0_0_16), .Z(n_0_31));
   MUX2_X1 i_0_0_18 (.A(out[13]), .B(bit), .S(n_0_0_15), .Z(n_0_30));
   MUX2_X1 i_0_0_19 (.A(out[12]), .B(bit), .S(n_0_0_14), .Z(n_0_29));
   MUX2_X1 i_0_0_20 (.A(out[11]), .B(bit), .S(n_0_0_13), .Z(n_0_28));
   MUX2_X1 i_0_0_21 (.A(out[10]), .B(bit), .S(n_0_0_12), .Z(n_0_27));
   MUX2_X1 i_0_0_22 (.A(out[9]), .B(bit), .S(n_0_0_11), .Z(n_0_26));
   MUX2_X1 i_0_0_23 (.A(out[8]), .B(bit), .S(n_0_0_10), .Z(n_0_25));
   MUX2_X1 i_0_0_24 (.A(out[7]), .B(bit), .S(n_0_0_8), .Z(n_0_24));
   MUX2_X1 i_0_0_25 (.A(out[6]), .B(bit), .S(n_0_0_7), .Z(n_0_23));
   MUX2_X1 i_0_0_26 (.A(out[5]), .B(bit), .S(n_0_0_6), .Z(n_0_22));
   MUX2_X1 i_0_0_27 (.A(out[4]), .B(bit), .S(n_0_0_5), .Z(n_0_21));
   MUX2_X1 i_0_0_28 (.A(out[3]), .B(bit), .S(n_0_0_3), .Z(n_0_20));
   MUX2_X1 i_0_0_29 (.A(out[2]), .B(bit), .S(n_0_0_2), .Z(n_0_19));
   MUX2_X1 i_0_0_30 (.A(out[1]), .B(bit), .S(n_0_0_1), .Z(n_0_18));
   MUX2_X1 i_0_0_31 (.A(out[0]), .B(bit), .S(n_0_0_0), .Z(n_0_17));
   MUX2_X1 i_0_0_32 (.A(store), .B(n_0_0_66), .S(n_0_15), .Z(n_0_16));
   AND2_X1 i_0_0_33 (.A1(new_pos[0]), .A2(n_0_0_82), .ZN(n_0_2));
   NOR2_X1 i_0_0_34 (.A1(n_0_0_73), .A2(n_0_0_71), .ZN(n_0_3));
   AND2_X1 i_0_0_35 (.A1(new_pos[2]), .A2(n_0_0_82), .ZN(n_0_4));
   AND2_X1 i_0_0_36 (.A1(new_pos[3]), .A2(n_0_0_82), .ZN(n_0_5));
   NOR2_X1 i_0_0_37 (.A1(n_0_0_74), .A2(n_0_0_71), .ZN(n_0_6));
   AOI211_X1 i_0_0_38 (.A(counter[4]), .B(n_0_0_23), .C1(n_0_0_4), .C2(n_0_0_83), 
      .ZN(n_0_0_0));
   AOI211_X1 i_0_0_39 (.A(n_0_0_46), .B(n_0_0_9), .C1(n_0_0_4), .C2(n_0_0_73), 
      .ZN(n_0_0_1));
   AOI211_X1 i_0_0_40 (.A(n_0_0_48), .B(n_0_0_9), .C1(n_0_0_4), .C2(n_0_0_58), 
      .ZN(n_0_0_2));
   NOR3_X1 i_0_0_41 (.A1(n_0_0_9), .A2(n_0_0_4), .A3(counter[2]), .ZN(n_0_0_3));
   NOR2_X1 i_0_0_42 (.A1(n_0_0_70), .A2(n_0_0_62), .ZN(n_0_0_4));
   AOI211_X1 i_0_0_43 (.A(n_0_0_51), .B(n_0_0_9), .C1(n_0_0_34), .C2(n_0_0_74), 
      .ZN(n_0_0_5));
   AOI211_X1 i_0_0_44 (.A(n_0_0_56), .B(n_0_0_9), .C1(n_0_0_20), .C2(n_0_0_38), 
      .ZN(n_0_0_6));
   AOI211_X1 i_0_0_45 (.A(n_0_0_55), .B(n_0_0_9), .C1(n_0_0_20), .C2(n_0_0_37), 
      .ZN(n_0_0_7));
   NOR2_X1 i_0_0_46 (.A1(n_0_0_9), .A2(n_0_0_20), .ZN(n_0_0_8));
   NAND2_X1 i_0_0_47 (.A1(n_0_0_32), .A2(n_0_0_80), .ZN(n_0_0_9));
   AOI221_X1 i_0_0_48 (.A(n_0_0_18), .B1(n_0_0_19), .B2(n_0_0_83), .C1(
      counter[3]), .C2(n_0_0_43), .ZN(n_0_0_10));
   AOI221_X1 i_0_0_49 (.A(n_0_0_18), .B1(n_0_0_19), .B2(n_0_0_73), .C1(
      counter[3]), .C2(n_0_0_46), .ZN(n_0_0_11));
   AOI221_X1 i_0_0_50 (.A(n_0_0_18), .B1(n_0_0_19), .B2(n_0_0_58), .C1(
      counter[3]), .C2(n_0_0_48), .ZN(n_0_0_12));
   AOI21_X1 i_0_0_51 (.A(n_0_0_17), .B1(counter[2]), .B2(counter[3]), .ZN(
      n_0_0_13));
   AOI221_X1 i_0_0_52 (.A(n_0_0_17), .B1(n_0_0_63), .B2(n_0_0_83), .C1(
      counter[3]), .C2(n_0_0_51), .ZN(n_0_0_14));
   AOI221_X1 i_0_0_53 (.A(n_0_0_18), .B1(n_0_0_38), .B2(n_0_0_63), .C1(
      counter[3]), .C2(n_0_0_56), .ZN(n_0_0_15));
   AOI221_X1 i_0_0_54 (.A(n_0_0_17), .B1(n_0_0_58), .B2(n_0_0_63), .C1(
      counter[3]), .C2(n_0_0_55), .ZN(n_0_0_16));
   OR2_X1 i_0_0_55 (.A1(n_0_0_19), .A2(n_0_0_39), .ZN(n_0_0_17));
   OR2_X1 i_0_0_56 (.A1(n_0_0_39), .A2(n_0_0_20), .ZN(n_0_0_18));
   AOI21_X1 i_0_0_57 (.A(n_0_0_62), .B1(new_pos[2]), .B2(new_pos[3]), .ZN(
      n_0_0_19));
   NOR2_X1 i_0_0_58 (.A1(n_0_0_62), .A2(new_pos[3]), .ZN(n_0_0_20));
   NOR2_X1 i_0_0_59 (.A1(n_0_0_39), .A2(n_0_0_63), .ZN(n_0_0_21));
   AOI221_X1 i_0_0_60 (.A(n_0_0_63), .B1(n_0_0_30), .B2(n_0_0_83), .C1(n_0_0_23), 
      .C2(n_0_0_39), .ZN(n_0_0_22));
   NAND2_X1 i_0_0_61 (.A1(n_0_0_44), .A2(n_0_0_32), .ZN(n_0_0_23));
   AOI221_X1 i_0_0_62 (.A(n_0_0_41), .B1(n_0_0_39), .B2(n_0_0_46), .C1(n_0_0_29), 
      .C2(n_0_0_73), .ZN(n_0_0_24));
   AOI22_X1 i_0_0_63 (.A1(n_0_0_39), .A2(n_0_0_27), .B1(n_0_0_26), .B2(n_0_0_29), 
      .ZN(n_0_0_25));
   NAND3_X1 i_0_0_64 (.A1(new_pos[4]), .A2(new_pos[1]), .A3(new_pos[0]), 
      .ZN(n_0_0_26));
   OR3_X1 i_0_0_65 (.A1(n_0_0_67), .A2(n_0_0_48), .A3(counter[3]), .ZN(n_0_0_27));
   AOI21_X1 i_0_0_66 (.A(n_0_0_29), .B1(n_0_0_31), .B2(n_0_0_39), .ZN(n_0_0_28));
   OAI21_X1 i_0_0_67 (.A(n_0_0_62), .B1(n_0_0_70), .B2(n_0_0_71), .ZN(n_0_0_29));
   NOR2_X1 i_0_0_68 (.A1(n_0_0_71), .A2(n_0_0_70), .ZN(n_0_0_30));
   NAND2_X1 i_0_0_69 (.A1(n_0_0_32), .A2(n_0_0_78), .ZN(n_0_0_31));
   NOR2_X1 i_0_0_70 (.A1(n_0_0_67), .A2(counter[3]), .ZN(n_0_0_32));
   AOI211_X1 i_0_0_71 (.A(n_0_0_41), .B(n_0_0_34), .C1(counter[4]), .C2(n_0_0_51), 
      .ZN(n_0_0_33));
   AOI211_X1 i_0_0_72 (.A(new_pos[3]), .B(n_0_0_71), .C1(n_0_0_69), .C2(
      new_pos[2]), .ZN(n_0_0_34));
   AOI221_X1 i_0_0_73 (.A(n_0_0_41), .B1(n_0_0_39), .B2(n_0_0_56), .C1(n_0_0_38), 
      .C2(n_0_0_64), .ZN(n_0_0_35));
   AOI221_X1 i_0_0_74 (.A(n_0_0_41), .B1(n_0_0_39), .B2(n_0_0_55), .C1(n_0_0_37), 
      .C2(n_0_0_64), .ZN(n_0_0_36));
   NAND3_X1 i_0_0_75 (.A1(new_pos[2]), .A2(new_pos[1]), .A3(new_pos[0]), 
      .ZN(n_0_0_37));
   NAND2_X1 i_0_0_76 (.A1(new_pos[2]), .A2(new_pos[1]), .ZN(n_0_0_38));
   NAND2_X1 i_0_0_77 (.A1(n_0_7), .A2(n_0_0_80), .ZN(n_0_0_39));
   NOR2_X1 i_0_0_78 (.A1(n_0_0_61), .A2(n_0_0_57), .ZN(n_0_0_40));
   OAI211_X1 i_0_0_79 (.A(n_0_7), .B(n_0_0_62), .C1(n_0_0_80), .C2(n_0_0_79), 
      .ZN(n_0_0_41));
   AOI221_X1 i_0_0_80 (.A(n_0_0_61), .B1(n_0_0_57), .B2(n_0_0_43), .C1(n_0_0_60), 
      .C2(n_0_0_83), .ZN(n_0_0_42));
   INV_X1 i_0_0_81 (.A(n_0_0_44), .ZN(n_0_0_43));
   NOR2_X1 i_0_0_82 (.A1(n_0_0_46), .A2(counter[0]), .ZN(n_0_0_44));
   AOI221_X1 i_0_0_83 (.A(n_0_0_61), .B1(n_0_0_57), .B2(n_0_0_46), .C1(n_0_0_60), 
      .C2(n_0_0_73), .ZN(n_0_0_45));
   NAND2_X1 i_0_0_84 (.A1(n_0_0_78), .A2(n_0_0_77), .ZN(n_0_0_46));
   AOI221_X1 i_0_0_85 (.A(n_0_0_61), .B1(n_0_0_60), .B2(n_0_0_58), .C1(n_0_0_57), 
      .C2(n_0_0_48), .ZN(n_0_0_47));
   OAI21_X1 i_0_0_86 (.A(n_0_0_78), .B1(n_0_0_77), .B2(n_0_0_76), .ZN(n_0_0_48));
   AOI21_X1 i_0_0_87 (.A(n_0_0_59), .B1(n_0_0_57), .B2(counter[2]), .ZN(n_0_0_49));
   AOI211_X1 i_0_0_88 (.A(n_0_0_61), .B(n_0_0_52), .C1(n_0_0_51), .C2(n_0_0_57), 
      .ZN(n_0_0_50));
   AOI21_X1 i_0_0_89 (.A(n_0_0_78), .B1(n_0_0_77), .B2(n_0_0_76), .ZN(n_0_0_51));
   AOI21_X1 i_0_0_90 (.A(n_0_0_71), .B1(n_0_0_69), .B2(new_pos[2]), .ZN(n_0_0_52));
   AOI221_X1 i_0_0_91 (.A(n_0_0_59), .B1(n_0_0_57), .B2(n_0_0_56), .C1(n_0_0_82), 
      .C2(n_0_0_73), .ZN(n_0_0_53));
   AOI221_X1 i_0_0_92 (.A(n_0_0_59), .B1(n_0_0_57), .B2(n_0_0_55), .C1(n_0_0_58), 
      .C2(n_0_0_82), .ZN(n_0_0_54));
   NOR3_X1 i_0_0_93 (.A1(n_0_0_78), .A2(n_0_0_77), .A3(n_0_0_76), .ZN(n_0_0_55));
   NOR2_X1 i_0_0_94 (.A1(n_0_0_78), .A2(n_0_0_77), .ZN(n_0_0_56));
   NOR2_X1 i_0_0_95 (.A1(n_0_0_80), .A2(n_0_0_79), .ZN(n_0_0_57));
   NAND2_X1 i_0_0_96 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_0_58));
   OR2_X1 i_0_0_97 (.A1(n_0_0_61), .A2(n_0_0_60), .ZN(n_0_0_59));
   NOR2_X1 i_0_0_98 (.A1(n_0_0_71), .A2(new_pos[2]), .ZN(n_0_0_60));
   OAI211_X1 i_0_0_99 (.A(n_0_7), .B(n_0_0_62), .C1(new_pos[3]), .C2(n_0_0_71), 
      .ZN(n_0_0_61));
   NAND2_X1 i_0_0_100 (.A1(n_0_0_82), .A2(n_0_0_74), .ZN(n_0_0_62));
   NOR2_X1 i_0_0_101 (.A1(n_0_0_71), .A2(new_pos[4]), .ZN(n_0_0_63));
   NOR2_X1 i_0_0_102 (.A1(n_0_0_71), .A2(new_pos[3]), .ZN(n_0_0_64));
   NOR2_X1 i_0_0_103 (.A1(n_0_0_67), .A2(n_0_0_82), .ZN(n_0_0_65));
   NOR2_X1 i_0_0_104 (.A1(n_0_0_72), .A2(n_0_0_82), .ZN(n_0_0_66));
   INV_X1 i_0_0_105 (.A(n_0_0_67), .ZN(n_0_7));
   NAND2_X1 i_0_0_106 (.A1(n_0_15), .A2(work), .ZN(n_0_0_67));
   MUX2_X1 i_0_0_107 (.A(reg_temp[0]), .B(value[0]), .S(start), .Z(new_value[0]));
   MUX2_X1 i_0_0_108 (.A(reg_temp[1]), .B(value[1]), .S(start), .Z(new_value[1]));
   MUX2_X1 i_0_0_109 (.A(reg_temp[2]), .B(value[2]), .S(start), .Z(new_value[2]));
   MUX2_X1 i_0_0_110 (.A(reg_temp[3]), .B(value[3]), .S(start), .Z(new_value[3]));
   MUX2_X1 i_0_0_111 (.A(reg_temp[4]), .B(value[4]), .S(start), .Z(new_value[4]));
   MUX2_X1 i_0_0_112 (.A(reg_temp[5]), .B(value[5]), .S(start), .Z(new_value[5]));
   NOR2_X1 i_0_0_113 (.A1(n_0_0_75), .A2(start), .ZN(new_value[6]));
   NOR2_X1 i_0_0_114 (.A1(n_0_0_76), .A2(reset), .ZN(n_0_8));
   NOR2_X1 i_0_0_115 (.A1(n_0_0_77), .A2(reset), .ZN(n_0_9));
   NOR2_X1 i_0_0_116 (.A1(n_0_0_78), .A2(reset), .ZN(n_0_10));
   NOR2_X1 i_0_0_117 (.A1(n_0_0_79), .A2(reset), .ZN(n_0_11));
   NOR2_X1 i_0_0_118 (.A1(n_0_0_80), .A2(reset), .ZN(n_0_12));
   OR2_X1 i_0_0_119 (.A1(n_0_0_82), .A2(n_0_0_68), .ZN(n_0_14));
   NOR4_X1 i_0_0_120 (.A1(n_0_0_70), .A2(n_0_0_69), .A3(new_pos[6]), .A4(
      new_pos[4]), .ZN(n_0_0_68));
   OR2_X1 i_0_0_121 (.A1(new_pos[1]), .A2(new_pos[0]), .ZN(n_0_0_69));
   OR2_X1 i_0_0_122 (.A1(new_pos[3]), .A2(new_pos[2]), .ZN(n_0_0_70));
   OR2_X1 i_0_0_123 (.A1(new_pos[6]), .A2(new_pos[5]), .ZN(n_0_0_71));
   INV_X1 i_0_0_124 (.A(n_0_0_72), .ZN(work));
   NOR2_X1 i_0_0_125 (.A1(n_0_0_81), .A2(start), .ZN(n_0_0_72));
   INV_X1 i_0_0_126 (.A(new_pos[1]), .ZN(n_0_0_73));
   INV_X1 i_0_0_127 (.A(new_pos[4]), .ZN(n_0_0_74));
   INV_X1 i_0_0_128 (.A(reg_temp[6]), .ZN(n_0_0_75));
   INV_X1 i_0_0_129 (.A(reset), .ZN(n_0_15));
   INV_X1 i_0_0_130 (.A(counter[0]), .ZN(n_0_0_76));
   INV_X1 i_0_0_131 (.A(counter[1]), .ZN(n_0_0_77));
   INV_X1 i_0_0_132 (.A(counter[2]), .ZN(n_0_0_78));
   INV_X1 i_0_0_133 (.A(counter[3]), .ZN(n_0_0_79));
   INV_X1 i_0_0_134 (.A(counter[4]), .ZN(n_0_0_80));
   INV_X1 i_0_0_135 (.A(clk), .ZN(n_0_13));
   INV_X1 i_0_0_136 (.A(next), .ZN(n_0_0_81));
   INV_X1 i_0_0_137 (.A(n_0_0_71), .ZN(n_0_0_82));
   INV_X1 i_0_0_138 (.A(n_0_0_69), .ZN(n_0_0_83));
endmodule
