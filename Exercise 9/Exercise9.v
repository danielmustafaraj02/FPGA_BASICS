/*
## Exercise 9: Counter
**Goal:** State evolution.
**Task:**
* Implement 4-bit counter
* Increment on each clock cycle
**Testbench:**
* Run for at least 20 cycles
*/

module ex8 (
    input wire clk,      
    input wire reset,    
    output reg [3:0] q   
);
    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= q + 1'b1;
    end
endmodule