--********************************************************************************************************************--
--! @file
--! @brief Shift Register Test Bench
--! Copyright&copy - Hayat
--********************************************************************************************************************--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! Local libraries
library work;

--! Entity/Package Description
entity test_shift_reg is
end;

architecture test_bench of test_shift_reg is

component shift_reg
    port(
	datain   : in std_logic;
	clk      : in std_logic;
	reset    : in std_logic;
	A        : out std_logic;
	B        : out std_logic;
	C        : out std_logic;
	D        : out std_logic
);
end component;

--Assign input signals
signal datain     : std_logic := '0';
signal reset      : std_logic := '0';
signal clk        : std_logic := '0';
signal A, B, C, D : std_logic;

begin

    map_test: shift_reg
	    port map(datain, clk, reset, A, B, C, D);
		
	--Assign stimulus
	clk_process: process
	begin 
	    wait for 10 ns;
		clk <= not clk;
	end process clk_process;
		
    data_stimulus: process
	begin  
		wait for 30 ns;
	    datain <= not datain;
		wait for 130 ns;
	end process data_stimulus;
		
end test_bench;
			