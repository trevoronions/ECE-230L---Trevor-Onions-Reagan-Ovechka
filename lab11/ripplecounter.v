module ripplecounter(
    input CLK, rst,
    output RC1, RC2, RC3
);
    
    tff tff1(
        .T(1'b1),
        .CLK(CLK),
        .rst(rst),
        .Q(RC1),
        .NotQ()
    );

    tff tff2(
        .T(1'b1),
        .CLK(RC1),
        .rst(rst),
        .Q(RC2),
        .NotQ()
    );
    
    tff tff3(
        .T(1'b1),
        .CLK(RC2),
        .rst(rst),
        .Q(RC3),
        .NotQ()
    );


endmodule