module demomain #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16, parameter MAX_DIM = 6)
(
input clk,
input rst,
input start,
input[DATA_SIZE-1:0] h_step
);

wire [DATA_SIZE-1:0] data1_0;
wire [DATA_SIZE-1:0] data2_0;
wire [DATA_SIZE-1:0] data1_1;
wire [DATA_SIZE-1:0] data2_1;

wire [ADD_SIZE-1:0] add1_0;
wire [ADD_SIZE-1:0] add2_0;
wire [ADD_SIZE-1:0] add1_1;
wire [ADD_SIZE-1:0] add2_1;

wire [DATA_SIZE-1:0] result_saved;
wire [ADD_SIZE-1:0] pc_saved;
wire finished_mul;


RAM #(ADD_SIZE,DATA_SIZE) ram1(clk, 1'b0, 1'b0, add1_0, add2_0, data1_0, data2_0); 
RAM #(ADD_SIZE,DATA_SIZE) ram2(clk, 1'b0, 1'b0, add1_1, add2_1, data1_1, data2_1);

RAM #(ADD_SIZE,DATA_SIZE) ram3(~clk, rst, finished_mul, pc_saved,pc_saved,result_saved); 
 

Main_Euler eul(clk,rst,start,h_step,data1_0,data2_0,data1_1,data2_1,add1_0,add2_0,add1_1,add2_1,result_saved,pc_saved,finished_mul);

endmodule