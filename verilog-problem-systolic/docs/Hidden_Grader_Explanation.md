# Hidden Grader Explanation — 2×2 Systolic Array Task

## 1. Overview
This document explains what the hidden grader tests in the RL code-completion task and how the **golden RTL solution** satisfies every required behavior.  
The analysis is based on systolic array architecture, double-buffered weight storage, multi-cycle timing, and multi-module integration.

## 2. Hidden Grader Tests

### **Test 1 — Reset Behavior**
The grader checks:
- Proper clearing of internal registers
- Proper reset of accumulators (`cout`)
- Weight buffers initialized to zero

Golden solution satisfies this because:
```verilog
if (!rst_n) begin
    active_w <= 0;
    load_w   <= 0;
end
if (!rst_n)
    cout <= 0;
```

---

### **Test 2 — Preload Phase Timing**
Expected:
- 2 cycles where B matrix loads into the load buffer
- No compute/multiply happening

Golden FSM:
```verilog
PRELOAD_B: begin
    load_b_phase = 1;
    if (cycle_cnt == 2)
        next = COMPUTE;
end
```
This matches exactly the expected preload duration.

---

### **Test 3 — Compute Phase Timing**
Expected:
- 5 cycles of MAC operations
- Correct pipelined systolic timing

Golden FSM:
```verilog
COMPUTE: begin
    compute_phase = 1;
    if (cycle_cnt == 5)
        next = PRELOAD_B2;
end
```

MAC in the PE:
```verilog
cout <= (active_w * a_in) + cin;
```

---

### **Test 4 — Double Buffer Switch**
Expected:
- Switch happens only after B2 preload
- B2 is active during second multiplication

Golden implementation:
```verilog
if (switch_buffer)
    active_w <= load_w;
```

FSM triggers switch only in the correct state:
```verilog
PRELOAD_B2 ... if (cycle_cnt == 2) next = COMPUTE2;
```

---

### **Test 5 — Dataflow Correctness**
Expected:
- Horizontal propagation of activations (`a`)
- Vertical propagation of weights (`b`)
- Correct multi-directional forwarding

Golden PE:
```verilog
assign a_out = a_in;
assign b_out = b_in;
```

---

### **Test 6 — Two Consecutive Multiplications**
Expected:
- First multiplication completes
- Immediately continues to second without reset
- Correct activation/weight propagation

Golden FSM:
```
PRELOAD_B → COMPUTE → PRELOAD_B2 → COMPUTE2
```

Everything is timed exactly as required.

---

### **Test 7 — out_valid Behavior**
Expected:
- Asserted only at end of second compute phase

Golden FSM:
```verilog
if (cycle_cnt == 5) begin
    out_valid = 1;
    next = DONE;
end
```

---

### **Test 8 — Numerical Correctness**
Expected:
- Correct results for A1×B1
- Correct results for A2×B2

Golden RTL ensures proper MAC accumulation and propagation.

---

## 3. Summary
The golden solution passes all tests because it:
- Implements correct systolic timing
- Uses double-buffering properly
- Handles two consecutive matrix multiplications
- Produces correct numerical outputs
- Asserts `out_valid` at the correct time


