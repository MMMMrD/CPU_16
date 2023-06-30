LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY F3 IS 
PORT(
	D:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	I7,I6,I5,I4:OUT STD_LOGIC
);

END F3;

ARCHITECTURE A OF F3 IS 
BEGIN 
	I7<=D(3);
	I6<=D(2);
	I5<=D(1);
	I4<=D(0);
END A;