// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 09:36:36 2026
// Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jacob/Assig_2V2/Assig_2V2.gen/sources_1/bd/Keypad_encoder/ip/Keypad_encoder_decoder_keypad_0_0/Keypad_encoder_decoder_keypad_0_0_stub.v
// Design      : Keypad_encoder_decoder_keypad_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Keypad_encoder_decoder_keypad_0_0,decoder_keypad,{}" *) (* core_generation_info = "Keypad_encoder_decoder_keypad_0_0,decoder_keypad,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=decoder_keypad,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "decoder_keypad,Vivado 2025.2" *) 
module Keypad_encoder_decoder_keypad_0_0(i, o)
/* synthesis syn_black_box black_box_pad_pin="i[1:0],o[3:0]" */;
  input [1:0]i;
  output [3:0]o;
endmodule
