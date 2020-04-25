module FSM_START_EULAR (
input clk,rst_sync,inp,final_done,
output outp
);

// States
localparam  State0 = 1'b0, State1 = 1'b1;
reg current_state;

reg temp_out;

assign outp = temp_out;


always @(posedge clk)
begin
    if(rst_sync == 1'b1)
        begin
            current_state <= State0;
            temp_out <= 1'b0;
        end
    else
    case(current_state)
        State0:
            begin
                if(inp == 1'b0)
                    begin
                        current_state <= State0;
                        temp_out <= 1'b0;
                    end
                else
                    begin
                        current_state <= State1;
                        temp_out <= 1'b1;
                    end
            end
        State1:
            begin
                if(final_done == 1'b1)
                    begin
                        current_state <= State0;
                        temp_out <= 1'b0;
                    end
                else
                    begin
                        current_state <= State1;
                        temp_out <= 1'b0;
                    end
            end
    endcase
end

endmodule