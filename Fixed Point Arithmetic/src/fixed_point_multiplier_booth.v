module fixed_point_multiplier_booth (
           clk,
           multiplicand,
           multiplier,
           result,
           overflow_flag,
           finish
       );

input clk;
input [15:0] multiplicand;
input [15:0] multiplier;
output [15:0] result;
output overflow_flag;
output reg finish;

// Multiplicand complement
wire [15:0] multiplicand_complement;
(* keep="soft" *)
wire ignore;
// wire ignore_overflow_1, ignore_overflow_2, ignore_overflow_3, ignore_overflow_4;
adder adder_multiplicand_complement(.A(~multiplicand), .B(16'h01), .result(multiplicand_complement));
// Accumulating result in A Q
// B is either the multiplicand or 2's complement of the multiplicand
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

reg start;
reg [3:0] counter;
// assign finish = (counter == 4'hF) ? 1'b1 : 1'b0;

wire [3:0] counter_new_value;
wire couter_carry;
// Counter adder
adder #(4) adder_counter(.A(counter), .B(4'h1), .result(counter_new_value), .carry(counter_carry));

always @(multiplicand or multiplier) begin
    start <= 1'b1;
end
always @(posedge clk) begin
    if (start == 1'b1) begin
        start <= 1'b0;
        counter <= 4'h0;
        A <= 16'h0000;
        Q <= {multiplier, 1'b0};
        finish <= 1'b0;
    end
    else if (finish == 1'b0) begin
        A <= {AB[15], AB[15:1]};
        Q <= {AB[0], Q[16:1]};
        counter <= counter_new_value;
        finish <= counter_carry;
    end
end
endmodule
