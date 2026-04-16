module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    one_hot one_hot1(
        .clk(btnC),
        .w(sw),
        .z(led[0]),
        .rst(btnU),
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
    );

    binary binary1(
        .clk(btnC),
        .w(sw),
        .rst(btnU),
        .z(led[1]),
        .Q0(led[7]),
        .Q1(led[8]),
        .Q2(led[9])
    );
   
endmodule