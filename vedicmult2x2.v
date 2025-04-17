module vedicmult2x2(a, b, o);  

    input [1:0] a;   
    input [1:0] b;
    output [3:0] o;  

    wire w0, w1, w2, w3;

    assign o[0] = a[0] & b[0];
    assign w0 = a[1] & b[0];
    assign w1 = a[0] & b[1];
    assign o[1] = w0 ^ w1;
    assign w2 = w0 & w1;  
    assign w3 = a[1] & b[1];
    assign o[2] = w3 ^ w2;
    assign o[3] = w2 & w3;

endmodule