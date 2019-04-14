// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 11 15:47:13 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ZynqAES_AES_Full_axis128_0_1_stub.v
// Design      : ZynqAES_AES_Full_axis128_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AES_Full_axis128,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_AES_AWADDR, s_axi_AES_AWVALID, 
  s_axi_AES_AWREADY, s_axi_AES_WDATA, s_axi_AES_WSTRB, s_axi_AES_WVALID, s_axi_AES_WREADY, 
  s_axi_AES_BRESP, s_axi_AES_BVALID, s_axi_AES_BREADY, s_axi_AES_ARADDR, s_axi_AES_ARVALID, 
  s_axi_AES_ARREADY, s_axi_AES_RDATA, s_axi_AES_RRESP, s_axi_AES_RVALID, s_axi_AES_RREADY, 
  ap_clk, ap_rst_n, interrupt, aes_in_TVALID, aes_in_TREADY, aes_in_TDATA, aes_in_TLAST, 
  aes_out_TVALID, aes_out_TREADY, aes_out_TDATA, aes_out_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AES_AWADDR[4:0],s_axi_AES_AWVALID,s_axi_AES_AWREADY,s_axi_AES_WDATA[31:0],s_axi_AES_WSTRB[3:0],s_axi_AES_WVALID,s_axi_AES_WREADY,s_axi_AES_BRESP[1:0],s_axi_AES_BVALID,s_axi_AES_BREADY,s_axi_AES_ARADDR[4:0],s_axi_AES_ARVALID,s_axi_AES_ARREADY,s_axi_AES_RDATA[31:0],s_axi_AES_RRESP[1:0],s_axi_AES_RVALID,s_axi_AES_RREADY,ap_clk,ap_rst_n,interrupt,aes_in_TVALID,aes_in_TREADY,aes_in_TDATA[127:0],aes_in_TLAST[0:0],aes_out_TVALID,aes_out_TREADY,aes_out_TDATA[127:0],aes_out_TLAST[0:0]" */;
  input [4:0]s_axi_AES_AWADDR;
  input s_axi_AES_AWVALID;
  output s_axi_AES_AWREADY;
  input [31:0]s_axi_AES_WDATA;
  input [3:0]s_axi_AES_WSTRB;
  input s_axi_AES_WVALID;
  output s_axi_AES_WREADY;
  output [1:0]s_axi_AES_BRESP;
  output s_axi_AES_BVALID;
  input s_axi_AES_BREADY;
  input [4:0]s_axi_AES_ARADDR;
  input s_axi_AES_ARVALID;
  output s_axi_AES_ARREADY;
  output [31:0]s_axi_AES_RDATA;
  output [1:0]s_axi_AES_RRESP;
  output s_axi_AES_RVALID;
  input s_axi_AES_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input aes_in_TVALID;
  output aes_in_TREADY;
  input [127:0]aes_in_TDATA;
  input [0:0]aes_in_TLAST;
  output aes_out_TVALID;
  input aes_out_TREADY;
  output [127:0]aes_out_TDATA;
  output [0:0]aes_out_TLAST;
endmodule