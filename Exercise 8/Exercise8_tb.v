`timescale 1ns/1ps

module ex8_tb;
    reg clk, rst_n, d;
    wire q;

    ex8 uut (.clk(clk), .rst_n(rst_n), .d(d), .q(q));

    // Generate a 10ns clock (5ns high, 5ns low)
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0; rst_n = 0; d = 0;
        #7 rst_n = 1; // Release reset

        // Test 1: Change D between clock edges
        #3 d = 1;     // D is now 1, but clock is still low. Q should be 0.
        #10;          // Wait for a rising edge. Q should become 1.
        
        // Test 2: Change D again
        #2 d = 0;     // D is 0, but clock is high. Q stays 1 until next rising edge.
        #10;
        
        $finish;
    end

    initial $monitor("Time: %0t | Clk: %b | D: %b | Q: %b", $time, clk, d, q);
endmodule