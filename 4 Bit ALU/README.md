# 4-Bit ALU Using Verilog

## Description

A **4-bit Arithmetic Logic Unit (ALU)** is a combinational digital circuit that performs arithmetic and logical operations on two 4-bit binary inputs. This project implements a 4-bit ALU using Verilog HDL.

The ALU takes two 4-bit inputs, `A` and `B`, and uses a 3-bit operation selector to perform different arithmetic and logical operations. The result is provided through a 4-bit output along with a carry output for arithmetic operations.

## Features

* 4-bit input operands
* Arithmetic and logical operations
* 3-bit operation selection
* Carry output
* Combinational circuit
* Verilog HDL implementation
* Testbench verification
* Simulation waveform generation

## Inputs and Outputs

| Signal         | Direction | Description             |
| -------------- | --------- | ----------------------- |
| `A[3:0]`       | Input     | First 4-bit operand     |
| `B[3:0]`       | Input     | Second 4-bit operand    |
| `ALU_Sel[2:0]` | Input     | Operation selector      |
| `Result[3:0]`  | Output    | 4-bit ALU result        |
| `Carry`        | Output    | Carry/borrow indication |

## Operations

| `ALU_Sel` | Operation | Description |
| --------- | --------- | ----------- |
| `000`     | ADD       | A + B       |
| `001`     | SUB       | A - B       |
| `010`     | AND       | A AND B     |
| `011`     | OR        | A OR B      |
| `100`     | XOR       | A XOR B     |
| `101`     | NOT       | NOT A       |
| `110`     | INC       | A + 1       |
| `111`     | DEC       | A - 1       |

## Working Principle

The ALU examines the `ALU_Sel` input and performs the corresponding operation.

For example:

```text
A = 0101
B = 0011
```

For addition:

```text
0101 + 0011 = 1000
```

Therefore:

```text
Result = 1000
```

## Applications

ALUs are used in:

* Microprocessors
* CPUs
* Arithmetic calculations
* Digital computers
* Control systems
* Embedded systems
* Digital signal processing systems

## Files

* `README.md` – Project documentation.
* `alu_4bit.v` – 4-bit ALU design.
* `alu_4bit_tb.v` – Testbench.
* `simulation_output.txt` – Expected simulation results.

## Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave
* GitHub

## How to Run

Compile the Verilog files:

```bash
iverilog -o alu_sim alu_4bit.v alu_4bit_tb.v
```

Run the simulation:

```bash
vvp alu_sim
```

View the waveform:

```bash
gtkwave alu_4bit.vcd
```

## Expected Result

The ALU should correctly perform all eight operations according to the `ALU_Sel` control input.

## Conclusion

The 4-bit ALU project demonstrates how arithmetic and logical operations can be combined into a single digital circuit using Verilog HDL. The testbench verifies each supported operation and confirms that the output matches the expected result.
