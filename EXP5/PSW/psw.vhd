LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PSW is
    port (
        C,S,Z,LDPSW: in std_logic;
        CF,SF,ZF:out std_logic
    );
end entity PSW;
architecture behavioral of PSW is
    --signal psw_reg : std_logic_vector(3 downto 0);
	signal CT,ST,ZT: std_logic ;
begin
    process (C,S,Z,LDPSW)
    begin
        if (LDPSW = '1') then
            -- Load PSW from inputs
			CT<=C;
			ST<=S;
			ZT<=Z;
        else
            -- Update cf and zf based on inputs
            CF<=CT;
            SF<=ST;
            ZF<=ZT;
        end if;
    end process;
end architecture behavioral;
