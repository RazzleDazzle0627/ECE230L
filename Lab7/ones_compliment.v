module ones_compliment(
    input [3 : 0] A, [3 : 0] B,
    output [3 : 0] Y
    
);

    wire [3 : 0] APlusB;
    wire [3 : 0] carry;
    wire [3 : 0] around;
    
    
    full_adder inter_0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(APlusB[0]),
        .Cout(carry[0])
    );
    
    full_adder inter_1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(carry[0]),
        .Y(APlusB[1]),
        .Cout(carry[1])
     );
     
     full_adder inter_2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(carry[1]),
        .Y(APlusB[2]),
        .Cout(carry[2])
     );
     
     full_adder inter_3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(carry[2]),
        .Y(APlusB[3]),
        .Cout(around[0])
     );
     
     
     
     full_adder bit_0 (
        .A(APlusB[0]),
        .B(1'b0),
        .Cin(around[0]),
        .Y(Y[0]),
        .Cout(around[1])
     );
     
     full_adder bit_1 (
        .A(APlusB[1]),
        .B(1'b0),
        .Cin(around[1]),
        .Y(Y[1]),
        .Cout(around[2])
     );
     
     full_adder bit_2 (
        .A(APlusB[2]),
        .B(1'b0),
        .Cin(around[2]),
        .Y(Y[2]),
        .Cout(around[3])
     );
     
     full_adder bit_3 (
        .A(APlusB[3]),
        .B(1'b0),
        .Cin(around[3]),
        .Y(Y[3])
      );
      
      
      
endmodule