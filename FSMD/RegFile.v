module RegFile 
#(parameter DATA_WIDTH = 2)
(
    input    wire     [DATA_WIDTH - 1:0]    IN,
    input    wire                           CLK,
    input    wire                           RST,
    input    wire                           LOAD_EN,
    output   reg      [DATA_WIDTH - 1:0]    REG_OUT
);

always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                REG_OUT <= 'b0;
            end
        else if(LOAD_EN)
            begin
                REG_OUT <= IN;
            end
    end
endmodule