.subckt ao31_x1 A1 A2 B1 B2 X VDD VSS
XAO31N30_PA0 ao31_and_n A1 VDD VDD pmos w=2u l=100n
XAO31N30_PB0 ao31_and_n A2 VDD VDD pmos w=2u l=100n
XAO31N30_PC0 ao31_and_n B1 VDD VDD pmos w=2u l=100n
XAO31N30_NC0 ao31_and_n B1 nmid2 VSS nmos w=1u l=100n
XAO31N30_NB0 nmid2 A2 nmid1 VSS nmos w=1u l=100n
XAO31N30_NA0 nmid1 A1 VSS VSS nmos w=1u l=100n
XAO31I30_P0 ao31_and ao31_and_n VDD VDD pmos w=2u l=100n
XAO31I30_N0 ao31_and ao31_and_n VSS VSS nmos w=1u l=100n
XAO31N20_PA0 pmid_AO31N20_0 ao31_and VDD VDD pmos w=2u l=100n
XAO31N20_PB0 ao31_or_n B2 pmid_AO31N20_0 VDD pmos w=2u l=100n
XAO31N20_NA0 ao31_or_n ao31_and VSS VSS nmos w=1u l=100n
XAO31N20_NB0 ao31_or_n B2 VSS VSS nmos w=1u l=100n
XAO31O0_P0 X ao31_or_n VDD VDD pmos w=2u l=100n
XAO31O0_N0 X ao31_or_n VSS VSS nmos w=1u l=100n
.ends ao31_x1
