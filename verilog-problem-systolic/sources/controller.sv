module controller (
    input  logic clk,
    input  logic rst_n,
    input  logic in_valid,
    output logic load_b_phase,       // high when loading B matrix
    output logic compute_phase,      // high when computing C
    output logic switch_buffer,      // triggers double-buffer switch
    output logic out_valid
);

    // TODO: Implement FSM:
    // States:
    // 1. IDLE
    // 2. PRELOAD_B (2 cycles)
    // 3. COMPUTE (5 cycles)
    // 4. PRELOAD_NEXT_B
    // 5. COMPUTE_NEXT (second multiplication)
    // 6. DONE
    //
    // Refer timing diagrams in docs/systolic_flow.md

endmodule
