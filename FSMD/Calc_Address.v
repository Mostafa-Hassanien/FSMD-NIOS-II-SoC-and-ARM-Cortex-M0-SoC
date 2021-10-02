module Calc_Address(
    input      wire      [1:0]    A, B,
    output     wire      [3:0]    OUT_ADD
);

wire     [3:0]  MUL_RESULT;

Multiplier #(.DATA_WIDTH(2)) X1_MUL (
    .IN1(A),
    .IN2(2'd3),
    .OUT(MUL_RESULT)
);
assign OUT_ADD = MUL_RESULT +  B;
endmodule 