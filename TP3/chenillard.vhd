library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity chenillard is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
		CLK : in std_logic;
		RST : in std_logic;
		CHEN : out std_logic_vector(9 downto 0)
	);
end chenillard;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of chenillard is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;

signal CHEN_int : std_logic_vector(9 downto 0) := "0000001111";

begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);

	process(CLK, RST)
	begin
		if (RST = '0') then
			CHEN_int <= "0000001111";
		elsif (CLK'event and CLK = '1') then
			CHEN_int <= CHEN_int(8 downto 0) & CHEN_int(9);
		end if;
	end process;

	CHEN <= CHEN_int;
end behavioral;
