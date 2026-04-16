-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr  9 09:17:34 2026
-- Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jacob/Assig_2V2/Assig_2V2.gen/sources_1/bd/Keypad_encoder/ip/Keypad_encoder_clockdivider_0_0/Keypad_encoder_clockdivider_0_0_sim_netlist.vhdl
-- Design      : Keypad_encoder_clockdivider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder_clockdivider_0_0_clockdivider is
  port (
    CLKOUT : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Keypad_encoder_clockdivider_0_0_clockdivider : entity is "clockdivider";
end Keypad_encoder_clockdivider_0_0_clockdivider;

architecture STRUCTURE of Keypad_encoder_clockdivider_0_0_clockdivider is
  signal \^clkout\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal clk_out_i_3_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \NLW_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
begin
  CLKOUT <= \^clkout\;
clk_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000200"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => \^clkout\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(6),
      I2 => counter(3),
      I3 => counter(11),
      I4 => counter(2),
      I5 => counter(8),
      O => clk_out_i_2_n_0
    );
clk_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter(7),
      I1 => counter(9),
      I2 => counter(12),
      I3 => counter(5),
      O => clk_out_i_3_n_0
    );
clk_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => clk_out_i_1_n_0,
      Q => \^clkout\
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \NLW_counter0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0D0F"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(12),
      O => counter_0(12)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(1),
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(2),
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000000"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(10),
      I5 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => counter_0(9),
      Q => counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder_clockdivider_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLKOUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Keypad_encoder_clockdivider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Keypad_encoder_clockdivider_0_0 : entity is "Keypad_encoder_clockdivider_0_0,clockdivider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Keypad_encoder_clockdivider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Keypad_encoder_clockdivider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Keypad_encoder_clockdivider_0_0 : entity is "clockdivider,Vivado 2025.2";
end Keypad_encoder_clockdivider_0_0;

architecture STRUCTURE of Keypad_encoder_clockdivider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of CLK : signal is "slave CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Keypad_encoder_CLK, INSERT_VIP 0";
  attribute x_interface_info of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute x_interface_mode of RST : signal is "slave RST";
  attribute x_interface_parameter of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Keypad_encoder_clockdivider_0_0_clockdivider
     port map (
      CLK => CLK,
      CLKOUT => CLKOUT,
      RST => RST
    );
end STRUCTURE;
