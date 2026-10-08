# 4-Bit ALU with Carry using Verilog HDL

## Project Overview

This project is an improved version of a 4-bit Arithmetic Logic Unit (ALU)
designed using Verilog HDL.

The ALU takes two 4-bit inputs, A and B, and uses a 3-bit opcode to select
one of eight arithmetic, logical, or shift operations.

In this version, a Carry output is added to preserve the extra bit generated
during addition.

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

## Inputs and Outputs

- A: 4-bit input
- B: 4-bit input
- Opcode: 3-bit operation selector
- Y: 4-bit result
- Carry: Carry output for addition

## Carry Handling

A 4-bit output can represent values from 0 to 15.

For example:

10 + 8 = 18

Binary addition:

    1010
  + 1000
  -------
   10010

Therefore:

- Carry = 1
- Y = 0010

The Carry output preserves the extra bit produced during addition.

## Verification

The ALU was verified using a Verilog testbench.

Test cases included:

- 5 + 3 = 8, Carry = 0
- 10 + 8 = 18, Carry = 1
- Subtraction
- AND
- OR
- XOR
- NOT
- Left shift
- Right shift

The simulation results were verified using waveforms in EPWave.

## Synthesis and RTL Schematic

The ALU design was synthesized using Yosys.

The synthesized RTL schematic shows the hardware logic generated from
the Verilog description, including the operation-selection and output
logic controlled by the opcode.

The RTL schematic is included in this project as:

`RTL_schematic_v2.png`

## Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave
- Yosys

## Project Files

- `alu_v2_carry.v` — Improved ALU design with Carry
- `alu_tb_v2_carry.v` — Verilog testbench
- `alu_v2_waveforms.png` — Simulation waveform
- `RTL_schematic_v2.png` — Synthesized RTL schematic
- `README2.md` — Project documentation

## Improvement Over V1

V1 provided only a 4-bit result.

V2 adds a Carry output so that the extra bit generated during addition
is not lost.

V2 also includes synthesis and an RTL schematic to show the hardware
structure generated from the Verilog design.