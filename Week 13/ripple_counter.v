module ripple_counter(
//connect clocks of flip flops to previous q
//need to store the states of the flip flops in a wire 
        input clk, rst,
        output [2:0]state
    );
    
    wire [2:0]transition;
    
    tflipflop rca(
        .T(1'b1),
        .Clock(clk),
        .Q(transition[0]),
        .Reset(rst)
    );
    
    tflipflop rcb(
        .T(1'b1),
        .Clock(transition[0]),
        .Reset(rst),
        .Q(transition[1])
    );
    
    tflipflop rcc(
        .T(1'b1),
        .Clock(transition[1]),
        .Reset(rst),
        .Q(transition[2])
    );
    
    assign state = transition;
        
endmodule
