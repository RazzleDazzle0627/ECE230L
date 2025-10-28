`timescale 1ns / 1ps


module structural_sr_latch(
    input Set,
    input Reset,
    output Q,
    output NotQ
);

    assign Q = ~(Reset | NotQ);
    assign NotQ = ~(Set | Q);

endmodule
