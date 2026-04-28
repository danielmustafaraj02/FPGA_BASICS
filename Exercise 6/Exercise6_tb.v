module ex5_tb;
    reg a, b, sel;
    wire out;

    ex5 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        a = 1'b0; 
        b = 1'b1;
        sel = 1'b0;

        $display("Time\t A\t B\t Sel\t Out");
        $monitor("%0t\t %b\t %b\t %b\t %b", $time, a, b, sel, out);
        #10 
        sel = 1'b1;
        #10 
        sel = 1'b0;
        #10 
        sel = 1'b1;
        #10 
        $finish;
    end
endmodule