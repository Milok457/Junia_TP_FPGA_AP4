library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity toplevel is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
		SW : in std_logic_vector(9 downto 0);
		KEY : in std_logic_vector(3 downto 0);
		LEDG : out std_logic_vector(7 downto 0);
	);
end entity toplevel;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of toplevel is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	DUT : entity work.shift_register_universal8 port map (
		SSR  => SW(9),
		SSL  => SW(8),
		Pi   => (others => '0'),
		SEL  => SW(2 downto 0),
		CLK  => not KEY(0),
		RSTn => KEY(3),
		SETn => KEY(2),
		SOR  => open,
		SOL  => open,
		Qo   => LEDG(7 downto 0)
	);
end behavioral;
