module top_module(
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] carry;

    bcd_fadd instance1[99:0] (.a(a),.b(b),.cin({carry[98:0],cin}),.cout(carry),.sum(sum));

    assign cout = carry[99];

endmodule
