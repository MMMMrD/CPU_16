LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 

ENTITY DECODER IS
PORT (
    X1,X0: IN STD_LOGIC;
    V0,V1,V2,V3: OUT STD_LOGIC
);
END DECODER;

ARCHITECTURE A OF DECODER IS
BEGIN
    PROCESS (X1,X0)
    BEGIN
        IF(X1='0' AND X0='0') THEN
            V3 <= '0';
            V2 <= '0';
            V1 <= '0';
            V0 <= '1';
        ELSIF(X1='0' AND X0='1') THEN
            V3 <= '0';
            V2 <= '0';
            V1 <= '1';
            V0 <= '0';
        ELSIF(X1='1' AND X0='0') THEN
            V3 <= '0';
            V2 <= '1';
            V1 <= '0';
            V0 <= '0';
        ELSIF(X1='1' AND X0='1') THEN
            V3 <= '1';
            V2 <= '0';
            V1 <= '0';
            V0 <= '0';
        ELSE
            V3 <= '0';
            V2 <= '0';
            V1 <= '0';
            V0 <= '0';
        END IF;
    END PROCESS;
END A;
