module d_latch(
    input D, E,
    output reg Q,
    output NotQ
);
    always @(E) begin
        if (E)
            if (D) 
                Q <= 1;
            else
                Q <= 0;
    end
    
    assign NotQ = ~Q;

endmodule