module interpolationTestMain#(parameter WORD_SIZE = 16, ADDRESS_WIDTH = 16)
(
    input start_sg, alert_sg, update_sg, init_sg, clk, rst,
    input [WORD_SIZE-1: 0] tk_port, 
    input [ADDRESS_WIDTH-1 : 0] uk_port,
    output done_sg,overflow
    /*output [WORD_SIZE-1:0] AdderAOP,AdderBOP,ADDERRESULT,MUL_RESULT,DIV_RESULT,
    output START_MULL,START_DIVVV,MUL_DONEEE,DIV_DONEEE,
    output [WORD_SIZE-1:0] MUL_OPP_A,MUL_OPP_B,DIV_OPP_A,DIV_OPP_B*/
);

wire[WORD_SIZE-1: 0] ram_data1, ram_data2,data_to_ram,Mdr2;
wire[ADDRESS_WIDTH-1 : 0] ram_add1, ram_add2;
wire mem_write;


RAM #(.WORD_SIZE(WORD_SIZE), .ADDRESS_SIZE(ADDRESS_WIDTH)) ram_module (clk,rst,mem_write,ram_add2,ram_add1,Mdr2,ram_data1);

InterpolationModule interpolation_module(start_sg,alert_sg,update_sg,init_sg,
                            clk,rst,tk_port,
                            ram_data1,ram_data2,
                            uk_port,
                            done_sg,mem_write,overflow,
                            ram_add1,ram_add2,
                            data_to_ram
                             /*AdderAOP,AdderBOP,ADDERRESULT,MUL_RESULT,DIV_RESULT,
     START_MULL,START_DIVVV,MUL_DONEEE,DIV_DONEEE,
     MUL_OPP_A,MUL_OPP_B,DIV_OPP_A,DIV_OPP_B*/);

assign Mdr2 = mem_write == 1'b1 ? data_to_ram : {WORD_SIZE{1'bZ}}; 
assign ram_data2 = Mdr2;




endmodule // interpolationTestMain

