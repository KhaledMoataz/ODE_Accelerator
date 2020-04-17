module fetch_stage #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16)
(
 input reset,
 input clk,
 input enable,
 input init_start,
 input finished_one_row,
 input final_done,
 output [DATA_SIZE-1:0] data_mat,
 output [DATA_SIZE-1:0] data_vec
);
 
 reg [ADD_SIZE-1:0] pc_matrix_init =   16'b0;
 reg [ADD_SIZE-1:0] pc_vector_init =   16'b101;
 wire [ADD_SIZE-1: 0] pc_mat, pc_vec, mux_mat_out, mux_vec_out, inc_mat_out, inc_vec_out;
 
 assign sel_vec = finished_one_row | final_done | init_start;
 assign sel_mat = final_done | init_start;
 
 mux_2_1 #(ADD_SIZE) mux_mat(sel_mat, inc_mat_out, pc_matrix_init, mux_mat_out);
 mux_2_1 #(ADD_SIZE) mux_vec(sel_vec, inc_vec_out, pc_vector_init, mux_vec_out);
 
 incrementor #(ADD_SIZE) inc_mat(pc_mat, inc_mat_out);
 incrementor #(ADD_SIZE) inc_vec(pc_vec, inc_vec_out);
 
 Register #(ADD_SIZE) pc_matrix(clk, reset, enable|init_start, mux_mat_out, pc_mat);
 Register #(ADD_SIZE) pc_vector(clk, reset, enable | finished_one_row | init_start, mux_vec_out, pc_vec);

RAM #(ADD_SIZE,DATA_SIZE) ram(clk, reset, 1'b0, 1'b0, pc_vec, pc_mat, data_vec, data_mat); 

endmodule