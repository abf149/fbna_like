module fbna_pbc(
  input        clock,
  input        reset,
  input  [3:0] io_shiftin_ifmap,
  input  [2:0] io_in_filt_0,
  input  [2:0] io_in_filt_1,
  input  [2:0] io_in_filt_2,
  output [1:0] io_out_ofmap
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg  reg_in_ifmap_0_0; // @[cmd135.sc 25:27]
  reg  reg_in_ifmap_0_1; // @[cmd135.sc 25:27]
  reg  reg_in_ifmap_0_2; // @[cmd135.sc 25:27]
  reg  reg_in_ifmap_0_3; // @[cmd135.sc 25:27]
  reg  reg_in_ifmap_1_0; // @[cmd135.sc 26:27]
  reg  reg_in_ifmap_1_1; // @[cmd135.sc 26:27]
  reg  reg_in_ifmap_1_2; // @[cmd135.sc 26:27]
  reg  reg_in_ifmap_1_3; // @[cmd135.sc 26:27]
  reg  reg_in_ifmap_2_0; // @[cmd135.sc 27:27]
  reg  reg_in_ifmap_2_1; // @[cmd135.sc 27:27]
  reg  reg_in_ifmap_2_2; // @[cmd135.sc 27:27]
  reg  reg_in_ifmap_2_3; // @[cmd135.sc 27:27]
  wire  in_filt_0_vec_0 = io_in_filt_0[0]; // @[cmd135.sc 34:44]
  wire  in_filt_0_vec_1 = io_in_filt_0[1]; // @[cmd135.sc 34:44]
  wire  in_filt_0_vec_2 = io_in_filt_0[2]; // @[cmd135.sc 34:44]
  wire  in_filt_1_vec_0 = io_in_filt_1[0]; // @[cmd135.sc 35:44]
  wire  in_filt_1_vec_1 = io_in_filt_1[1]; // @[cmd135.sc 35:44]
  wire  in_filt_1_vec_2 = io_in_filt_1[2]; // @[cmd135.sc 35:44]
  wire  in_filt_2_vec_0 = io_in_filt_2[0]; // @[cmd135.sc 36:44]
  wire  in_filt_2_vec_1 = io_in_filt_2[1]; // @[cmd135.sc 36:44]
  wire  in_filt_2_vec_2 = io_in_filt_2[2]; // @[cmd135.sc 36:44]
  wire  _T_14 = ~(reg_in_ifmap_0_0 ^ in_filt_0_vec_0); // @[cmd135.sc 64:28]
  wire  _T_16 = ~(reg_in_ifmap_1_0 ^ in_filt_1_vec_0); // @[cmd135.sc 65:28]
  wire  _T_18 = ~(reg_in_ifmap_2_0 ^ in_filt_2_vec_0); // @[cmd135.sc 66:28]
  wire  _T_20 = ~(reg_in_ifmap_0_1 ^ in_filt_0_vec_1); // @[cmd135.sc 68:28]
  wire  _T_22 = ~(reg_in_ifmap_1_1 ^ in_filt_1_vec_1); // @[cmd135.sc 69:28]
  wire  _T_24 = ~(reg_in_ifmap_2_1 ^ in_filt_2_vec_1); // @[cmd135.sc 70:28]
  wire  _T_26 = ~(reg_in_ifmap_0_2 ^ in_filt_0_vec_2); // @[cmd135.sc 72:28]
  wire  _T_28 = ~(reg_in_ifmap_1_2 ^ in_filt_1_vec_2); // @[cmd135.sc 73:28]
  wire  _T_30 = ~(reg_in_ifmap_2_2 ^ in_filt_2_vec_2); // @[cmd135.sc 74:28]
  wire [3:0] _WIRE_1 = {{3'd0}, _T_14}; // @[cmd135.sc 51:34 cmd135.sc 64:24]
  wire [3:0] _WIRE_4 = {{3'd0}, _T_20}; // @[cmd135.sc 55:34 cmd135.sc 68:24]
  wire [3:0] _T_32 = _WIRE_1 + _WIRE_4; // @[cmd135.sc 86:52]
  wire [3:0] _WIRE_7 = {{3'd0}, _T_26}; // @[cmd135.sc 59:34 cmd135.sc 72:24]
  wire [3:0] _T_34 = _T_32 + _WIRE_7; // @[cmd135.sc 87:58]
  wire [3:0] _WIRE_2 = {{3'd0}, _T_16}; // @[cmd135.sc 52:34 cmd135.sc 65:24]
  wire [3:0] _T_36 = _T_34 + _WIRE_2; // @[cmd135.sc 88:58]
  wire [3:0] _WIRE_5 = {{3'd0}, _T_22}; // @[cmd135.sc 56:34 cmd135.sc 69:24]
  wire [3:0] _T_38 = _T_36 + _WIRE_5; // @[cmd135.sc 89:58]
  wire [3:0] _WIRE_8 = {{3'd0}, _T_28}; // @[cmd135.sc 60:34 cmd135.sc 73:24]
  wire [3:0] _T_40 = _T_38 + _WIRE_8; // @[cmd135.sc 90:58]
  wire [3:0] _WIRE_3 = {{3'd0}, _T_18}; // @[cmd135.sc 53:34 cmd135.sc 66:24]
  wire [3:0] _T_42 = _T_40 + _WIRE_3; // @[cmd135.sc 91:58]
  wire [3:0] _WIRE_6 = {{3'd0}, _T_24}; // @[cmd135.sc 57:34 cmd135.sc 70:24]
  wire [3:0] _T_44 = _T_42 + _WIRE_6; // @[cmd135.sc 92:58]
  wire [3:0] _WIRE_9 = {{3'd0}, _T_30}; // @[cmd135.sc 61:34 cmd135.sc 74:24]
  wire [3:0] out_ofmap_vec_0 = _T_44 + _WIRE_9; // @[cmd135.sc 93:58]
  wire  out_ofmap_vec_criterion_0 = ~(4'h4 >= out_ofmap_vec_0); // @[cmd135.sc 96:37]
  wire  _T_50 = ~(reg_in_ifmap_0_1 ^ in_filt_0_vec_0); // @[cmd135.sc 64:28]
  wire  _T_52 = ~(reg_in_ifmap_1_1 ^ in_filt_1_vec_0); // @[cmd135.sc 65:28]
  wire  _T_54 = ~(reg_in_ifmap_2_1 ^ in_filt_2_vec_0); // @[cmd135.sc 66:28]
  wire  _T_56 = ~(reg_in_ifmap_0_2 ^ in_filt_0_vec_1); // @[cmd135.sc 68:28]
  wire  _T_58 = ~(reg_in_ifmap_1_2 ^ in_filt_1_vec_1); // @[cmd135.sc 69:28]
  wire  _T_60 = ~(reg_in_ifmap_2_2 ^ in_filt_2_vec_1); // @[cmd135.sc 70:28]
  wire  _T_62 = ~(reg_in_ifmap_0_3 ^ in_filt_0_vec_2); // @[cmd135.sc 72:28]
  wire  _T_64 = ~(reg_in_ifmap_1_3 ^ in_filt_1_vec_2); // @[cmd135.sc 73:28]
  wire  _T_66 = ~(reg_in_ifmap_2_3 ^ in_filt_2_vec_2); // @[cmd135.sc 74:28]
  wire [3:0] _WIRE_10 = {{3'd0}, _T_50}; // @[cmd135.sc 51:34 cmd135.sc 64:24]
  wire [3:0] _WIRE_13 = {{3'd0}, _T_56}; // @[cmd135.sc 55:34 cmd135.sc 68:24]
  wire [3:0] _T_68 = _WIRE_10 + _WIRE_13; // @[cmd135.sc 86:52]
  wire [3:0] _WIRE_16 = {{3'd0}, _T_62}; // @[cmd135.sc 59:34 cmd135.sc 72:24]
  wire [3:0] _T_70 = _T_68 + _WIRE_16; // @[cmd135.sc 87:58]
  wire [3:0] _WIRE_11 = {{3'd0}, _T_52}; // @[cmd135.sc 52:34 cmd135.sc 65:24]
  wire [3:0] _T_72 = _T_70 + _WIRE_11; // @[cmd135.sc 88:58]
  wire [3:0] _WIRE_14 = {{3'd0}, _T_58}; // @[cmd135.sc 56:34 cmd135.sc 69:24]
  wire [3:0] _T_74 = _T_72 + _WIRE_14; // @[cmd135.sc 89:58]
  wire [3:0] _WIRE_17 = {{3'd0}, _T_64}; // @[cmd135.sc 60:34 cmd135.sc 73:24]
  wire [3:0] _T_76 = _T_74 + _WIRE_17; // @[cmd135.sc 90:58]
  wire [3:0] _WIRE_12 = {{3'd0}, _T_54}; // @[cmd135.sc 53:34 cmd135.sc 66:24]
  wire [3:0] _T_78 = _T_76 + _WIRE_12; // @[cmd135.sc 91:58]
  wire [3:0] _WIRE_15 = {{3'd0}, _T_60}; // @[cmd135.sc 57:34 cmd135.sc 70:24]
  wire [3:0] _T_80 = _T_78 + _WIRE_15; // @[cmd135.sc 92:58]
  wire [3:0] _WIRE_18 = {{3'd0}, _T_66}; // @[cmd135.sc 61:34 cmd135.sc 74:24]
  wire [3:0] out_ofmap_vec_1 = _T_80 + _WIRE_18; // @[cmd135.sc 93:58]
  wire  out_ofmap_vec_criterion_1 = ~(4'h4 >= out_ofmap_vec_1); // @[cmd135.sc 96:37]
  assign io_out_ofmap = {out_ofmap_vec_criterion_1,out_ofmap_vec_criterion_0}; // @[cmd135.sc 105:45]
  always @(posedge clock) begin
    reg_in_ifmap_0_0 <= io_shiftin_ifmap[0]; // @[cmd135.sc 29:46]
    reg_in_ifmap_0_1 <= io_shiftin_ifmap[1]; // @[cmd135.sc 29:46]
    reg_in_ifmap_0_2 <= io_shiftin_ifmap[2]; // @[cmd135.sc 29:46]
    reg_in_ifmap_0_3 <= io_shiftin_ifmap[3]; // @[cmd135.sc 29:46]
    reg_in_ifmap_1_0 <= reg_in_ifmap_0_0; // @[cmd135.sc 30:18]
    reg_in_ifmap_1_1 <= reg_in_ifmap_0_1; // @[cmd135.sc 30:18]
    reg_in_ifmap_1_2 <= reg_in_ifmap_0_2; // @[cmd135.sc 30:18]
    reg_in_ifmap_1_3 <= reg_in_ifmap_0_3; // @[cmd135.sc 30:18]
    reg_in_ifmap_2_0 <= reg_in_ifmap_1_0; // @[cmd135.sc 31:18]
    reg_in_ifmap_2_1 <= reg_in_ifmap_1_1; // @[cmd135.sc 31:18]
    reg_in_ifmap_2_2 <= reg_in_ifmap_1_2; // @[cmd135.sc 31:18]
    reg_in_ifmap_2_3 <= reg_in_ifmap_1_3; // @[cmd135.sc 31:18]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_in_ifmap_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_in_ifmap_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_in_ifmap_0_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_in_ifmap_0_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reg_in_ifmap_1_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  reg_in_ifmap_1_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  reg_in_ifmap_1_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  reg_in_ifmap_1_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_in_ifmap_2_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_in_ifmap_2_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_in_ifmap_2_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_in_ifmap_2_3 = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
