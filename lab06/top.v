// Implement top level module
module top(
    input[7:0] sw,
    output[5:0] led
);
wire w; 
    light light_inst(
        .down(sw[0]),
        .up(sw[1]),
        .stair_light(led[0])
    );

    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );
    
    full_adder full_adder_inst1( 
       .A(sw[4]),
       .B(sw[6]),
       .C(0),
       .Y(led[3]),
       .Cout(w)
    );
    
    full_adder full_adder_inst2(
        .A(sw[5]),
        .B(sw[7]),
        .C(w),
        .Y(led[4]),
        .Cout(led[5])
    );  
endmodule