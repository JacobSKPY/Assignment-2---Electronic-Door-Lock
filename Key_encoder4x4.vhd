----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2026 12:52:23
-- Design Name: 
-- Module Name: Key_encoder4x4 - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Key_encoder4x4 is
    Port ( STROBE : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           INTR : out STD_LOGIC_VECTOR (3 downto 0));
end Key_encoder4x4;

architecture rtl of Key_encoder4x4 is

begin


end rtl;
