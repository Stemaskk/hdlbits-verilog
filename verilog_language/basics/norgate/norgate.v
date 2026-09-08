module top_module(
    input a,
    input b,
    output out );

    assign out = !a & !b;
    //!a & !b = !(a | b) from De morgan's Law

endmodule
