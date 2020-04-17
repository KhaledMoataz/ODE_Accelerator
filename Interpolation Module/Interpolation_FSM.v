module InterpolationFSM(
    input clk,rst,init,alert,update,start,multipiler_done, divider_done,m_is_zero,
    output un_add_en,uz_add_en,uk_add_en,
    un_value,
    tn_add_en,tz_add_en,
    tz_value_en,tn_value_en,tk_value_en,
    un_add_temp_en,temp1_en,temp2_en,k_en,
    MAR1_en,MAR2_en,MDR2_en,read_sg,write_sg,
    m_add_en,m_value_en,
    un_add_mux_sel,uk_add_mux_sel,un_add_temp_mux_sel,
    tn_add_mux_sel,tz_add_mux_sel,mar2_mux_sel,mdr2_mux_sel,
    m_value_mux_sel,
    start_div, start_mul,
    
    done_sg,
    add_sig, sub_sg,

    output[1:0] mar1_mux_select,

    output[3:0] adder_opA_mux_sel,
    output[2:0] adder_opB_mux_sel
);

    reg[4:0] current_state;
    reg not_first;

    // states
    localparam IDLE = 5'd0, INIT1 = 5'd1, INIT2 = 5'd2, INIT3 = 5'd3,
     UPDATE1 = 5'd4, UPDATE2 = 5'd5, ALERT1 = 5'd6,
     START1 = 5'd7, START2 = 5'd8, START3 = 5'd9, START4 = 5'd10,
     LOOP1 = 5'd11, LOOP2 = 5'd12, LOOP3 = 5'd13, LOOP4 = 5'd14, LOOP5 = 5'd15,
     LOOP6 = 5'd16, LOOP7 = 5'd17, LOOP8 = 5'd18, LOOP9 = 5'd19, LOOP10 = 5'd20,
     LOOP11 = 5'd21;

     //CONTROL SIGNALS (MOSTLY ENABLES)
    assign un_add_en = current_state == INIT1 | current_state == UPDATE1;
    assign uz_add_en = current_state == INIT2 | current_state == UPDATE2;
    assign uk_add_en = current_state == ALERT1 | current_state == LOOP7;
    assign un_value = current_state == LOOP2;
    assign tn_add_en = current_state == INIT1 | current_state == UPDATE1;
    assign tz_add_en =  current_state == INIT1 | current_state == UPDATE1;
    assign tz_value_en = current_state == INIT3 | current_state == UPDATE2;
    assign tn_value_en = current_state == UPDATE1;
    assign tk_value_en = current_state == ALERT1;
    assign un_add_temp_en = current_state == START1 | current_state == LOOP4 | current_state == LOOP5;
    assign temp1_en = current_state == START1 | current_state == LOOP2;
    assign temp2_en = current_state == LOOP9;
    assign k_en = current_state == START4;
    assign MAR1_en = current_state == INIT2 | current_state == UPDATE1 | current_state == START1 | current_state == START4 | current_state == LOOP3;
    assign MAR2_en = current_state == LOOP1 | current_state == LOOP4 | current_state == LOOP10;
    
    assign MDR2_en = current_state == LOOP4 | current_state == LOOP10;
    assign read_sg = current_state == LOOP1;
    assign write_sg = current_state == LOOP4 | current_state == LOOP10;
    assign m_add_en = current_state == INIT1;
    assign m_value_en = current_state == START2 | current_state == LOOP6;

    assign start_div = current_state == START2;
    assign start_mul = current_state == LOOP3;
    
    assign add_sig = current_state == INIT2 | current_state == UPDATE1 | current_state == UPDATE2 | current_state == LOOP3 | 
                        current_state == LOOP4 | current_state == LOOP5 | current_state == LOOP7 | current_state == LOOP9;
    assign sub_sg = current_state == START1 | current_state == START2 | current_state == LOOP2 | current_state == LOOP6;
    assign done_sg = current_state == INIT3 | current_state == UPDATE2 | current_state == ALERT1 | current_state == LOOP11;
    

    assign not_first = (current_state == LOOP9)? 1'b1 : ((current_state == LOOP10) ? 1'b0 : not_first);

    //selectors
    assign un_add_mux_sel = current_state == UPDATE1 ? 1'b1 : 1'b0;
    assign uk_add_mux_sel = current_state == LOOP7 ? 1'b1 : 1'b0;
    assign un_add_temp_mux_sel =  (current_state == LOOP4 | current_state == LOOP5) ? 1'b1 : 1'b0;
    assign tn_add_mux_sel = current_state == UPDATE1 ? 1'b1 : 1'b0;
    assign tz_add_mux_sel = current_state == UPDATE1 ? 1'b1 : 1'b0;
    assign mar2_mux_sel = (current_state == LOOP4 | current_state == LOOP10) ? 1'b1 : 1'b0;
    assign mdr2_mux_sel = (current_state == LOOP4 | current_state == LOOP10) ? 1'b1 : 1'b0;
    assign m_value_mux_sel = current_state == LOOP6 ? 1'b1 : 1'b0;

    assign mar1_mux_select = (current_state == INIT2)? 2'b00 :((current_state == UPDATE1 | current_state == LOOP3) ? 2'b01 :(current_state == START1)? 2'b10 : 2'b11 );

    assign adder_opA_mux_sel = current_state == INIT2?4'b0000 :( current_state == UPDATE1 ?4'b0001 :(
                                        current_state == UPDATE2?4'b0010 :(current_state == START1 ?4'b0011 : (
                                        current_state == START2 ? 4'b0100 :( current_state == LOOP2 ? 4'b0101 : (
                                        current_state == LOOP3 ? 4'b0110 :( (current_state == LOOP4 | current_state == LOOP5) ? 4'b0111 : (
                                        current_state == LOOP6 ? 4'b1000 :( current_state == LOOP9 ? 4'b1010 : 4'b1001 )
                                        ))
                                            ) ))  ) ));
    
    assign adder_opB_mux_sel = current_state == START1?3'b001 :( current_state == START2 ? 3'b010 :(
                                 current_state == LOOP2 ? 3'b011 : (current_state == LOOP9 ? 3'b100 : 3'b000)));



    always@(posedge clk)
    begin
        if (rst) begin
            current_state <= IDLE;
            not_first <= 1'b0;
            end
        else 
        begin
            case (current_state)
                IDLE:
                begin
                    if(init)
                        current_state<=INIT1;
                    else if (update)
                        current_state <= UPDATE1;
                    else if(alert)
                        current_state <= ALERT1;
                    else if(start)
                        current_state <= START1;
                    else
                        current_state <= IDLE;
                end
                INIT1:
                begin
                    current_state <= INIT2;
                end
                INIT2:
                begin
                    current_state <= INIT3;
                end
                INIT3:
                begin
                    current_state <= IDLE;
                end
                UPDATE1:
                begin
                    current_state <= UPDATE2;
                end
                UPDATE2:
                begin
                    current_state <= IDLE;
                end
                ALERT1:
                begin
                    current_state <= IDLE;
                end
                START1:
                begin
                    current_state <= START2;
                end
                START2:
                begin
                    current_state <= START3;
                end
                START3:
                begin
                    if(divider_done)
                        current_state <= START4;
                    else
                        current_state<=START3;
                end
                START4:
                begin
                    current_state <= LOOP1;
                end
                LOOP1:
                begin
                    current_state <= LOOP2;
                end
                LOOP2:
                begin
                    current_state <= LOOP3;
                end
                LOOP3:
                begin
                    if(not_first)
                        current_state <= LOOP4;
                    else
                        current_state <= LOOP5;
                end
                LOOP4:
                begin
                    current_state <= LOOP6;
                end
                LOOP5:
                begin
                    current_state <= LOOP6;
                end
                LOOP6:
                begin
                    if(not_first)
                        current_state <= LOOP7;
                    else
                        current_state <= LOOP8;
                end
                LOOP7:
                begin
                    current_state <= LOOP8;
                end
                LOOP8:
                begin
                    if(multipiler_done)
                        current_state <= LOOP9;
                    else 
                        current_state <= LOOP8;
                end
                LOOP9:
                begin
                    if(m_is_zero)
                        current_state<= LOOP10;
                    else
                        current_state<=LOOP1;
                end
                LOOP10:
                begin
                    current_state <= LOOP11;
                end
                LOOP11:
                begin
                    current_state <= IDLE;
                end
                default:
                    begin
                    current_state<=IDLE;
                    not_first <= 1'b0;
                    end        
            endcase
        end
    end
endmodule 