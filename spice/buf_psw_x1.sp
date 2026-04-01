.subckt buf_psw_x1 VDD VSS VDDR VBP VBN X A
* Power-management helper: ref_lib-style rails listed first.
XI1P n_buf A VDDR VBP pmos w=2u l=100n
XI1N n_buf A VSS VBN nmos w=1u l=100n
XI2P X n_buf VDDR VBP pmos w=2u l=100n
XI2N X n_buf VSS VBN nmos w=1u l=100n
.ends buf_psw_x1
