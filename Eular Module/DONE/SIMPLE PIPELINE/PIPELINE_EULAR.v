module PIPELINE_EULAR (
input clk,rst,
input[3:0] vector_address,
input [3:0] matrix_address,
output[7:0] outp,
output carry,overflowflag,

// SIGNALS 
input RE,WE
);


wire [3:0] ram1_data_vec;
wire [3:0] ram1_data_mat;
RAM Ram1(vector_address,matrix_address,ram1_data_vec,ram1_data_mat,RE,WE);
// wire[4:0] ram2_data1;
// wire[4:0] ram2_data2;
// Ram Ram2(vector_address,Data,CS,WE,OE);

                         // READ MULT Buffer
wire [3:0] rd_mt_data1 ;
wire [3:0] rd_mt_data2 ;            
BUFFER_RD_MT read_mult(clk,rst,ram1_data_vec,ram1_data_mat,rd_mt_data1,rd_mt_data2);


wire [7:0] mult_data;
multiplier mult(clk,rd_mt_data1,rd_mt_data2,mult_data);

                        // MULT ACC Buffer
wire [7:0] mt_acc_data;
BUFFER_MT_ACC mult_accum (clk,rst,mult_data,mt_acc_data);

adder add(mt_acc_data,mt_acc_data,outp,overflowflag,carry);


endmodule
