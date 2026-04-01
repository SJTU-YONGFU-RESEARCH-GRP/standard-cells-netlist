.subckt isos1cl0_x1 VDD VSS VDDR VBP VBN X A EN
* Power-management helper: ref_lib-style rails listed first.
XN2P1 n_and A VDDR VBP pmos w=2u l=100n
XN2P2 n_and EN VDDR VBP pmos w=2u l=100n
XN2N1 n_and A n_nand2_mid VBN nmos w=1u l=100n
XN2N2 n_nand2_mid EN VSS VBN nmos w=1u l=100n
XI3P X n_and VDDR VBP pmos w=2u l=100n
XI3N X n_and VSS VBN nmos w=1u l=100n
.ends isos1cl0_x1
