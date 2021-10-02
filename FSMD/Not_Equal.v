module Not_Equal (
    input     wire    [1:0]  IN1, IN2,
    output    wire           OUT
);
assign OUT = (IN1 != IN2);
endmodule 