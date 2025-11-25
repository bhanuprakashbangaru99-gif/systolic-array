module tb_systolic ();

    logic clk;
    logic rst_n;
    logic [3:0] a11, a12, a21, a22;
    logic [3:0] b11, b12, b21, b22;
    logic in_valid;
    logic [8:0] c11, c12, c21, c22;
    logic out_valid;

    // DUT instantiation
    systolic DUT (
        .*   // because entire interface matches
    );

    // TODO:
    // Generate clock
    // Generate reset
    // Apply matrix A1, B1
    // Apply matrix A2, B2
    // Observe out_valid

endmodule
