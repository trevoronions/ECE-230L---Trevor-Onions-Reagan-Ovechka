//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clock
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output [5:0] state     //6-bits to represent the highest number 59
);
wire d0, d1, d2, d3, d4, d5;
wire data0, data1, data2, data3, data4, data5;
wire at_zero;

assign at_zero = (state == 6'b0);
assign d0 = (~state[0]);
assign d1 = state[1] ^ (~state[0]);
assign d2 = state[2] ^ (~state[1] && ~state[0]);
assign d3 = state[3] ^ (~state[2] && ~state[1] && ~state[0]);
assign d4 = state[4] ^ (~state[3] && ~state[2] && ~state[1] && ~state[0]);
assign d5 = state[5] ^ (~state[4] && ~state[3] && ~state[2] && ~state[1] && ~state[0]);

assign data0 = load ? load_value[0] : ((en && ~at_zero) ? d0 : state[0]);
assign data1 = load ? load_value[1] : ((en && ~at_zero) ? d1 : state[1]);
assign data2 = load ? load_value[2] : ((en && ~at_zero) ? d2 : state[2]);
assign data3 = load ? load_value[3] : ((en && ~at_zero) ? d3 : state[3]);
assign data4 = load ? load_value[4] : ((en && ~at_zero) ? d4 : state[4]);
assign data5 = load ? load_value[5] : ((en && ~at_zero) ? d5 : state[5]);

    dff dff0(
        .data(data0),
        .rst(rst),
        .CLK(clk),
        .Q(state[0]),
        .NotQ()
    );

    dff dff1(
        .data(data1),
        .rst(rst),
        .CLK(clk),
        .Q(state[1]),
        .NotQ()
    );

    dff dff2(
        .data(data2),
        .rst(rst),
        .CLK(clk),
        .Q(state[2]),
        .NotQ()
    );

    dff dff3(
        .data(data3),
        .rst(rst),
        .CLK(clk),
        .Q(state[3]),
        .NotQ()
    );

    dff dff4(
        .data(data4),
        .rst(rst),
        .CLK(clk),
        .Q(state[4]),
        .NotQ()
    );

    dff dff5(
        .data(data5),
        .rst(rst),
        .CLK(clk),
        .Q(state[5]),
        .NotQ()
    );

endmodule