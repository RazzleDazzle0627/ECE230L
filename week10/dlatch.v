`timescale 1ns / 1ps

module dlatch(
        input D, E,
        output reg Q,
        output notQ
    );
    
    always @ (E, D) begin
        if (E)
            Q <= D;
        end
        
    assign notQ = ~Q;
    
    
    
endmodule
