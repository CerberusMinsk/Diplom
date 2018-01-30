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

entity test is
end test;

architecture beh of test is

    procedure mult (signal AA: in matrix;
                    signal BB: in matrix;
                    signal CC: out matrix) is
                    
                    begin
                        Z1: for i in 1 to 2 loop
                            Z2: for j in 1 to 2 loop
                                CC(i, j) <= AA(i, j) + BB(i, j); 
                            end loop Z2;
                        end loop Z1;
    end mult;

    signal AA: matrix;
    signal BB: matrix;
    signal CC: matrix;

begin
    dd:process(AA, BB)
    begin
        mult(AA=>AA,
            BB=>BB,
            CC=>CC);
    end process;


    AA <=((1, 2),
        (3, 4)) after 50 ns;
    BB <=((5, 6),
        (7, 8)) after 50 ns;
end beh;