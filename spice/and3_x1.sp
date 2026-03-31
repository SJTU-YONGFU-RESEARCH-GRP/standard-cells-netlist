.subckt and3_x1 A1 A2 A3 X VDD VSS
XA30_PA0 nand3_out A1 VDD VDD pmos w=2u l=100n
XA30_PB0 nand3_out A2 VDD VDD pmos w=2u l=100n
XA30_PC0 nand3_out A3 VDD VDD pmos w=2u l=100n
XA30_NC0 nand3_out A3 nmid2 VSS nmos w=1u l=100n
XA30_NB0 nmid2 A2 nmid1 VSS nmos w=1u l=100n
XA30_NA0 nmid1 A1 VSS VSS nmos w=1u l=100n
XA3I0_P0 X nand3_out VDD VDD pmos w=2u l=100n
XA3I0_N0 X nand3_out VSS VSS nmos w=1u l=100n
.ends and3_x1
