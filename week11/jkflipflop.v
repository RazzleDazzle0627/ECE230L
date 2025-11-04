module jkflipflop(
    input J, K, clock,
    output Q, 
    output notQ
);

    wire Q_next;

    dflipflop dff_inst(
        .D(Q_next),
        .clock(clock),
        .Q(Q),
        .notQ(notQ)
    );
    
    assign Q_next = J & notQ | ~K & Q;

    endmodule