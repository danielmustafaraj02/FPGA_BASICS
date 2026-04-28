/*
## Exercise 1: Identity Module
**Goal:** Understand module structure and continuous assignment.
**Task:**
* Create a module with one input `a` and one output `y`
* Connect input directly to output using `assign`
**Testbench:**
* Toggle `a` between 0 and 1
* Verify `y` always matches `a`
*/

module ex1 (
    input   a,
    output  y
);

    assign y = a;

endmodule