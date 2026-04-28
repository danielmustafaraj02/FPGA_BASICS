/*
## Exercise 2: Basic Logic Gates
**Goal:** Implement combinational logic.
**Task:**
* Implement AND and OR operations
* Outputs: `y_and`, `y_or`
**Testbench:**
* Test all input combinations: `00, 01, 10, 11`
*/

module ex2 (
    input   a,
    input   b,
    output  y_and,
    output  y_or
);
    assign y_and  =  a & b;
    assign y_or   =  a | b;

endmodule