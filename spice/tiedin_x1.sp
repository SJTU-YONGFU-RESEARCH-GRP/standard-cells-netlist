.subckt tiedin_x1 X VDD VSS
* Physical cell: abstract subckt (rails per PDK CDL; add PDK devices if needed).
XTIEDIN_P X X VDD VDD pmos w=2u l=100n
XTIEDIN_N X X VSS VSS nmos w=1u l=100n
.ends tiedin_x1
