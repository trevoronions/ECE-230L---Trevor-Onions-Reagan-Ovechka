module circuit_b(
    input A,B,C,D,
    output Y
);

    assign Y = (A & B) | (~C & ~D) | (B & ~D);

endmodule
