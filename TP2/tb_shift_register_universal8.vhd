library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_shift_register_universal8 is
end tb_shift_register_universal8;

architecture tb of tb_shift_register_universal8 is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;
	signal SSR : std_logic := '0';
	signal SSL : std_logic := '0';
	signal Pi : std_logic_vector(7 downto 0) := (others => '0');
	signal SEL : std_logic_vector(2 downto 0) := "000";
	signal CLK : std_logic := '0';
	signal SETn : std_logic := '1';
	signal RSTn : std_logic := '1';

	signal SOR : std_logic;
	signal SOL : std_logic;
	signal Qo : std_logic_vector(7 downto 0);

	constant CLK_PERIOD : time := 10 ns;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)

	CLK <= not CLK after CLK_PERIOD/2;

	UUT : entity work.shift_register_universal8 port map (
        -- ex. A => A,
        -- ex. S => S
		SSR  => SSR,
		SSL  => SSL,
		Pi   => Pi,
		SEL  => SEL,
		CLK  => CLK,
		SETn => SETn,
		RSTn => RSTn,
		SOR  => SOR,
		SOL  => SOL,
		Qo   => Qo
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

		-- 1. Reset asynchrone initial : Qo doit passer à "00000000"
        RSTn <= '0';
        wait for 15 ns;
        RSTn <= '1';
        wait for 5 ns;
 
        -- 2. Chargement parallèle : Pi = "10110001", SEL = "011"
        -- Qo doit valoir "10110001" après le front montant
        Pi  <= "10110001";
        SEL <= "011";
        wait for CLK_PERIOD;
 
        -- 3. Décalage à droite (SEL = "001") sur 4 cycles, SSR = '1'
        -- A chaque cycle : SSR entre en Q7, Q0 sort sur SOR
        -- Après 4 cycles depuis "10110001" avec SSR='1' :
        --   cycle 1 : "11011000"
        --   cycle 2 : "11101100"
        --   cycle 3 : "11110110"
        --   cycle 4 : "11111011"
        SEL <= "001";
        SSR <= '1';
        wait for 4 * CLK_PERIOD;
 
        -- 4. Décalage à gauche (SEL = "010") sur 4 cycles, SSL = '0'
        -- A chaque cycle : SSL entre en Q0, Q7 sort sur SOL
        SEL <= "010";
        SSL <= '0';
        wait for 4 * CLK_PERIOD;
 
        -- 5. Hold (SEL = "000") sur 2 cycles : Qo ne doit pas changer
        SEL <= "000";
        wait for 2 * CLK_PERIOD;
 
        -- 6. Rotation à droite (SEL = "101") sur 8 cycles
        -- Q0 est réinjecté en Q7 : après 8 rotations on retrouve la valeur initiale
        SEL <= "101";
        wait for 8 * CLK_PERIOD;
 
        -- 7. Rotation à gauche (SEL = "110") sur 8 cycles
        -- Q7 est réinjecté en Q0 : après 8 rotations on retrouve la valeur initiale
        SEL <= "110";
        wait for 8 * CLK_PERIOD;
 
        -- 8. Preset asynchrone : Qo doit passer à "11111111" immédiatement
        SETn <= '0';
        wait for 15 ns;
        SETn <= '1';
        wait for CLK_PERIOD;

		wait; -- Wait indefinitely

	end process;
end tb ;
