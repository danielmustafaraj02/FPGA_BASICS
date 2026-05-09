`timescale 1ns / 1ps

module ex11_tb();
    reg clk;
    reg reset;
    reg [7:0] duty;
    wire pwm_out;

    ex11 uut (
        .clk(clk),
        .reset(reset),
        .duty(duty),
        .pwm_out(pwm_out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        duty = 8'd128;

        #20 reset = 0;

        #5200;

        $display("Simulation finished.");
        $finish;
    end

    initial begin
        $monitor("Time=%0t | Duty=%d | PWM_Out=%b", $time, duty, pwm_out);
    end
endmodule