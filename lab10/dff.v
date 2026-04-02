module dff(
    input data,
    input CLK,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK) begin
        if (data)
            Q <= 1;
        else
            Q <= 0;
    end

    assign NotQ = ~Q;


endmodule