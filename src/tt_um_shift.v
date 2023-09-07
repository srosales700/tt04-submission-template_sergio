module tt_um_shift ( 

    input wire  [7:0] ui_in,    // Dedicated inputs - connected to the input switches

    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display

    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path

    output wire [7:0] uio_out,  // IOs: Bidirectional Output path

    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)

    input         ena,      // will go high when the design is enabled

    input         clk,      // clock

    input         rst_n     // reset_n - low to reset

);
    wire rst;
    assign rst=~rst_n; 
    assign uo_out =8'b11111111;
    assign uio_oe=8'b11111111;
    assign uio_out[7:2]=6'b000000;
      

    shift#(.bits(8)) sf1 (.clk(clk),.rst(rst),.D(ui_in[7:0]),.eos(uio_out[1]),.Q(uio_out[0]));

  

endmodule
