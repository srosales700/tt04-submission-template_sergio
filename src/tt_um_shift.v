module tt_um_shift ( 

    input   [7:0] ui_in,    // Dedicated inputs - connected to the input switches

    output  [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display

    input   [7:0] uio_in,   // IOs: Bidirectional Input path

    output  [7:0] uio_out,  // IOs: Bidirectional Output path

    output  [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)

    input         ena,      // will go high when the design is enabled

    input         clk,      // clock

    input         rst_n     // reset_n - low to reset

);



shift#(.bits(8)) sf1 (.clk(clk),.rst(~rst_n),.D(ui_in[7:0]),.eos(uo_out[1]),.Q(uo_out[0]));

  

endmodule
