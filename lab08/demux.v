module demux(
    input [3:0] In,
    input [1:0] Sel,
    output [3:0] Y0,
    output [3:0] Y1,
    output [3:0] Y2,
    output [3:0] Y3,
    input Enable
);

    assign Y0 =  (Enable == 1 && Sel == 2'b00 ? In : 4'b0000); // Drive Y1 if Sel == 0
    assign Y1 = (Enable == 1 && Sel == 2'b01 ? In : 4'b0000); // Drive Y1 if Sel == 0
    assign Y2 = (Enable == 1 && Sel == 2'b10 ? In : 4'b0000); // Drive Y1 if Sel == 0
    assign Y3 = (Enable == 1 && Sel == 2'b11 ? In : 4'b0000); // Drive Y1 if Sel == 0

endmodule