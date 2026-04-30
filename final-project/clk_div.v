module clk_div 
# (
    parameter INPUT_FREQ  = 100_000_000, // Hz
    parameter OUTPUT_FREQ = 1            // Hz (rate of enable pulse)
)
(
    input iclk,
    input rst,
    output reg  oclk   
);

// Number of cycles between pulses
// Number of input clock cycles required for one half period of the output clock.
// Since oclk toggles every COUNT_MAX cycles, a full output period is 2 * COUNT_MAX.
localparam COUNT_MAX = INPUT_FREQ / (2*OUTPUT_FREQ);

// Ensure width is at least 1
// Determine the number of bits needed to count up to COUNT_MAX.
// If COUNT_MAX is 1 or less, still use a minimum width of 1 bit.
localparam WIDTH = (COUNT_MAX > 1) ? $clog2(COUNT_MAX) : 1;

reg [WIDTH:0] count; // counter register that tracks clock cycles

always @(posedge iclk) begin
    if (rst) begin
        // On reset, clear the counter and force output low.
        count <= 0;
        oclk  <= 0;
    end else begin
        if (count == (COUNT_MAX - 1)) begin
            count   <= 0;
            oclk    <= ~oclk;       //Toggle after 50M cycles
            // When the count reaches the target, reset the counter
            // and invert oclk to create the divided clock output.
        end else begin
            // Otherwise, keep counting clock cycles.
            count <= count + 1;
        end
    end
end

endmodule