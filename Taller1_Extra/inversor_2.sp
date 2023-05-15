* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Taller1_Resuelto\inversor, Cell:  Cell0
* Extract Definition File:  C:\Users\Alfonso\Documents\USM\ChipUSM\Talleres\Taller_1-Primer_Layout\Insumos_taller1\parameter extraction template.ext
* Extract Date and Time:  11/21/2022 - 15:45

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
*       1 = VDD (1,44.5)
*       2 = GND (1,6.5)
*       3 = OUT (15,22.5)
*       4 = IN (9,23)

Cpar1 VDD 0 271.70426f
Cpar2 GND 0 178.16011f
Cpar3 OUT 0 157.94587f
Cpar4 IN 0 6.999414f

M5 OUT IN GND GND NMOS L=2u W=5u AD=27.5p PD=21u AS=27.5p PS=21u 
* M5 DRAIN GATE SOURCE BULK (11.5 11 13.5 16) 
M6 OUT IN VDD VDD PMOS L=2u W=10u AD=55p PD=31u AS=55p PS=31u 
* M6 DRAIN GATE SOURCE BULK (11.5 26 13.5 36) 

* Total Nodes: 4
* Total Elements: 6
* Extract Elapsed Time: 0 seconds
.END
