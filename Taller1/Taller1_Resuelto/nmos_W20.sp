* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Taller1_Resuelto\nmos_W20, Cell:  Cell0
* Extract Definition File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Insumos_taller1\parameter extraction template.ext
* Extract Date and Time:  11/21/2022 - 16:55

.include 2um_CMOS.modlib

* WARNING:  Layers with Unassigned AREA Capacitance.
*   <Substrate>
* WARNING:  Layers with Unassigned FRINGE Capacitance.
*   <pdiff>
*   <n well wire>
*   <ndiff>
*   <Substrate>
* WARNING:  Layers with Zero Resistance.
*   <Substrate>

* NODE NAME ALIASES
*       1 = S (2.5,15.5)
*       2 = G (6.5,36.5)
*       3 = D (10.5,30.5)

Cpar1 S 0 333.96838f
Cpar2 G 0 6.824306f
Cpar3 D 0 208.80869f

M4 D G S S NMOS L=2u W=20u AD=110p PD=51u AS=110p PS=51u 
* M4 DRAIN GATE SOURCE BULK (7.5 11 9.5 31) 

* Total Nodes: 3
* Total Elements: 4
* Extract Elapsed Time: 0 seconds
.END
