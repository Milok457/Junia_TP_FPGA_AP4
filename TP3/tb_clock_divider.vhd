library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_clock_divider is
end tb_clock_divider;

architecture tb of tb_clock_divider is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;
	signal CLKin : std_logic := '0';
	signal RST : std_logic := '0';
	signal N : std_logic_vector(4 downto 0) := "00010";
	signal CLKout : std_logic;

	constant CLK_PERIOD : time := 10 ns;
begin

	CLKin <= not CLKin after CLK_PERIOD/2;

	
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.clock_divider port map (
        -- ex. A => A,
        -- ex. S => S
		CLKin => CLKin,
		RST => RST,
		N => N,
		CLKout => CLKout
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	stimuli1 : process
		begin
		-- ex. A <= '0';
		-- ex. wait for 10ns; -- Délai avant le prochain stimulus
		-- ex. A <= '1';
		-- ex. wait for 10ns; -- Délai avant le prochain stimulus

		RST <= '0';
		wait for 15 ns;
		RST <= '1';

		wait for 60 * CLK_PERIOD;

		RST <= '0';
		wait for 15 ns;
		RST <= '1';

		wait for 60 * CLK_PERIOD;

		wait; -- Wait indefinitely

	end process;
end tb ;
