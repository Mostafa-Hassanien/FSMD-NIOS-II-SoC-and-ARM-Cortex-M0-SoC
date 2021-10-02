module Count_Data (
    input  wire            Show_DATA, NEW_OUTPUT,
    input  wire            En_Count,
    input  wire            CLK, RST,
    output reg    [3:0]    Count,
    output reg             Done_Flag
);

always @(posedge CLK or negedge RST )
    begin
        if (!RST)
            begin
                Count <= 4'b00;
                Done_Flag <= 1'b0;
            end
        else if(En_Count & Show_DATA & NEW_OUTPUT)
            begin
                Count <= Count + 4'b01;
                Done_Flag <= (Count == 4'd8);
            end
        else if(!En_Count)
            begin
                Count <= 4'b00;
                Done_Flag <= 1'b0;
            end
    end
endmodule
