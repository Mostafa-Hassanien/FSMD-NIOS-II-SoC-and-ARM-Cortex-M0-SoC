module ROM_3X9_b_Matrix(
    input     wire      [2:0]        RAM_IN,
    input     wire      [3:0]        ADDRESS_B,
    input     wire                   Write_EN_B,
    input     wire                   CLK,
    output    reg       [2:0]        RAM_OUT
); 

reg    [2:0]    Mem     [0:15];

initial 
    begin
        $readmemb("Matrix B.txt", Mem);
    end

always @(posedge CLK)
    begin
        if(Write_EN_B)
            begin
                Mem[ADDRESS_B] <= RAM_IN;
            end
        RAM_OUT <= Mem[ADDRESS_B];
    end
endmodule