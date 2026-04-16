----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2026 12:24:52
-- Design Name: 
-- Module Name: mask_keypad - Behavioral
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

entity mask_keypad is
    Port ( key : in STD_LOGIC_VECTOR (3 downto 0);
           keyout : out STD_LOGIC_VECTOR (3 downto 0));
end mask_keypad;

architecture Behavioral of mask_keypad is

begin
process(key) 
begin
    case key is
        when "1100" => keyout <= "0000"; -- 0
        when "0000" => keyout <= "0001"; -- 1
        when "0001" => keyout <= "0010"; -- 2
        when "0010" => keyout <= "0011"; -- 3
        when "0100" => keyout <= "0100"; -- 4
        when "0101" => keyout <= "0101"; -- 5
        when "0110" => keyout <= "0110"; -- 6
        when "1000" => keyout <= "0111"; -- 7
        when "1001" => keyout <= "1000"; -- 8
        when "1010" => keyout <= "1001"; -- 9
        when "1111" => keyout <= "1111"; -- *
        
        when "0011" => keyout <= "0000"; -- Blank
        when "0111" => keyout <= "0000"; -- Blank
        when "1011" => keyout <= "0000"; -- Blank
        when "1101" => keyout <= "0000"; -- Blank
        when "1110" => keyout <= "0000"; -- Blank
        
        when others => keyout <= "0000"; -- Blank
    end case;
end process;  


end Behavioral;
