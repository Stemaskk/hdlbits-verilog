module top_module (
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [3:0] carry;

    bcd_fadd instance1[3:0] (.a(a),.b(b),.cin({carry[2:0],cin}),.cout(carry),.sum(sum));

    assign cout = carry[3];

endmodule
