.subckt nd2_psw_x1 VDD VSS VDDR VBP VBN X A1 A2
* Power-management helper: ref_lib-style rails listed first.
XN2P1 X A1 VDDR VBP pmos w=2u l=100n
XN2P2 X A2 VDDR VBP pmos w=2u l=100n
XN2N1 X A1 n_nand2_mid VBN nmos w=1u l=100n
XN2N2 n_nand2_mid A2 VSS VBN nmos w=1u l=100n
.ends nd2_psw_x1
