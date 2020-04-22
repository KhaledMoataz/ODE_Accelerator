module carry_lookahead_adder_testbench;
    reg [15:0] A;
    reg [15:0] B;
    reg cin;
    wire [15:0] result;
    reg [15:0] expected_result;
    wire cout;
    reg expected_cout;
    wire overflow_flag;
    reg expected_overflow_flag;
    wire negative;
    reg expected_negative;
    reg[52:0] read_data [0:100];

    carry_lookahead_adder_behavioral adder_unit(A, B, cin, result, cout, overflow_flag, negative);
    integer i;

    initial
    begin
        $readmemb("ODE_Accelerator\\Fixed Point Arithmetic\\test\\adder_test_cases.txt", read_data);
        for (i=0; i<100; i=i+1)
        begin
            {A, B, cin, expected_result, expected_cout, expected_overflow_flag, expected_negative} = read_data[i];
            #20
            if (result != expected_result || cout != expected_cout || overflow_flag != expected_overflow_flag || negative != expected_negative)
                $display("%d : FAILED", i);
        end
    end
endmodule