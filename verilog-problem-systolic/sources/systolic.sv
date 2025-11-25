module systolic (
    input  logic       clk,
    input  logic       rst_n,
    input  logic [3:0] a11, a12, a21, a22,
    input  logic [3:0] b11, b12, b21, b22,
    input  logic       in_valid,
    output logic [8:0] c11, c12, c21, c22,
    output logic       out_valid
);

    // TODO:
    // Instantiate:
    // - 4 PEs
    // - Controller
    // - Weight buffers
    //
    // Connect PEs in systolic mesh:
    // [PE11] -> [PE12]
    //    ↓          ↓
    // [PE21] -> [PE22]

endmodule
