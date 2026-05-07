library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity clock_divider is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
		CLKin : in std_logic;
		RST : in std_logic;
		N : in std_logic_vector(4 downto 0);

		CLKout : out std_logic
	);
end clock_divider;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of clock_divider is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;

signal counter : std_logic_vector(23 downto 0) := (others => '0');

begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	process(CLKin, RST)
	begin
		if (RST = '0') then
			counter <= (others => '0');
		elsif (CLKin'event and CLKin = '1') then
			counter <= counter + 1;
		end if;
	end process;

	CLKout <= counter(conv_integer(N));

end behavioral;
