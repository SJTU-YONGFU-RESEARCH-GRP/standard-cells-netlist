.subckt oa21i_x1 A1 A2 B X VDD VSS
XOA21I_IN2_P0 in2_b B VDD VDD pmos w=2u l=100n
XOA21I_IN2_N0 in2_b B VSS VSS nmos w=1u l=100n
XOAI0_NA10 oai21_nor A1 VSS VSS nmos w=1u l=100n
XOAI0_NA20 oai21_nor A2 VSS VSS nmos w=1u l=100n
XOAI0_NB0 oa21i_mid in2_b oai21_nor VSS nmos w=1u l=100n
XOAI0_PA10 oai21_pm A1 VDD VDD pmos w=2u l=100n
XOAI0_PA20 oa21i_mid A2 oai21_pm VDD pmos w=2u l=100n
XOAI0_PB0 oa21i_mid in2_b VDD VDD pmos w=2u l=100n
XOA21IOUT0_P0 X oa21i_mid VDD VDD pmos w=2u l=100n
XOA21IOUT0_N0 X oa21i_mid VSS VSS nmos w=1u l=100n
.ends oa21i_x1
