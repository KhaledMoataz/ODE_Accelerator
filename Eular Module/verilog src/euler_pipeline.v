module Pipeline #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16)
(
input clk,
input rst,
input start,
output data_ready,
output final_done
);

wire FINAL_DONE, init_start, fetch_enable, finished_one_row, flush_mul_buffer;
wire [DATA_SIZE-1:0] vector_data, matrix_data, mul_buffer_out1, mul_buffer_out2;

FSM_START_EULAR fsm_start(clk, 1'b0, rst, start, FINAL_DONE, init_start);
fetch_stage #(ADD_SIZE, DATA_SIZE) fetch_stage_(rst, clk, fetch_enable, init_start, finished_one_row, FINAL_DONE, matrix_data, vector_data);

mul_buffer #(DATA_SIZE) mul_buffer_(clk, flush_mul_buffer, rst, vector_data, matrix_data, mul_buffer_out1, mul_buffer_out2 );

endmodule
