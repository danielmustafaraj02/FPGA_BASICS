module ex2_tb;

    reg a, b;
    wire y_and, y_or;

    ex2 dut (
        .a(a),
        .b(b),
        .y_and(y_and),
        .y_or(y_or)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, ex2_tb);

        a = 0; b = 0;
        #10;
        
        a = 0; b = 1;
        #10;
        
        a = 1; b = 0;
        #10;
        
        a = 1; b = 1;
        #10;

        $finish;
    end

endmodule