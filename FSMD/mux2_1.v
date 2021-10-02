module mux2_1 
#(parameter DATA_WIDTH = 2)
(
    input    wire                            SEL,
    input    wire    [DATA_WIDTH - 1:0]      A, B,
    output   reg     [DATA_WIDTH - 1:0]      OUT
);

always @(*)
    begin
        case (SEL)
        1'b0 :  OUT = B;
        1'b1 :  OUT = A;
        endcase
    end
endmodule