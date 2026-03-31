.subckt mux2i_x1 D0 D1 S X VDD VSS
XMUX2I_S_P0 sel_b S VDD VDD pmos w=2u l=100n
XMUX2I_S_N0 sel_b S VSS VSS nmos w=1u l=100n
XM2I0_MP0 mux2i_mid S D0 VDD pmos w=2u l=100n
XM2I0_MN0 mux2i_mid sel_b D0 VSS nmos w=1u l=100n
XM2I0_MP1 mux2i_mid sel_b D1 VDD pmos w=2u l=100n
XM2I0_MN1 mux2i_mid S D1 VSS nmos w=1u l=100n
XM2IOUT0_P0 X mux2i_mid VDD VDD pmos w=2u l=100n
XM2IOUT0_N0 X mux2i_mid VSS VSS nmos w=1u l=100n
.ends mux2i_x1
