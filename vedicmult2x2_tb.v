`timescale 1ns / 1ps

module vedicmult2x2_tb;
    reg [1:0] a, b;
    wire [3:0] o;



    // Instantiate the 2x2 multiplier
    vedicmult2x2 uut (
        .a(a),
        .b(b),
        .o(o)
    );

    initial begin
        // Monitor output
        $monitor("a=%b, b=%b, o=%b", a, b, o);
        
        // Apply test cases
        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;

        $finish;
    end
endmodule
