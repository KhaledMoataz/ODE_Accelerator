module FSM_START_EULAR (
input clk,rst_sync,rst_async,inp,final_done,
output outp
);

// States
localparam  State0 = 1'b0, State1 = 1'b1;
reg current_state;

reg temp_out;

assign outp = temp_out;

initial 
    begin
        current_state <= State0;
        temp_out <= 1'b0;
    end

always @(negedge clk or posedge rst_async)
begin
    if(rst_sync == 1'b1 || rst_async == 1'b1)
        begin
            current_state <= State0;
            temp_out <= 1'b0;
        end
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