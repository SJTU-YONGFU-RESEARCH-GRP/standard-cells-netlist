.subckt ao41_x1 A1 A2 A3 A4 B X VDD VSS
XAO41N40_PA0 ao41_and_n A1 VDD VDD pmos w=2u l=100n
XAO41N40_PB0 ao41_and_n A2 VDD VDD pmos w=2u l=100n
XAO41N40_PC0 ao41_and_n A3 VDD VDD pmos w=2u l=100n
XAO41N40_PD0 ao41_and_n A4 VDD VDD pmos w=2u l=100n
XAO41N40_ND0 ao41_and_n A4 na4_3 VSS nmos w=1u l=100n
XAO41N40_NC0 na4_3 A3 na4_2 VSS nmos w=1u l=100n
XAO41N40_NB0 na4_2 A2 na4_1 VSS nmos w=1u l=100n
XAO41N40_NA0 na4_1 A1 VSS VSS nmos w=1u l=100n
XAO41I40_P0 ao41_and ao41_and_n VDD VDD pmos w=2u l=100n
XAO41I40_N0 ao41_and ao41_and_n VSS VSS nmos w=1u l=100n
XAO41N20_PA0 pmid_AO41N20_0 ao41_and VDD VDD pmos w=2u l=100n
XAO41N20_PB0 ao41_or_n B pmid_AO41N20_0 VDD pmos w=2u l=100n
XAO41N20_NA0 ao41_or_n ao41_and VSS VSS nmos w=1u l=100n
XAO41N20_NB0 ao41_or_n B VSS VSS nmos w=1u l=100n
XAO41O0_P0 X ao41_or_n VDD VDD pmos w=2u l=100n
XAO41O0_N0 X ao41_or_n VSS VSS nmos w=1u l=100n
.ends ao41_x1
