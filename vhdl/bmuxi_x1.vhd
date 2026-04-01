--%BEGIN bmuxi_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity bmuxi_x1 is
   port (
      S, A, X, M0, M1 : in STD_LOGIC;
      PP : out STD_LOGIC
   );
end bmuxi_x1;

architecture bmuxi_x1_arch of bmuxi_x1 is
begin

   VitalBehavior : Process (S, A, X, M0, M1)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not ((X and (((not M1) and (not S)) or (M1 and (not A)))) or ((not X) and (((not M0) and (not S)) or (M0 and (not A)))));

      ------------------------------------
      PP <= INT_RES_0;
   end Process VitalBehavior;

end bmuxi_x1_arch;

--%END bmuxi_x1
