module top_module(
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    fadd instance1[2:0] (.a(a[2:0]),.b(b[2:0]),.cin({cout[1:0],cin}),.cout(cout[2:0]),.sum(sum[2:0]));

endmodule

module fadd(
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
