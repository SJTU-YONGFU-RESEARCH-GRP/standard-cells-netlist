.subckt nr2_psw_x1 VDD VSS VDDR VBP VBN X A1 A2
* Power-management helper: ref_lib-style rails listed first.
XR2P1 p_nor2_mid A1 VDDR VBP pmos w=2u l=100n
XR2P2 X A2 p_nor2_mid VBP pmos w=2u l=100n
XR2N1 X A1 VSS VBN nmos w=1u l=100n
XR2N2 X A2 VSS VBN nmos w=1u l=100n
.ends nr2_psw_x1
