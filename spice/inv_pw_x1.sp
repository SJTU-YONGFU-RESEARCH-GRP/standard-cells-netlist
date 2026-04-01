.subckt inv_pw_x1 VDD VSS VDDR VBP VBN X A
* Power-management helper: ref_lib-style rails listed first.
XI1P X A VDDR VBP pmos w=2u l=100n
XI1N X A VSS VBN nmos w=1u l=100n
.ends inv_pw_x1
