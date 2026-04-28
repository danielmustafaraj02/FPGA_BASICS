module ex4_tb();
    reg  [3:0] tb_in;
    wire [3:0] tb_out;
    ex4 uut (
        .in(tb_in),
        .out(tb_out)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, ex4_tb);

        tb_in = 4'b0000; 
        #10;
        tb_in = 4'b1000; 
        #10;
        tb_in = 4'b0001; 
        #10;
        tb_in = 4'b1011; 
        #10;
        tb_in = 4'b1100; 
        #10;
        
        $finish;
    end

endmodule