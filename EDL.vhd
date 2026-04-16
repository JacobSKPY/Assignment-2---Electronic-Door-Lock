----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2026 12:38:34
-- Design Name: 
-- Module Name: EDL - rtl
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

entity EDL is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           INTR : in STD_LOGIC;
           KEY : in STD_LOGIC;
           UNLOCK : out STD_LOGIC;
           BUSY : out STD_LOGIC);
end EDL;

architecture rtl of EDL is
    
    -- States
    type    STATE_TYPE      is  (s_rst);    
    signal  current_state   :   STATE_TYPE  :=  s_rst;
    signal  next_state      :   STATE_TYPE  :=  s_rst;

begin

    -- CURRENT STATE LOGIC
    current_state_logic : process(CLK, RST)
    begin
        if (RST = '1') then
            current_state <= s_rst;
        elsif (rising_edge(CLK)) then
             current_state   <=  next_state;        

            case current_state is                   
                when s_rst =>                       
                    case next_state is              
                        when s_rst =>
                            null;
                        when others =>
                            null;
                    end case;
                when others =>
                    null;
            end case;
        end if; 
    end process current_state_logic;
    
    -- NEXT STATE LOGIC
    next_state_logic : process(current_state)
    begin
        case current_state is                       
            when s_rst =>
                next_state  <=  s_rst;              
            when others =>
                null;
        end case;
    end process next_state_logic;

    -- OUTPUT LOGIC
    output_logic : process(current_state)
    begin
        case current_state is                      
            when s_rst =>                           
                null;                               
            when others =>
                null;
        end case;
    end process output_logic;





end rtl;
