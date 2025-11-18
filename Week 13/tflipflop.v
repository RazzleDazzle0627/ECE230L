`timescale 1ns / 1ps

module tflipflop(
    input T, Clock, Reset,
    output Q, 
    output notQ
    );
    
    
     jkflipflop dff_inst(
        .J(T),
        .K(T),
        .clock(Clock),
        .Q(Q),
        .reset(Reset)
            );
        
    
    
endmodule
