----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2026 12:27:13
-- Design Name: 
-- Module Name: decoder_keypad - Behavioral
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

entity decoder_keypad is
    Port ( i : in  STD_LOGIC_VECTOR(1 downto 0);
           o : out STD_LOGIC_VECTOR(3 downto 0));
end decoder_keypad;

architecture Behavioral of decoder_keypad is
begin
    process(i)
    begin
        case i is
            when "00"   => o <= "1110";
            when "01"   => o <= "1101";
            when "10"   => o <= "1011";
            when "11"   => o <= "0111";
            when others => o <= "1111";
        end case;
    end process;
end Behavioral;
