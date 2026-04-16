-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr  9 09:36:36 2026
-- Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jacob/Assig_2V2/Assig_2V2.gen/sources_1/bd/Keypad_encoder/ip/Keypad_encoder_decoder_keypad_0_0/Keypad_encoder_decoder_keypad_0_0_sim_netlist.vhdl
-- Design      : Keypad_encoder_decoder_keypad_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder_decoder_keypad_0_0_decoder_keypad is
  port (
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Keypad_encoder_decoder_keypad_0_0_decoder_keypad : entity is "decoder_keypad";
end Keypad_encoder_decoder_keypad_0_0_decoder_keypad;

architecture STRUCTURE of Keypad_encoder_decoder_keypad_0_0_decoder_keypad is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o[3]_INST_0\ : label is "soft_lutpair0";
begin
\o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => o(0)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => o(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder_decoder_keypad_0_0 is
  port (
    i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Keypad_encoder_decoder_keypad_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Keypad_encoder_decoder_keypad_0_0 : entity is "Keypad_encoder_decoder_keypad_0_0,decoder_keypad,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Keypad_encoder_decoder_keypad_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Keypad_encoder_decoder_keypad_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Keypad_encoder_decoder_keypad_0_0 : entity is "decoder_keypad,Vivado 2025.2";
end Keypad_encoder_decoder_keypad_0_0;

architecture STRUCTURE of Keypad_encoder_decoder_keypad_0_0 is
begin
U0: entity work.Keypad_encoder_decoder_keypad_0_0_decoder_keypad
     port map (
      i(1 downto 0) => i(1 downto 0),
      o(1) => o(3),
      o(0) => o(0)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => o(1)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => o(2)
    );
end STRUCTURE;
