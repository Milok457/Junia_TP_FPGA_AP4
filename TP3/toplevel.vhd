library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity toplevel is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
		CLOCK_50_B6A : in std_logic;
		KEY : in std_logic_vector(3 downto 0);
		LEDR : out std_logic_vector(9 downto 0)
	);
end toplevel;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of toplevel is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;

signal CLK_slow : std_logic;

begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	instance_clock_divider : entity work.clock_divider
		port map (
			CLKin => CLOCK_50_B6A,
			RST => KEY(0),
			N => "10110",
			CLKout => CLK_slow
		);

	instance_chenillard : entity work.chenillard
		port map (
			CLK => CLK_slow,
			RST => KEY(0),
			CHEN => LEDR
		);
end behavioral;
