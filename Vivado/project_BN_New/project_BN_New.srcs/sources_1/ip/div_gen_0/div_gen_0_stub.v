// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue Jan 23 18:01:43 2018
// Host        : ocaepc07 running 64-bit Debian GNU/Linux 7.11 (wheezy)
// Command     : write_verilog -force -mode synth_stub
//               /tp/xph3app/xph3app604/Projet_3A/Vivado/project_BN_New/project_BN_New.srcs/sources_1/ip/div_gen_0/div_gen_0_stub.v
// Design      : div_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_11,Vivado 2017.1" *)
module div_gen_0(aclk, aresetn, s_axis_divisor_tvalid, 
  s_axis_divisor_tready, s_axis_divisor_tdata, s_axis_dividend_tvalid, 
  s_axis_dividend_tready, s_axis_dividend_tdata, m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_divisor_tvalid,s_axis_divisor_tready,s_axis_divisor_tdata[47:0],s_axis_dividend_tvalid,s_axis_dividend_tready,s_axis_dividend_tdata[47:0],m_axis_dout_tvalid,m_axis_dout_tdata[47:0]" */;
  input aclk;
  input aresetn;
  input s_axis_divisor_tvalid;
  output s_axis_divisor_tready;
  input [47:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  output s_axis_dividend_tready;
  input [47:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [47:0]m_axis_dout_tdata;
endmodule
