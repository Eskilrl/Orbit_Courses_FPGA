module AND(
    //place inputs and outputs here:
    input i_SW2, // SW2
    input i_SW4, // SW4

    output o_Led1 // D1
);

assign o_Led1 = i_SW2 & i_SW4;

//Write your logic here:

    
endmodule