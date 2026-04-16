----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2026 12:23:42
-- Design Name: 
-- Module Name: counter_keypad - Behavioral
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

entity counter_keypad is
    Port ( clk   : in  STD_LOGIC;
           rst   : in  STD_LOGIC;
           en    : in  STD_LOGIC;
           count : out STD_LOGIC_VECTOR(3 downto 0));
end counter_keypad;

architecture Behavioral of counter_keypad is
    signal cnt : UNSIGNED(3 downto 0) := "0000";
begin
    process(clk, rst)
    begin
        if rst = '1' then
            cnt <= "0000";
        elsif rising_edge(clk) then
            if en = '1' then
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    count <= STD_LOGIC_VECTOR(cnt);
end Behavioral;
