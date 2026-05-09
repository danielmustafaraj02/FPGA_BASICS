/*
## Exercise 10: Shift Register
**Goal:** Serial data movement.
**Task:**
* Shift bits left each clock cycle
* Insert new input bit
**Testbench:**
* Input sequence: `1` followed by zeros
*/

module ex10 (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= {q[2:0], serial_in};
    end

endmodule