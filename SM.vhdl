----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:13:09 02/09/2018 
-- Design Name: 
-- Module Name:    SM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

package matrix is
    Type matrix is array (natural range <>,
                        natural range <>) of integer;
end matrix;

package body matrix is
    end matrix;

-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library work;
use work.matrix.all;

entity SM is
    generic (byte: natural := 4);
    Port ( AA : in  Signed (byte-1 downto 1);
           BB : in  Signed (byte-1 downto 1);
           CC : out  in  Signed (byte-1 downto 1);
end SM;

architecture Behavioral of SM is

    --variable AA, BB, CC: matrix(1 to 2, 1 to 2); --?

    procedure mult (signal AA: in matrix(1 to 2, 1 to 2);
                    signal BB: in matrix(1 to 2, 1 to 2);
                    signal CC: out matrix(1 to 2, 1 to 2)) is

                    variable temp: integer;
    
                    begin
                        Z1: for i in 1 to 2 loop
                            Z2: for j in 1 to 2 loop
                                temp:=0;
                                Z3: for k in 1 to 2 loop
                                    temp:= temp + (AA(i, k) * BB(k, j));
                                end loop Z3; 
                                CC(i, j) <= temp;
                            end loop Z2;
                        end loop Z1;
    end mult;

    signal AA: matrix(1 to 2, 1 to 2);
    signal BB: matrix(1 to 2, 1 to 2);
    signal CC: matrix(1 to 2, 1 to 2);

begin

    dd:process(AA, BB)
    begin
        mult(AA=>AA,
            BB=>BB,
            CC=>CC);
    end process;

end Behavioral;

