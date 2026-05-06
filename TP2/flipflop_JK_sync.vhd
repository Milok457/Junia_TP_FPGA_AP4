library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- BASCULE FLIP-FLOP JK
-- 
-- Symbole :					Table des caractéristiques :
--
--	+----------------+			+-----+-----++------+---------+
--  |				 |			|  J  |  K  ||  Q+  |   Qn+   |
--  -- J		  Q --			+-----+-----++------+---------+
--	|				 |			|  0  |  0  ||   Q  |   Qn    |
--	-- K		 Q* --			|  0  |  1  ||   0  |   1     |
--	|				 |			|  1  |  0  ||   1  |   0     |
--  --> CLK			 |			|  1  |  1  ||  Qn  |   Q     |
--	|				 |			+-----+-----++------+---------+
--	+----------------+
--

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity flipflop_JK_sync is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
		J : in std_logic;
		K : in std_logic;
		CLK : in std_logic;
		Q : out std_logic;
		Qn : out std_logic
	);
end flipflop_JK_sync;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of flipflop_JK_sync is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
signal Q_int : std_logic := '0'; -- Signal interne pour stocker l'état de Q
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	process (CLK)
	begin
		if (CLK'event and CLK = '1') then
			if    (J = '0' and K = '0') then Q_int <= Q_int;       -- Maintien de l'état
			elsif (J = '0' and K = '1') then Q_int <= '0';          -- Reset
			elsif (J = '1' and K = '0') then Q_int <= '1';          -- Set
			elsif (J = '1' and K = '1') then Q_int <= not Q_int;    -- Toggle
			end if;
		end if;
	end process;

	Q <= Q_int; 		-- Assignation de la sortie Q à l'état interne
	Qn <= not Q_int; 	-- Assignation de la sortie Qn à l'inverse de l'état interne
	
end behavioral;
