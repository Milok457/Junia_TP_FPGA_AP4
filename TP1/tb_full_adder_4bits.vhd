library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_full_adder_4bits is
end tb_full_adder_4bits;

architecture tb of tb_full_adder_4bits is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;
	signal A : std_logic_vector(3 downto 0);
	signal B : std_logic_vector(3 downto 0);
	signal Cin : std_logic;
	signal S : std_logic_vector(3 downto 0);
	signal Cout : std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.full_adder_4bits port map (
        -- ex. A => A,
        -- ex. S => S
		A => A,
		B => B,
		Cin => Cin,
		S => S,
		Cout => Cout
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	adding_bits : process
		begin
		A <= "0101";
		B <= "0011";
		Cin <= '0';

		wait for 10ns;
	end process;	-- Résulat attendu : S = "1000", Cout = '0'

end tb ;
