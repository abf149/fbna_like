`default_nettype none
`include "fbna_pbc.v"

// Wrap the FBNA PBC module in the TinyTapeout interface
module user_module_fbna_like(
  input [7:0] io_in, 
  output [7:0] io_out
);

  // Clock/reset configuration from
  // https://github.com/omerk/tinytapeout-verilog-test/blob/main/src/user_module_339898704941023827.v
  // using io_in[0] as clk, io_in[1] as reset
  wire clk;
  assign clk = io_in[0];
  wire reset;
  assign reset = io_in[1];

  // Name and wire the interfaces
  wire [3:0] io_shiftin_ifmap;
  assign io_shiftin_ifmap = io_in[5:2]; // Input feature-map shift-in each clock cycle
  wire  [2:0] io_in_filt_0;
  assign io_in_filt_0[2:1] = 2'b00;
  assign io_in_filt_0[0] = io_in[7]; // Corner filter element
  wire  [2:0] io_in_filt_1;
  assign io_in_filt_1[2] = 1'b0;
  assign io_in_filt_1[1] = io_in[6]; // Middle filter element
  assign io_in_filt_1[0] = 1'b0;
  wire  [2:0] io_in_filt_2;  
  assign io_in_filt_2 = 3'b000;
  wire [1:0] io_out_ofmap;
  assign io_out[1:0] = io_out_ofmap;
  assign io_out[7:2] = 6'b000000


 // Wire up the FBNA PBC unit
 fbna_pbc PBC   (.clock(clock),
                 .reset(reset),
                 .io_shiftin_ifmap(io_shiftin_ifmap),
                 .io_in_filt_0(io_in_filt_0),                                                    
                 .io_in_filt_1(io_in_filt_1),
                 .io_in_filt_2(io_in_filt_2),
                 .io_out_ofmap(io_out_ofmap));

endmodule