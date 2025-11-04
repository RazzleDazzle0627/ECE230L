module dflipflop(
    input D, clock,
    output reg Q, 
    output notQ
);

    initial begin
        Q <= 0;
    end
    
    assign notQ = ~Q;
    
    always @(posedge clock)
    
    begin
        Q <= D ;
        
    end 
        
endmodule