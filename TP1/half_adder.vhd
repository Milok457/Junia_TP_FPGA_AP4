library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity half_adder is
	port (
		A : in std_logic;
		B : in std_logic;
		S : out std_logic;
		C : out std_logic
	);
end half_adder;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of half_adder is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
begin
	S <= A xor B;  -- Somme des bits A et B (si A et B sont différents, S = 1, sinon S = 0)
	C <= A and B;  -- Retenue de l'addition, si A et B sont tous les deux 1 C = 1, sinon C = 0
end behavioral;
