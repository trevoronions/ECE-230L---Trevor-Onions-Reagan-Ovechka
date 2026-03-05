module top(
    input[9:0] sw,
    output[13:0] led
);

    half_sub half_sub_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
    );

    ones_complement ones_complement_inst(
        .A(sw[5:2]),
        .B(sw[9:6]),
        .oc(led[5:2])
    );
    twos_complement twos_complement_inst(
        .numb(sw[9:2]),
        .tc(led[13:6])
    );


endmodule