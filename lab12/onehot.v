// Implement one-hot state machinemodule 
module one_hot(
    input w, rst,
    input clk,
    output z,
    output Astate, Bstate, Cstate, Dstate, Estate
);
    wire Anext, Bnext, Cnext, Dnext, Enext;

    dff Adff(
        .Default(1'b1),
        .reset(rst),
        .D(Anext),
        .clk(clk),
        .Q(Astate)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .reset(rst),
        .clk(clk),
        .Q(Bstate)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .reset(rst),
        .clk(clk),
        .Q(Cstate)
    );
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .reset(rst),
        .clk(clk),
        .Q(Dstate)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .reset(rst),
        .clk(clk),
        .Q(Estate)
    );


    assign z = Cstate | Estate;

    assign Anext = 0;
    assign Bnext = (~w & (Astate | Dstate | Estate));
    assign Cnext = (~w & Bstate) | (~w & Cstate);
    assign Dnext = (w & (Astate | Bstate | Cstate));
    assign Enext = (w & (Dstate | Estate)); 
endmodule