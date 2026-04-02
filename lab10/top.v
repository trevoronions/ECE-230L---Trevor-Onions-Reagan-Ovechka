module top(
    input [3:0] sw, 
    input btnC,
    output [5:0] led    
);
    dff dFF1(
        .data(sw[0]),
        .CLK(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    jkff jkFF1(
        .J(sw[1]),
        .K(sw[2]),
        .CLK(btnC),
        .Q(led[2]),
        .NotQ(led[3])
    );
    
    tff tff1(
        .T(sw[3]),
        .CLK(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );
    
endmodule