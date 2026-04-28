`timescale 1ns/1ps

module ex5_tb;
    reg  [3:0] a;
    reg  [3:0] b;
    wire [4:0] sum;

    ex5 uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial begin
        $monitor("Time: %0t | A: %b (%d) | B: %b (%d) | Sum: %b (%d)", $time, a, a, b, b, sum, sum);

        a = 4'b1111; b = 4'b0001;
        #10;

        a = 4'b1010; b = 4'b0101;
        #10;

        $finish;
    end
endmodule