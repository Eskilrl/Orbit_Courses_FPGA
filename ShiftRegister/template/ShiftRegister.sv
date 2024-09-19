module ShiftRegister (
    //Inputs
    input i_SW1,
    input i_clk,

    //Outputs
    output o_Led1,
    output o_Led2,
    output o_Led3,
    output o_Led4
);

//Parameters

localparam integer c_clk_threshold = 6250000;

//Clock registers

reg r_1Hz_clk = 1'b0; //This is the clock you should use in your solution
reg[31:0] r_Fast_clk_counter = 0;

//Add extra registers here:

always @(posedge i_clk) begin
    if (r_Fast_clk_counter > c_clk_threshold)
        begin
            r_1Hz_clk <= !r_1Hz_clk; //inverts clock signal
            r_Fast_clk_counter <= 0; //resets counter
        end
    else
        begin
            r_Fast_clk_counter <= r_Fast_clk_counter + 1;
        end
end


//Write your code here:
    
endmodule