.subckt and2_x1 A1 A2 X VDD VSS
XA0_PA0 nand_out A1 VDD VDD pmos w=2u l=100n
XA0_PB0 nand_out A2 VDD VDD pmos w=2u l=100n
XA0_NB0 nand_out A2 nmid_A0_0 VSS nmos w=1u l=100n
XA0_NA0 nmid_A0_0 A1 VSS VSS nmos w=1u l=100n
XAI0_P0 X nand_out VDD VDD pmos w=2u l=100n
XAI0_N0 X nand_out VSS VSS nmos w=1u l=100n
.ends and2_x1
