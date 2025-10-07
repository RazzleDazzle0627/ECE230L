module full_adder(
    input A, B, Cin,
    output Cout, Y
);

    assign Y = A ^ B ^ Cin;
    assign Cout = B & Cin | A & B | A & Cin;
    
    
endmodule
