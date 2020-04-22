module multiplier(
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
    output reg finish;

    reg [15:0] multiplicand_buffer;
    reg start_buffer, working;

    // 2's Complement of multiplicand
    wire [15:0] multiplicand_complement;
    adder adder_multiplicand_complement(.A(~multiplicand_buffer), .B(16'h01), .is_subtract(1'b0), .result(multiplicand_complement), .overflow_flag(), .carry(), .negative());
    // Double multiplicand
    wire [16:0] double_multiplicand;
    assign double_multiplicand = {multiplicand_buffer[15:0], 1'b0};
    // 2's Complement of double multiplicand
    wire [16:0] double_multiplicand_complement;
    assign double_multiplicand_complement = {multiplicand_complement[15:0], 1'b0};

    // Accumulating result in A Q
    // AB is A + B
    reg [15:0] A;
    reg [16:0] Q;
    wire [16:0] B;
    wire [15:0] AB;

    assign B =
        Q[2:0] == 3'b001 ? {multiplicand_buffer[15], multiplicand_buffer[15:0]}:
            Q[2:0] == 3'b010 ? {multiplicand_buffer[15], multiplicand_buffer[15:0]}:
                Q[2:0] == 3'b011 ? double_multiplicand:
                    Q[2:0] == 3'b100 ? double_multiplicand_complement:
                        Q[2:0] == 3'b101 ? {multiplicand_complement[15], multiplicand_complement[15:0]}:
                            Q[2:0] == 3'b110 ? {multiplicand_complement[15], multiplicand_complement[15:0]}:
                                {A[15], 16'h0000};

    // Main adder used in loop
    adder adder_loop(.A(A), .B(B[15:0]), .is_subtract(1'b0), .result(AB), .overflow_flag(), .carry(), .negative());
    // Rounding
    wire [31:0] round;
    wire [31:0] result_after_round;
    assign round = 32'h00000040;
    adder#(32) adder_round(.A({A, Q[16:1]}), .B(round), .is_subtract(1'b0), .result(result_after_round), .overflow_flag(), .carry(), .negative());
    // Final Result
    assign result = result_after_round[22:7];
    assign overflow_flag = finish & !((result_after_round[31:22] == 10'b0000000000) | (result_after_round[31:22] == 10'b1111111111));
    // Counter
    reg [2:0] counter;
    wire [2:0] counter_new_value;
    wire counter_finish;
    adder#(4) adder_counter(.A({1'b0, counter}), .B(4'h1), .is_subtract(1'b0), .result({counter_finish, counter_new_value}), .overflow_flag(), .carry(), .negative());

    always @(posedge clk) begin
        if (!start) begin
            start_buffer <= 0;
        end
        if (rst) begin
            start_buffer <= 0;
            finish <= 0;
            working <= 0;
            multiplicand_buffer <= 0;
            A <= 16'h0000;
            Q <= 17'h00000;
            counter <= 4'h0;
        end
        else if (start && !start_buffer) begin
            start_buffer <= 1;
            counter <= 3'h0;
            A <= 16'h0000;
            Q <= {multiplier, 1'b0};
            multiplicand_buffer <= multiplicand;
            finish <= 0;
            working <= 1;
        end
        else if (working) begin
            A <= {B[16], B[16], AB[15:2]};
            Q <= {AB[1], AB[0], Q[16:2]};
            counter <= counter_new_value;
            finish <= counter_finish;
            working <= !counter_finish;
        end
    end
endmodule
