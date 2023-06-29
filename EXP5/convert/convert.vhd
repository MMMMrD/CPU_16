LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY CONVERT IS 
PORT( 
    INCODE:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    OP:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ADDR:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    I11,I10,I9,I8:OUT STD_LOGIC
); 
END CONVERT;
ARCHITECTURE A OF CONVERT IS 
BEGIN
	OP<=INCODE(15 DOWNTO 12);
	I11<=INCODE(11);
	I10<=INCODE(10);
	I9<=INCODE(9);
	I8<=INCODE(8);
	ADDR<=INCODE(7 DOWNTO 0);
END A; 