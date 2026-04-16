// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 09:17:34 2026
// Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jacob/Assig_2V2/Assig_2V2.gen/sources_1/bd/Keypad_encoder/ip/Keypad_encoder_clockdivider_0_0/Keypad_encoder_clockdivider_0_0_sim_netlist.v
// Design      : Keypad_encoder_clockdivider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Keypad_encoder_clockdivider_0_0,clockdivider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clockdivider,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module Keypad_encoder_clockdivider_0_0
   (CLK,
    RST,
    CLKOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_mode = "slave CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Keypad_encoder_CLK, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST RST" *) (* x_interface_mode = "slave RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  output CLKOUT;

  wire CLK;
  wire CLKOUT;
  wire RST;

  Keypad_encoder_clockdivider_0_0_clockdivider U0
       (.CLK(CLK),
        .CLKOUT(CLKOUT),
        .RST(RST));
endmodule

(* ORIG_REF_NAME = "clockdivider" *) 
module Keypad_encoder_clockdivider_0_0_clockdivider
   (CLKOUT,
    CLK,
    RST);
  output CLKOUT;
  input CLK;
  input RST;

  wire CLK;
  wire CLKOUT;
  wire RST;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire [12:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [12:0]counter_0;
  wire [12:1]data0;
  wire [3:3]NLW_counter0_carry__1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFDFF00000200)) 
    clk_out_i_1
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(CLKOUT),
        .O(clk_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    clk_out_i_2
       (.I0(counter[4]),
        .I1(counter[6]),
        .I2(counter[3]),
        .I3(counter[11]),
        .I4(counter[2]),
        .I5(counter[8]),
        .O(clk_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    clk_out_i_3
       (.I0(counter[7]),
        .I1(counter[9]),
        .I2(counter[12]),
        .I3(counter[5]),
        .O(clk_out_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(clk_out_i_1_n_0),
        .Q(CLKOUT));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({NLW_counter0_carry__1_CO_UNCONNECTED[3],counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  LUT5 #(
    .INIT(32'h0F0F0D0F)) 
    \counter[0]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[10]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[10]),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[11]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[11]),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[12]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[12]),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[1]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[1]),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[2]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[3]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[3]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[4]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[5]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[5]),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[6]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[7]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[8]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \counter[9]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[10]),
        .I5(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(counter_0[9]),
        .Q(counter[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
