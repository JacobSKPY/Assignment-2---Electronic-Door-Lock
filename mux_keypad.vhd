----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2026 12:28:01
-- Design Name: 
-- Module Name: mux_keypad - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_keypad is
    Port ( s : in  STD_LOGIC_VECTOR(1 downto 0);
           i : in  STD_LOGIC_VECTOR(3 downto 0);
           o : out STD_LOGIC);
end mux_keypad;

architecture Behavioral of mux_keypad is
begin
process(s, i)
begin
    o <= i(to_integer(unsigned(s)));
end process;
end Behavioral;
