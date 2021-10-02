module ROM_3X9_a_Matrix(
    input     wire      [2:0]        RAM_IN,
    input     wire      [3:0]        ADDRESS_A,
    input     wire                   Write_EN_A,
    input     wire                   CLK,
    output    reg       [2:0]        RAM_OUT
); 

reg    [2:0]    Mem     [0:15];

initial 
    begin
        $readmemb("Matrix A.txt", Mem);
    end

always @(posedge CLK)
    begin
        if(Write_EN_A)
            begin
                Mem[ADDRESS_A] <= RAM_IN;
            end
        RAM_OUT <= Mem[ADDRESS_A];
    end
endmodule