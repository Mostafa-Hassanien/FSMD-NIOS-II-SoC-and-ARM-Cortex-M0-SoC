module Multiplier 
#(parameter DATA_WIDTH = 2,
            OUT_Width = DATA_WIDTH * 2)
(
    input     wire     [DATA_WIDTH - 1:0]    IN1, IN2,
    output    wire      [OUT_Width - 1:0]    OUT
);
assign OUT = IN1 * IN2;
endmodule