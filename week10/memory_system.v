`timescale 1ns / 1ps

module memory_system(
        input [7:0] data,
        input store,
        input [1:0] addr,
        output reg [7:0] memory
    );
    
    wire [7:0] input_data[3:0];
    wire [7:0] memory_data[3:0];
    wire enableKinda [3:0];
    
    genvar i; 
    // Creating four 8-bit wide sets of data
    generate 
        for (i = 0; i < 4; i = i + 1) begin 
            byte_memory inst( 
                .data(input_data[i]),
                .store(enableKinda[i]),
                .memory(memory_data[i])
            );
        end
    endgenerate
    
    // Creating data demux to determine which piece of data to send
    demux data_demux(
            .data(data),
            .sel(addr),
            .A(input_data[0]),
            .B(input_data[1]), 
            .C(input_data[2]),
            .D(input_data[3])
        );
   //use cases to determine which d flip flop to send data to..ex case(sel=00), send to the first d flip flip 
    // Creating demux to determine where to send the data
    
    demux selector_demux(
        .data(store),
        .sel(addr),
        .A(enableKinda[0]),
        .B(enableKinda[1]),
        .C(enableKinda[2]),
        .D(enableKinda[3])
    
    );
    
    mux final_mux (
        .sel(addr),
        .A(memory_data[0]),
        .B(memory_data[1]),
        .C(memory_data[2]),
        .D(memory_data[3]),
        .enable(1)
    );
    
endmodule
