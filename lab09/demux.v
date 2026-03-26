module demux
#(
    parameter BIT_COUNT = 8
)    
(
    input [BIT_COUNT-1:0] In,
    input [1:0] Sel,
    output [BIT_COUNT-1:0] Y0,
    output [BIT_COUNT-1:0] Y1,
    output [BIT_COUNT-1:0] Y2,
    output [BIT_COUNT-1:0] Y3
);

    assign Y0 = (Sel == 2'b00 ? In : {BIT_COUNT{1'b0}}); // Drive Y1 if Sel == 0
    assign Y1 = (Sel == 2'b01 ? In : {BIT_COUNT{1'b0}}); // Drive Y1 if Sel == 0
    assign Y2 = (Sel == 2'b10 ? In : {BIT_COUNT{1'b0}}); // Drive Y1 if Sel == 0
    assign Y3 = (Sel == 2'b11 ? In : {BIT_COUNT{1'b0}}); // Drive Y1 if Sel == 0

endmodule
