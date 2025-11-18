module dflipflop(
    input D, Clock, Reset,
    output reg Q
);

    initial begin
        Q <= 0;
    end
        
    always @(posedge Clock)
    begin
        if(Reset) 
            Q <= 0;
        else Q <= D;
            
            
        
    end 
        
endmodule