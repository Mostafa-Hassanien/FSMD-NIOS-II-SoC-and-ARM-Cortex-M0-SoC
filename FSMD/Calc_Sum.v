module Calc_Sum (
    input      wire     [2:0]     A, B, 
    input      wire     [7:0]     PREV_SUM,
    output     wire     [7:0]     NEXT_SUM
);

wire     [5:0]  MUL_RESULT;

Multiplier #(.DATA_WIDTH(3)) X1_MUL (
    .IN1(A),
    .IN2(B),
    .OUT(MUL_RESULT)
);

assign NEXT_SUM = PREV_SUM + MUL_RESULT;
endmodule