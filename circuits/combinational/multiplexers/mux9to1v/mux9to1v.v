module top_module(
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );

    always @(*) begin
        case (sel)
            0: out = a;
            1: out = b;
            2: out = c;
            3: out = d;
            4: out = e;
            5: out = f;
            6: out = g;
            7: out = h;
            8: out = i;
            9: out = 16'hFFFF;
            10: out = 16'hFFFF;
            11: out = 16'hFFFF;
            12: out = 16'hFFFF;
            13: out = 16'hFFFF;
            14: out = 16'hFFFF;
            15: out = 16'hFFFF;
        endcase
    end

endmodule
