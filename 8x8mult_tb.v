`timescale 1ps/1ps
`include "8x8mult.v"

// Testbench for 8x8 Vedic Multiplier
module tb_vedic_8x8;

    // Inputs
    reg [7:0] a, b;

    // Outputs
    wire [15:0] p;

    // Instantiate the 8x8 Vedic Multiplier
    vedic_8x8 uut (
        .a(a),
        .b(b),
        .p(p)
    );

    // Generate waveform dump for GTKWave
    initial begin
        $dumpfile("wave.vcd");  // File to store waveform data
        $dumpvars(0, tb_vedic_8x8);  // Dump all variables in the module
        
        $monitor("a = %b, b = %b, p = %b", a, b, p);

        // Test cases
        a = 8'b00000000; b = 8'b00000000; #10;
        a = 8'b00000001; b = 8'b00000001; #10;
        a = 8'b00001010; b = 8'b00000101; #10;
        a = 8'b11111111; b = 8'b00001111; #10;
        a = 8'b10011001; b = 8'b01100110; #10;
        a = 8'b11111111; b = 8'b11111111; #10;

        // Finish simulation
        $finish;
    end

endmodule
