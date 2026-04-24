library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity full_adder is
	port (
		A : in std_logic;
		B : in std_logic;
        Cin : in std_logic;
		S : out std_logic;
		Cout : out std_logic
	);
end full_adder;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of full_adder is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
signal S_half : std_logic; -- Somme half adder
signal C_half1 : std_logic; -- Retenue half adder 1
signal C_half2 : std_logic; -- Retenue half adder 2

begin
    instance_half_adder_1 : entity work.half_adder port map (   -- Instance d'un premier half-adder 
        A => A,
        B => B,
        S => S_half,
        C => C_half1
    );

    instance_half_adder_2 : entity work.half_adder port map (   -- Intance d'un second half-adder
        A => S_half,
        B => Cin,
        S => S,
        C => C_half2
    );

    Cout <= C_half1 or C_half2; -- Retenue finale est la combinaison des retenues des deux half adders
end behavioral;