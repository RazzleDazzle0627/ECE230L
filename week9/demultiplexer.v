`timescale 1ns / 1ps

module demultiplexer(
        input [3 : 0] In,
        input [1 : 0] Sel,
        input enable,
        output [3 : 0] local_lib, fire_dep, school, ribs
    );
    
        assign local_lib = enable ? (Sel == 2'b00 ? In : 0) : 0;
        assign fire_dep = enable ? (Sel == 2'b01 ? In : 0) : 0;
        assign school = enable ? (Sel == 2'b10 ? In : 0): 0;
        assign ribs = enable ? (Sel == 2'b11 ? In : 0) : 0;
                     
endmodule
