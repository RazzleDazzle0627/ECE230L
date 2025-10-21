`timescale 1ns / 1ps

module top(
        input [15 : 0]sw,
        input btnL, btnU, btnD, btnR, btnC,
        output [15 : 0]led
        
        
    );
    
    wire [1 : 0] demult_sel;
    wire [1 : 0] mult_sel;
    wire [3 : 0] carry;
    assign mult_sel[0] = btnL;
    assign mult_sel[1] = btnU;
    assign demult_sel[0] = btnD;
    assign demult_sel[1] = btnR;
    
    multiplexer multiplexer_inst(
        .CEO(sw[3 : 0]),
        .You(sw[7 : 4]),
        .Fred(sw[11 : 8]),
        .Jill(sw[15 : 12]),
        .Sel(mult_sel),
        .Y(carry),
        .enable(btnC)
    );
    
    
    demultiplexer demultiplexer_inst(
        .In(carry),
        .Sel(demult_sel),
        .local_lib(led[3 : 0]),
        .fire_dep(led[7: 4]),
        .school(led[11 : 8]),
        .ribs(led[15 : 12]),
        .enable(btnC)    
    );

endmodule
