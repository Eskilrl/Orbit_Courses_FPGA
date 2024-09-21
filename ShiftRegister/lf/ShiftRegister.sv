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

//registers
reg[3:0] Led_registers = 0;


always_ff @(posedge i_clk) begin
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

always_ff @(posedge r_1Hz_clk) begin 
    Led_registers <= {Led_registers[2:0], i_SW1};
end

assign o_Led1 = Led_registers[3];
assign o_Led2 = Led_registers[2];
assign o_Led3 = Led_registers[1];
assign o_Led4 = Led_registers[0];


//Write your code here:
    
endmodule