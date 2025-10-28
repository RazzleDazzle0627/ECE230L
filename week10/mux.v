`timescale 1ns / 1ps

module mux(
        input [1:0] sel,
        input [7:0] A, B, C, D,
        input enable,
        output [7:0]Y
    );
    
    
        assign Y = enable ? (sel==0 ? A : (sel==1 ? B : (sel==2 ? C : (sel==3 ? D : 0)))) : 0;
endmodule
