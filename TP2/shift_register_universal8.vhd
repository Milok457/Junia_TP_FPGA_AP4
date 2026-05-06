library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--
-- Modes pour SEL :
-- X00 : Hold
-- X11 : Parallel Load
-- 001 : Shift Right
-- 010 : Shift Left
-- 101 : Rotate Right
-- 110 : Rotate Left
--

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity shift_register_universal8 is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
		SSR : in std_logic;
		SSL : in std_logic;
		Pi : in std_logic_vector(7 downto 0);
		SEL : in std_logic_vector(2 downto 0);	
		CLK : in std_logic;
		SETn : in std_logic;    -- Signal de Preset asynchrone (actif à l'état bas)
		RSTn : in std_logic;    -- Signal de Reset asynchrone (actif à l'état bas)

		SOR : out std_logic;	-- Shift Output Right
		SOL : out std_logic;	-- Shift Output Left
		Qo : out std_logic_vector(7 downto 0)	-- Parallel Outputs
	);
end entity shift_register_universal8;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of shift_register_universal8 is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
signal Q_int : std_logic_vector(7 downto 0) := (others => '0');
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	process(CLK, SETn, RSTn)
    begin
        if (SETn = '0') then
            Q_int <= (others => '1');
        elsif (RSTn = '0') then
            Q_int <= (others => '0');
        elsif (CLK'event and CLK = '1') then
            case SEL is
                -- X00 : Hold (mémorisation) — SEL(1 downto 0) = "00"
                when "000" | "100" =>
                    Q_int <= Q_int;
				
                -- X11 : Chargement parallèle — SEL(1 downto 0) = "11"
                when "011" | "111" =>
                    Q_int <= Pi;
				
                -- 001 : Décalage à droite
                -- SSR entre par le bit de poids fort (Q7), Q0 sort sur SOR
                when "001" =>
                    Q_int <= SSR & Q_int(7 downto 1);
 
                -- 010 : Décalage à gauche
                -- SSL entre par le bit de poids faible (Q0), Q7 sort sur SOL
                when "010" =>
                    Q_int <= Q_int(6 downto 0) & SSL;
 
                -- 101 : Rotation à droite
                -- Q0 est réinjecté en Q7 (pas de perte de bit)
                when "101" =>
                    Q_int <= Q_int(0) & Q_int(7 downto 1);
 
                -- 110 : Rotation à gauche
                -- Q7 est réinjecté en Q0 (pas de perte de bit)
                when "110" =>
                    Q_int <= Q_int(6 downto 0) & Q_int(7);
 
                -- Cas non définis, on mémorise l'état
                when others =>
                    Q_int <= Q_int;
 
            end case;
        end if;
    end process;
 
    -- Assignation des sorties
    Qo  <= Q_int;
    SOR <= Q_int(0);  -- Bit de poids faible : sortie série droite
    SOL <= Q_int(7);  -- Bit de poids fort  : sortie série gauche
end behavioral;
