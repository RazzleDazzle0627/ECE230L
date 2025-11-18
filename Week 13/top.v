module top(
        input btnU, btnC,
        output led[6:0]
    );
    
    ripple_counter rc(
        .clk(btnC),
        .rst(btnU),
        .state(led[2:0])
    );
    
    modulo_counter mc(
        .clk(btnC),
        .rst(btnU),
        .state(led[5:3]),
        .out(led[6])
    );
    
    
    
endmodule
