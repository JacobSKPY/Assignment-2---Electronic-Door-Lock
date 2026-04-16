--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sat Apr 11 11:33:17 2026
--Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
--Command     : generate_target Keypad_encoder_wrapper.bd
--Design      : Keypad_encoder_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder_wrapper is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    intr : out STD_LOGIC;
    key_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Keypad_encoder_wrapper;

architecture STRUCTURE of Keypad_encoder_wrapper is
  component Keypad_encoder is
  port (
    intr : out STD_LOGIC;
    key_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Keypad_encoder;
begin
Keypad_encoder_i: component Keypad_encoder
     port map (
      CLK => CLK,
      RST => RST,
      col_in(3 downto 0) => col_in(3 downto 0),
      intr => intr,
      key_out(3 downto 0) => key_out(3 downto 0),
      row_out(3 downto 0) => row_out(3 downto 0)
    );
end STRUCTURE;
