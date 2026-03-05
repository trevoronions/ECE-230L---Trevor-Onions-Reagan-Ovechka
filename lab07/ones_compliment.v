module ones_complement(
    input [3:0] A, B, 
    output [3:0] oc
);
wire [3:0] first_addition;
wire [4:0] carry;
wire [4:0] carry2;
wire [4:0] carry_over;
// = 5'b00000;
assign carry[0] = 1'b0;
assign carry2[0] = 1'b0;
assign carry_over[4:1] = 4'b0000;

    
    genvar i;

    generate
        for(i = 0; i < 4; i = i + 1) begin : adder_loop
            full_adder full_adder_inst(
                .A(A[i]),
                .B(B[i]),
                .C(carry[i]),
                .Y(first_addition[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

assign carry_over[0] = carry[4];

    genvar j;

    generate
        for(j = 0; j < 4; j = j + 1) begin : adder_loop2
            full_adder full_adder_inst2(
                .A(first_addition[j]),
                .B(carry_over[j]),
                .C(carry2[j]),
                .Y(oc[j]),
                .Cout(carry2[j+1])
            );
        end
    endgenerate




endmodule
