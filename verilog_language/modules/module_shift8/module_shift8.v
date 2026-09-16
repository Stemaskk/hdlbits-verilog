module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);
    wire [7:0] inst1to2;
    wire [7:0] inst2to3;
    wire [7:0] result;

    my_dff8 instance1 (.clk(clk),.d(d),.q(inst1to2));
    my_dff8 instance2 (.clk(clk),.d(inst1to2),.q(inst2to3));
    my_dff8 instance3 (.clk(clk),.d(inst2to3),.q(result));

    always @(*) begin
        case (sel)
            0: q = d;
            1: q = inst1to2;
        	2: q = inst2to3;
            3: q = result;
            default: q = 0;
        endcase
    end
endmodule
