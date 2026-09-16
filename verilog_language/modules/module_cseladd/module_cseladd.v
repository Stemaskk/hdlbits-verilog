module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

	wire sel;
    wire [15:0]sum0;
    wire [15:0]sum1;

    add16 instance1 (.a(a[15:0]),.b(b[15:0]),.cin(0),.sum(sum[15:0]),.cout(sel));
    add16 carry0 (.a(a[31:16]),.b(b[31:16]),.cin(0),.sum(sum0),.cout(0));
    add16 carry1 (.a(a[31:16]),.b(b[31:16]),.cin(1),.sum(sum1),.cout(0));

    always @(*) begin
        case (sel)
            0: sum[31:16] = sum0;
            1: sum[31:16] = sum1;
        endcase
    end

endmodule
