module multiplier_modified_booth_testbench;
    reg [15:0] A;
    reg [15:0] B;
    wire [15:0] result;
    reg [15:0] expected_result;
    wire overflow_flag;
    reg expected_overflow_flag;
    reg[48:0] read_data [0:100];
    wire finish;
    reg clk;
    reg start;
    reg rst;

    integer i;

    initial
    begin
        clk = 1;
        forever begin
            #5  clk = ~clk;
        end
    end

    multiplier multiplier_unit(clk, rst, A, B, start, result, overflow_flag, finish);

    initial
    begin
        A <= 16'h0000;
        B <= 16'h0000;
        start <= 0;
        rst <= 1;
        #10
        rst <= 0;
        $readmemb("Fixed Point Arithmetic\\test\\multiplier_test_cases.txt", read_data);
        #1
        for (i=0; i<100; i=i+1)
        begin
            #5
            {A, B, expected_result, expected_overflow_flag} = read_data[i];
            start <= 1;
            #40
            start <= 0;
            #45
            if (finish != 1'b1 || overflow_flag != expected_overflow_flag || expected_result != result)
                $display("%d : FAILED", i);
        end
        $stop;
    end
endmodule