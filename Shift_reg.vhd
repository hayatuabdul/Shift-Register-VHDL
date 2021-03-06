--********************************************************************************************************************--
--! @file
--! @brief Simple Shift Register
--! Copyright&copy - Hayat
--********************************************************************************************************************--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! Local libraries
library work;

--! Entity/Package Description
entity shift_reg is
    port(
	datain   : in std_logic;
	clk      : in std_logic;
	reset    : in std_logic;
	A        : out std_logic;
	B        : out std_logic;
	C        : out std_logic;
	D        : out std_logic);

end shift_reg;

architecture shifty of shift_reg is
-- Assign signals with nill values
signal A_reg, B_reg, C_reg, D_reg : std_logic := '0';

begin
     A <= A_reg;
	 B <= B_reg;
	 C <= C_reg;
	 D <= D_reg;

    reg_process : process(clk)
	begin
	    if (rising_edge(clk)) then
		    if (reset = '1') then
			A_reg <= '0';
			B_reg <= '0';
			C_reg <= '0';
			D_reg <= '0';
			 
			else
			
			A_reg <= datain;
			B_reg <= A_reg;
			C_reg <= B_reg;
			D_reg <= C_reg;			
			
			end if;
	    
		end if;
	end process;

end shifty;
	 