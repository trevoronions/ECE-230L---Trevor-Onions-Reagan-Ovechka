module light(
    input down, up,
    output stair_light
);

    assign stair_light = down ^ up;

endmodule