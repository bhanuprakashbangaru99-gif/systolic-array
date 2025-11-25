# 2×2 Systolic Array with Double-Buffered Weight Storage  
### RL Code Completion Task — Baseline Submission

## 1. Why I Chose This Task

I selected this task because systolic arrays are one of the most fundamental hardware structures used in modern machine-learning accelerators. They are industry-relevant, require multi-module reasoning, and naturally produce the correct level of difficulty (pass@10 ≈ 1–3/10) required for high-quality 
reinforcement learning training.

This task also aligns with real ASIC/FPGA engineering workflows where engineers write cycle-accurate RTL for processing elements, interconnect structures, buffering logic, and compute pipelines.

Overall, the task is complex enough to challenge an LLM, but fully solvable with proper reasoning, making it an excellent candidate for a pilot RL project.

---

## 2. Why This Task Is Industry-Relevant

Systolic arrays are widely used in:

- Google TPU (Tensor Processing Unit)
- Nvidia Tensor Cores
- Apple Neural Engine
- Qualcomm Hexagon DSP
- Many server-class AI/ML accelerators
- Edge inference ASICs and FPGA acceleration blocks

This problem requires:

- Multi-cycle pipeline design  
- Register buffering  
- Multiply-accumulate (MAC) operations  
- PE-to-PE data forwarding  
- FSM control logic for preload + compute phases  
- Double-buffering to hide memory latency  
- Integration across multiple RTL modules  
- Timing-aware verification with a testbench  

These concepts are directly used by semiconductor companies in real hardware design.

---

## 3. Overview of the Task

The agent must complete a partial RTL implementation of a 2×2 systolic array 
that performs two back-to-back matrix multiplications using double-buffered
weight registers inside each Processing Element (PE).

The task includes:

- PE design  
- Weight double-buffer design  
- Systolic array interconnect  
- Controller FSM  
- Testbench template  
- Documentation describing timing and dataflow requirements  

The agent must use all provided context files to correctly reason about:

- Data propagation  
- Weight loading  
- Buffer switching  
- Timing cycles  
- Output validity  

---

## 4. Context Codebase Provided to the Agent

### **docs/**
Contains the full problem specification and background materials:
- `Specification.md` — main problem description  
- `systolic_flow.md` — preload + compute timing diagrams  
- `pe_behavior.md` — PE behavior and forwarding rules  
- `double_buffering.md` — buffer switching mechanism  
- 'Hidden_Grader_Explanation.md' — (File-1) describes what the hidden grader tests and why the golden solution would   satisfy those tests

These documents explain:
- How systolic arrays propagate activations and weights  
- Expected timing of preload/compute phases  
- The 5-cycle MAC accumulation window  
- How two consecutive matrix multiplies should be supported  
- How the task will be evaluated using hidden tests (covered in File-1)

### **sources/**
Contains partial SystemVerilog code with module headers and TODO sections:
- `pe.sv`
- `controller.sv`
- `systolic.sv`
- `weight_buffer.sv` (empty placeholder)

These files define the structure but intentionally omit implementation details 
to create a challenging yet solvable RL coding task.

### **tests/**
Contains a partial testbench template:
- `tb_systolic.sv`
- Four `.txt` matrix files (optional inputs)

This gives the agent the necessary interface but does **not** reveal expected outputs.

### **hints.txt**
Contains light guidance to keep the task fair without leaking the solution.

### **pyproject.toml**
Defines the Python/Cocotb testing environment used by the hidden grader.

---

## 5. Expected Model Difficulty

This task is designed to achieve:
- **pass@10 > 0%**
- **pass@10 ≤ 3/10**

Difficulty comes from:
- Multi-file reasoning  
- Multi-stage FSM  
- Double-buffer interactions  
- Multi-cycle timing dependencies  
- Integration across 4 PEs  
- Need to follow custom timing diagrams  

The task is intentionally non-trivial but fully deterministic and not ambiguous.

---

## 6. Summary

This repository contains all baseline materials for the 2×2 systolic array 
Reinforcement Learning code-completion task.  
It follows Phinity's problem design principles:

- Challenging  
- Fair  
- Relevant  
- Documented  
- Multi-module  
- Multi-cycle  
- Representative of real industry work  


