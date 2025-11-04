module dlatch(
    input store,
    input [7:0] data,
    output reg [7:0] memory
);

    assign #1 not1 = ~store;
    assign #1 not2 = ~not1;
    assign #3 not3 = ~not2;
    
    assign pd_out = store & not3;
    
    always @(pd_out, data)
        if (pd_out)
            memory <= data;
            
endmodule

