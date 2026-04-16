module binary(
    input w, rst,
    input clk,
    output z,
    output Q1, Q2, Q0
);

    wire [2:0] Next;

    dff zero(
        .D(Next[0]),
        .Default(1'b0),
        .reset(rst),
        .clk(clk),
        .Q(Q0)
    );

    dff one(
        .D(Next[1]),
        .Default(1'b0),
        .reset(rst),
        .clk(clk),
        .Q(Q1)
    );

    dff two(
        .D(Next[2]),
        .Default(1'b0),
        .reset(rst),
        .clk(clk),
        .Q(Q2)
    );

    assign z = (Q1 & ~Q0) | Q2;
    assign Next[0] = (w & ((~Q1 & Q0) | (~Q2 & ~Q0))) |
    (~w & ((~Q1 & ~Q0) | (Q1 & Q0)));
    assign Next[1] = (w & ~Q2 & ~Q1) | (Q1 ^ Q0);
    assign Next[2] = (w & ((Q1 & Q0)|Q2));

endmodule