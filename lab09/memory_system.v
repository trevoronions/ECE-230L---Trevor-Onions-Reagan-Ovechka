module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [7:0] arr_vec[3:0];
    wire [3:0] enable;
    wire [7:0] arr_vec2[3:0];
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
    byte_memory byte_1(
        .data(data),
        .store(enable[0]),
        .memory(arr_vec2[0])
    );
    byte_memory byte_2(
        .data(data),
        .store(enable[1]),
        .memory(arr_vec2[1])
    );
    byte_memory byte_3(
        .data(data),
        .store(enable[2]),
        .memory(arr_vec2[2])
    );
    byte_memory byte_4(
        .data(data),
        .store(enable[3]),
        .memory(arr_vec2[3])
    );
//    demux demux_1(
//        .in(data[7:0]),
//        .sel(addr[1:0]),
//        .Y0(arr_vec[0]),
//        .Y1(arr_vec[1]),
//        .Y2(arr_vec[2]),
//        .Y3(arr_vec[3])
//    );
    demux #(.BIT_COUNT(1)) demux_en(
        .In(store),
        .Sel(addr),
        .Y0(enable[0]),
        .Y1(enable[1]),
        .Y2(enable[2]),
        .Y3(enable[3])
    );
    mux mux_1(
        .Sel(addr),
        .A(arr_vec2[0]),
        .B(arr_vec2[1]),
        .C(arr_vec2[2]),
        .D(arr_vec2[3]),
        .Y(memory)
    );


    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule