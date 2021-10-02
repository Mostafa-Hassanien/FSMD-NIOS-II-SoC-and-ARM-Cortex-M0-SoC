module Datapath(
    input     wire              sel_i, sel_j, sel_k, sel_sum,
    input     wire              ld_i, ld_j, ld_k, ld_sum, ld_out,
    input     wire              CLK, RST, Count_En, Show_DATA, NEW_OUTPUT,
    output    wire              i_notEQ3, j_notEQ3, k_notEQ3,
    output    wire              Done_Flag,
    output    wire    [7:0]     OUT
);

wire   [1:0]    Incremented_I, Incremented_J, Incremented_K;
wire   [1:0]    OUT_MUX_I, OUT_MUX_J , OUT_MUX_K;
wire   [7:0]    Calculated_Sum, OUT_MUX_Sum;
wire   [1:0]    I, J, K;
wire   [7:0]    SUM;
wire   [7:0]    OUT_Mem;
wire   [3:0]    Address_Matrix_A, Address_Matrix_B, Address_Matrix_C, Address_C, Count;
wire   [2:0]    ROM_A_OUT, ROM_B_OUT;


mux2_1 #(.DATA_WIDTH(2)) U1_I (
    .SEL(sel_i), 
    .A(Incremented_I), 
    .B(2'b00), 
    .OUT(OUT_MUX_I)
);

mux2_1 #(.DATA_WIDTH(2)) U1_J (
    .SEL(sel_j), 
    .A(Incremented_J), 
    .B(2'b00), 
    .OUT(OUT_MUX_J)
);

mux2_1 #(.DATA_WIDTH(2)) U1_K (
    .SEL(sel_k), 
    .A(Incremented_K), 
    .B(2'b00), 
    .OUT(OUT_MUX_K)
);

mux2_1 #(.DATA_WIDTH(8)) U1_SUM (
    .SEL(sel_sum), 
    .A(Calculated_Sum), 
    .B(8'b0000_0000), 
    .OUT(OUT_MUX_Sum)
);

RegFile #(.DATA_WIDTH(2)) U2_REG_I (
    .IN(OUT_MUX_I), 
    .CLK(CLK),
    .RST(RST),
    .LOAD_EN(ld_i),
    .REG_OUT(I)
);

RegFile #(.DATA_WIDTH(2)) U2_REG_J (
    .IN(OUT_MUX_J), 
    .CLK(CLK),
    .RST(RST),
    .LOAD_EN(ld_j),
    .REG_OUT(J)
);

RegFile #(.DATA_WIDTH(2)) U2_REG_K (
    .IN(OUT_MUX_K), 
    .CLK(CLK),
    .RST(RST),
    .LOAD_EN(ld_k),
    .REG_OUT(K)
);

RegFile #(.DATA_WIDTH(8)) U2_REG_SUM (
    .IN(OUT_MUX_Sum), 
    .CLK(CLK),
    .RST(RST),
    .LOAD_EN(ld_sum),
    .REG_OUT(SUM)
);

Increment U4_I (
    .IN(I),
    .CLK(CLK),
    .RST(RST),
    .OUT(Incremented_I),
    .Not_Equal_3(i_notEQ3)
);

Increment U4_J (
    .IN(J),
    .CLK(CLK),
    .RST(RST),
    .OUT(Incremented_J),
    .Not_Equal_3(j_notEQ3)
);

Increment U4_K (
    .IN(K),
    .CLK(CLK),
    .RST(RST),
    .OUT(Incremented_K),
    .Not_Equal_3(k_notEQ3)
);

Calc_Address U5_A (
    .A(I),
    .B(K),
    .OUT_ADD(Address_Matrix_A)
);

Calc_Address U5_B (
    .A(K),
    .B(J),
    .OUT_ADD(Address_Matrix_B)
);

Calc_Address U5_C (
    .A(I),
    .B(J),
    .OUT_ADD(Address_Matrix_C)
);

ROM_3X9_a_Matrix U6_A (
    .RAM_IN(3'b000),
    .ADDRESS_A(Address_Matrix_A),
    .Write_EN_A(1'b0),
    .CLK(CLK),
    .RAM_OUT(ROM_A_OUT)
);

ROM_3X9_b_Matrix U6_B (
    .RAM_IN(3'b000),
    .ADDRESS_B(Address_Matrix_B),
    .Write_EN_B(1'b0),
    .CLK(CLK),
    .RAM_OUT(ROM_B_OUT)
);

ROM_3X9_c_Matrix U6_C (
    .RAM_IN(SUM),
    .ADDRESS_C(Address_C),
    .Write_EN_C(ld_out),
    .CLK(CLK),
    .RAM_OUT(OUT_Mem)
);

mux2_1 #(.DATA_WIDTH(4)) U1_Address_Mux (
    .SEL(Count_En), 
    .A(Count), 
    .B(Address_Matrix_C), 
    .OUT(Address_C)
);

mux2_1 #(.DATA_WIDTH(8)) U1_Data_Out (
    .SEL(Count_En), 
    .A(OUT_Mem), 
    .B(8'd0), 
    .OUT(OUT)
);

Count_Data U7_Counter (
    .NEW_OUTPUT(NEW_OUTPUT),
    .Show_DATA(Show_DATA),
    .En_Count(Count_En),
    .CLK(CLK),
    .RST(RST),
    .Count(Count),
    .Done_Flag(Done_Flag)
);

Calc_Sum U7_SUM (
    .A(ROM_A_OUT),
    .B(ROM_B_OUT),
    .PREV_SUM(SUM),
    .NEXT_SUM(Calculated_Sum)
);

endmodule