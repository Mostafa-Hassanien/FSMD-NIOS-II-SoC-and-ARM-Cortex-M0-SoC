module FSM_Controller (
    input     wire               Show_DATA,
    input     wire               i_notEQ3, j_notEQ3, k_notEQ3,
    input     wire               Done_Flag, 
    input     wire               CLK, RST,
    output    reg                sel_i, sel_j, sel_k, sel_sum, Count_En,
    output    reg                ld_i, ld_j, ld_k, ld_sum, ld_out,
    output    reg                NEW_OUTPUT
);

localparam  S_1  = 4'b0000,
            S_2  = 4'b0001,
            S_3  = 4'b0010,
            S_4  = 4'b0011,
            S_5  = 4'b0100,
            S_6  = 4'b0101,
            S_7  = 4'b0110,
            S_8  = 4'b0111,
            S_9  = 4'b1000,
            S_Show_One_Input = 4'b1001,
            S_Show_Data = 4'b1011;


reg    [3:0]    Current_State, Next_State;

always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                Current_State <= S_1;
            end   
        else
            begin
                Current_State <= Next_State; 
            end 
    end

always @(*)
    begin
        case(Current_State)
            S_1    : begin
                            Next_State =  S_2;
                     end
            S_2    : begin
                        if(i_notEQ3)
                            begin
                                Next_State = S_3;
                            end
                        else 
                            begin
                                Next_State = S_Show_Data;
                            end
                     end
            S_3    : begin
                        if(j_notEQ3)
                            begin
                                Next_State = S_4;
                            end
                        else 
                            begin
                                Next_State = S_9;
                            end
                     end
            S_4    : begin
                        if(k_notEQ3)
                            begin
                                Next_State = S_5;
                            end
                        else 
                            begin
                                Next_State = S_7;
                            end
                     end
            S_5    : begin
                        Next_State = S_6;
                     end
            S_6    : begin
                        Next_State = S_4;
                     end
            S_7    : begin
                        Next_State = S_8;
                     end
            S_8    : begin
                        Next_State = S_3;
                     end
            S_9    : begin
                        Next_State = S_2;
                     end
            S_Show_Data : begin 
                            if(Done_Flag)
                                Next_State = S_1;
                            else if(Show_DATA)
                                Next_State = S_Show_One_Input;
                            else
                                Next_State = S_Show_Data;
                          end
            S_Show_One_Input : begin 
                                if(!Show_DATA)
                                    Next_State = S_Show_Data;
                                else
                                    Next_State = S_Show_One_Input;
                                end
            default : begin
                        Next_State = S_1;
                     end
        endcase
    end 


always @(*)
    begin
        case(Current_State)
            S_1    : begin
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        ld_i        = 1'b1; 
                        ld_j        = 1'b1;
                        ld_k        = 1'b1;
                        sel_sum     = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
            S_2    : begin
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
            S_3    : begin
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
            S_4    : begin
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
            S_5    : begin
                        sel_sum     = 1'b1;
                        ld_sum      = 1'b1;
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
            S_6    : begin
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                        if(!k_notEQ3)
                            begin
                                sel_k       = 1'b0;
                                ld_k        = 1'b1;
                            end
                        else
                            begin
                                sel_k       = 1'b1;
                                ld_k        = 1'b1;
                            end
                     end
            S_7    : begin
                        ld_out      = 1'b1;
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
            S_8    : begin
                        sel_i       = 1'b0;
                        sel_k       = 1'b0;
                        ld_i        = 1'b0; 
                        ld_k        = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        sel_sum     = 1'b0;
                        ld_sum      = 1'b1;
                        NEW_OUTPUT  = 1'b0;
                        if(!j_notEQ3)
                            begin
                                sel_j       = 1'b0;
                                ld_j        = 1'b1;
                            end
                        else
                            begin
                                sel_j       = 1'b1;
                                ld_j        = 1'b1;
                            end
                     end
            S_9    : begin
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                        if(!i_notEQ3)
                            begin
                                sel_i       = 1'b0;
                                ld_i        = 1'b1;
                            end
                        else
                            begin
                                sel_i       = 1'b1;
                                ld_i        = 1'b1;
                            end
                     end 
            S_Show_Data : begin 
                        Count_En    = 1'b1;
                        NEW_OUTPUT  = 1'b1;
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                          end
             S_Show_One_Input : begin 
                                Count_En    = 1'b1;
                                NEW_OUTPUT  = 1'b0;
                                sel_i       = 1'b0;
                                sel_j       = 1'b0;
                                sel_k       = 1'b0;
                                sel_sum     = 1'b0;
                                ld_i        = 1'b0; 
                                ld_j        = 1'b0;
                                ld_k        = 1'b0;
                                ld_sum      = 1'b0;
                                ld_out      = 1'b0;
                                end
            default: begin
                        sel_i       = 1'b0;
                        sel_j       = 1'b0;
                        sel_k       = 1'b0;
                        sel_sum     = 1'b0;
                        ld_i        = 1'b0; 
                        ld_j        = 1'b0;
                        ld_k        = 1'b0;
                        ld_sum      = 1'b0;
                        ld_out      = 1'b0;
                        Count_En    = 1'b0;
                        NEW_OUTPUT  = 1'b0;
                     end
        endcase
    end 

endmodule