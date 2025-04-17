// 8x8 Vedic Multiplier using 4x4 Module
module vedic_8x8 (
    input [7:0] a, b,
    output [15:0] p
);

    // Intermediate wires for partial products
    wire [7:0] p0, p1, p2, p3;
    wire [11:0] s1, s2;
    wire c1, c2;

    // Instantiate four 4x4 Vedic multipliers
    vedic_4x4 mul1 (a[3:0], b[3:0], p0);
    vedic_4x4 mul2 (a[7:4], b[3:0], p1);
    vedic_4x4 mul3 (a[3:0], b[7:4], p2);
    vedic_4x4 mul4 (a[7:4], b[7:4], p3);

    // Step 1: Add the partial products
    assign {c1, s1} = p1 + p2 + {4'b0000, p0[7:4]};
    assign {c2, s2} = p3 + {4'b0000, s1[11:4]} + c1;

    // Step 2: Combine the results
    assign p = {s2, s1[3:0], p0[3:0]};

endmodule

// 4x4 Vedic Multiplier (Module inside the same file)
module vedic_4x4 (
    input [3:0] a, b,
    output [7:0] p
);

    // Intermediate wires for partial products
    wire [3:0] p0, p1, p2, p3;
    wire [5:0] s1, s2;
    wire c1, c2;

    // Step 1: Generate partial products
    assign p0 = a[1:0] * b[1:0];
    assign p1 = a[3:2] * b[1:0];
    assign p2 = a[1:0] * b[3:2];
    assign p3 = a[3:2] * b[3:2];

    // Step 2: Sum partial products
    assign {c1, s1} = p1 + p2 + {2'b00, p0[3:2]};
    assign {c2, s2} = p3 + {2'b00, s1[5:2]} + c1;

    // Step 3: Final product output
    assign p = {s2, s1[1:0], p0[1:0]};

endmodule
