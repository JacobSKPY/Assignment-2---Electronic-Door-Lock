----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.04.2026 16:21:34
-- Design Name: 
-- Module Name: segment_driver - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity segment_driver is
    Port (
        CLK     : in  std_logic;
        RST     : in  std_logic;
        DIN     : in  std_logic_vector(3 downto 0);   -- 0-F input
        SEL     : in  std_logic;                      -- 0=venstre, 1=højre display
        BNT     : in std_logic;
        SEG     : out std_logic_vector(6 downto 0);   -- a,b,c,d,e,f,g
        AN      : out std_logic                       -- Anode select
    );
end segment_driver;

architecture Behavioral of segment_driver is

    signal seg_prev : std_logic_vector(6 downto 0) := "0000000";

begin

-- Anode select (vælger hvilket af de to displays der er aktivt)
AN <= SEL;

-- 7-segment decoder (active low)
process(DIN, BNT)
begin
    if BNT = '1' then
        case DIN is
            --             abcdefg
            when "0000" => seg_prev <= "0111111";  -- 0
            when "0001" => seg_prev <= "0110000";  -- 1
            when "0010" => seg_prev <= "1011011";  -- 2
            when "0011" => seg_prev <= "1111001";  -- 3
            when "0100" => seg_prev <= "1110100";  -- 4
            when "0101" => seg_prev <= "1101101";  -- 5
            when "0110" => seg_prev <= "1101111";  -- 6
            when "0111" => seg_prev <= "0111000";  -- 7
            when "1000" => seg_prev <= "1111111";  -- 8
            when "1001" => seg_prev <= "1111101";  -- 9
            when "1111" => seg_prev <= "0000000";  -- blank
            when others => seg_prev <= "0000000";  -- blank
        end case;
    else
        SEG <= seg_prev;
    end if;
end process;

end Behavioral;
