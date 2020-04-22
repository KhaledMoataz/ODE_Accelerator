module InterpolationModule #(parameter WORD_SIZE = 16, ADDRESS_WIDTH = 16)
(
    input start_sg, alert_sg, update_sg, init_sg, clk, rst,
    input [WORD_SIZE-1: 0] tk_port, 
    input [WORD_SIZE-1: 0] ram_data1, ram_data2,
    input [ADDRESS_WIDTH-1 : 0] uk_port,
    output done_sg,mem_write,overflow,
    output [ADDRESS_WIDTH-1 : 0] ram_add1, ram_add2,
    output [WORD_SIZE-1:0] data_to_ram,
    //to test
    output [WORD_SIZE-1:0] AdderAOP,AdderBOP,ADDERRESULT,MUL_RESULTT,DIV_RESULTT,
    output START_MULL,START_DIVVV,MUL_DONEEE,DIV_DONEEE,
output [WORD_SIZE-1:0] MUL_OPP_A,MUL_OPP_B,DIV_OPP_A,DIV_OPP_B
);

    //enables
wire un_add_en,uz_add_en,uk_add_en,
    un_value_en,
    tn_add_en,tz_add_en,
    tz_value_en,tn_value_en,tk_value_en,
    un_add_temp_en,temp1_en,temp2_en,k_en,
    
    MAR1_en,MAR2_en,
    m_add_en,m_value_en,

    //signals
    write_sg,
    add_sig, sub_sg,

    //mux selectors
    un_add_mux_sel,uk_add_mux_sel,un_add_temp_mux_sel,
    tn_add_mux_sel,tz_add_mux_sel,mdr2_mux_sel,
    m_value_mux_sel,
    start_div, start_mul;
    
    wire[1:0] mar1_mux_select,mar2_mux_sel;

    wire[3:0] adder_opA_mux_sel;
    wire[2:0] adder_opB_mux_sel;

    // registers out
    wire[WORD_SIZE-1:0]
    un_value_out,
    tz_value_out,tn_value_out,tk_value_out,
    temp1_out,temp2_out,k_out,   
    m_value_out;
    wire[ADDRESS_WIDTH-1:0] MAR1_out,MAR2_out,
    un_add_out,uz_add_out,uk_add_out,un_add_temp_out,
    tn_add_out,tz_add_out,m_add_out;
    
    //registers in
    wire[WORD_SIZE-1:0] m_value_in;
    wire[ADDRESS_WIDTH-1:0] MAR1_in,MAR2_in,
    un_add_in,uk_add_in,un_add_temp_in,
    tn_add_in,tz_add_in;
    //utilities
    wire[WORD_SIZE-1:0] adder_result_prefinal,adder_result,mul_result,div_result,adder_A_op,adder_B_op,adder_A_op_final;
    wire overflow_flag_mul,overflow_flag_div,overflow_flag_adder,overflow_flag,carry_out_adder,negative_adder,
    mul_done,div_done,deal_as_int;
    wire m_is_zero,rst_tn_tz_value,rst_init1;

    assign m_is_zero = ~| m_value_out;
    assign rst_tn_tz_value = rst_init1 | rst ;

    //Constants
    localparam [ADDRESS_WIDTH-1:0] t0_add = 16'd1,t1_add = 16'd2, m_const_add = 16'd0, u0_add = 16'd6, 
                    u_add_offset = 16'b0000001000000000;
    //Registers
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) un_add      (clk, rst, un_add_en,un_add_in, un_add_out);
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) uz_add      (clk, rst, uz_add_en,adder_result, uz_add_out);
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) uk_add     (clk, rst, uk_add_en, uk_add_in, uk_add_out);
    Register #(.WORD_SIZE(WORD_SIZE)) un_value      (clk, rst, un_value_en, ram_data2, un_value_out);
    
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) tn_add      (clk, rst, tn_add_en, tn_add_in, tn_add_out);
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) tz_add      (clk, rst, tz_add_en, tz_add_in, tz_add_out);
    Register #(.WORD_SIZE(WORD_SIZE)) tn_value     (clk, rst_tn_tz_value, tn_value_en,tz_value_out, tn_value_out);
    Register #(.WORD_SIZE(WORD_SIZE)) tk_value      (clk, rst, tk_value_en,tk_port, tk_value_out);
    Register #(.WORD_SIZE(WORD_SIZE)) tz_value    (clk, rst_tn_tz_value, tz_value_en,ram_data1, tz_value_out);
    
    Register #(.WORD_SIZE(WORD_SIZE)) temp1      (clk, rst, temp1_en, adder_result, temp1_out);
    Register #(.WORD_SIZE(WORD_SIZE)) temp2      (clk, rst, temp2_en, adder_result, temp2_out);
    Register #(.WORD_SIZE(WORD_SIZE)) k      (clk, rst, k_en, div_result, k_out);
    
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) mar1      (clk, rst, MAR1_en, MAR1_in, MAR1_out);
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) mar2      (clk, rst, MAR2_en, MAR2_in, MAR2_out);
    
    
    
    
    Register #(.WORD_SIZE(ADDRESS_WIDTH)) m_add      (clk, rst, m_add_en, m_const_add, m_add_out);
    Register #(.WORD_SIZE(WORD_SIZE)) m_value      (clk, rst, m_value_en, m_value_in, m_value_out);

    Register #(.WORD_SIZE(ADDRESS_WIDTH)) un_add_temp      (clk, rst, un_add_temp_en, un_add_temp_in, un_add_temp_out);

    //muxes
    mux_2_1 #(.SIZE(ADDRESS_WIDTH)) un_add_mux      (un_add_mux_sel,u0_add,uz_add_out,un_add_in);
    mux_2_1 #(.SIZE(ADDRESS_WIDTH)) uk_add_mux      (uk_add_mux_sel,uk_port,adder_result,uk_add_in);
    
    mux_2_1 #(.SIZE(ADDRESS_WIDTH)) tn_add_mux      (tn_add_mux_sel,t0_add,tz_add_out,tn_add_in);
    mux_2_1 #(.SIZE(ADDRESS_WIDTH)) tz_add_mux      (tz_add_mux_sel,t1_add,adder_result,tz_add_in);

    mux_2_1 #(.SIZE(ADDRESS_WIDTH)) un_add_temp_mux      (un_add_temp_mux_sel,un_add_out,adder_result,un_add_temp_in);

    mux_4_1 #(.SIZE(ADDRESS_WIDTH)) MAR1_mux      (mar1_mux_select,tz_add_out,adder_result,m_add_out,uz_add_out,MAR1_in);
    mux_4_1 #(.SIZE(ADDRESS_WIDTH)) MAR2_mux      (mar2_mux_sel,un_add_temp_out,uk_add_out,m_add_out,m_const_add,MAR2_in);
    

    mux_2_1 #(.SIZE(WORD_SIZE)) m_value_mux      (m_value_mux_sel,ram_data1,adder_result,m_value_in);


    multiplier multiplier (clk,rst,temp1_out,k_out,start_mul,mul_result,overflow_flag_mul,mul_done);
    division divider (clk,rst,temp1_out,adder_result,start_div,div_result,overflow_flag_div,div_done);

    mux_16_1 #(.SIZE(WORD_SIZE)) adder_A_op_mux (adder_opA_mux_sel,
                                                un_add_out,tz_add_out,uz_add_out,tk_value_out,
                                                tz_value_out,ram_data1,MAR1_out,un_add_temp_out,
                                                m_value_out,uk_add_out,mul_result,16'd0,
                                                16'd0,16'd0,16'd0,16'd0,adder_A_op);

    mux_8_1 #(.SIZE(WORD_SIZE)) adder_B_op_mux (adder_opB_mux_sel,
                                                16'b0000000010000000,tn_value_out,tk_value_out,
                                                ram_data2,un_value_out,ram_data2,
                                                16'd0,16'd0,adder_B_op);

    //assign adder_B_op_final = (sub_sg == 1'b1)? ~adder_B_op : adder_B_op;

    assign deal_as_int = (adder_opA_mux_sel == 4'b0000 | adder_opA_mux_sel == 4'b0001 | 
                                adder_opA_mux_sel == 4'b0010 | adder_opA_mux_sel == 4'b0110 | 
                                adder_opA_mux_sel == 4'b0111 | adder_opA_mux_sel == 4'b1001 ) ? 1'b1 : 1'b0;
    assign adder_A_op_final = (deal_as_int == 1'b1) ? {adder_A_op<<7} : adder_A_op;
    adder #(.N(WORD_SIZE)) adder (adder_A_op_final,adder_B_op,sub_sg,adder_result_prefinal,carry_out_adder,
                                                overflow_flag_adder,negative_adder);

    assign adder_result = (deal_as_int == 1'b1) ? {adder_result_prefinal>>7}: adder_result_prefinal;

    InterpolationFSM fsm (clk,rst,init_sg,alert_sg,update_sg,start_sg,mul_done,div_done,m_is_zero,overflow_flag,
                           un_add_en,uz_add_en,uk_add_en,
                           un_value_en,
                           tn_add_en,tz_add_en,
                           tz_value_en,tn_value_en,tk_value_en,
                           un_add_temp_en,temp1_en,temp2_en,k_en,
                           MAR1_en,MAR2_en,write_sg,
                           m_add_en,m_value_en,
                           un_add_mux_sel,uk_add_mux_sel,un_add_temp_mux_sel,
                           tn_add_mux_sel,tz_add_mux_sel,mdr2_mux_sel,
                           m_value_mux_sel,start_div,start_mul,
                           done_sg,rst_init1,
                           add_sig,sub_sg,
                            mar1_mux_select,mar2_mux_sel,
                            adder_opA_mux_sel,adder_opB_mux_sel
                        );
    

    assign mem_write = write_sg;
    assign data_to_ram = temp2_out;
    assign ram_add1 = MAR1_out;
    assign ram_add2 = MAR2_out;
    assign overflow_flag = (overflow_flag_adder & (add_sig | sub_sg)) | (overflow_flag_div & div_done) 
                                | (overflow_flag_mul & mul_done) ;
    //assign overflow_flag = 1'b0;
    assign overflow = overflow_flag;
    //for test only
    assign AdderAOP = adder_A_op_final;
    assign AdderBOP = adder_B_op;
    assign ADDERRESULT = adder_result;
    assign MUL_RESULTT = mul_result;
    assign DIV_RESULTT = div_result;
    assign START_MULL = start_mul;
    assign START_DIVVV = start_div;
    assign MUL_DONEEE = mul_done;
    assign DIV_DONEEE = div_done;
    assign MUL_OPP_A = temp1_out;
    assign MUL_OPP_B =k_out;
    assign DIV_OPP_A = temp1_out;
    assign DIV_OPP_B = adder_result;

endmodule //