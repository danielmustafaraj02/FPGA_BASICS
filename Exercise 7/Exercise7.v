/*
## Exercise 7: Priority Encoder
**Goal:** Ordered decision logic.
**Task:**
* Input: 4-bit value
* Output: index of highest bit set to 1
**Testbench:**
* Test patterns like `0001`, `1010`, `0100`
*/ 

module ex7 (
    input  wire [3:0] in,
    output reg  [1:0] out,
    output reg        valid  // High if at least one bit is 1
);

    always @* begin
        if (in[3]) begin
            out = 2'b11; // Index 3
            valid = 1'b1;
        end else if (in[2]) begin
            out = 2'b10; // Index 2
            valid = 1'b1;
        end else if (in[1]) begin
            out = 2'b01; // Index 1
            valid = 1'b1;
        end else if (in[0]) begin
            out = 2'b00; // Index 0
            valid = 1'b1;
        end else begin
            out = 2'b00;
            valid = 1'b0; // No bits set
        end
    end

endmodule