`timescale 1ns/1ps

module ex7_tb;
    reg  [3:0] in;
    wire [1:0] out;
    wire       valid;

    ex7 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        $display("Input | Valid | Index");
        $monitor("%b  |   %b   |   %d", in, valid, out);

        in = 4'b0001; #10; // Expected: Index 0
        in = 4'b1010; #10; // Expected: Index 3 (bit 1 is ignored)
        in = 4'b0100; #10; // Expected: Index 2
        in = 4'b0000; #10; // Expected: Valid = 0
        
        $finish;
    end
endmodule