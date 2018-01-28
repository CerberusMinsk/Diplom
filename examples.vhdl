library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mult is
  generic (byte : NATURAL := 4);
  port ( a : in  STD_LOGIC_VECTOR(byte-1 downto 0);
         b : in  STD_LOGIC_VECTOR(byte-1 downto 0);
         y : out STD_LOGIC_VECTOR(2*byte-1 downto 0));
end mult;
architecture beh of mult is
begin
  y <= STD_LOGIC_VECTOR(UNSIGNED(a) * UNSIGNED(b));
end beh;
-- pdf
VHDL
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity arithmetic is
port (A, B : in std_logic_vector (3 downto 0);
Q1 : out std_logic_vector (4 downto 0);
Q2, Q3 : out std_logic_vector (3 downto 0);
Q4 : out std_logic_vector (7 downto 0));
end arithmetic;
architecture behav of arithmetic is
begin
process (A, B)
begin
Q1 <= ('0' & A) + ('0' & B); --addition
Q2 <= A — B; --subtraction
Q3 <= A / B; --division
Q4 <= A * B; --multiplication
end process;
end behav;