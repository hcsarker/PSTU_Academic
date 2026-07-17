* Schematics Aliases *

.ALIASES
R_R3            R3(1=0 2=$N_0001 )
R_R4            R4(1=$N_0001 2=$N_0002 )
E_U1            U1(OUT=$N_0002 +=$N_0003 -=$N_0001 )
R_R1            R1(1=$N_0004 2=$N_0003 )
V_V1            V1(+=0 -=$N_0004 )
R_R2            R2(1=$N_0005 2=$N_0003 )
V_V2            V2(+=0 -=$N_0005 )
.ENDALIASES

