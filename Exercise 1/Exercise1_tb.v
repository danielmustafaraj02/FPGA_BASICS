module ex1_tb;

    reg     a_test;
    wire    y_test;

    ex1 dut(
        .a(a_test),
        .y(y_test)
    );

    initial begin
        $dumpfile("test.vcd"); // Creates the data file
        $dumpvars(0, ex1_tb);  // Tells it to record everything in this module
        
        a_test = 0;
        #10             // Wait 10 time units

        a_test = 1;
        #10

        a_test = 0;
        #10             

        a_test = 1;
        #10

        $finish;
    end


endmodule