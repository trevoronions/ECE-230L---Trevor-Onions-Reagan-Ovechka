module top(
    input[15:0] sw,
    output[15:0] led,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC

);
    wire[3:0] w1;
    wire[1:0] concat1;
    wire[1:0] concat2;
    assign concat1 = {btnU, btnL};
    assign concat2 = {btnR, btnD};
    
    
    simple_4_mux simple_4_mux_inst(
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Y(w1),
        .Enable(btnC),
        .Sel(concat1)
    );
    demux demux_inst(
        .In(w1),
        .Sel(concat2),
        .Y0(led[3:0]),
        .Y1(led[7:4]),
        .Y2(led[11:8]),
        .Y3(led[15:12]),
        .Enable(btnC)
    );

endmodule
