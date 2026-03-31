.subckt or3i_x1 A1 A2 A3 X VDD VSS
XO3I_P0 in0_b A1 VDD VDD pmos w=2u l=100n
XO3I_N0 in0_b A1 VSS VSS nmos w=1u l=100n
XO3I0_PA0 pmid1 in0_b VDD VDD pmos w=2u l=100n
XO3I0_PB0 pmid2 A2 pmid1 VDD pmos w=2u l=100n
XO3I0_PC0 nor3i_out A3 pmid2 VDD pmos w=2u l=100n
XO3I0_NA0 nor3i_out in0_b VSS VSS nmos w=1u l=100n
XO3I0_NB0 nor3i_out A2 VSS VSS nmos w=1u l=100n
XO3I0_NC0 nor3i_out A3 VSS VSS nmos w=1u l=100n
XO3II0_P0 X nor3i_out VDD VDD pmos w=2u l=100n
XO3II0_N0 X nor3i_out VSS VSS nmos w=1u l=100n
.ends or3i_x1
