.subckt nor3i_x1 A B1 B2 X VDD VSS
XN3I_P0 in0_b A VDD VDD pmos w=2u l=100n
XN3I_N0 in0_b A VSS VSS nmos w=1u l=100n
XMPA0 pmid1 in0_b VDD VDD pmos w=2u l=100n
XMPB0 pmid2 B1 pmid1 VDD pmos w=2u l=100n
XMPC0 X B2 pmid2 VDD pmos w=2u l=100n
XMNA0 X in0_b VSS VSS nmos w=1u l=100n
XMNB0 X B1 VSS VSS nmos w=1u l=100n
XMNC0 X B2 VSS VSS nmos w=1u l=100n
.ends nor3i_x1
