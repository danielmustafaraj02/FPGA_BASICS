/*
## Exercise 11: PWM Generator
**Goal:** Generate periodic signals.
**Task:**
* Use counter (0–255)
* Output high when `counter < duty`
**Testbench:**
* Set duty cycle to 50%
*/
module ex11 (
    input wire clk,
    input wire reset,
    input wire [7:0] duty,
    output reg pwm_out
);

    reg [7:0] counter;

    always @(posedge clk) begin
        if (reset) begin
            counter <= 8'd0;
            pwm_out <= 1'b0;
        end else begin
            counter <= counter + 1'b1;
            pwm_out <= (counter < duty);
        end
    end

endmodule