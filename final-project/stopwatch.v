// StopWatch: wrapper around a modulo-60 counter
// This module uses the counter to count from 0 to 59 when enabled.
module stopwatch(
    input clk,
    input rst,
    input en,
    output [5:0] state     // 6 bits can encode 0 through 59
);
    
   // Instantiate the modulo-60 counter module.
   // - clk is the input clock.
   // - rst resets the counter to zero.
   // - en enables counting when high.
   // - in is unused here and tied to zero for this wrapper.
   // - state is the current count value.
   modulocounter modulocounter1(
     .CLK(clk),
     .rst(rst),
     .EN(en),
     .in(6'b0),
     .state(state)
   );

endmodule




