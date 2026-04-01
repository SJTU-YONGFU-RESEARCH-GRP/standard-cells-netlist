--%BEGIN ls_l2h_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity ls_l2h_x1 is
   port (
      vddl : inout STD_LOGIC;
      vddh : inout STD_LOGIC;
      vss : inout STD_LOGIC;
      in0 : in STD_LOGIC;
      out : out STD_LOGIC
   );
end ls_l2h_x1;

architecture ls_l2h_x1_arch of ls_l2h_x1 is
begin

   VitalBehavior : Process (vddl, vddh, vss, in0)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := VitalBuf (in0);

      ------------------------------------
      out <= INT_RES_0;
   end Process VitalBehavior;

end ls_l2h_x1_arch;

--%END ls_l2h_x1
