.subckt oa22_x1 A1 A2 B1 B2 X VDD VSS
XOA0_NA10 oa22_mid A1 oai22_nmid VSS nmos w=1u l=100n
XOA0_NA20 oa22_mid A2 oai22_nmid VSS nmos w=1u l=100n
XOA0_NB10 oai22_nmid B1 VSS VSS nmos w=1u l=100n
XOA0_NB20 oai22_nmid B2 VSS VSS nmos w=1u l=100n
XOA0_PA10 oai22_p_a A1 VDD VDD pmos w=2u l=100n
XOA0_PA20 oa22_mid A2 oai22_p_a VDD pmos w=2u l=100n
XOA0_PB10 oai22_p_b B1 VDD VDD pmos w=2u l=100n
XOA0_PB20 oa22_mid B2 oai22_p_b VDD pmos w=2u l=100n
XOA22OUT0_P0 X oa22_mid VDD VDD pmos w=2u l=100n
XOA22OUT0_N0 X oa22_mid VSS VSS nmos w=1u l=100n
.ends oa22_x1
