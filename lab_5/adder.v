module adder(
    // Declare your A/B inputs
    input A, B,
    output Y, Carry
    // Declare Y output
    // Declare carry output
);

    // Enter logic equation here
    assign Y = A ^ B;
    assign Carry = A & B;

endmodule