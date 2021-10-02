module Top_Module(
    input      wire                  Show_DATA,
    input      wire                  CLK,RST,
    output     wire        [7:0]     OUT
);

wire                Count_En, NEW_OUTPUT;
wire                i_notEQ3, j_notEQ3, k_notEQ3;
wire                sel_i, sel_j, sel_k, sel_sum;
wire                ld_i, ld_j, ld_k, ld_sum, ld_out;
wire                Done_Flag;

FSM_Controller U1_FSM (
    .NEW_OUTPUT(NEW_OUTPUT),
    .Show_DATA(!Show_DATA),
    .CLK(CLK),
    .RST(RST),
    .i_notEQ3(i_notEQ3),
    .j_notEQ3(j_notEQ3),
    .k_notEQ3(k_notEQ3),
    .Done_Flag(Done_Flag),
    .sel_i(sel_i),
    .sel_j(sel_j),
    .sel_k(sel_k),
    .sel_sum(sel_sum),
    .Count_En(Count_En),
    .ld_i(ld_i),
    .ld_j(ld_j),
    .ld_k(ld_k),
    .ld_sum(ld_sum),
    .ld_out(ld_out)
);

Datapath U2_DATAPATH (
    .NEW_OUTPUT(NEW_OUTPUT),
    .Show_DATA(!Show_DATA),
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
    .Count_En(Count_En),
    .i_notEQ3(i_notEQ3),
    .j_notEQ3(j_notEQ3),
    .k_notEQ3(k_notEQ3),
    .OUT(OUT),
    .Done_Flag(Done_Flag)
);

endmodule