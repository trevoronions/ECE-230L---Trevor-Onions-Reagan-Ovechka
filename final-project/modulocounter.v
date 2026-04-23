module DAdder(
    input B, CLK, rst, Cin,
    output Cout, 
    output bit
);
reg w1;
wire w2;
wire w3;
    initial begin
        w1 <= 1'b0;
    end
    full_adder fa(
        .A(bit),
        .B(B),
        .C(Cin),
        .Y(w2),
        .Cout(Cout)
    );

    dff dff1(
        .data(w2),
        .CLK(CLK),
        .rst(rst),
        .Q(bit),
        .NotQ(w3)
    );
endmodule

module modulocounter(
    input CLK, rst, EN, [5:0] in,
    output [5:0] state
);
wire w1, w2, w3, w4, w5, w6;
wire tmprst;
wire out;
wire comparator;
assign comparator = (state[0]) & (state[1]) & (~state[2]) & state[3] & state[4] & state[5];
assign tmprst = rst || comparator;



    DAdder DAdder1(
        .B(EN),
        .CLK(CLK),
        .Cin(1'b0),
        .rst(tmprst),
        .Cout(w1),
        .bit(state[0])
    );

    DAdder DAdder2(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w1),
        .rst(tmprst),
        .Cout(w2),
        .bit(state[1])
    );

    DAdder DAdder3(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w2),
        .rst(tmprst),
        .Cout(w3),
        .bit(state[2])
    );

    DAdder DAdder4(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w3),
        .rst(tmprst),
        .Cout(w4),
        .bit(state[3])
    );
    DAdder DAdder5(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w4),
        .rst(tmprst),
        .Cout(w5),
        .bit(state[4])
    );
    DAdder DAdder6(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w5),
        .rst(tmprst),
        .Cout(w6),
        .bit(state[5])
    );



    dff dff2(
        .data(comparator ^ out),
        .CLK(CLK),
        .rst(rst),
        .Q(out),
        .NotQ()
    );

        




endmodule