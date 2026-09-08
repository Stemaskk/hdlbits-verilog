module top_module(
    input a,
    input b,
    output out );

    assign out = !((a & !b) | (!a & b));
    //Realized after problem that ^ can be used for XOR

endmodule
