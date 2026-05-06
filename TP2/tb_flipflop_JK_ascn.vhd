library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity testbench_flipflop_JK_ascn is
end testbench_flipflop_JK_ascn;

architecture tb of testbench_flipflop_JK_ascn is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;
	signal J : std_logic := '0';
	signal K : std_logic := '0';
	signal CLK : std_logic := '0';
	signal SETn : std_logic := '1';
	signal RSTn : std_logic := '1';

	signal Q : std_logic;
	signal Qn : std_logic;

	constant CLK_PERIOD : time := 10 ns;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)

	CLK <= not CLK after CLK_PERIOD/2;

	UUT : entity work.flipflop_JK_ascn port map (
        -- ex. A => A,
        -- ex. S => S
		J => J,
		K => K,
		CLK => CLK,
		SETn => SETn,
		RSTn => RSTn,
		Q => Q,
		Qn => Qn
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	stimuli1 : process
		begin
		-- Cas 1 : Reset asynchrone initial
        RSTn <= '0';
        wait for 15 ns;  -- Attente > demi-période pour bien voir l'effet asynchrone
        RSTn <= '1';
        wait for 5 ns;
 
		-- Cas 2 : Preset asynchrone
        SETn <= '0';
        wait for 15 ns;
        SETn <= '1';
        wait for 5 ns;
 
		-- Cas 3: Reset asynchrone
        RSTn <= '0';
        wait for 15 ns;
        RSTn <= '1';
        wait for 5 ns;
 
		-- Cas 4 : Maintien de l'état (J=0, K=0)
        J <= '0'; K <= '0';
        wait for 3 * CLK_PERIOD;

		-- Cas 5 : Set synchrone (J=1, K=0)
        J <= '1'; K <= '0';
        wait for CLK_PERIOD;
 
		-- Cas 6 : Maintien de l'état (J=0, K=1)
        J <= '0'; K <= '0';
        wait for 2 * CLK_PERIOD;
 
		-- Cas 7 : Reset synchrone (J=0, K=1)
        J <= '0'; K <= '1';
        wait for CLK_PERIOD;
 
		-- Cas 8 : Toggle (J=1, K=1)
        J <= '1'; K <= '1';
        wait for 4 * CLK_PERIOD;
 
		-- Cas 9 : Preset asynchrone en plein milieu d'un cycle
        SETn <= '0';
        wait for 3 ns;   -- Activation en plein milieu d'un cycle
        SETn <= '1';
        wait for CLK_PERIOD;
 
        wait;

	end process;
end tb ;
