library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity full_adder_4bits is
	port (
		A : in std_logic_vector(3 downto 0);  	-- Premier Opérande 4bits
		B : in std_logic_vector(3 downto 0);  	-- Second Opérande 4bits
		Cin : in std_logic;					  	-- Retenue entrante
		S : out std_logic_vector(3 downto 0);	-- Somme A + B + Cin
		Cout : out std_logic					-- Retenue sortante
	);
end entity full_adder_4bits;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of full_adder_4bits is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
signal Cout_full_1 : std_logic;					-- Retenues intermédiaires après chaque full adder
signal Cout_full_2 : std_logic;					-- Retenues intermédiaires après chaque full adder
signal Cout_full_3 : std_logic;					-- Retenues intermédiaires après chaque full adder
signal Cout_full_4 : std_logic;					-- Retenues intermédiaires après chaque full adder
signal S_full : std_logic_vector(3 downto 0); -- Somme intermédiaire après le premier full adder
signal Cin_full_2 : std_logic;					-- Retenue entrante pour le second full adder (qui est la retenue sortante du premier full adder)
signal Cin_full_3 : std_logic;					-- Retenue entrante pour le troisième full adder (qui est la retenue sortante du second full adder)
signal Cin_full_4 : std_logic;					-- Retenue entrante pour le quatrième full adder (qui est la retenue sortante du troisième full adder)

begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	instance_full_adder_1 : entity work.full_adder port map (
		A => A(0),				-- Premier bit de A
		B => B(0),				-- Premier bit de B
		Cin => Cin,				-- Retenue entrante pour le premier full adder
		S => S_full(0),			-- Premier bit de la somme intermédiaire
		Cout => Cout_full_1		-- Retenue sortante du premier full adder
	);

	instance_full_adder_2 : entity work.full_adder port map (
		A => A(1),
		B => B(1),
		Cin => Cout_full_1,
		S => S_full(1),
		Cout => Cout_full_2
	);

	instance_full_adder_3 : entity work.full_adder port map (
		A => A(2),
		B => B(2),
		Cin => Cout_full_2,
		S => S_full(2),
		Cout => Cout_full_3
	);

	instance_full_adder_4 : entity work.full_adder port map (
		A => A(3),
		B => B(3),
		Cin => Cout_full_3,
		S => S_full(3),
		Cout => Cout_full_4
	);

	S <= S_full;				-- Assignation de la somme finale à la sortie S
	Cout <= Cout_full_4;		-- Assignation de la retenue finale à la sortie Cout
	
end behavioral;
