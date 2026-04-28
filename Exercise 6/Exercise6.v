/*
## Exercise 6: Multiplexer
**Goal:** Conditional selection.
**Task:**
* Implement 2-to-1 mux using ternary operator
**Testbench:**
* Keep inputs constant
* Toggle select signal
*/

module ex5 (
    input wire a,    
    input wire b,    
    input wire sel,  
    output wire out  
);

    assign out = sel ? b : a;

endmodule