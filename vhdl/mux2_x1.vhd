--%BEGIN mux2_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity mux2_x1 is
   port (
      D0, D1 : in STD_LOGIC;
      S : in STD_LOGIC;
      X : out STD_LOGIC
   );
end mux2_x1;

architecture mux2_x1_arch of mux2_x1 is
begin

   VitalBehavior : Process (D0, D1, S)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := D1 when S = '1' else D0;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end mux2_x1_arch;

--%END mux2_x1
