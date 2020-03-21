module fixed_point_add_testbench;
    reg [15:0] A;
    reg [15:0] B;
    wire [15:0] result;
    reg [15:0] expected_result;
    wire overflow_flag;
    reg expected_overflow_flag;
    reg[48:0] read_data [0:100];

    adder adder_unit(A, B, result, overflow_flag);
    integer i;

    initial
    begin
        $readmemb("adder_test_cases.txt", read_data);
        for (i=0; i<100; i=i+1)
        begin
            {A, B, expected_result, expected_overflow_flag} = read_data[i];
            #20
            if (result != expected_result || overflow_flag != expected_overflow_flag)
                $display("%d : FAILED", i);
        end
    end
endmodule