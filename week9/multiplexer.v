`timescale 1ns / 1ps


module multiplexer(
    input [1:0] Sel,
    input [3:0]CEO, You, Fred, Jill, 
    input enable,
    output [3:0]Y
);

    assign Y = enable ? (Sel==0 ? CEO : (Sel == 1 ? You : (Sel == 2 ? Fred : (Sel ==3 ? Jill : 0)))) : 0;
    
endmodule
