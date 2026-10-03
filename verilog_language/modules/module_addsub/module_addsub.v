module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire carry;
    wire [31:0] bxor;

    always @(*) begin
        case (sub)
            0: bxor = b;
            1: bxor = ~b;

        endcase
    end

    add16 instance1 (.a(a[15:0]),.b(bxor[15:0]),.cin(sub),.sum(sum[15:0]),.cout(carry));
    add16 instance2 (.a(a[31:16]),.b(bxor[31:16]),.cin(carry),.sum(sum[31:16]),.cout(0));

endmodule
