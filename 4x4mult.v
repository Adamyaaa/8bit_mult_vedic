// 4x4 Vedic Multiplier
module vedic_4x4 (
    input [3:0] a, b,
    output [7:0] p
);

    // Partial products
    wire [3:0] p0, p1, p2, p3;
    wire [5:0] s1, s2;
    wire c1, c2;

    // Step 1: Multiply each bit (AND gates for partial products)
    assign p0 = a[1:0] * b[1:0];
    assign p1 = a[3:2] * b[1:0];
    assign p2 = a[1:0] * b[3:2];
    assign p3 = a[3:2] * b[3:2];

    // Step 2: Sum the partial products
    assign {c1, s1} = p1 + p2 + {2'b00, p0[3:2]};
    assign {c2, s2} = p3 + {2'b00, s1[5:2]} + c1;

    // Step 3: Output the final product
    assign p = {s2, s1[1:0], p0[1:0]};

endmodule
