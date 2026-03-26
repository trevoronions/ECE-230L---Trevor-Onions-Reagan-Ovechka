module mux(
    input [1:0] Sel,
    input [7:0] A, [7:0] B, [7:0] C, [7:0] D, 
    output [7:0] Y
);

    

    assign Y = Sel == 2'b00 ? A : Sel == 2'b01 ? B : Sel == 2'b10 ? C : Sel == 2'b11 ? D : 8'b0;
    


endmodule

