LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DIV_F IS
PORT(CLK: IN STD_LOGIC;

FOUT,F1,F2: OUT STD_LOGIC);

END ENTITY;
ARCHITECTURE ALGO OF DIV_F IS

SIGNAL AUX: INTEGER RANGE 0 TO 50000000;
SIGNAL AUX2: STD_LOGIC;

BEGIN

PROCESS(CLK)
BEGIN
IF RISING_EDGE(CLK) THEN
IF AUX =50000000 THEN
AUX<=0;
AUX2<= NOT AUX2;

ELSE

AUX<= AUX+1;

END IF;

END IF;
END PROCESS;
FOUT<=AUX2;
F1<='1';
F2<='1';
END ALGO;
