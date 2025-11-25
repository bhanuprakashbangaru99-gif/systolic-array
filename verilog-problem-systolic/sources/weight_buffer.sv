module weight_buffer (
    input  logic       clk,
    input  logic       rst_n,
    input  logic       load_en,
    input  logic       switch_buffer,
    input  logic [3:0] b_in,
    output logic [3:0] b_out
);

    // TODO:
    // Implement two 4-bit registers:
    // reg active_buf;
    // reg load_buf;
    //
    // load_buf loads new weights
    // switch_buffer swaps active_buf <-> load_buf

endmodule
