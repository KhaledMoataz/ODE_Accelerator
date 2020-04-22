module interpolation_test;
    reg[15:0] read_data [0:100];
    reg clk;
    reg [15:0] A;
    integer i;

    initial
    begin
        clk = 1;
        forever begin
            #5  clk = ~clk;
        end
    end

    initial
    begin
        $readmemb("Interpolation_test_cases.txt", read_data);
        #1
        for (i=0; i<100; i=i+1)
        begin
            #5
            {A} <= read_data[i];
            $display("current data  = ",read_data[i]);
            
        end
        $stop;
    end


    

endmodule // interpolation_test
