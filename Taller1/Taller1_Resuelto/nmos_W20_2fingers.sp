* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Taller1_Resuelto\nmos_W20_2fingers, Cell:  Cell0
* Extract Definition File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Insumos_taller1\parameter extraction template.ext
* Extract Date and Time:  11/21/2022 - 16:55

.include 2um_CMOS.modlib

* WARNING:  Layers with Unassigned AREA Capacitance.
*   <Substrate>
* WARNING:  Layers with Unassigned FRINGE Capacitance.
*   <ndiff>
*   <Substrate>
*   <pdiff>
*   <n well wire>
* WARNING:  Layers with Zero Resistance.
*   <Substrate>

* NODE NAME ALIASES
*       1 = S (2.5,15.5)
*       2 = D (10.5,20.5)
*       3 = G (10.5,26.5)

Cpar1 S 0 410.68277f
Cpar2 D 0 114.3739f
Cpar3 G 0 8.2251705f

M4 S G D S NMOS L=2u W=10u AD=110p PD=62u AS=60p PS=32u 
* M4 DRAIN GATE SOURCE BULK (15.5 11 17.5 21) 
M5 D G S S NMOS L=2u W=10u AD=60p PD=32u AS=110p PS=62u 
* M5 DRAIN GATE SOURCE BULK (7.5 11 9.5 21) 

* Total Nodes: 3
* Total Elements: 5
* Extract Elapsed Time: 0 seconds
.END
