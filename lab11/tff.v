module tff(
    input T, CLK, rst,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK) begin
        if (~rst)
            if (T)
                Q <= ~Q;
        else
            Q <= 0;
    end
    
    assign NotQ = ~Q;

endmodule