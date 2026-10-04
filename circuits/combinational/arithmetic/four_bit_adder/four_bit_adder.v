module top_module (
    input [3:0] x,
    input [3:0] y,
    output [4:0] sum);

    wire [2:0] cout;

    fadd instance1[3:0] (.a(x[3:0]),.b(y[3:0]),.cin({cout[2:0],1'b0}),.cout({sum[4],cout[2:0]}),.sum(sum[3:0]));

endmodule

module fadd(
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
