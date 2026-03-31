.subckt and4i_x1 A1 A2 A3 A4 X VDD VSS
XA4I_P0 in0_b A1 VDD VDD pmos w=2u l=100n
XA4I_N0 in0_b A1 VSS VSS nmos w=1u l=100n
XA4I0_PA0 nand4i_out in0_b VDD VDD pmos w=2u l=100n
XA4I0_PB0 nand4i_out A2 VDD VDD pmos w=2u l=100n
XA4I0_PC0 nand4i_out A3 VDD VDD pmos w=2u l=100n
XA4I0_PD0 nand4i_out A4 VDD VDD pmos w=2u l=100n
XA4I0_ND0 nand4i_out A4 na4_3 VSS nmos w=1u l=100n
XA4I0_NC0 na4_3 A3 na4_2 VSS nmos w=1u l=100n
XA4I0_NB0 na4_2 A2 na4_1 VSS nmos w=1u l=100n
XA4I0_NA0 na4_1 in0_b VSS VSS nmos w=1u l=100n
XA4II0_P0 X nand4i_out VDD VDD pmos w=2u l=100n
XA4II0_N0 X nand4i_out VSS VSS nmos w=1u l=100n
.ends and4i_x1
