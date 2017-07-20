////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: uart_synthesis.v
// /___/   /\     Timestamp: Sun Jan 29 22:56:18 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim uart.ngc uart_synthesis.v 
// Device	: xc6slx9-2-csg324
// Input file	: uart.ngc
// Output file	: /home/brjathu/FPGA/uart-ayya/netgen/synthesis/uart_synthesis.v
// # of Modules	: 1
// Design Name	: uart
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module uart (
  clk_100, rx, tx, flag, clk_s, flagU
);
  input clk_100;
  input rx;
  output tx;
  output flag;
  output clk_s;
  output flagU;
  wire clk_100_BUFGP_0;
  wire rx_IBUF_1;
  wire \cd/clk_s_BUFG_2 ;
  wire \trans/busy_3 ;
  wire \trans/tx_4 ;
  wire \recive/ready_13 ;
  wire \recive/flag_14 ;
  wire flagU_OBUF_23;
  wire send_38;
  wire clr_47;
  wire stateCounter_FSM_FFd1_48;
  wire stateCounter_FSM_FFd2_49;
  wire \data_i[7]_num_two[7]_mux_22_OUT<7> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<6> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<5> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<4> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<3> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<2> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<1> ;
  wire \data_i[7]_num_two[7]_mux_22_OUT<0> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<7> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<6> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<5> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<4> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<3> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<2> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<1> ;
  wire \num_two[7]_num_one[7]_add_19_OUT<0> ;
  wire \data_o[7]_GND_1_o_equal_2_o ;
  wire _n0131;
  wire _n0146;
  wire flagU_flagU_MUX_117_o;
  wire N0;
  wire _n0164_inv;
  wire _n0169_inv;
  wire \cd/GND_2_o_GND_2_o_equal_3_o ;
  wire \stateCounter_FSM_FFd2-In ;
  wire \stateCounter_FSM_FFd1-In ;
  wire _n0160_inv;
  wire Mcount_counter;
  wire Mcount_counter1;
  wire Mcount_counter2;
  wire Mcount_counter3;
  wire Mcount_counter4;
  wire Mcount_counter5;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<0>_110 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<0>_111 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<1>_112 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<1>_113 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<2>_114 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<2>_115 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<3>_116 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<3>_117 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<4>_118 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<4>_119 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<5>_120 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<5>_121 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<6>_122 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<6>_123 ;
  wire \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<7>_124 ;
  wire \Mcount_counter_xor<3>11 ;
  wire _n01431;
  wire \trans/state_FSM_FFd2-In1 ;
  wire \trans/Mmux__n0053411 ;
  wire \trans/Mmux_counter[2]_data_i[7]_Mux_6_o_3_149 ;
  wire \trans/Mmux_counter[2]_data_i[7]_Mux_6_o_4_150 ;
  wire \trans/state_FSM_FFd1-In ;
  wire \trans/state_FSM_FFd2-In ;
  wire \trans/_n0107_inv ;
  wire \trans/counter[2]_data_i[7]_Mux_6_o ;
  wire \trans/state_FSM_FFd2_162 ;
  wire \trans/state_FSM_FFd1_163 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<2>11 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0>22 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0>6 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ;
  wire \recive/Mcount_num_bits_xor<3>11 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_170 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_171 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_172 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_173 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_174 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_175 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_176 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_177 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_178 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_179 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_180 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_181 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_182 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_183 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<0>_184 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_lut<0> ;
  wire \recive/Mcount_num_bits4 ;
  wire \recive/state_FSM_FFd1_187 ;
  wire \recive/state_FSM_FFd2_188 ;
  wire \recive/state_FSM_FFd1-In ;
  wire \recive/state_FSM_FFd2-In_190 ;
  wire \recive/ready_ready_MUX_109_o_191 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<1> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<2> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<3> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<4> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<5> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<6> ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<7>_199 ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<0> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<1> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<2> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<3> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<4> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<5> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<6> ;
  wire \recive/data_o[7]_data_o[7]_mux_59_OUT<7> ;
  wire \recive/GND_4_o_GND_4_o_equal_9_o ;
  wire \recive/GND_4_o_GND_4_o_equal_33_o ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<0> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<1> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<2> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<3> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<4> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<5> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<6> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<7> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<8> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<9> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<10> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<11> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<12> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<13> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<14> ;
  wire \recive/counter[15]_GND_4_o_add_36_OUT<15> ;
  wire N01;
  wire \cd/GND_2_o_GND_2_o_equal_3_o<16>1_274 ;
  wire \Mcount_counter_xor<4>13 ;
  wire N2;
  wire N6;
  wire N8;
  wire N10;
  wire \recive/GND_4_o_GND_4_o_equal_33_o<15>1_282 ;
  wire N12;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<5>1_284 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<5>2_285 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<1>1_286 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<1>2_287 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<4>1_288 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<4>2_289 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0>1_290 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<0>2_291 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<3>1_292 ;
  wire \recive/buffer[7]_buffer[7]_mux_57_OUT<3>2_293 ;
  wire \cd/Mcount_counter_cy<1>_rt_300 ;
  wire \cd/Mcount_counter_cy<2>_rt_301 ;
  wire \cd/Mcount_counter_cy<3>_rt_302 ;
  wire \cd/Mcount_counter_cy<4>_rt_303 ;
  wire \cd/Mcount_counter_cy<5>_rt_304 ;
  wire \cd/Mcount_counter_cy<6>_rt_305 ;
  wire \cd/Mcount_counter_cy<7>_rt_306 ;
  wire \cd/Mcount_counter_cy<8>_rt_307 ;
  wire \cd/Mcount_counter_cy<9>_rt_308 ;
  wire \cd/Mcount_counter_cy<10>_rt_309 ;
  wire \cd/Mcount_counter_cy<11>_rt_310 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_rt_311 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_rt_312 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_rt_313 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_rt_314 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_rt_315 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_rt_316 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_rt_317 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_rt_318 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_rt_319 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_rt_320 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_rt_321 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_rt_322 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_rt_323 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_rt_324 ;
  wire \cd/Mcount_counter_xor<12>_rt_325 ;
  wire \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<15>_rt_326 ;
  wire \cd/clk_s_rstpot_327 ;
  wire \trans/tx_rstpot_328 ;
  wire \trans/busy_rstpot_329 ;
  wire \recive/flag_rstpot_330 ;
  wire clr_rstpot_331;
  wire send_rstpot1_332;
  wire N18;
  wire N26;
  wire N27;
  wire N28;
  wire N30;
  wire N31;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N39;
  wire N40;
  wire N41;
  wire N43;
  wire N45;
  wire N47;
  wire N49;
  wire N51;
  wire N53;
  wire N55;
  wire N57;
  wire N59;
  wire N60;
  wire N61;
  wire N62;
  wire N64;
  wire N65;
  wire N66;
  wire N67;
  wire N69;
  wire N70;
  wire N71;
  wire N72;
  wire N74;
  wire N75;
  wire N76;
  wire N77;
  wire N79;
  wire N80;
  wire N81;
  wire N82;
  wire N84;
  wire N85;
  wire N86;
  wire N87;
  wire N89;
  wire N90;
  wire N91;
  wire N92;
  wire N94;
  wire N95;
  wire N96;
  wire N97;
  wire N99;
  wire N100;
  wire N101;
  wire N102;
  wire N104;
  wire N105;
  wire N106;
  wire N107;
  wire N109;
  wire N110;
  wire N111;
  wire N112;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N119;
  wire N120;
  wire N121;
  wire N122;
  wire N124;
  wire N125;
  wire N126;
  wire \recive/_n0223_inv1_rstpot_409 ;
  wire \recive/num_bits_0_dpot_410 ;
  wire \recive/num_bits_1_dpot_411 ;
  wire \recive/num_bits_2_dpot_412 ;
  wire \recive/num_bits_3_dpot_413 ;
  wire \recive/num_bits_4_dpot_414 ;
  wire \recive/num_bits_5_dpot_415 ;
  wire \cd/clk_s_416 ;
  wire N128;
  wire N129;
  wire N130;
  wire N131;
  wire N132;
  wire N133;
  wire [7 : 0] \recive/data_o ;
  wire [7 : 0] data_i;
  wire [5 : 0] counter;
  wire [7 : 0] num_two;
  wire [7 : 0] num_one;
  wire [13 : 0] \cd/counter ;
  wire [12 : 0] Result;
  wire [0 : 0] \cd/Mcount_counter_lut ;
  wire [11 : 0] \cd/Mcount_counter_cy ;
  wire [6 : 0] \trans/counter ;
  wire [6 : 0] \trans/_n0053 ;
  wire [15 : 0] \recive/_n0170 ;
  wire [5 : 0] \recive/num_bits ;
  wire [15 : 0] \recive/counter ;
  wire [7 : 0] \recive/buffer ;
  wire [16 : 16] \cd/GND_2_o_GND_2_o_equal_3_o_0 ;
  wire [15 : 15] \recive/GND_4_o_GND_4_o_equal_9_o_1 ;
  wire [15 : 15] \recive/GND_4_o_GND_4_o_equal_33_o_2 ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\cd/counter [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  flagU_3 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(flagU_flagU_MUX_117_o),
    .Q(flagU_OBUF_23)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_0 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [0]),
    .R(_n0131),
    .Q(num_two[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_1 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [1]),
    .R(_n0131),
    .Q(num_two[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_2 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [2]),
    .R(_n0131),
    .Q(num_two[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_3 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [3]),
    .R(_n0131),
    .Q(num_two[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_4 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [4]),
    .R(_n0131),
    .Q(num_two[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_5 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [5]),
    .R(_n0131),
    .Q(num_two[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_6 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [6]),
    .R(_n0131),
    .Q(num_two[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_two_7 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0164_inv),
    .D(\recive/data_o [7]),
    .R(_n0131),
    .Q(num_two[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_0 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [0]),
    .R(_n0146),
    .Q(num_one[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_1 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [1]),
    .R(_n0146),
    .Q(num_one[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_2 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [2]),
    .R(_n0146),
    .Q(num_one[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_3 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [3]),
    .R(_n0146),
    .Q(num_one[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_4 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [4]),
    .R(_n0146),
    .Q(num_one[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_5 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [5]),
    .R(_n0146),
    .Q(num_one[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_6 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [6]),
    .R(_n0146),
    .Q(num_one[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  num_one_7 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0169_inv),
    .D(\recive/data_o [7]),
    .R(_n0146),
    .Q(num_one[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_0 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<0> ),
    .Q(data_i[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_1 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<1> ),
    .Q(data_i[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_2 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<2> ),
    .Q(data_i[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_3 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<3> ),
    .Q(data_i[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_4 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<4> ),
    .Q(data_i[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_5 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<5> ),
    .Q(data_i[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_6 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<6> ),
    .Q(data_i[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  data_i_7 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\Mcount_counter_xor<4>13 ),
    .D(\data_i[7]_num_two[7]_mux_22_OUT<7> ),
    .Q(data_i[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_0  (
    .C(clk_100_BUFGP_0),
    .D(Result[0]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_1  (
    .C(clk_100_BUFGP_0),
    .D(Result[1]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_2  (
    .C(clk_100_BUFGP_0),
    .D(Result[2]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_3  (
    .C(clk_100_BUFGP_0),
    .D(Result[3]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_4  (
    .C(clk_100_BUFGP_0),
    .D(Result[4]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_5  (
    .C(clk_100_BUFGP_0),
    .D(Result[5]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_6  (
    .C(clk_100_BUFGP_0),
    .D(Result[6]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_7  (
    .C(clk_100_BUFGP_0),
    .D(Result[7]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_8  (
    .C(clk_100_BUFGP_0),
    .D(Result[8]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_9  (
    .C(clk_100_BUFGP_0),
    .D(Result[9]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_10  (
    .C(clk_100_BUFGP_0),
    .D(Result[10]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_11  (
    .C(clk_100_BUFGP_0),
    .D(Result[11]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \cd/counter_12  (
    .C(clk_100_BUFGP_0),
    .D(Result[12]),
    .R(\cd/GND_2_o_GND_2_o_equal_3_o ),
    .Q(\cd/counter [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  stateCounter_FSM_FFd2 (
    .C(\cd/clk_s_BUFG_2 ),
    .D(\stateCounter_FSM_FFd2-In ),
    .Q(stateCounter_FSM_FFd2_49)
  );
  FD #(
    .INIT ( 1'b0 ))
  stateCounter_FSM_FFd1 (
    .C(\cd/clk_s_BUFG_2 ),
    .D(\stateCounter_FSM_FFd1-In ),
    .Q(stateCounter_FSM_FFd1_48)
  );
  FDE #(
    .INIT ( 1'b0 ))
  counter_0 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0160_inv),
    .D(Mcount_counter),
    .Q(counter[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  counter_1 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0160_inv),
    .D(Mcount_counter1),
    .Q(counter[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  counter_2 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0160_inv),
    .D(Mcount_counter2),
    .Q(counter[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  counter_3 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0160_inv),
    .D(Mcount_counter3),
    .Q(counter[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  counter_4 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0160_inv),
    .D(Mcount_counter4),
    .Q(counter[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  counter_5 (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(_n0160_inv),
    .D(Mcount_counter5),
    .Q(counter[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<0>  (
    .I0(num_two[0]),
    .I1(num_one[0]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<0>_110 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<0>  (
    .CI(\cd/counter [13]),
    .DI(num_two[0]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<0>_110 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<0>_111 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<0>  (
    .CI(\cd/counter [13]),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<0>_110 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<1>  (
    .I0(num_two[1]),
    .I1(num_one[1]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<1>_112 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<1>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<0>_111 ),
    .DI(num_two[1]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<1>_112 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<1>_113 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<1>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<0>_111 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<1>_112 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<2>  (
    .I0(num_two[2]),
    .I1(num_one[2]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<2>_114 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<2>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<1>_113 ),
    .DI(num_two[2]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<2>_114 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<2>_115 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<2>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<1>_113 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<2>_114 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<3>  (
    .I0(num_two[3]),
    .I1(num_one[3]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<3>_116 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<3>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<2>_115 ),
    .DI(num_two[3]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<3>_116 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<3>_117 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<3>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<2>_115 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<3>_116 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<4>  (
    .I0(num_two[4]),
    .I1(num_one[4]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<4>_118 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<4>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<3>_117 ),
    .DI(num_two[4]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<4>_118 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<4>_119 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<4>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<3>_117 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<4>_118 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<5>  (
    .I0(num_two[5]),
    .I1(num_one[5]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<5>_120 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<5>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<4>_119 ),
    .DI(num_two[5]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<5>_120 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<5>_121 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<5>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<4>_119 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<5>_120 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<6>  (
    .I0(num_two[6]),
    .I1(num_one[6]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<6>_122 )
  );
  MUXCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_cy<6>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<5>_121 ),
    .DI(num_two[6]),
    .S(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<6>_122 ),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<6>_123 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<6>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<5>_121 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<6>_122 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_num_two[7]_num_one[7]_add_19_OUT_lut<7>  (
    .I0(num_two[7]),
    .I1(num_one[7]),
    .O(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<7>_124 )
  );
  XORCY   \Madd_num_two[7]_num_one[7]_add_19_OUT_xor<7>  (
    .CI(\Madd_num_two[7]_num_one[7]_add_19_OUT_cy<6>_123 ),
    .LI(\Madd_num_two[7]_num_one[7]_add_19_OUT_lut<7>_124 ),
    .O(\num_two[7]_num_one[7]_add_19_OUT<7> )
  );
  MUXCY   \cd/Mcount_counter_cy<0>  (
    .CI(\cd/counter [13]),
    .DI(N0),
    .S(\cd/Mcount_counter_lut [0]),
    .O(\cd/Mcount_counter_cy [0])
  );
  XORCY   \cd/Mcount_counter_xor<0>  (
    .CI(\cd/counter [13]),
    .LI(\cd/Mcount_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \cd/Mcount_counter_cy<1>  (
    .CI(\cd/Mcount_counter_cy [0]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<1>_rt_300 ),
    .O(\cd/Mcount_counter_cy [1])
  );
  XORCY   \cd/Mcount_counter_xor<1>  (
    .CI(\cd/Mcount_counter_cy [0]),
    .LI(\cd/Mcount_counter_cy<1>_rt_300 ),
    .O(Result[1])
  );
  MUXCY   \cd/Mcount_counter_cy<2>  (
    .CI(\cd/Mcount_counter_cy [1]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<2>_rt_301 ),
    .O(\cd/Mcount_counter_cy [2])
  );
  XORCY   \cd/Mcount_counter_xor<2>  (
    .CI(\cd/Mcount_counter_cy [1]),
    .LI(\cd/Mcount_counter_cy<2>_rt_301 ),
    .O(Result[2])
  );
  MUXCY   \cd/Mcount_counter_cy<3>  (
    .CI(\cd/Mcount_counter_cy [2]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<3>_rt_302 ),
    .O(\cd/Mcount_counter_cy [3])
  );
  XORCY   \cd/Mcount_counter_xor<3>  (
    .CI(\cd/Mcount_counter_cy [2]),
    .LI(\cd/Mcount_counter_cy<3>_rt_302 ),
    .O(Result[3])
  );
  MUXCY   \cd/Mcount_counter_cy<4>  (
    .CI(\cd/Mcount_counter_cy [3]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<4>_rt_303 ),
    .O(\cd/Mcount_counter_cy [4])
  );
  XORCY   \cd/Mcount_counter_xor<4>  (
    .CI(\cd/Mcount_counter_cy [3]),
    .LI(\cd/Mcount_counter_cy<4>_rt_303 ),
    .O(Result[4])
  );
  MUXCY   \cd/Mcount_counter_cy<5>  (
    .CI(\cd/Mcount_counter_cy [4]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<5>_rt_304 ),
    .O(\cd/Mcount_counter_cy [5])
  );
  XORCY   \cd/Mcount_counter_xor<5>  (
    .CI(\cd/Mcount_counter_cy [4]),
    .LI(\cd/Mcount_counter_cy<5>_rt_304 ),
    .O(Result[5])
  );
  MUXCY   \cd/Mcount_counter_cy<6>  (
    .CI(\cd/Mcount_counter_cy [5]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<6>_rt_305 ),
    .O(\cd/Mcount_counter_cy [6])
  );
  XORCY   \cd/Mcount_counter_xor<6>  (
    .CI(\cd/Mcount_counter_cy [5]),
    .LI(\cd/Mcount_counter_cy<6>_rt_305 ),
    .O(Result[6])
  );
  MUXCY   \cd/Mcount_counter_cy<7>  (
    .CI(\cd/Mcount_counter_cy [6]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<7>_rt_306 ),
    .O(\cd/Mcount_counter_cy [7])
  );
  XORCY   \cd/Mcount_counter_xor<7>  (
    .CI(\cd/Mcount_counter_cy [6]),
    .LI(\cd/Mcount_counter_cy<7>_rt_306 ),
    .O(Result[7])
  );
  MUXCY   \cd/Mcount_counter_cy<8>  (
    .CI(\cd/Mcount_counter_cy [7]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<8>_rt_307 ),
    .O(\cd/Mcount_counter_cy [8])
  );
  XORCY   \cd/Mcount_counter_xor<8>  (
    .CI(\cd/Mcount_counter_cy [7]),
    .LI(\cd/Mcount_counter_cy<8>_rt_307 ),
    .O(Result[8])
  );
  MUXCY   \cd/Mcount_counter_cy<9>  (
    .CI(\cd/Mcount_counter_cy [8]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<9>_rt_308 ),
    .O(\cd/Mcount_counter_cy [9])
  );
  XORCY   \cd/Mcount_counter_xor<9>  (
    .CI(\cd/Mcount_counter_cy [8]),
    .LI(\cd/Mcount_counter_cy<9>_rt_308 ),
    .O(Result[9])
  );
  MUXCY   \cd/Mcount_counter_cy<10>  (
    .CI(\cd/Mcount_counter_cy [9]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<10>_rt_309 ),
    .O(\cd/Mcount_counter_cy [10])
  );
  XORCY   \cd/Mcount_counter_xor<10>  (
    .CI(\cd/Mcount_counter_cy [9]),
    .LI(\cd/Mcount_counter_cy<10>_rt_309 ),
    .O(Result[10])
  );
  MUXCY   \cd/Mcount_counter_cy<11>  (
    .CI(\cd/Mcount_counter_cy [10]),
    .DI(\cd/counter [13]),
    .S(\cd/Mcount_counter_cy<11>_rt_310 ),
    .O(\cd/Mcount_counter_cy [11])
  );
  XORCY   \cd/Mcount_counter_xor<11>  (
    .CI(\cd/Mcount_counter_cy [10]),
    .LI(\cd/Mcount_counter_cy<11>_rt_310 ),
    .O(Result[11])
  );
  XORCY   \cd/Mcount_counter_xor<12>  (
    .CI(\cd/Mcount_counter_cy [11]),
    .LI(\cd/Mcount_counter_xor<12>_rt_325 ),
    .O(Result[12])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \trans/Mmux_counter[2]_data_i[7]_Mux_6_o_3  (
    .I0(\trans/counter [1]),
    .I1(\trans/counter [0]),
    .I2(data_i[6]),
    .I3(data_i[7]),
    .I4(data_i[5]),
    .I5(data_i[4]),
    .O(\trans/Mmux_counter[2]_data_i[7]_Mux_6_o_3_149 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \trans/Mmux_counter[2]_data_i[7]_Mux_6_o_4  (
    .I0(\trans/counter [1]),
    .I1(\trans/counter [0]),
    .I2(data_i[2]),
    .I3(data_i[3]),
    .I4(data_i[1]),
    .I5(data_i[0]),
    .O(\trans/Mmux_counter[2]_data_i[7]_Mux_6_o_4_150 )
  );
  MUXF7   \trans/Mmux_counter[2]_data_i[7]_Mux_6_o_2_f7  (
    .I0(\trans/Mmux_counter[2]_data_i[7]_Mux_6_o_4_150 ),
    .I1(\trans/Mmux_counter[2]_data_i[7]_Mux_6_o_3_149 ),
    .S(\trans/counter [2]),
    .O(\trans/counter[2]_data_i[7]_Mux_6_o )
  );
  FD #(
    .INIT ( 1'b0 ))
  \trans/state_FSM_FFd1  (
    .C(\cd/clk_s_BUFG_2 ),
    .D(\trans/state_FSM_FFd1-In ),
    .Q(\trans/state_FSM_FFd1_163 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \trans/state_FSM_FFd2  (
    .C(\cd/clk_s_BUFG_2 ),
    .D(\trans/state_FSM_FFd2-In ),
    .Q(\trans/state_FSM_FFd2_162 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_6  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [6]),
    .Q(\trans/counter [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_5  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [5]),
    .Q(\trans/counter [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_4  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [4]),
    .Q(\trans/counter [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_3  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [3]),
    .Q(\trans/counter [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_2  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [2]),
    .Q(\trans/counter [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_1  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [1]),
    .Q(\trans/counter [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \trans/counter_0  (
    .C(\cd/clk_s_BUFG_2 ),
    .CE(\trans/_n0107_inv ),
    .D(\trans/_n0053 [0]),
    .Q(\trans/counter [0])
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<15>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_170 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<15>_rt_326 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<15> )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<14>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_171 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_rt_311 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<14> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_171 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_rt_311 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_170 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<13>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_172 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_rt_312 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<13> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_172 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_rt_312 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_171 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<12>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_173 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_rt_313 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<12> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_173 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_rt_313 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_172 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<11>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_174 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_rt_314 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<11> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_174 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_rt_314 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_173 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<10>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_175 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_rt_315 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<10> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_175 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_rt_315 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_174 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<9>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_176 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_rt_316 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<9> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_176 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_rt_316 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_175 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<8>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_177 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_rt_317 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<8> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_177 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_rt_317 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_176 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<7>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_178 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_rt_318 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<7> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_178 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_rt_318 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_177 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<6>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_179 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_rt_319 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<6> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_179 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_rt_319 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_178 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<5>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_180 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_rt_320 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<5> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_180 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_rt_320 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_179 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<4>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_181 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_rt_321 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<4> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_181 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_rt_321 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_180 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<3>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_182 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_rt_322 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<3> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_182 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_rt_322 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_181 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<2>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_183 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_rt_323 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<2> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_183 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_rt_323 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_182 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<1>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<0>_184 ),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_rt_324 ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<1> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>  (
    .CI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<0>_184 ),
    .DI(\cd/counter [13]),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_rt_324 ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_183 )
  );
  XORCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<0>  (
    .CI(\cd/counter [13]),
    .LI(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_lut<0> ),
    .O(\recive/counter[15]_GND_4_o_add_36_OUT<0> )
  );
  MUXCY   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<0>  (
    .CI(\cd/counter [13]),
    .DI(N0),
    .S(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_lut<0> ),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<0>_184 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/num_bits_5  (
    .C(clk_100_BUFGP_0),
    .CE(\recive/state_FSM_FFd2_188 ),
    .D(\recive/num_bits_5_dpot_415 ),
    .Q(\recive/num_bits [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/num_bits_4  (
    .C(clk_100_BUFGP_0),
    .CE(\recive/state_FSM_FFd2_188 ),
    .D(\recive/num_bits_4_dpot_414 ),
    .Q(\recive/num_bits [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/num_bits_3  (
    .C(clk_100_BUFGP_0),
    .CE(\recive/state_FSM_FFd2_188 ),
    .D(\recive/num_bits_3_dpot_413 ),
    .Q(\recive/num_bits [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/num_bits_2  (
    .C(clk_100_BUFGP_0),
    .CE(\recive/state_FSM_FFd2_188 ),
    .D(\recive/num_bits_2_dpot_412 ),
    .Q(\recive/num_bits [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/num_bits_1  (
    .C(clk_100_BUFGP_0),
    .CE(\recive/state_FSM_FFd2_188 ),
    .D(\recive/num_bits_1_dpot_411 ),
    .Q(\recive/num_bits [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/num_bits_0  (
    .C(clk_100_BUFGP_0),
    .CE(\recive/state_FSM_FFd2_188 ),
    .D(\recive/num_bits_0_dpot_410 ),
    .Q(\recive/num_bits [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/state_FSM_FFd1  (
    .C(clk_100_BUFGP_0),
    .D(\recive/state_FSM_FFd1-In ),
    .Q(\recive/state_FSM_FFd1_187 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/state_FSM_FFd2  (
    .C(clk_100_BUFGP_0),
    .D(\recive/state_FSM_FFd2-In_190 ),
    .Q(\recive/state_FSM_FFd2_188 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_15  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [15]),
    .Q(\recive/counter [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_14  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [14]),
    .Q(\recive/counter [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_13  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [13]),
    .Q(\recive/counter [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_12  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [12]),
    .Q(\recive/counter [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_11  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [11]),
    .Q(\recive/counter [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_10  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [10]),
    .Q(\recive/counter [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_9  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [9]),
    .Q(\recive/counter [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_8  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [8]),
    .Q(\recive/counter [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_7  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [7]),
    .Q(\recive/counter [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_6  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [6]),
    .Q(\recive/counter [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_5  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [5]),
    .Q(\recive/counter [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_4  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [4]),
    .Q(\recive/counter [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_3  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [3]),
    .Q(\recive/counter [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_2  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [2]),
    .Q(\recive/counter [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_1  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [1]),
    .Q(\recive/counter [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/counter_0  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/_n0170 [0]),
    .Q(\recive/counter [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_7  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<7> ),
    .Q(\recive/data_o [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_6  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<6> ),
    .Q(\recive/data_o [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_5  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<5> ),
    .Q(\recive/data_o [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_4  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<4> ),
    .Q(\recive/data_o [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_3  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<3> ),
    .Q(\recive/data_o [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_2  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<2> ),
    .Q(\recive/data_o [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_1  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<1> ),
    .Q(\recive/data_o [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/data_o_0  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/data_o[7]_data_o[7]_mux_59_OUT<0> ),
    .Q(\recive/data_o [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \recive/ready  (
    .C(clk_100_BUFGP_0),
    .CE(N0),
    .D(\recive/ready_ready_MUX_109_o_191 ),
    .Q(\recive/ready_13 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_7  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<7>_199 ),
    .Q(\recive/buffer [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_6  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<6> ),
    .Q(\recive/buffer [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_5  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<5> ),
    .Q(\recive/buffer [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_4  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<4> ),
    .Q(\recive/buffer [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_3  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<3> ),
    .Q(\recive/buffer [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_2  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<2> ),
    .Q(\recive/buffer [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_1  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<1> ),
    .Q(\recive/buffer [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/buffer_0  (
    .C(clk_100_BUFGP_0),
    .D(\recive/buffer[7]_buffer[7]_mux_57_OUT<0> ),
    .Q(\recive/buffer [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  busy_ready_AND_24_o1 (
    .I0(\trans/busy_3 ),
    .I1(\recive/ready_13 ),
    .O(\Mcount_counter_xor<4>13 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  _n0160_inv1 (
    .I0(\recive/ready_13 ),
    .I1(\trans/busy_3 ),
    .O(_n0160_inv)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Mcount_counter_xor<3>111  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(\data_o[7]_GND_1_o_equal_2_o ),
    .I2(stateCounter_FSM_FFd2_49),
    .O(\Mcount_counter_xor<3>11 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  _n014311 (
    .I0(\trans/busy_3 ),
    .I1(counter[1]),
    .I2(counter[3]),
    .I3(counter[2]),
    .I4(counter[4]),
    .I5(counter[5]),
    .O(_n01431)
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \stateCounter_FSM_FFd1-In1  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(\trans/busy_3 ),
    .I2(\recive/ready_13 ),
    .I3(stateCounter_FSM_FFd2_49),
    .O(\stateCounter_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'hB4B4B4B0 ))
  \stateCounter_FSM_FFd2-In1  (
    .I0(\trans/busy_3 ),
    .I1(\recive/ready_13 ),
    .I2(stateCounter_FSM_FFd2_49),
    .I3(\data_o[7]_GND_1_o_equal_2_o ),
    .I4(stateCounter_FSM_FFd1_48),
    .O(\stateCounter_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00404040 ))
  _n01311 (
    .I0(\trans/busy_3 ),
    .I1(\data_o[7]_GND_1_o_equal_2_o ),
    .I2(\recive/ready_13 ),
    .I3(stateCounter_FSM_FFd2_49),
    .I4(stateCounter_FSM_FFd1_48),
    .O(_n0131)
  );
  LUT5 #(
    .INIT ( 32'h40400040 ))
  _n01461 (
    .I0(\trans/busy_3 ),
    .I1(\data_o[7]_GND_1_o_equal_2_o ),
    .I2(\recive/ready_13 ),
    .I3(stateCounter_FSM_FFd2_49),
    .I4(stateCounter_FSM_FFd1_48),
    .O(_n0146)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  _n0164_inv1 (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\trans/busy_3 ),
    .I3(\recive/ready_13 ),
    .O(_n0164_inv)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  _n0169_inv1 (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\trans/busy_3 ),
    .I3(\recive/ready_13 ),
    .O(_n0169_inv)
  );
  LUT6 #(
    .INIT ( 64'hFFFE999877761110 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT21  (
    .I0(stateCounter_FSM_FFd2_49),
    .I1(stateCounter_FSM_FFd1_48),
    .I2(data_i[1]),
    .I3(\data_o[7]_GND_1_o_equal_2_o ),
    .I4(\recive/data_o [1]),
    .I5(\num_two[7]_num_one[7]_add_19_OUT<1> ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFE999877761110 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT71  (
    .I0(stateCounter_FSM_FFd2_49),
    .I1(stateCounter_FSM_FFd1_48),
    .I2(data_i[6]),
    .I3(\data_o[7]_GND_1_o_equal_2_o ),
    .I4(\recive/data_o [6]),
    .I5(\num_two[7]_num_one[7]_add_19_OUT<6> ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFE999877761110 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT51  (
    .I0(stateCounter_FSM_FFd2_49),
    .I1(stateCounter_FSM_FFd1_48),
    .I2(data_i[4]),
    .I3(\data_o[7]_GND_1_o_equal_2_o ),
    .I4(\recive/data_o [4]),
    .I5(\num_two[7]_num_one[7]_add_19_OUT<4> ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h26338CCC8CCC8CCC ))
  \Mcount_counter_xor<2>11  (
    .I0(\trans/busy_3 ),
    .I1(counter[2]),
    .I2(\Mcount_counter_xor<3>11 ),
    .I3(\recive/ready_13 ),
    .I4(counter[0]),
    .I5(counter[1]),
    .O(Mcount_counter2)
  );
  LUT5 #(
    .INIT ( 32'h26338CCC ))
  \Mcount_counter_xor<1>11  (
    .I0(\trans/busy_3 ),
    .I1(counter[1]),
    .I2(\Mcount_counter_xor<3>11 ),
    .I3(\recive/ready_13 ),
    .I4(counter[0]),
    .O(Mcount_counter1)
  );
  LUT6 #(
    .INIT ( 64'h2002202020202020 ))
  \trans/Mmux__n005361  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/state_FSM_FFd1_163 ),
    .I2(\trans/counter [5]),
    .I3(\trans/Mmux__n0053411 ),
    .I4(\trans/counter [4]),
    .I5(\trans/counter [3]),
    .O(\trans/_n0053 [5])
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  \trans/state_FSM_FFd1-In1  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/counter [3]),
    .I2(\trans/counter [4]),
    .I3(\trans/counter [5]),
    .I4(\trans/counter [6]),
    .O(\trans/state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h77774544 ))
  \trans/_n0107_inv1  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/state_FSM_FFd1_163 ),
    .I2(\trans/busy_3 ),
    .I3(send_38),
    .I4(\trans/state_FSM_FFd2-In1 ),
    .O(\trans/_n0107_inv )
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \trans/Mmux__n005321  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/state_FSM_FFd1_163 ),
    .I2(\trans/counter [0]),
    .I3(\trans/counter [1]),
    .O(\trans/_n0053 [1])
  );
  LUT5 #(
    .INIT ( 32'h20022020 ))
  \trans/Mmux__n005351  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/state_FSM_FFd1_163 ),
    .I2(\trans/counter [4]),
    .I3(\trans/Mmux__n0053411 ),
    .I4(\trans/counter [3]),
    .O(\trans/_n0053 [4])
  );
  LUT5 #(
    .INIT ( 32'h02202020 ))
  \trans/Mmux__n005331  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/state_FSM_FFd1_163 ),
    .I2(\trans/counter [2]),
    .I3(\trans/counter [0]),
    .I4(\trans/counter [1]),
    .O(\trans/_n0053 [2])
  );
  LUT5 #(
    .INIT ( 32'hAAAAAABA ))
  \trans/state_FSM_FFd2-In2  (
    .I0(\trans/state_FSM_FFd2-In1 ),
    .I1(\trans/busy_3 ),
    .I2(send_38),
    .I3(\trans/state_FSM_FFd2_162 ),
    .I4(\trans/state_FSM_FFd1_163 ),
    .O(\trans/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \trans/state_FSM_FFd2-In11  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/counter [4]),
    .I2(\trans/counter [3]),
    .I3(\trans/counter [5]),
    .I4(\trans/counter [6]),
    .O(\trans/state_FSM_FFd2-In1 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \trans/Mmux__n00534111  (
    .I0(\trans/counter [2]),
    .I1(\trans/counter [0]),
    .I2(\trans/counter [1]),
    .O(\trans/Mmux__n0053411 )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \trans/Mmux__n005311  (
    .I0(\trans/state_FSM_FFd1_163 ),
    .I1(\trans/state_FSM_FFd2_162 ),
    .I2(\trans/counter [0]),
    .O(\trans/_n0053 [0])
  );
  LUT6 #(
    .INIT ( 64'h1011111154555555 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>711  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 )
  );
  LUT5 #(
    .INIT ( 32'hD4D0F4F0 ))
  \recive/state_FSM_FFd1-In1  (
    .I0(rx_IBUF_1),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I4(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'hFFFEFFFF ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<2>111  (
    .I0(\recive/num_bits [0]),
    .I1(\recive/num_bits [5]),
    .I2(\recive/num_bits [3]),
    .I3(\recive/num_bits [4]),
    .I4(\recive/num_bits [1]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<2>11 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>221  (
    .I0(\recive/num_bits [5]),
    .I1(\recive/num_bits [3]),
    .I2(\recive/num_bits [4]),
    .I3(\recive/num_bits [1]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>22 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \recive/Mcount_num_bits_xor<3>111  (
    .I0(\recive/num_bits [0]),
    .I1(\recive/num_bits [1]),
    .I2(\recive/num_bits [2]),
    .O(\recive/Mcount_num_bits_xor<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>61  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>6 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \data_o[7]_GND_1_o_equal_2_o<7>_SW0  (
    .I0(\recive/data_o [1]),
    .I1(\recive/data_o [0]),
    .I2(\recive/data_o [2]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \data_o[7]_GND_1_o_equal_2_o<7>  (
    .I0(\recive/data_o [5]),
    .I1(\recive/data_o [7]),
    .I2(\recive/data_o [6]),
    .I3(\recive/data_o [4]),
    .I4(\recive/data_o [3]),
    .I5(N01),
    .O(\data_o[7]_GND_1_o_equal_2_o )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \cd/GND_2_o_GND_2_o_equal_3_o<16>1  (
    .I0(\cd/counter [0]),
    .I1(\cd/counter [3]),
    .I2(\cd/counter [12]),
    .I3(\cd/counter [10]),
    .I4(\cd/counter [6]),
    .I5(\cd/counter [4]),
    .O(\cd/GND_2_o_GND_2_o_equal_3_o_0 [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \cd/GND_2_o_GND_2_o_equal_3_o<16>2  (
    .I0(\cd/counter [2]),
    .I1(\cd/counter [1]),
    .I2(\cd/counter [5]),
    .I3(\cd/counter [7]),
    .I4(\cd/counter [8]),
    .I5(\cd/counter [9]),
    .O(\cd/GND_2_o_GND_2_o_equal_3_o<16>1_274 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \cd/GND_2_o_GND_2_o_equal_3_o<16>3  (
    .I0(\cd/counter [11]),
    .I1(\cd/GND_2_o_GND_2_o_equal_3_o<16>1_274 ),
    .I2(\cd/GND_2_o_GND_2_o_equal_3_o_0 [16]),
    .O(\cd/GND_2_o_GND_2_o_equal_3_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcount_counter_xor<5>1_SW0  (
    .I0(counter[4]),
    .I1(counter[3]),
    .I2(counter[2]),
    .I3(counter[1]),
    .I4(counter[0]),
    .O(N2)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \trans/Mmux__n00537_SW0  (
    .I0(\trans/state_FSM_FFd1_163 ),
    .I1(\trans/state_FSM_FFd2_162 ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h4444144444444444 ))
  \trans/Mmux__n00537  (
    .I0(N6),
    .I1(\trans/counter [6]),
    .I2(\trans/counter [3]),
    .I3(\trans/counter [4]),
    .I4(\trans/Mmux__n0053411 ),
    .I5(\trans/counter [5]),
    .O(\trans/_n0053 [6])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \trans/Mmux__n00491_SW0  (
    .I0(\trans/counter [6]),
    .I1(\trans/counter [3]),
    .O(N8)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/ready_ready_MUX_109_o_SW0  (
    .I0(clr_47),
    .I1(\recive/ready_13 ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \recive/GND_4_o_GND_4_o_equal_9_o<15>1  (
    .I0(\recive/counter [0]),
    .I1(\recive/counter [4]),
    .I2(\recive/counter [10]),
    .I3(\recive/counter [12]),
    .I4(\recive/counter [3]),
    .I5(\recive/counter [6]),
    .O(\recive/GND_4_o_GND_4_o_equal_9_o_1 [15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \recive/GND_4_o_GND_4_o_equal_9_o<15>2  (
    .I0(\recive/counter [14]),
    .I1(\recive/counter [15]),
    .I2(\recive/counter [9]),
    .I3(\recive/counter [8]),
    .I4(\recive/counter [2]),
    .I5(\recive/counter [1]),
    .O(\recive/GND_4_o_GND_4_o_equal_33_o<15>1_282 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \recive/GND_4_o_GND_4_o_equal_9_o<15>3  (
    .I0(\recive/counter [11]),
    .I1(\recive/counter [13]),
    .I2(\recive/counter [7]),
    .I3(\recive/counter [5]),
    .I4(\recive/GND_4_o_GND_4_o_equal_33_o<15>1_282 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_9_o_1 [15]),
    .O(\recive/GND_4_o_GND_4_o_equal_9_o )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \recive/GND_4_o_GND_4_o_equal_33_o<15>1  (
    .I0(\recive/counter [0]),
    .I1(\recive/counter [4]),
    .I2(\recive/counter [11]),
    .I3(\recive/counter [13]),
    .I4(\recive/counter [5]),
    .I5(\recive/counter [7]),
    .O(\recive/GND_4_o_GND_4_o_equal_33_o_2 [15])
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \recive/GND_4_o_GND_4_o_equal_33_o<15>3  (
    .I0(\recive/counter [10]),
    .I1(\recive/counter [12]),
    .I2(\recive/counter [6]),
    .I3(\recive/counter [3]),
    .I4(\recive/GND_4_o_GND_4_o_equal_33_o<15>1_282 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o_2 [15]),
    .O(\recive/GND_4_o_GND_4_o_equal_33_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<7>_SW0  (
    .I0(\recive/num_bits [5]),
    .I1(\recive/num_bits [4]),
    .I2(\recive/num_bits [3]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'hAFAFAAAAAF0FA800 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<7>  (
    .I0(\recive/buffer [7]),
    .I1(N12),
    .I2(\recive/Mcount_num_bits_xor<3>11 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>6 ),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I5(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<7>_199 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<5>2  (
    .I0(\recive/num_bits [1]),
    .I1(\recive/num_bits [2]),
    .I2(\recive/num_bits [0]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<5>2_285 )
  );
  LUT5 #(
    .INIT ( 32'hEEAAECA0 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<5>3  (
    .I0(\recive/buffer [5]),
    .I1(\recive/buffer[7]_buffer[7]_mux_57_OUT<5>2_285 ),
    .I2(\recive/buffer[7]_buffer[7]_mux_57_OUT<5>1_284 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<1>2  (
    .I0(\recive/num_bits [2]),
    .I1(\recive/num_bits [0]),
    .I2(\recive/num_bits [1]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<1>2_287 )
  );
  LUT5 #(
    .INIT ( 32'hEEAAECA0 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<1>3  (
    .I0(\recive/buffer [1]),
    .I1(\recive/buffer[7]_buffer[7]_mux_57_OUT<1>2_287 ),
    .I2(\recive/buffer[7]_buffer[7]_mux_57_OUT<1>1_286 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<4>2  (
    .I0(\recive/num_bits [1]),
    .I1(\recive/num_bits [2]),
    .I2(\recive/num_bits [0]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<4>2_289 )
  );
  LUT5 #(
    .INIT ( 32'hEEAAECA0 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<4>3  (
    .I0(\recive/buffer [4]),
    .I1(\recive/buffer[7]_buffer[7]_mux_57_OUT<4>2_289 ),
    .I2(\recive/buffer[7]_buffer[7]_mux_57_OUT<4>1_288 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>2  (
    .I0(\recive/num_bits [1]),
    .I1(\recive/num_bits [2]),
    .I2(\recive/num_bits [0]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>2_291 )
  );
  LUT5 #(
    .INIT ( 32'hEEAAECA0 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>4  (
    .I0(\recive/buffer [0]),
    .I1(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>2_291 ),
    .I2(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>1_290 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<3>1  (
    .I0(\recive/num_bits [1]),
    .I1(\recive/num_bits [5]),
    .I2(\recive/num_bits [2]),
    .I3(\recive/num_bits [3]),
    .I4(\recive/num_bits [4]),
    .I5(\recive/num_bits [0]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<3>1_292 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<3>2  (
    .I0(\recive/num_bits [2]),
    .I1(\recive/num_bits [1]),
    .I2(\recive/num_bits [0]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<3>2_293 )
  );
  LUT6 #(
    .INIT ( 64'hEEEEAAAAECCCA000 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<3>3  (
    .I0(\recive/buffer [3]),
    .I1(\recive/buffer[7]_buffer[7]_mux_57_OUT<3>2_293 ),
    .I2(\recive/buffer[7]_buffer[7]_mux_57_OUT<3>1_292 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>6 ),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I5(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<3> )
  );
  IBUF   rx_IBUF (
    .I(rx),
    .O(rx_IBUF_1)
  );
  OBUF   tx_OBUF (
    .I(\trans/tx_4 ),
    .O(tx)
  );
  OBUF   flag_OBUF (
    .I(\recive/flag_14 ),
    .O(flag)
  );
  OBUF   clk_s_OBUF (
    .I(\cd/clk_s_416 ),
    .O(clk_s)
  );
  OBUF   flagU_OBUF (
    .I(flagU_OBUF_23),
    .O(flagU)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<1>_rt  (
    .I0(\cd/counter [1]),
    .O(\cd/Mcount_counter_cy<1>_rt_300 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<2>_rt  (
    .I0(\cd/counter [2]),
    .O(\cd/Mcount_counter_cy<2>_rt_301 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<3>_rt  (
    .I0(\cd/counter [3]),
    .O(\cd/Mcount_counter_cy<3>_rt_302 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<4>_rt  (
    .I0(\cd/counter [4]),
    .O(\cd/Mcount_counter_cy<4>_rt_303 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<5>_rt  (
    .I0(\cd/counter [5]),
    .O(\cd/Mcount_counter_cy<5>_rt_304 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<6>_rt  (
    .I0(\cd/counter [6]),
    .O(\cd/Mcount_counter_cy<6>_rt_305 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<7>_rt  (
    .I0(\cd/counter [7]),
    .O(\cd/Mcount_counter_cy<7>_rt_306 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<8>_rt  (
    .I0(\cd/counter [8]),
    .O(\cd/Mcount_counter_cy<8>_rt_307 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<9>_rt  (
    .I0(\cd/counter [9]),
    .O(\cd/Mcount_counter_cy<9>_rt_308 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<10>_rt  (
    .I0(\cd/counter [10]),
    .O(\cd/Mcount_counter_cy<10>_rt_309 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_cy<11>_rt  (
    .I0(\cd/counter [11]),
    .O(\cd/Mcount_counter_cy<11>_rt_310 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_rt  (
    .I0(\recive/counter [14]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<14>_rt_311 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_rt  (
    .I0(\recive/counter [13]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<13>_rt_312 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_rt  (
    .I0(\recive/counter [12]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<12>_rt_313 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_rt  (
    .I0(\recive/counter [11]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<11>_rt_314 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_rt  (
    .I0(\recive/counter [10]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<10>_rt_315 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_rt  (
    .I0(\recive/counter [9]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<9>_rt_316 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_rt  (
    .I0(\recive/counter [8]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<8>_rt_317 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_rt  (
    .I0(\recive/counter [7]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<7>_rt_318 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_rt  (
    .I0(\recive/counter [6]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<6>_rt_319 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_rt  (
    .I0(\recive/counter [5]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<5>_rt_320 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_rt  (
    .I0(\recive/counter [4]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<4>_rt_321 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_rt  (
    .I0(\recive/counter [3]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<3>_rt_322 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_rt  (
    .I0(\recive/counter [2]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<2>_rt_323 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_rt  (
    .I0(\recive/counter [1]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_cy<1>_rt_324 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cd/Mcount_counter_xor<12>_rt  (
    .I0(\cd/counter [12]),
    .O(\cd/Mcount_counter_xor<12>_rt_325 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<15>_rt  (
    .I0(\recive/counter [15]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_xor<15>_rt_326 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \cd/clk_s  (
    .C(clk_100_BUFGP_0),
    .D(\cd/clk_s_rstpot_327 ),
    .Q(\cd/clk_s_416 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \trans/tx  (
    .C(\cd/clk_s_BUFG_2 ),
    .D(\trans/tx_rstpot_328 ),
    .Q(\trans/tx_4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \trans/busy  (
    .C(\cd/clk_s_BUFG_2 ),
    .D(\trans/busy_rstpot_329 ),
    .Q(\trans/busy_3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \recive/flag  (
    .C(clk_100_BUFGP_0),
    .D(\recive/flag_rstpot_330 ),
    .Q(\recive/flag_14 )
  );
  FD #(
    .INIT ( 1'b0 ))
  clr (
    .C(\cd/clk_s_BUFG_2 ),
    .D(clr_rstpot_331),
    .Q(clr_47)
  );
  FD #(
    .INIT ( 1'b0 ))
  send (
    .C(\cd/clk_s_BUFG_2 ),
    .D(send_rstpot1_332),
    .Q(send_38)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_SW0_SW0  (
    .I0(\recive/num_bits [3]),
    .I1(rx_IBUF_1),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<6>1_SW1  (
    .I0(\recive/num_bits [0]),
    .I1(\recive/num_bits [2]),
    .I2(\recive/num_bits [1]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'hEEEEAAAAE4E4AA00 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<6>1  (
    .I0(\recive/buffer [6]),
    .I1(N27),
    .I2(N28),
    .I3(N26),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I5(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<2>1_SW1  (
    .I0(\recive/num_bits [2]),
    .I1(\recive/num_bits [1]),
    .I2(\recive/num_bits [0]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'hEEEEAAAAE4E4AA00 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<2>1  (
    .I0(\recive/buffer [2]),
    .I1(N31),
    .I2(N32),
    .I3(N30),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 ),
    .I5(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>71 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFFFFFFFFFF ))
  \recive/GND_4_o_GND_4_o_equal_33_o<15>3_SW0  (
    .I0(\recive/num_bits [5]),
    .I1(\recive/counter [10]),
    .I2(\recive/counter [12]),
    .I3(\recive/num_bits [4]),
    .I4(\recive/state_FSM_FFd2_188 ),
    .I5(\recive/state_FSM_FFd1_187 ),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>3  (
    .I0(\recive/GND_4_o_GND_4_o_equal_33_o<15>1_282 ),
    .I1(\recive/GND_4_o_GND_4_o_equal_33_o_2 [15]),
    .I2(N18),
    .I3(\recive/counter [6]),
    .I4(\recive/counter [3]),
    .I5(N34),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>3_168 )
  );
  LUT6 #(
    .INIT ( 64'h54D555D554555555 ))
  \recive/ready_ready_MUX_109_o  (
    .I0(N10),
    .I1(rx_IBUF_1),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/ready_ready_MUX_109_o_191 )
  );
  LUT5 #(
    .INIT ( 32'hFFFEFFFF ))
  \recive/state_FSM_FFd2-In_SW0_SW0  (
    .I0(\recive/num_bits [2]),
    .I1(\recive/num_bits [4]),
    .I2(\recive/num_bits [1]),
    .I3(\recive/num_bits [0]),
    .I4(\recive/num_bits [3]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hF0F5C0F5F0F5F0F5 ))
  \recive/state_FSM_FFd2-In  (
    .I0(rx_IBUF_1),
    .I1(\recive/num_bits [5]),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(N36),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/state_FSM_FFd2-In_190 )
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n017011_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<0> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [0]),
    .O(N38)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017011_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<0> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [0]),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017011_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [0]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<0> ),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017011_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [0]),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'h555533330F0F00FF ))
  \recive/Mmux__n017011  (
    .I0(N41),
    .I1(N39),
    .I2(N40),
    .I3(N38),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [0])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW0  (
    .I0(clr_47),
    .I1(\recive/data_o [0]),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>2  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [0]),
    .I2(N43),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW1  (
    .I0(clr_47),
    .I1(\recive/data_o [1]),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<1>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [1]),
    .I2(N45),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW2  (
    .I0(clr_47),
    .I1(\recive/data_o [3]),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<3>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [3]),
    .I2(N47),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW3  (
    .I0(clr_47),
    .I1(\recive/data_o [4]),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<4>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [4]),
    .I2(N49),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW4  (
    .I0(clr_47),
    .I1(\recive/data_o [2]),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<2>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [2]),
    .I2(N51),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW5  (
    .I0(clr_47),
    .I1(\recive/data_o [6]),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<6>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [6]),
    .I2(N53),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW6  (
    .I0(clr_47),
    .I1(\recive/data_o [7]),
    .O(N55)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<7>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [7]),
    .I2(N55),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<0>11_SW7  (
    .I0(clr_47),
    .I1(\recive/data_o [5]),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'h0F8D0F0F0F0F0F0F ))
  \recive/data_o[7]_data_o[7]_mux_59_OUT<5>1  (
    .I0(rx_IBUF_1),
    .I1(\recive/buffer [5]),
    .I2(N57),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/state_FSM_FFd1_187 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/data_o[7]_data_o[7]_mux_59_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n017081_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<1> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [1]),
    .O(N59)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017081_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<1> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [1]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017081_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [1]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<1> ),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017081_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [1]),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n017081  (
    .I0(N62),
    .I1(N61),
    .I2(N60),
    .I3(N59),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [1])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n017091_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<2> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [2]),
    .O(N64)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017091_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<2> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [2]),
    .O(N65)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017091_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [2]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<2> ),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017091_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [2]),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n017091  (
    .I0(N67),
    .I1(N66),
    .I2(N65),
    .I3(N64),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [2])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170101_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<3> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [3]),
    .O(N69)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170101_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<3> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [3]),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170101_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [3]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<3> ),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170101_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [3]),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170101  (
    .I0(N72),
    .I1(N71),
    .I2(N70),
    .I3(N69),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [3])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170111_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<4> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [4]),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170111_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<4> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [4]),
    .O(N75)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170111_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [4]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<4> ),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170111_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [4]),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170111  (
    .I0(N77),
    .I1(N76),
    .I2(N75),
    .I3(N74),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [4])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170121_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<5> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [5]),
    .O(N79)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170121_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<5> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [5]),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170121_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [5]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<5> ),
    .O(N81)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170121_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [5]),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170121  (
    .I0(N82),
    .I1(N81),
    .I2(N80),
    .I3(N79),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [5])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170131_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<6> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [6]),
    .O(N84)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170131_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<6> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [6]),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170131_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [6]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<6> ),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170131_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [6]),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170131  (
    .I0(N87),
    .I1(N86),
    .I2(N85),
    .I3(N84),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [6])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170141_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<7> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [7]),
    .O(N89)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170141_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<7> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [7]),
    .O(N90)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170141_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [7]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<7> ),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170141_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [7]),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170141  (
    .I0(N92),
    .I1(N91),
    .I2(N90),
    .I3(N89),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [7])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170151_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<8> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [8]),
    .O(N94)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170151_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<8> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [8]),
    .O(N95)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170151_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [8]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<8> ),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170151_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [8]),
    .O(N97)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170151  (
    .I0(N97),
    .I1(N96),
    .I2(N95),
    .I3(N94),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [8])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n0170161_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<9> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [9]),
    .O(N99)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n0170161_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<9> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [9]),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n0170161_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [9]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<9> ),
    .O(N101)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n0170161_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [9]),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n0170161  (
    .I0(N102),
    .I1(N101),
    .I2(N100),
    .I3(N99),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [9])
  );
  LUT5 #(
    .INIT ( 32'h54575757 ))
  \recive/Mmux__n017021_SW0  (
    .I0(\recive/counter[15]_GND_4_o_add_36_OUT<10> ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [10]),
    .O(N104)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017021_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<10> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [10]),
    .O(N105)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017021_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [10]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<10> ),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017021_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [10]),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n017021  (
    .I0(N107),
    .I1(N106),
    .I2(N105),
    .I3(N104),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [10])
  );
  LUT5 #(
    .INIT ( 32'h0007FFF7 ))
  \recive/Mmux__n017031_SW0  (
    .I0(rx_IBUF_1),
    .I1(\recive/counter [11]),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(\recive/counter[15]_GND_4_o_add_36_OUT<11> ),
    .O(N109)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017031_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<11> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [11]),
    .O(N110)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017031_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [11]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<11> ),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017031_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [11]),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n017031  (
    .I0(N112),
    .I1(N111),
    .I2(N110),
    .I3(N109),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [11])
  );
  LUT5 #(
    .INIT ( 32'h0007FFF7 ))
  \recive/Mmux__n017041_SW0  (
    .I0(rx_IBUF_1),
    .I1(\recive/counter [12]),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(\recive/counter[15]_GND_4_o_add_36_OUT<12> ),
    .O(N114)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017041_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<12> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [12]),
    .O(N115)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017041_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [12]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<12> ),
    .O(N116)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017041_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [12]),
    .O(N117)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n017041  (
    .I0(N117),
    .I1(N116),
    .I2(N115),
    .I3(N114),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [12])
  );
  LUT5 #(
    .INIT ( 32'h0007FFF7 ))
  \recive/Mmux__n017051_SW0  (
    .I0(rx_IBUF_1),
    .I1(\recive/counter [13]),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(\recive/counter[15]_GND_4_o_add_36_OUT<13> ),
    .O(N119)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F7F7 ))
  \recive/Mmux__n017051_SW1  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/counter[15]_GND_4_o_add_36_OUT<13> ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(rx_IBUF_1),
    .I4(\recive/counter [13]),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'h15BF ))
  \recive/Mmux__n017051_SW2  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/counter [13]),
    .I2(rx_IBUF_1),
    .I3(\recive/counter[15]_GND_4_o_add_36_OUT<13> ),
    .O(N121)
  );
  LUT4 #(
    .INIT ( 16'h8BFF ))
  \recive/Mmux__n017051_SW3  (
    .I0(\recive/state_FSM_FFd2_188 ),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/counter [13]),
    .O(N122)
  );
  LUT6 #(
    .INIT ( 64'h55550F0F333300FF ))
  \recive/Mmux__n017051  (
    .I0(N122),
    .I1(N121),
    .I2(N120),
    .I3(N119),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [13])
  );
  MUXF7   \trans/tx_rstpot  (
    .I0(N124),
    .I1(N125),
    .S(\trans/state_FSM_FFd2_162 ),
    .O(\trans/tx_rstpot_328 )
  );
  LUT4 #(
    .INIT ( 16'hFFA2 ))
  \trans/tx_rstpot_F  (
    .I0(\trans/tx_4 ),
    .I1(send_38),
    .I2(\trans/busy_3 ),
    .I3(\trans/state_FSM_FFd1_163 ),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFE55555554 ))
  \trans/tx_rstpot_G  (
    .I0(\trans/state_FSM_FFd1_163 ),
    .I1(\trans/counter[2]_data_i[7]_Mux_6_o ),
    .I2(\trans/counter [5]),
    .I3(\trans/counter [4]),
    .I4(N8),
    .I5(\trans/tx_4 ),
    .O(N125)
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  clr_rstpot (
    .I0(_n01431),
    .I1(counter[0]),
    .I2(clr_47),
    .O(clr_rstpot_331)
  );
  LUT4 #(
    .INIT ( 16'h8B8A ))
  \trans/busy_rstpot  (
    .I0(\trans/busy_3 ),
    .I1(\trans/state_FSM_FFd2_162 ),
    .I2(\trans/state_FSM_FFd1_163 ),
    .I3(send_38),
    .O(\trans/busy_rstpot_329 )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \cd/clk_s_rstpot  (
    .I0(\cd/clk_s_416 ),
    .I1(\cd/counter [11]),
    .I2(\cd/GND_2_o_GND_2_o_equal_3_o<16>1_274 ),
    .I3(\cd/GND_2_o_GND_2_o_equal_3_o_0 [16]),
    .O(\cd/clk_s_rstpot_327 )
  );
  LUT6 #(
    .INIT ( 64'h5555555544444440 ))
  send_rstpot1 (
    .I0(\trans/busy_3 ),
    .I1(\recive/ready_13 ),
    .I2(\data_o[7]_GND_1_o_equal_2_o ),
    .I3(stateCounter_FSM_FFd1_48),
    .I4(stateCounter_FSM_FFd2_49),
    .I5(send_38),
    .O(send_rstpot1_332)
  );
  LUT5 #(
    .INIT ( 32'h3CC9CCC9 ))
  \recive/flag_rstpot  (
    .I0(rx_IBUF_1),
    .I1(\recive/flag_14 ),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/flag_rstpot_330 )
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  Mmux_flagU_flagU_MUX_117_o11 (
    .I0(flagU_OBUF_23),
    .I1(stateCounter_FSM_FFd1_48),
    .I2(\data_o[7]_GND_1_o_equal_2_o ),
    .I3(stateCounter_FSM_FFd2_49),
    .O(flagU_flagU_MUX_117_o)
  );
  LUT6 #(
    .INIT ( 64'h5151515151515159 ))
  \Mcount_counter_xor<0>11  (
    .I0(counter[0]),
    .I1(\recive/ready_13 ),
    .I2(\trans/busy_3 ),
    .I3(stateCounter_FSM_FFd1_48),
    .I4(\data_o[7]_GND_1_o_equal_2_o ),
    .I5(stateCounter_FSM_FFd2_49),
    .O(Mcount_counter)
  );
  LUT6 #(
    .INIT ( 64'h0220202020202020 ))
  \trans/Mmux__n005341  (
    .I0(\trans/state_FSM_FFd2_162 ),
    .I1(\trans/state_FSM_FFd1_163 ),
    .I2(\trans/counter [3]),
    .I3(\trans/counter [2]),
    .I4(\trans/counter [0]),
    .I5(\trans/counter [1]),
    .O(\trans/_n0053 [3])
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \recive/Mcount_num_bits_xor<4>11  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/num_bits [4]),
    .I2(\recive/num_bits [0]),
    .I3(\recive/num_bits [1]),
    .I4(\recive/num_bits [2]),
    .I5(\recive/num_bits [3]),
    .O(\recive/Mcount_num_bits4 )
  );
  LUT6 #(
    .INIT ( 64'h4040004040404040 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<5>1  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/num_bits [0]),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>22 ),
    .I5(\recive/num_bits [2]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<5>1_284 )
  );
  LUT6 #(
    .INIT ( 64'h4040404040400040 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<1>1  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/num_bits [0]),
    .I4(\recive/num_bits [2]),
    .I5(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>22 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<1>1_286 )
  );
  LUT6 #(
    .INIT ( 64'h4040404040400040 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<4>1  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/num_bits [2]),
    .I4(\recive/num_bits [0]),
    .I5(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>22 ),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<4>1_288 )
  );
  LUT6 #(
    .INIT ( 64'h4040404040404000 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<0>1  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>22 ),
    .I4(\recive/num_bits [0]),
    .I5(\recive/num_bits [2]),
    .O(\recive/buffer[7]_buffer[7]_mux_57_OUT<0>1_290 )
  );
  LUT5 #(
    .INIT ( 32'h40400040 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<6>1_SW0  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/num_bits [2]),
    .I4(\recive/buffer[7]_buffer[7]_mux_57_OUT<2>11 ),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'h40404000 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<2>1_SW0  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/buffer[7]_buffer[7]_mux_57_OUT<2>11 ),
    .I4(\recive/num_bits [2]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hE860E860F971E860 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT81  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\recive/data_o [7]),
    .I3(\num_two[7]_num_one[7]_add_19_OUT<7> ),
    .I4(data_i[7]),
    .I5(\data_o[7]_GND_1_o_equal_2_o ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hE860E860F971E860 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT61  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\recive/data_o [5]),
    .I3(\num_two[7]_num_one[7]_add_19_OUT<5> ),
    .I4(data_i[5]),
    .I5(\data_o[7]_GND_1_o_equal_2_o ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hE860E860F971E860 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT41  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\recive/data_o [3]),
    .I3(\num_two[7]_num_one[7]_add_19_OUT<3> ),
    .I4(data_i[3]),
    .I5(\data_o[7]_GND_1_o_equal_2_o ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hE860E860F971E860 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT31  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\recive/data_o [2]),
    .I3(\num_two[7]_num_one[7]_add_19_OUT<2> ),
    .I4(data_i[2]),
    .I5(\data_o[7]_GND_1_o_equal_2_o ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hE860E860F971E860 ))
  \Mmux_data_i[7]_num_two[7]_mux_22_OUT11  (
    .I0(stateCounter_FSM_FFd1_48),
    .I1(stateCounter_FSM_FFd2_49),
    .I2(\recive/data_o [0]),
    .I3(\num_two[7]_num_one[7]_add_19_OUT<0> ),
    .I4(data_i[0]),
    .I5(\data_o[7]_GND_1_o_equal_2_o ),
    .O(\data_i[7]_num_two[7]_mux_22_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h26338CCC ))
  \Mcount_counter_xor<5>1  (
    .I0(\trans/busy_3 ),
    .I1(counter[5]),
    .I2(\Mcount_counter_xor<3>11 ),
    .I3(\recive/ready_13 ),
    .I4(N2),
    .O(Mcount_counter5)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \Mcount_counter_xor<4>15_SW0  (
    .I0(counter[1]),
    .I1(counter[2]),
    .I2(counter[3]),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'hA5AA2122A5AAA9AA ))
  \Mcount_counter_xor<4>15  (
    .I0(counter[4]),
    .I1(\recive/ready_13 ),
    .I2(N126),
    .I3(counter[0]),
    .I4(\trans/busy_3 ),
    .I5(\Mcount_counter_xor<3>11 ),
    .O(Mcount_counter4)
  );
  LUT6 #(
    .INIT ( 64'h40404040FF404040 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<6>1_SW2  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/num_bits [2]),
    .I4(\recive/num_bits [1]),
    .I5(\recive/num_bits [0]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h404040FF40404040 ))
  \recive/buffer[7]_buffer[7]_mux_57_OUT<2>1_SW2  (
    .I0(clr_47),
    .I1(\recive/state_FSM_FFd2_188 ),
    .I2(\recive/state_FSM_FFd1_187 ),
    .I3(\recive/num_bits [2]),
    .I4(\recive/num_bits [0]),
    .I5(\recive/num_bits [1]),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'h88D8 ))
  \recive/_n0223_inv1_rstpot  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .I2(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I3(rx_IBUF_1),
    .O(\recive/_n0223_inv1_rstpot_409 )
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  \recive/num_bits_0_dpot  (
    .I0(\recive/_n0223_inv1_rstpot_409 ),
    .I1(\recive/num_bits [0]),
    .I2(\recive/state_FSM_FFd1_187 ),
    .O(\recive/num_bits_0_dpot_410 )
  );
  LUT4 #(
    .INIT ( 16'h48AA ))
  \recive/num_bits_1_dpot  (
    .I0(\recive/num_bits [1]),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/num_bits [0]),
    .I3(\recive/_n0223_inv1_rstpot_409 ),
    .O(\recive/num_bits_1_dpot_411 )
  );
  LUT5 #(
    .INIT ( 32'h4888AAAA ))
  \recive/num_bits_2_dpot  (
    .I0(\recive/num_bits [2]),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/num_bits [1]),
    .I3(\recive/num_bits [0]),
    .I4(\recive/_n0223_inv1_rstpot_409 ),
    .O(\recive/num_bits_2_dpot_412 )
  );
  LUT6 #(
    .INIT ( 64'h48888888AAAAAAAA ))
  \recive/num_bits_3_dpot  (
    .I0(\recive/num_bits [3]),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/num_bits [2]),
    .I3(\recive/num_bits [0]),
    .I4(\recive/num_bits [1]),
    .I5(\recive/_n0223_inv1_rstpot_409 ),
    .O(\recive/num_bits_3_dpot_413 )
  );
  LUT6 #(
    .INIT ( 64'h88884888AAAAAAAA ))
  \recive/num_bits_5_dpot  (
    .I0(\recive/num_bits [5]),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(\recive/num_bits [3]),
    .I3(\recive/num_bits [4]),
    .I4(\recive/Mcount_num_bits_xor<3>11 ),
    .I5(\recive/_n0223_inv1_rstpot_409 ),
    .O(\recive/num_bits_5_dpot_415 )
  );
  LUT6 #(
    .INIT ( 64'hEFEE4044CDCCC8CC ))
  \recive/num_bits_4_dpot  (
    .I0(\recive/state_FSM_FFd1_187 ),
    .I1(\recive/num_bits [4]),
    .I2(rx_IBUF_1),
    .I3(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I4(\recive/Mcount_num_bits4 ),
    .I5(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/num_bits_4_dpot_414 )
  );
  BUFGP   clk_100_BUFGP (
    .I(clk_100),
    .O(clk_100_BUFGP_0)
  );
  BUFG   \cd/clk_s_BUFG  (
    .O(\cd/clk_s_BUFG_2 ),
    .I(\cd/clk_s_416 )
  );
  INV   \cd/Mcount_counter_lut<0>_INV_0  (
    .I(\cd/counter [0]),
    .O(\cd/Mcount_counter_lut [0])
  );
  INV   \recive/Madd_counter[15]_GND_4_o_add_36_OUT_lut<0>_INV_0  (
    .I(\recive/counter [0]),
    .O(\recive/Madd_counter[15]_GND_4_o_add_36_OUT_lut<0> )
  );
  MUXF7   \Mcount_counter_xor<3>1  (
    .I0(N128),
    .I1(N129),
    .S(\Mcount_counter_xor<3>11 ),
    .O(Mcount_counter3)
  );
  LUT6 #(
    .INIT ( 64'h6A6AAA6AAAAAAAAA ))
  \Mcount_counter_xor<3>1_F  (
    .I0(counter[3]),
    .I1(counter[0]),
    .I2(counter[1]),
    .I3(\recive/ready_13 ),
    .I4(\trans/busy_3 ),
    .I5(counter[2]),
    .O(N128)
  );
  LUT6 #(
    .INIT ( 64'h6AAA6AAA00006AAA ))
  \Mcount_counter_xor<3>1_G  (
    .I0(counter[3]),
    .I1(counter[2]),
    .I2(counter[1]),
    .I3(counter[0]),
    .I4(\recive/ready_13 ),
    .I5(\trans/busy_3 ),
    .O(N129)
  );
  MUXF7   \recive/Mmux__n017071  (
    .I0(N130),
    .I1(N131),
    .S(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [15])
  );
  LUT6 #(
    .INIT ( 64'hECECFFEC20200020 ))
  \recive/Mmux__n017071_F  (
    .I0(\recive/counter [15]),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/counter[15]_GND_4_o_add_36_OUT<15> ),
    .O(N130)
  );
  LUT6 #(
    .INIT ( 64'h0A880AF80A880A08 ))
  \recive/Mmux__n017071_G  (
    .I0(\recive/counter [15]),
    .I1(rx_IBUF_1),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/counter[15]_GND_4_o_add_36_OUT<15> ),
    .O(N131)
  );
  MUXF7   \recive/Mmux__n017061  (
    .I0(N132),
    .I1(N133),
    .S(\recive/GND_4_o_GND_4_o_equal_33_o ),
    .O(\recive/_n0170 [14])
  );
  LUT6 #(
    .INIT ( 64'hECECFFEC20200020 ))
  \recive/Mmux__n017061_F  (
    .I0(\recive/counter [14]),
    .I1(\recive/state_FSM_FFd1_187 ),
    .I2(rx_IBUF_1),
    .I3(\recive/state_FSM_FFd2_188 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/counter[15]_GND_4_o_add_36_OUT<14> ),
    .O(N132)
  );
  LUT6 #(
    .INIT ( 64'h0A880AF80A880A08 ))
  \recive/Mmux__n017061_G  (
    .I0(\recive/counter [14]),
    .I1(rx_IBUF_1),
    .I2(\recive/state_FSM_FFd2_188 ),
    .I3(\recive/state_FSM_FFd1_187 ),
    .I4(\recive/GND_4_o_GND_4_o_equal_9_o ),
    .I5(\recive/counter[15]_GND_4_o_add_36_OUT<14> ),
    .O(N133)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

