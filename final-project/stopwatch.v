//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output [5:0] state     //6-bits to represent the highest number 59
);
    
   modulocounter modulocounter1(
     .CLK(clk),
     .rst(rst),
     .EN(en),
     .in(6'b0),
     .state(state)
   );

endmodule




