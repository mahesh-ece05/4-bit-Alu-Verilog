# 4-Bit ALU using Verilog HDL

## Project Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The ALU takes two 4-bit inputs, A and B, and uses a 3-bit opcode to select one of eight arithmetic, logical, and shift operations.

## Operations

| Opcode | Operation | Description |
|--------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A & B |
| 011 | OR | A \| B |
| 100 | XOR | A ^ B |
| 101 | NOT | ~A |
| 110 | Left Shift | A << 1 |
| 111 | Right Shift | A >> 1 |

## Inputs and Output

- A: 4-bit input
- B: 4-bit input
- Opcode: 3-bit operation selector
- Y: 4-bit output

A 3-bit opcode is used because:

**2³ = 8**, so it can select 8 different operations.

## Verification

The ALU was verified using a Verilog testbench.

Test inputs:

- A = 0101 (5)
- B = 0011 (3)

The simulation was checked using EPWave, and the expected results were obtained for all 8 operations.

### Example Results

- ADD: 5 + 3 = 8
- SUB: 5 - 3 = 2
- AND: 5 & 3 = 1
- OR: 5 | 3 = 7
- XOR: 5 ^ 3 = 6
- NOT: ~5 = 10
- Left Shift: 5 << 1 = 10
- Right Shift: 5 >> 1 = 2

## Synthesis and RTL Schematic

The ALU design was synthesized using Yosys.

Synthesis converts the Verilog RTL description into a hardware logic representation.

The synthesized RTL schematic shows the logic generated for the ALU operations and the selection of the required output based on the opcode.

## Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave
- Yosys

## Project Files

- `1_alu.v` — ALU design
- `2_alu_tb.v` — Verilog testbench
- `3_waveform_4bit_ALU.png` — Simulation waveform
- `4_RTL_schematic.png` — Synthesized RTL schematic
- `5_README.md` — Project documentation

## Project Workflow

**Verilog Design → Testbench → Simulation → Waveform → Synthesis → RTL Schematic**

## Learning Outcome

Through this project, I learned:

- Basic Verilog module design
- Using `case` statements for operation selection
- Writing a Verilog testbench
- Simulating and verifying a digital design
- Understanding waveforms
- Basic RTL synthesis and schematic generation
