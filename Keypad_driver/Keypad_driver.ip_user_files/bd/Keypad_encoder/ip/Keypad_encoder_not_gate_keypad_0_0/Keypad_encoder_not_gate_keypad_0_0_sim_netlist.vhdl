-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr  9 09:17:34 2026
-- Host        : LAPTOP-BNQ02402 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jacob/Assig_2V2/Assig_2V2.gen/sources_1/bd/Keypad_encoder/ip/Keypad_encoder_not_gate_keypad_0_0/Keypad_encoder_not_gate_keypad_0_0_sim_netlist.vhdl
-- Design      : Keypad_encoder_not_gate_keypad_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keypad_encoder_not_gate_keypad_0_0 is
  port (
    a : in STD_LOGIC;
    o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Keypad_encoder_not_gate_keypad_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Keypad_encoder_not_gate_keypad_0_0 : entity is "Keypad_encoder_not_gate_keypad_0_0,not_gate_keypad,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Keypad_encoder_not_gate_keypad_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Keypad_encoder_not_gate_keypad_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Keypad_encoder_not_gate_keypad_0_0 : entity is "not_gate_keypad,Vivado 2025.2";
end Keypad_encoder_not_gate_keypad_0_0;

architecture STRUCTURE of Keypad_encoder_not_gate_keypad_0_0 is
begin
o_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => o
    );
end STRUCTURE;
