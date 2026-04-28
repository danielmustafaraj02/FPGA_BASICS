/*
## Exercise 4: Bit Manipulation
**Goal:** Work with vectors and concatenation.
**Task:**
* Input: 4-bit vector `A[3:0]`
* Output: reversed vector `Y[3:0]`
**Testbench:**
* Input: `1100`
* Expected output: `0011`
*/

module ex4 (
    input  [3:0]  in,
    output [3:0]  out
);

    assign out = {in[0], in[1], in[2], in[3]};

endmodule