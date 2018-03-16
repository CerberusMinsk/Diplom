package matrix is
    Type matrix is array (natural range 1 to 2,
                        natural range 1 to 2) of integer range 0 to 1000;
end matrix;

package body matrix is
end matrix;

library work;
use work.matrix.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity mult is
    port  ( A: in integer;
            B: in integer;
            CI: in integer;
            C: out integer);
        end mult;
        architecture str of mult is
          begin
            C := A * B;
            C := C + CI;
          end str;

-- schema1
entity schema1 is 
  port (A_1, A_2, B_1, B_2: in integer;
        C1, C2, C3, C4: out integer);
      end schema1;
      architecture str of schema1 is
        
     
component mult 
        port  ( A: in integer;
                B: in integer;
                CI: in integer;
                C: out integer);
    end component;
        

signal z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16: bit;
begin 
	C_11: VCC
	port map (x0=>x0, y=>y1);
	
	C_12: EX2
	port map(A=>x3, B=>x2, y=>z1); 
	
	C_21: N
	port map (A=>z1, y=>z2);
	
	C_22: N 
	port map (A=>z2, y=>z10);
	  

end str

