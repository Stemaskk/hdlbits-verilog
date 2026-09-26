module top_module(
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    fadd instance1[99:0] (.a(a),.b(b),.cin({cout[98:0],cin}),.cout(cout),.sum(sum));

endmodule

module fadd(
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
