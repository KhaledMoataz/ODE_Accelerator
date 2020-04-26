module JOIN_PIPE  #(parameter ADD_SIZE = 16, parameter DATA_SIZE = 16)
(
 input rst,
 input clk,
 input data_ready1,
 input data_ready2,
 input [DATA_SIZE-1:0] data_pipe1,
 input [DATA_SIZE-1:0] data_pipe2,
 input [DATA_SIZE-1:0] h_step,
 input clear,
 
 output return_default_state,
 output overflow_flag,
 output finished,
 output [DATA_SIZE-1:0] result_saved,
 output [ADD_SIZE-1:0] pc_saved
);


          /////////// dummy  ////////////
wire carry_in = 1'b0;
wire negative;
wire carry_out;
        /////////////////////////////////
wire [DATA_SIZE-1:0] result_add;
wire [DATA_SIZE-1:0] result_mul;
wire done_mul;

wire [ADD_SIZE-1:0] pc_answer;
wire [ADD_SIZE-1:0] inc_pc_in;
wire enable;

reg finished_mul;

assign finished = enable;

assign return_default_state = data_ready1 & data_ready2;
wire start_mul = return_default_state;

adder add(data_pipe1,data_pipe2,carry_in,result_add,carry_out,overflow_flag,negative);

multiplier multiplier_(clk, rst|clear, result_add, h_step, start_mul, result_mul, overflow_flag, done_mul);


incrementor #(ADD_SIZE) inc_pc(inc_pc_in, pc_answer);
Register #(ADD_SIZE) pc_write(clk, rst|clear, enable, pc_answer, inc_pc_in);

assign result_saved = result_mul;
assign pc_saved = inc_pc_in;

assign enable =  done_mul & finished_mul;

always @(posedge clk) begin
	if(rst) begin
		finished_mul <= 1'b1;
	end
	else begin
		if(done_mul) begin
			finished_mul <= 1'b0;
		end
		else begin
			finished_mul <= 1'b1;
		end
	end
end 

endmodule
