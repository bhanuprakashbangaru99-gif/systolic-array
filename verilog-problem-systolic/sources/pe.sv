module pe (
    input  logic       clk,
    input  logic       rst_n,
    input  logic [3:0] a_in,    // activation
    input  logic [3:0] b_in,    // weight input
    input  logic [8:0] cin,     // partial sum input
    input  logic       load_weight, // selects buffer to load
    output logic [3:0] a_out,
    output logic [3:0] b_out,
    output logic [8:0] cout
);

    // TODO: Implement PE behavior as described in docs/pe_behavior.md
    // - Multiply a_in * selected_weight
    // - Add cin
    // - Forward activation and weight
    // - Use double-buffered weight storage (weight_buffer inside PE)

endmodule
