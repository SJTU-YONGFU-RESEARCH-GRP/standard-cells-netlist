.subckt oai32_x1 A1 A2 A3 B1 B2 X VDD VSS
XOAI32A0_PA0 pmid1 A1 VDD VDD pmos w=2u l=100n
XOAI32A0_PB0 pmid2 A2 pmid1 VDD pmos w=2u l=100n
XOAI32A0_PC0 oai32_or3_n A3 pmid2 VDD pmos w=2u l=100n
XOAI32A0_NA0 oai32_or3_n A1 VSS VSS nmos w=1u l=100n
XOAI32A0_NB0 oai32_or3_n A2 VSS VSS nmos w=1u l=100n
XOAI32A0_NC0 oai32_or3_n A3 VSS VSS nmos w=1u l=100n
XOAI32AI0_P0 oai32_or3 oai32_or3_n VDD VDD pmos w=2u l=100n
XOAI32AI0_N0 oai32_or3 oai32_or3_n VSS VSS nmos w=1u l=100n
XOAI32B0_PA0 pmid_OAI32B0_0 B1 VDD VDD pmos w=2u l=100n
XOAI32B0_PB0 oai32_or2_n B2 pmid_OAI32B0_0 VDD pmos w=2u l=100n
XOAI32B0_NA0 oai32_or2_n B1 VSS VSS nmos w=1u l=100n
XOAI32B0_NB0 oai32_or2_n B2 VSS VSS nmos w=1u l=100n
XOAI32BI0_P0 oai32_or2 oai32_or2_n VDD VDD pmos w=2u l=100n
XOAI32BI0_N0 oai32_or2 oai32_or2_n VSS VSS nmos w=1u l=100n
XOAI32N20_PA0 X oai32_or3 VDD VDD pmos w=2u l=100n
XOAI32N20_PB0 X oai32_or2 VDD VDD pmos w=2u l=100n
XOAI32N20_NB0 X oai32_or2 nmid_OAI32N20_0 VSS nmos w=1u l=100n
XOAI32N20_NA0 nmid_OAI32N20_0 oai32_or3 VSS VSS nmos w=1u l=100n
.ends oai32_x1
