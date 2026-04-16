--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Thu Apr  9 12:51:53 2026
--Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
--Command     : generate_target Keypad_encoder.bd
--Design      : Keypad_encoder
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    intr : out STD_LOGIC;
    key_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Keypad_encoder : entity is "Keypad_encoder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Keypad_encoder,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Keypad_encoder : entity is "Keypad_encoder.hwdef";
end Keypad_encoder;

architecture STRUCTURE of Keypad_encoder is
  component Keypad_encoder_counter_keypad_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Keypad_encoder_counter_keypad_0_0;
  component Keypad_encoder_decoder_keypad_0_0 is
  port (
    i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Keypad_encoder_decoder_keypad_0_0;
  component Keypad_encoder_mux_keypad_0_0 is
  port (
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  end component Keypad_encoder_mux_keypad_0_0;
  component Keypad_encoder_not_gate_keypad_0_0 is
  port (
    a : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component Keypad_encoder_not_gate_keypad_0_0;
  component Keypad_encoder_clockdivider_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLKOUT : out STD_LOGIC
  );
  end component Keypad_encoder_clockdivider_0_0;
  component Keypad_encoder_mask_keypad_0_0 is
  port (
    key : in STD_LOGIC_VECTOR ( 3 downto 0 );
    keyout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Keypad_encoder_mask_keypad_0_0;
  signal clockdivider_0_CLKOUT : STD_LOGIC;
  signal counter_keypad_0_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mux_keypad_0_key : STD_LOGIC;
  signal slice_2to1_keypad1_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slice_4to3_keypad_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET RST, CLK_DOMAIN Keypad_encoder_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
clockdivider_0: component Keypad_encoder_clockdivider_0_0
     port map (
      CLK => CLK,
      CLKOUT => clockdivider_0_CLKOUT,
      RST => RST
    );
counter_keypad_0: component Keypad_encoder_counter_keypad_0_0
     port map (
      clk => clockdivider_0_CLKOUT,
      count(3 downto 0) => counter_keypad_0_count(3 downto 0),
      en => mux_keypad_0_key,
      rst => RST
    );
decoder_keypad_0: component Keypad_encoder_decoder_keypad_0_0
     port map (
      i(1 downto 0) => slice_4to3_keypad_Dout(1 downto 0),
      o(3 downto 0) => row_out(3 downto 0)
    );
mask_keypad_0: component Keypad_encoder_mask_keypad_0_0
     port map (
      key(3 downto 0) => counter_keypad_0_count(3 downto 0),
      keyout(3 downto 0) => key_out(3 downto 0)
    );
mux_keypad_0: component Keypad_encoder_mux_keypad_0_0
     port map (
      i(3 downto 0) => col_in(3 downto 0),
      o => mux_keypad_0_key,
      s(1 downto 0) => slice_2to1_keypad1_Dout(1 downto 0)
    );
not_gate_keypad_0: component Keypad_encoder_not_gate_keypad_0_0
     port map (
      a => mux_keypad_0_key,
      o => intr
    );
  slice_2to1_keypad1_Dout <= counter_keypad_0_count(1 downto 0);
  slice_4to3_keypad_Dout <= counter_keypad_0_count(3 downto 2);
end STRUCTURE;
