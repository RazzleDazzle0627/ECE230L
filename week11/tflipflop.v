`timescale 1ns / 1ps

module tflipflop(
    input T, clock,
    output Q, 
    output notQ
    );
    
    
     jkflipflop dff_inst(
        .J(T),
        .K(T),
        .clock(clock),
        .Q(Q),
        .notQ(notQ)
    );
        
    
    
endmodule
