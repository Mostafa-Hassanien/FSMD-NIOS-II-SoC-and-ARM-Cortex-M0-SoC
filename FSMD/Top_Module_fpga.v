module Top_Module(
    input      wire                  go_i,
    input      wire                  CLK,RST, CLK_BRD,
    output     wire                  CLK_COUNT,
    output     wire        [7:0]     OUT
);

wire                i_notEQ3, j_notEQ3, k_notEQ3;
wire                sel_i, sel_j, sel_k, sel_sum;
wire                ld_i, ld_j, ld_k, ld_sum, ld_out;
wire                READ_EN_A, READ_EN_B;

FSM_Controller U1_FSM (
    .go_i(go_i),
    .CLK(CLK),
    .RST(RST),
    .i_notEQ3(i_notEQ3),
    .j_notEQ3(j_notEQ3),
    .k_notEQ3(k_notEQ3),
    .sel_i(sel_i),
    .sel_j(sel_j),
    .sel_k(sel_k),
    .sel_sum(sel_sum),
    .ld_i(ld_i),
    .ld_j(ld_j),
    .ld_k(ld_k),
    .ld_sum(ld_sum),
    .ld_out(ld_out),
    .READ_EN_A(READ_EN_A),
    .READ_EN_B(READ_EN_B)
);

Datapath U2_DATAPATH (
    .sel_i(sel_i),
    .sel_j(sel_j),
    .sel_k(sel_k),
    .sel_sum(sel_sum),
    .ld_i(ld_i),
    .ld_j(ld_j),
    .ld_k(ld_k),
    .ld_sum(ld_sum),
    .ld_out(ld_out),
    .CLK(CLK),
    .RST(RST),
    .READ_EN_A(READ_EN_A),
    .READ_EN_B(READ_EN_B),
    .i_notEQ3(i_notEQ3),
    .j_notEQ3(j_notEQ3),
    .k_notEQ3(k_notEQ3),
    .OUT(OUT)
);

count_28bit C1 (
    .clk_brd(CLK_BRD),
    .rst(RST),
    .clk(CLK_COUNT)
);

endmodule