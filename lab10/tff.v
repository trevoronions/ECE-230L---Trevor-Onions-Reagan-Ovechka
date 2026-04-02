module tff(
    input T, CLK,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK) begin
        if (T)
            Q <= ~Q;
    end
    
    assign NotQ = ~Q;

endmodule