.subckt ao311_x1 A1 A2 A3 B1 B2 X VDD VSS
XAO311N30_PA0 ao311_and_n A1 VDD VDD pmos w=2u l=100n
XAO311N30_PB0 ao311_and_n A2 VDD VDD pmos w=2u l=100n
XAO311N30_PC0 ao311_and_n A3 VDD VDD pmos w=2u l=100n
XAO311N30_NC0 ao311_and_n A3 nmid2 VSS nmos w=1u l=100n
XAO311N30_NB0 nmid2 A2 nmid1 VSS nmos w=1u l=100n
XAO311N30_NA0 nmid1 A1 VSS VSS nmos w=1u l=100n
XAO311I30_P0 ao311_and ao311_and_n VDD VDD pmos w=2u l=100n
XAO311I30_N0 ao311_and ao311_and_n VSS VSS nmos w=1u l=100n
XAO311N3B0_PA0 pmid1 ao311_and VDD VDD pmos w=2u l=100n
XAO311N3B0_PB0 pmid2 B1 pmid1 VDD pmos w=2u l=100n
XAO311N3B0_PC0 ao311_or_n B2 pmid2 VDD pmos w=2u l=100n
XAO311N3B0_NA0 ao311_or_n ao311_and VSS VSS nmos w=1u l=100n
XAO311N3B0_NB0 ao311_or_n B1 VSS VSS nmos w=1u l=100n
XAO311N3B0_NC0 ao311_or_n B2 VSS VSS nmos w=1u l=100n
XAO311O0_P0 X ao311_or_n VDD VDD pmos w=2u l=100n
XAO311O0_N0 X ao311_or_n VSS VSS nmos w=1u l=100n
.ends ao311_x1
