.subckt oa311_x1 A1 A2 A3 B1 B2 X VDD VSS
XOA311N30_PA0 pmid1 A1 VDD VDD pmos w=2u l=100n
XOA311N30_PB0 pmid2 A2 pmid1 VDD pmos w=2u l=100n
XOA311N30_PC0 oa311_or_n A3 pmid2 VDD pmos w=2u l=100n
XOA311N30_NA0 oa311_or_n A1 VSS VSS nmos w=1u l=100n
XOA311N30_NB0 oa311_or_n A2 VSS VSS nmos w=1u l=100n
XOA311N30_NC0 oa311_or_n A3 VSS VSS nmos w=1u l=100n
XOA311I30_P0 oa311_or oa311_or_n VDD VDD pmos w=2u l=100n
XOA311I30_N0 oa311_or oa311_or_n VSS VSS nmos w=1u l=100n
XOA311N3B0_PA0 oa311_and_n oa311_or VDD VDD pmos w=2u l=100n
XOA311N3B0_PB0 oa311_and_n B1 VDD VDD pmos w=2u l=100n
XOA311N3B0_PC0 oa311_and_n B2 VDD VDD pmos w=2u l=100n
XOA311N3B0_NC0 oa311_and_n B2 nmid2 VSS nmos w=1u l=100n
XOA311N3B0_NB0 nmid2 B1 nmid1 VSS nmos w=1u l=100n
XOA311N3B0_NA0 nmid1 oa311_or VSS VSS nmos w=1u l=100n
XOA311O0_P0 X oa311_and_n VDD VDD pmos w=2u l=100n
XOA311O0_N0 X oa311_and_n VSS VSS nmos w=1u l=100n
.ends oa311_x1
