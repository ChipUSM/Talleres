* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Taller1_Resuelto\nmos_minimo, Cell:  Cell0
* Extract Definition File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Insumos_taller1\parameter extraction template.ext
* Extract Date and Time:  11/21/2022 - 16:54

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
*       1 = B (6.5,6.5)
*       2 = G (0.5,19.5)
*       3 = D (6.5,23.5)
*       4 = S (6.5,15.5)

Cpar1 B 0 48.825495f
Cpar2 D 0 52.08824f
Cpar3 S 0 52.08824f

M4 S G D B NMOS L=2u W=5u AD=27.5p PD=21u AS=27.5p PS=21u 
* M4 DRAIN GATE SOURCE BULK (6 16.5 11 18.5) 

* Total Nodes: 4
* Total Elements: 4
* Extract Elapsed Time: 0 seconds
.END
