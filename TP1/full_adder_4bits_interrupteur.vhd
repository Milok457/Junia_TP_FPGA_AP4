library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity full_adder_4bits_interrupteur is
	port (
		SW : in std_logic_vector(9 downto 0);		-- Interrupteurs pour les entrées A, B et Cin
		HEX3 : out std_logic_vector(6 downto 0);	-- Afficheur de l'Opérande A
		HEX2 : out std_logic_vector(6 downto 0);	-- Afficheur de l'Opérande B
		HEX0 : out std_logic_vector(6 downto 0)		-- Afficheur de la Somme A + B + Cin
	);
end entity full_adder_4bits_interrupteur;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of full_adder_4bits_interrupteur is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	A <= SW(3 downto 0);		-- Assignation des interrupteurs SW aux entrées A
	B <= SW(7 downto 4);		-- Assignation des interrupteurs SW aux entrées B
	Cin <= SW(9);				-- Assignation de l'interrupteur SW à la retenue entrante Cin

	instance_full_adder_4bits : entity work.full_adder_4bits port map (
		A => A,
		B => B,
		Cin => Cin,
		S => S,
		Cout => Cout
	);

	-- Affichage des opérandes et de la somme sur les afficheurs 7 segments
	HEX3 <= "1000000" when A = "0000" else
			"1111001" when A = "0001" else
			"0100100" when A = "0010" else
			"0110000" when A = "0011" else
			"0011001" when A = "0100" else
			"0010010" when A = "0101" else
			"0000010" when A = "0110" else
			"1111000" when A = "0111" else
			"0000000" when A = "1000" else
			"0010000" when A = "1001" else
			"0001000" when A = "1010" else
			"0000011" when A = "1011" else
			"1000110" when A = "1100" else
			"0100001" when A = "1101" else
			"0000110" when A = "1110" else
			"0001110";

	HEX2 <= "1000000" when B = "0000" else
			"1111001" when B = "0001" else
			"0100100" when B = "0010" else
			"0110000" when B = "0011" else
			"0011001" when B = "0100" else
			"0010010" when B = "0101" else
			"0000010" when B = "0110" else
			"1111000" when B = "0111" else
			"0000000" when B = "1000" else
			"0010000" when B = "1001" else
			"0001000" when B = "1010" else
			"0000011" when B = "1011" else
			"1000110" when B = "1100" else
			"0100001" when B = "1101" else
			"0000110" when B = "1110" else
			"0001110";

	HEX0 <= "1000000" when S = "0000" else
            "1111001" when S = "0001" else
            "0100100" when S = "0010" else
            "0110000" when S = "0011" else
            "0011001" when S = "0100" else
            "0010010" when S = "0101" else
            "0000010" when S = "0110" else
            "1111000" when S = "0111" else
            "0000000" when S = "1000" else
            "0010000" when S = "1001" else
            "0001000" when S = "1010" else
            "0000011" when S = "1011" else
            "1000110" when S = "1100" else
            "0100001" when S = "1101" else
            "0000110" when S = "1110" else
            "0001110";

end behavioral;
