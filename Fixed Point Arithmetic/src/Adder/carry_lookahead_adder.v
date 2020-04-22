module adder
       #(parameter N=16)
       (
           input [N-1:0] A,
           input [N-1:0] B,
           input is_subtract,
           output [N-1:0] result,
           output reg carry,
           output reg overflow_flag,
           output reg negative
       );

reg [N:0] cs; // input carries
wire [N-1:0] G, P;
wire [N-1:0] second_operand;
assign second_operand = is_subtract ? ~B:B;
assign G = A & second_operand;
assign P = A ^ second_operand;
assign result = P ^ cs[N - 1:0];

always @(*) begin : carry_logic
    integer i;
    cs[0] <= is_subtract;
    for (i = 0; i < N - 1; i = i + 1) begin
        cs[i+1] <= G[i] | cs[i] & P[i];
    end
    carry <= G[N - 1] | cs[N - 1] & P[N - 1];
    overflow_flag <= carry ^ cs[N-1];
    negative <= overflow_flag ^ result[N-1];
end
endmodule
