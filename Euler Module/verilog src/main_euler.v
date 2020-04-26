module Main_Euler #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16, parameter MAX_DIM = 6)
(
input clk,
input rst,
input start,
input[DATA_SIZE-1:0] h_step,
input[DATA_SIZE-1:0] data1_0,
input[DATA_SIZE-1:0] data2_0,

input[DATA_SIZE-1:0] data1_1,
input[DATA_SIZE-1:0] data2_1,

output[ADD_SIZE-1:0] add1_0,
output[ADD_SIZE-1:0] add2_0,

output[ADD_SIZE-1:0] add1_1,
output[ADD_SIZE-1:0] add2_1,

output [DATA_SIZE-1:0] result_saved,
output [ADD_SIZE-1:0] pc_saved,
output result_stored,

output finishh,
output errorr,
input[MAX_DIM-1:0] shape1_0,
input[MAX_DIM-1:0] shape1_1,
input[MAX_DIM-1:0] shape2_0,
input[MAX_DIM-1:0] shape2_1

);

reg  finish ,error;

assign finishh = finish;
assign errorr = error;

// we can try to assign it to inputs
// reg [MAX_DIM-1:0] shape1_0 = 6'b11, shape1_1 = 6'b11, shape2_0 = 6'b11, shape2_1 = 6'b10;


wire end_op, return_default_state, data_ready1, data_ready2, overflow1, overflow2, overflow3;
wire [DATA_SIZE-1:0] data1, data2;
wire [MAX_DIM-1:0] row_count;
// change when add count rows
reg DONE;

Pipeline #(ADD_SIZE, DATA_SIZE, MAX_DIM) pipeline1(clk, rst|finish, start, finish, return_default_state, shape1_0, shape1_1, data_ready1, data1, overflow1,data1_0,data2_0,add1_0,add2_0);
Pipeline #(ADD_SIZE, DATA_SIZE, MAX_DIM) pipeline2(clk, rst|finish, start, finish, return_default_state, shape2_0, shape2_1, data_ready2, data2, overflow2,data1_1,data2_1,add1_1,add2_1);

JOIN_PIPE  #(ADD_SIZE, DATA_SIZE) join_pipe(rst, clk, data_ready1, data_ready2, data1, data2, h_step, finish, return_default_state, overflow3, result_stored,result_saved,pc_saved);

//count number of rows
PosEdgeCounter #(MAX_DIM,0) count_cloumns(~clk, rst, DONE, return_default_state, 6'b0, row_count);
COMPARATOR_EULAR #(MAX_DIM) if_end_of_op(row_count, shape1_0, end_op);

always @(posedge clk) begin
	if(rst) begin
		finish <= 1'b0;
		DONE <= 1'b0;
		error <= 1'b0;
	end
	else begin
		if(end_op) begin
			DONE <= 1'b1;
		end
		if(DONE & result_stored) begin
			finish <= 1'b1;
			error <= 1'b0;
		end
		if(start & finish) begin 
			finish <= 1'b0;
			DONE <= 1'b0;
			error <= 1'b0; 
		end
		if (overflow1 | overflow2 | overflow3) begin
			finish <= 1'b1;
			error <= 1'b1;
		end
	end
 end


endmodule