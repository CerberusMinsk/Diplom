package matrix is
    Type matrix is array (natural range 1 to 2,
                        natural range 1 to 2) of integer range 0 to 1000;
end matrix;

package body matrix is
end matrix;

package liner is
    Type liner is array (natural range 1 to 2) of integer range 0 to 1000;
end liner;

package body liner is
    end liner;

library work;
use work.matrix.all;
use work.liner.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity test is
end test;

architecture beh of test is

    procedure mult (signal AA: in liner;
                    signal BB: in liner;
                    signal CC: inout matrix) is

                    variable temp: integer;
                    
                    begin
                        Z1: for s in 1 to 2 loop
                            Z2: for p in 1 to 2 loop
                                Z3: for q in 1 to 2 loop
                                    temp:=CC(p, q);
                                    temp:= temp + (AA(p, s) * BB(s, q));
                                    CC(p, q)<=temp;
                                end loop Z3; 
                            end loop Z2;
                        end loop Z1;
    end mult;

    signal AA: liner;
    signal BB: liner;
    signal CC: matrix;

begin
    dd:process(AA, BB)
    begin
        mult(AA=>AA,
            BB=>BB,
            CC=>CC);
    end process;


    AA <=(1, 2);  
    BB <=(5, 7);
        
    AA <= (3, 4) after 50 ns;
    BB <= (6, 8) after 50 ns;

end beh;
