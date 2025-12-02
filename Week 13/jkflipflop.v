module jkflipflop(
    input J, K, clock, reset,
    output Q
);

    wire Q_next;

    dflipflop dff_inst(
        .D(Q_next),
        .Clock(clock),
        .Q(Q),
        .Reset(reset)
    );
    
    assign Q_next = J & ~Q | ~K & Q;

    endmodule