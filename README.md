# FPGA_BASICS

This repository is a collection of hands-on exercises designed to help you learn the basics of FPGA design using Verilog.
It focuses on building core digital logic concepts step by step through simulation and practice.


## Exercise 1: Identity Module

**Goal:** Understand module structure and continuous assignment.

**Task:**

* Create a module with one input `a` and one output `y`
* Connect input directly to output using `assign`

**Testbench:**

* Toggle `a` between 0 and 1
* Verify `y` always matches `a`


## Exercise 2: Basic Logic Gates

**Goal:** Implement combinational logic.

**Task:**

* Implement AND and OR operations
* Outputs: `y_and`, `y_or`

**Testbench:**

* Test all input combinations: `00, 01, 10, 11`


## Exercise 3: Procedural Assignment

**Goal:** Learn difference between `wire` and `reg`.

**Task:**

* Use an `always @(*)` block
* Assign `y = a`
* Declare `y` as `reg`

**Testbench:**

* Verify behavior matches Exercise 1


## Exercise 4: Bit Manipulation

**Goal:** Work with vectors and concatenation.

**Task:**

* Input: 4-bit vector `A[3:0]`
* Output: reversed vector `Y[3:0]`

**Testbench:**

* Input: `1100`
* Expected output: `0011`


## Exercise 5: 4-bit Adder

**Goal:** Understand arithmetic and bit width.

**Task:**

* Add two 4-bit inputs
* Output must be 5 bits to include carry

**Testbench:**

* Add `1111 + 0001`


## Exercise 6: Multiplexer

**Goal:** Conditional selection.

**Task:**

* Implement 2-to-1 mux using ternary operator

**Testbench:**

* Keep inputs constant
* Toggle select signal


## Exercise 7: Priority Encoder

**Goal:** Ordered decision logic.

**Task:**

* Input: 4-bit value
* Output: index of highest bit set to 1

**Testbench:**

* Test patterns like `0001`, `1010`, `0100`


## Exercise 8: 7-Segment Decoder

**Goal:** Use `case` statements.

**Task:**

* Map binary values `0–9` to a 7-bit display output

**Testbench:**

* Iterate through values 0 to 9


## Exercise 9: D Flip-Flop

**Goal:** Sequential logic and clocking.

**Task:**

* Capture input `d` on rising clock edge
* Include asynchronous reset

**Testbench:**

* Change `d` between clock edges
* Verify output updates only on clock edge


## Exercise 10: Counter

**Goal:** State evolution.

**Task:**

* Implement 4-bit counter
* Increment on each clock cycle

**Testbench:**

* Run for at least 20 cycles


## Exercise 11: Shift Register

**Goal:** Serial data movement.

**Task:**

* Shift bits left each clock cycle
* Insert new input bit

**Testbench:**

* Input sequence: `1` followed by zeros


## Exercise 12: PWM Generator

**Goal:** Generate periodic signals.

**Task:**

* Use counter (0–255)
* Output high when `counter < duty`

**Testbench:**

* Set duty cycle to 50%


## Exercise 13: Moore FSM

**Goal:** State-based design.

**Task:**

* Detect sequence `110`
* Output depends only on state

**Testbench:**

* Input: `1, 1, 1, 0`


## Exercise 14: Mealy FSM

**Goal:** Input-dependent output.

**Task:**

* Detect sequence `110`
* Output immediately when detected

**Testbench:**

* Compare timing with Moore FSM


## Exercise 15: Traffic Light Controller

**Goal:** Combine FSM and timing.

**Task:**

* States: `GREEN → YELLOW → RED`
* Use a counter to simulate timing

**Testbench:**

* Verify correct state durations and transitions
