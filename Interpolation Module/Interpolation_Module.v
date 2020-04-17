InterpolationModule#(parameter WORD_SIZE = 16, ADDRESS_WIDTH = 16)
(
    input start_sg, alert_sg, update_sg, init_sg, clk, rst,
    input [WORD_SIZE-1: 0] tk_value, 
    inout [WORD_SIZE-1: 0] ram_data1, ram_data2,
    input [ADDRESS_WIDTH-1 : 0] uk_add,
    output done_sg,
    output [ADDRESS_WIDTH-1 : 0] ram_add1, ram_add2

);
    //enables
wire un_add_en,uz_add_en,uk_add_en,
    un_value,
    tn_add_en,tz_add_en,
    tz_value_en,tn_value_en,tk_value_en,
    un_add_temp_en,temp1_en,temp2_en,k_en,
    
    MAR1_en,MAR2_en,MDR2_en,
    m_add_en,m_value_en,

    //signals
    done_sg,read_sg,write_sg,
    add_sig, sub_sg,

    //mux selectors
    un_add_mux_sel,uk_add_mux_sel,un_add_temp_mux_sel,
    tn_add_mux_sel,tz_add_mux_sel,mar2_mux_sel,mdr2_mux_sel,
    m_value_mux_sel,
    start_div, start_mul;
    
    wire[1:0] mar1_mux_select;

    wire[3:0] adder_opA_mux_sel;
    wire[2:0] adder_opB_mux_sel;

    // registers out
    wire[WORD_SIZE-1:0] un_add_out,uz_add_out,uk_add_out,
    un_value_out,
    tn_add_out,tz_add_out,
    tz_value_out,tn_value_out,tk_value_out,
    un_add_temp_out,temp1_out,temp2_out,k_out,   
    ,MDR2_out,
    m_add_out,m_value_out;
    wire[ADDRESS_WIDTH-1:0] MAR1_out,MAR2_out;
    
    //registers in
    wire[WORD_SIZE-1:0] un_add_in,uz_add_in,uk_add_in,
    un_value_in,
    tn_add_in,tz_add_in,
    tz_value_in,tn_value_in,tk_value_in,
    un_add_temp_in,temp1_in,temp2_in,k_in,   
    ,MDR2_in,
    m_add_in,m_value_in;
    wire[ADDRESS_WIDTH-1:0] MAR1_in,MAR2_in;

    