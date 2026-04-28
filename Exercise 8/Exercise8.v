/*
## Exercise 8: D Flip-Flop
**Goal:** Sequential logic and clocking.
**Task:**
* Capture input `d` on rising clock edge
* Include asynchronous reset
**Testbench:**
* Change `d` between clock edges
* Verify output updates only on clock edge
*/
module ex8 (
    input  wire clk,
    input  wire rst_n,
    input  wire d,
    output reg  q
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q <= 1'b0;
        end else begin
            q <= d;
        end
    end

endmodule