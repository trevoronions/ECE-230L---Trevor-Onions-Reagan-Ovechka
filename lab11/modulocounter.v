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
    input CLK, rst, EN,
    output mc0, mc1, mc2,
    output out
);
wire w1;
wire w2;
wire w3;
reg w4;
wire w5;
wire tmprst;
wire comp;
assign comp = mc0 & (~mc1) & mc2;
assign tmprst = rst | comp;



    DAdder DAdder1(
        .B(EN),
        .CLK(CLK),
        .Cin(1'b0),
        .rst(tmprst),
        .Cout(w1),
        .bit(mc0)
    );

    DAdder DAdder2(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w1),
        .rst(tmprst),
        .Cout(w2),
        .bit(mc1)
    );

    DAdder DAdder3(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w2),
        .rst(tmprst),
        .Cout(w3),
        .bit(mc2)
    );

    dff dff2(
        .data(comp ^ out),
        .CLK(CLK),
        .rst(rst),
        .Q(out),
        .NotQ()
    );

        




endmodule