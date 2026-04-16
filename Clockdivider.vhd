----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2026 08:57:27
-- Design Name: 
-- Module Name: clockdivider - Behavioral
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

entity clockdivider is
  generic (
            N_Count : integer := 12500 
             );
  Port ( CLK : in std_logic;
         RST : in std_logic;
         CLKOUT : out std_logic);
end clockdivider;

architecture Behavioral of clockdivider is
    signal counter  : integer range 0 to N_Count/2 := 0;
    signal clk_out  : std_logic := '0';
    
begin
    process(CLK, RST)
    begin
        if (RST = '1') then
            counter <= 0;
            clk_out <= '0';
        elsif (rising_edge(CLK)) then
            if (counter = N_Count/2) then
                counter <= 0;
                clk_out <= not clk_out;  -- toggle hver halve periode
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
CLKOUT <= clk_out;
end Behavioral;