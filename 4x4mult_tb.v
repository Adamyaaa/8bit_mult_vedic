// Testbench for 4x4 Vedic Multiplier

module tb_vedic_4x4;

  // Inputs
  reg [3:0] a, b;

  // Outputs
  wire [7:0] p;

  // Instantiate the 4x4 Vedic Multiplier
  vedic_4x4 uut (.a(a), .b(b), .p(p));

  // Test stimulus
  initial begin
    // Monitor output
    $monitor("a = %b, b = %b, p = %b", a, b, p);

    // Apply test vectors
    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b0001; b = 4'b0001; #10;
    a = 4'b0010; b = 4'b0011; #10;
    a = 4'b0101; b = 4'b0011; #10;
    a = 4'b1010; b = 4'b0101; #10;
    a = 4'b1111; b = 4'b1111; #10;

    // Finish simulation
    $finish;
  end

endmodule
