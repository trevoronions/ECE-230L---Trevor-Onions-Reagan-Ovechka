module twos_complement(
    input [7:0] numb,
    output [7:0] tc
);
wire[7:0] wire1 = ~numb;
wire[7:0] plus1 = 8'b00000001;
wire[8:0] carry;
assign carry[0] = 1'b0;

    genvar i;
    generate
        for(i = 0; i < 8; i = i + 1) begin : adder_loop
            full_adder full_adder_inst(
                .A(wire1[i]),
                .B(plus1[i]),
                .C(carry[i]),
                .Y(tc[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

endmodule