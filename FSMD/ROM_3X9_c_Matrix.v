module ROM_3X9_c_Matrix(
    input     wire      [7:0]        RAM_IN,
    input     wire      [3:0]        ADDRESS_C,
    input     wire                   Write_EN_C,
    input     wire                   CLK,
    output    reg       [7:0]        RAM_OUT
); 

reg    [7:0]    Mem     [0:15];

initial 
    begin
        $readmemb("Matrix C.txt", Mem);
    end

always @(posedge CLK)
    begin
        if(Write_EN_C)
            begin
                Mem[ADDRESS_C] <= RAM_IN;
            end
        RAM_OUT <= Mem[ADDRESS_C];
    end
endmodule