module jkff(
    input J, K, CLK,
    output reg Q,
    output NotQ
    
);
    
    initial begin
        Q <= 0;
    end

    
    always @(posedge CLK) begin
        if (J && K)
            Q <= ~Q;
        else if (~Q)
            if (~J)
                Q <= 0; 
            else 
                Q <= 1;
        else if (Q)
            if (~K)
                Q <= 1; 
            else 
                Q <= 0;
    end

    assign NotQ = ~Q;


endmodule