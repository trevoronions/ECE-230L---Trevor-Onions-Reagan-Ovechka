module full_adder(
    input A, B, C,
    output Cout, Y
);
 
    assign Y = (~A & ~B & C) + (~A & B & ~C) + (A & B & C) + (A & ~B & ~C);
    assign Cout = (A & B) + (C & B) + (C & A);  
    
    
endmodule 