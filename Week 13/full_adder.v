module full_adder(
    input A, B, Cin,
    output Cout, sum
);

    assign sum = A ^ B ^ Cin;
    assign Cout = B & Cin | A & B | A & Cin;
    
    
endmodule
