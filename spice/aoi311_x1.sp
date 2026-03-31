.subckt aoi311_x1 A1 A2 B1 B2 C X VDD VSS
XAOI311N30_PA0 aoi311_and_n A1 VDD VDD pmos w=2u l=100n
XAOI311N30_PB0 aoi311_and_n A2 VDD VDD pmos w=2u l=100n
XAOI311N30_PC0 aoi311_and_n B1 VDD VDD pmos w=2u l=100n
XAOI311N30_NC0 aoi311_and_n B1 nmid2 VSS nmos w=1u l=100n
XAOI311N30_NB0 nmid2 A2 nmid1 VSS nmos w=1u l=100n
XAOI311N30_NA0 nmid1 A1 VSS VSS nmos w=1u l=100n
XAOI311I30_P0 aoi311_and aoi311_and_n VDD VDD pmos w=2u l=100n
XAOI311I30_N0 aoi311_and aoi311_and_n VSS VSS nmos w=1u l=100n
XAOI311N3B0_PA0 pmid1 aoi311_and VDD VDD pmos w=2u l=100n
XAOI311N3B0_PB0 pmid2 B2 pmid1 VDD pmos w=2u l=100n
XAOI311N3B0_PC0 X C pmid2 VDD pmos w=2u l=100n
XAOI311N3B0_NA0 X aoi311_and VSS VSS nmos w=1u l=100n
XAOI311N3B0_NB0 X B2 VSS VSS nmos w=1u l=100n
XAOI311N3B0_NC0 X C VSS VSS nmos w=1u l=100n
.ends aoi311_x1
