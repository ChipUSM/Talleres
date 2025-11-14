v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 3260 -520 3260 -500 {
lab=GND}
N 3180 -570 3220 -570 {
lab=vg}
N 3260 -640 3260 -600 {
lab=vout}
N 3260 -640 3330 -640 {
lab=vout}
N 3260 -570 3300 -570 {
lab=GND}
N 3300 -570 3300 -520 {
lab=GND}
N 3260 -520 3300 -520 {
lab=GND}
N 3260 -540 3260 -520 {
lab=GND}
N 3260 -670 3260 -640 {
lab=vout}
N 3260 -760 3260 -730 {
lab=VDD}
C {devices/gnd.sym} 3260 -500 0 0 {name=l3 lab=GND}
C {devices/iopin.sym} 3180 -570 0 1 {name=p5 lab=vg}
C {devices/isource.sym} 3260 -700 0 0 {name=I1 value=\{Ids\}}
C {devices/vdd.sym} 3260 -760 0 0 {name=l4 lab=VDD}
C {devices/iopin.sym} 3330 -640 0 0 {name=p6 lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} 3240 -570 2 1 {name=M1
l=\{L\}
w=\{W\}
ng=1
m=\{mult\}
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} 2790 -590 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.endif
"}
C {code.sym} 2780 -800 0 0 {name=Simulation only_toplevel=false value="
.option wnflag=1
.param gm    = \{3.1415*1.1m\}
.param gm_id = 13
.param Ids   = \{gm/gm_id\}
.param L     = 0.13u
.param W     = 3.13u
.param mult  = 10

vsup VDD 0 1.2
vin vg 0 dc=0.45 ac=1

cload vout 0 5p

.control
save all
op
save @n.xm1.nsg13_lv_nmos[gm]
save @n.xm1.nsg13_lv_nmos[ids]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[ib]

*dc vin -0.01 0.01 0.001
dc vin 0.45 0.45 0.001
***********************************************
* Ingresar comando de ganancias acá



* *********************************************

***********************************************
* Ingresar comando de simulación AC y mediciones acá



* *********************************************
.endc"}
