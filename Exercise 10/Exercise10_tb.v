`timescale 1ns / 1ps

module ex10_tb();
    reg clk;
    reg reset;
    reg serial_in;
    wire [3:0] q;

    ex10 uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        serial_in = 0;
        
        #15 reset = 0;

        @(posedge clk);
        serial_in <= 1;

        @(posedge clk);
        serial_in <= 0;

        repeat (5) @(posedge clk);

        $finish;
    end

    initial begin
        $monitor("Time=%0t | In=%b | Register Q=%b", $time, serial_in, q);
    end
endmodule