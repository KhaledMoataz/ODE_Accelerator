module FSM_END_EULAR (
input clk,rst_sync,rst_async,F,R,D,
output outp
);

// States
// {end of row, data ready} 
localparam  State0 = 2'b00, State1 = 2'b10 , State2 = 2'b11;
reg[1:0] current_state;

reg temp_out;

assign outp = temp_out;


always @(posedge clk or posedge rst_async)
begin
    if(rst_sync == 1'b1 || rst_async == 1'b1)
        begin
            current_state <= State0;
            temp_out <= 1'b0;
        end
    else
    case(current_state)
        State0:
            begin
                if(F == 1'b1)
                    begin
                        current_state <= State1;
                        temp_out <= 1'b0;
                    end
            end
        State1:
            begin
                if(R == 1'b1)
                    begin
                        current_state <= State2;
                        temp_out <= 1'b0;
                    end
            end
        State2:
            begin
                if(D == 1'b1)
                    begin
                        current_state <= State0;
                        temp_out <= 1'b1;
                    end
            end
    endcase
end

endmodule