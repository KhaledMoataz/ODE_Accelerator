module Pipeline #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16, parameter MAX_DIM = 6)
(
input clk,
input rst,
input start,
input FINAL_DONE,
input return_default_state,
input [MAX_DIM-1:0] shape_0,
input [MAX_DIM-1:0] shape_1,
output data_ready,
output [ADD_SIZE-1:0] out_acc,
output overflow,
input [DATA_SIZE-1:0]data_vec_mem,
input [DATA_SIZE-1:0]data_mat_mem,
output [ADD_SIZE-1:0]pc_vec_addr,
output [ADD_SIZE-1:0]pc_mat_addr
);

wire init_start, fetch_enable, finished_one_row, flush_mul_buffer, flush_acc_buffer, start_mult, mul_overflow, acc_overflow, done_mul, end_of_row, done_mul_acc, new_start;
wire [DATA_SIZE-1:0] vector_data, matrix_data, mul_buffer_out1, mul_buffer_out2, mul_out, data_to_acc;
wire [MAX_DIM-1:0] col_count;

assign flush_mul_buffer = new_start | return_default_state | (done_mul & ~(end_of_row));
assign flush_acc_buffer = ~( (done_mul_acc|data_ready) & end_of_row) & (done_mul);
assign overflow = mul_overflow | acc_overflow;

PosEdgeDFF delay_enable_half_cycle(~clk, rst, flush_mul_buffer, 1'b1, fetch_enable);

FSM_START_EULAR fsm_start(~clk,rst, start, FINAL_DONE, init_start);
PosEdgeDFF delay_start_half_cycle(clk, rst, init_start, 1'b1, new_start);

fetch_stage #(ADD_SIZE, DATA_SIZE) fetch_stage_(rst, clk, fetch_enable, init_start, end_of_row, FINAL_DONE,pc_mat_addr , pc_vec_addr);

mul_buffer #(DATA_SIZE) mul_buffer_(~clk, flush_mul_buffer | rst, 1'b1, data_vec_mem, data_mat_mem, start_mult, mul_buffer_out1, mul_buffer_out2 );

mul_stage #(DATA_SIZE) mul_stage_(clk, rst, start_mult, mul_buffer_out1, mul_buffer_out2, done_mul, mul_out, mul_overflow);

// count columns....
PosEdgeCounter #(MAX_DIM,0) count_cloumns(clk, rst, end_of_row, start_mult, 6'b0, col_count);
COMPARATOR_EULAR #(MAX_DIM) if_end_of_row(col_count, shape_1, finished_one_row);
FSM_END_EULAR fsm_end(~clk, rst, finished_one_row, done_mul_acc, return_default_state, {end_of_row, data_ready});

acc_buffer #(DATA_SIZE) acc_buffer_(~clk, rst | flush_acc_buffer, done_mul, mul_out, done_mul_acc, data_to_acc);

acc_stage #(DATA_SIZE) acc_stage_(clk, rst, return_default_state, done_mul_acc, data_to_acc, out_acc, acc_overflow);



endmodule
