module modulo_counter (
    input clk, reset,
    output [2:0] state, 
    output out
);
    wire weHit6yay = (state[2] & state[1] & ~state[0]); //110
    wire logicForOutput = weHit6yay ^ out;
    wire counterReset = weHit6yay | reset;
    
    //we also want to be able to manually reset with reset button in addition to automatically resetting @ 6
    
    //we need 3 full adders. we wire the first Cin OR B tO BE 1 not BOTH!!!!!!!!
    //we wire our output of each full adder into a D flip flip as our D input
    //our Q from the D flip flop gets wire into the A input of our full adder
    //cout goes into cin of next one like previous labs
    
    wire [2:0] fAinputs;
    wire [2:0] dFFinputs;
    wire [2:0] carryout;
    
    assign state = fAinputs;
    
    
    dflipflop bitZero (
        .D(dFFinputs[0]),
        .Clock(clk), 
        .Reset(counterReset), // we might need to change this later so that it logically resets in both cases
        .Q(fAinputs[0])
    );
    full_adder fA0 (
        .A(fAinputs[0]), 
        .B(1'b0),
        .Cin(1'b1),
        .Cout(carryout[0]),
        .sum(dFFinputs[0])
    );
    
    
    dflipflop bitOne (
        .D(dFFinputs[1]),
        .Clock(clk), 
        .Reset(counterReset), // we might need to change this later so that it logically resets in both cases
        .Q(fAinputs[1])
    );
    full_adder fA1 (
        .A(fAinputs[1]), 
        .B(1'b0),
        .Cin(carryout[0]),
        .Cout(carryout[1]),
        .sum(dFFinputs[1])
    );
 
 
    dflipflop bitTwo (
        .D(dFFinputs[2]),
        .Clock(clk), 
        .Reset(counterReset), // we might need to change this later so that it logically resets in both cases
        .Q(fAinputs[2])
    );
    full_adder fA2 (
        .A(fAinputs[2]), 
        .B(1'b0),
        .Cin(carryout[1]),
        .Cout(carryout[2]),
        .sum(dFFinputs[2])
    );
    
    //this is the furthest right dff on the diagram!
    dflipflop forOut (
        .D(logicForOutput),
        .Clock(clk), 
        .Reset(Reset), // we might need to change this later so that it logically resets in both cases
        .Q(out)
    );
    
    
    

endmodule