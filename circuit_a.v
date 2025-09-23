module circuit_a(
    input A, B, C, D, // Declare inputs
    output Y // Declare Y output
    
);

    assign Y = D & ~A;
    // Enter logic equation here

endmodule
