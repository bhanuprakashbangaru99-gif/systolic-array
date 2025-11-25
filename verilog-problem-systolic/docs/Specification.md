# Task 1 — RL Task Specification  
## 2×2 Systolic Array with Double-Buffered Weight Storage  

Implement a complete 2×2 systolic array capable of performing two consecutive matrix multiplications using a double-buffered weight storage mechanism.

### Functional Requirements
- Supports C = A × B matrix multiplication.
- A and B are 2×2 matrices (4-bit elements).  
- Results are 9 bits each (4+4+1).
- Follows systolic dataflow timing (refer docs/systolic_flow.md).
- Must preload B matrix before compute phase.
- Must support double-buffering to load next B matrix while computing.

### Required Modules
- rtl/pe.sv  
- rtl/weight_buffer.sv  
- rtl/controller.sv  
- rtl/systolic.sv  

### Double Buffer Requirement
Each PE must include 2 registers for storing weights:
- Active buffer (used for current multiplication)
- Load buffer (used for loading next B matrix)

### Testbench Requirements
The testbench must:
- Instantiate the systolic array
- Provide two matrix multiplications
- Only assert `out_valid` when all C values are ready

### Directory Structure
Refer to folder layout.

### Difficulty Target
Pass@10 should be within **1–3/10** due to:
- Multi-file integration  
- Multi-cycle timing  
- Double-buffering  
- Multi-module design

### Industry Relevance
Systolic arrays are used in modern AI accelerators (TPUs, NPUs, DSPs, FPGA ML engines).
This task accurately reflects hardware accelerator design work.
