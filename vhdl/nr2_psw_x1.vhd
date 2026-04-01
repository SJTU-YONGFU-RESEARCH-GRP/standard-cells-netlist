--%BEGIN nr2_psw_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity nr2_psw_x1 is
   port (
      VDD, VSS, VDDR, VBP, VBN : inout STD_LOGIC;
      A1, A2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end nr2_psw_x1;

architecture nr2_psw_x1_arch of nr2_psw_x1 is
begin

   VitalBehavior : Process (VDD, VSS, VDDR, VBP, VBN, A1, A2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A1 nor A2;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end nr2_psw_x1_arch;

--%END nr2_psw_x1
