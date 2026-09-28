module top_module (input x, input y, output z);

    wire a1, a2, b1, b2;

    assign a1 = (x ^ y) & x, a2 = (x ^ y) & x;
    assign b1 = !(x ^ y), b2 = !(x ^ y);

    assign z = (a1 | b1) ^ (a2 & b2);

endmodule
