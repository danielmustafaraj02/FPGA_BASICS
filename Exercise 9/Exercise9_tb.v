`timescale 1ns / 1ps

module ex9_tb();
    reg clk;
    reg reset;
    wire [3:0] q;

    ex8 uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("At time %t: reset=%b, count=%d (%b)", $time, reset, q, q);

        clk = 0;
        reset = 1;

        #20 reset = 0;

        #200 $display("Simulation Complete.");

        $finish;
    end
endmodule