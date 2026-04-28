/*
## Exercise 3: Procedural Assignment
**Goal:** Learn difference between `wire` and `reg`.
**Task:**
* Use an `always @(*)` block
* Assign `y = a`
* Declare `y` as `reg`
**Testbench:**
* Verify behavior matches Exercise 1
*/

module ex3 (
    input  a,
    output reg y
);

    always @(*) begin
        y = a;
    end

endmodule