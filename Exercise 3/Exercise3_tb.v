module ex3_tb();
    reg  tb_a;
    wire tb_y;

    ex3 uut (
        .a(tb_a),
        .y(tb_y)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, ex3_tb);

        tb_a = 0; 
        #10;

        tb_a = 1; 
        #10;

        $finish;
    end
endmodule