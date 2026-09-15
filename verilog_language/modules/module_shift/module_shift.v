module top_module ( input clk, input d, output q );

    wire inst1to2;
    wire inst2to3;

    my_dff instance1 (.clk(clk),.d(d),.q(inst1to2));
    my_dff instance2 (.clk(clk),.d(inst1to2),.q(inst2to3));
    my_dff instance3 (.clk(clk),.d(inst2to3),.q(q));

endmodule
