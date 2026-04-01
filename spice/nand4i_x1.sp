.subckt nand4i_x1 A B1 B2 B3 X VDD VSS
XN4I_P0 in0_b A VDD VDD pmos w=2u l=100n
XN4I_N0 in0_b A VSS VSS nmos w=1u l=100n
XMPA0 X in0_b VDD VDD pmos w=2u l=100n
XMPB0 X B1 VDD VDD pmos w=2u l=100n
XMPC0 X B2 VDD VDD pmos w=2u l=100n
XMPD0 X B3 VDD VDD pmos w=2u l=100n
XMND0 X B3 na4_3 VSS nmos w=1u l=100n
XMNC0 na4_3 B2 na4_2 VSS nmos w=1u l=100n
XMNB0 na4_2 B1 na4_1 VSS nmos w=1u l=100n
XMNA0 na4_1 in0_b VSS VSS nmos w=1u l=100n
.ends nand4i_x1
