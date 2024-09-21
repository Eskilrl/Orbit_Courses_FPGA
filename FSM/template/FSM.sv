module FSM (
    //inputs:
    input i_SW1,
    input i_clk,

    //outputs:
    output o_Led1,
    output o_Led2,
    output o_Led3,
    output o_Led4
);

parameter Led0 = 3'b000, Led1 = 3'b001, Led2 = 3'b010, Led3 = 3'b011, Led4 = 3'b100;

reg[2:0] main_state = 3'b000;
reg[2:0] next_state;

always @(posedge i_clk) begin
    main_state <= next_state;
end

always_comb begin

    case (main_state)
        Led0:
            begin
                
            end
            
        Led1:
            begin
                
            end

        Led2:
            begin
                
            end

        Led3:
            begin
                
            end

        Led4:
            begin
                
            end

        default: 
            begin
                next_state = Led1;
            end
    endcase 
    
end

    
endmodule