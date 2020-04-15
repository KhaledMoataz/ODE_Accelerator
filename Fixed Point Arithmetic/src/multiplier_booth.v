module multiplier_booth (
           clk,
           rst,
           multiplicand,
           multiplier,
           start,
           result,
           overflow_flag,
           finish
       );

input clk, start, rst;
input [15:0] multiplicand, multiplier;
output [15:0] result;
output overflow_flag;
output finish;

reg [15:0] multiplicand_buffer;
reg start_buffer, working;

// Multiplicand complement
wire [15:0] multiplicand_complement;
// wire ignore_overflow_1, ignore_overflow_2, ignore_overflow_3, ignore_overflow_4;
adder adder_multiplicand_complement(.A(~multiplicand), .B(16'h01), .result(multiplicand_complement));
// Accumulating result in A Q
// B is either the multiplicand or 2's complement of the multiplicand or zeros
// AB is A + B
reg [15:0] A;
reg [16:0] Q;
wire [15:0] B;
wire [15:0] AB;

assign B =
       (Q[1:0] == 2'b01) ? multiplicand :
       (Q[1:0] == 2'b10) ? multiplicand_complement :
       16'h0000;

// Main adder used in loop
adder adder_loop(.A(A), .B(B), .result(AB));


wire [31:0] round;
wire [31:0] result_after_round;
assign round = 32'h00000040;
adder #(32) adder_round(.A({A, Q[16:1]}), .B(round), .result(result_after_round));
assign result = result_after_round[22:7];
assign overflow_flag = !((result_after_round[31:22] == 10'b0000000000) | (result_after_round[31:22] == 10'b1111111111));

wire [3:0] counter_value;
PosEdgeCounter #(.WORD_SIZE(5), .IS_DOWN(0)) counter(.clk(clk), .rst(rst),
    .load(start_buffer), .count_enable(working), .load_data(5'h00), .count({finish, counter_value}));

always @(posedge start) begin
    start_buffer <= 1;
end

always @(posedge clk) begin
    if (rst) begin
        start_buffer <= 0;
        working <= 0;
    end
    else if (start_buffer) begin
        start_buffer <= 0;
        A <= 16'h0000;
        Q <= {multiplier, 1'b0};
        multiplicand_buffer <= multiplicand;
        working <= 1;
    end
    else if (!finish) begin
        A <= {AB[15], AB[15:1]};
        Q <= {AB[0], Q[16:1]};
        working <= counter_value != 4'hF;
    end
end
endmodule
