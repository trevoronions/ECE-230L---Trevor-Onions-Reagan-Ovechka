module top(
    input btnU,
    input btnC,
    output [6:0] led    
);
    modulocounter mod1(
        .CLK(btnC),
        .EN(1),
        .rst(btnU),
        .mc0(led[3]),
        .mc1(led[4]),
        .mc2(led[5]),
        .out(led[6])
    );

    ripplecounter rc1(
        .CLK(btnC),
        .rst(btnU),
        .RC1(led[0]),
        .RC2(led[1]),
        .RC3(led[2])
    );

endmodule