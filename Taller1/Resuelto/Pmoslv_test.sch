v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -10 120 20 {
lab=#net1}
N 60 -10 120 -10 {
lab=#net1}
N 120 80 120 140 {
lab=GND}
N -120 50 -40 50 {
lab=#net2}
N -120 50 -120 60 {
lab=#net2}
N -120 120 -120 140 {
lab=GND}
N 0 -10 0 20 {
lab=#net1}
N 0 80 -0 140 {
lab=GND}
N 0 50 60 50 {
lab=#net1}
N 60 -10 60 50 {
lab=#net1}
N -0 -10 60 -10 {
lab=#net1}
C {gnd.sym} 0 140 0 0 {name=l1 lab=GND}
C {vsource.sym} -120 90 0 0 {name=Vg value=1.2 savecurrent=false}
C {vsource.sym} 120 50 0 0 {name=Vd value=1.5 savecurrent=false}
C {gnd.sym} 120 140 0 0 {name=l2 lab=GND}
C {gnd.sym} -120 140 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -440 120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {code.sym} -450 -40 0 0 {name=simulacion only_toplevel=false value="

.control
save all
save @n.xm1.nsg13_lv_pmos[ids]
dc vg 0.0 1.5 0.01
let id = @n.xm1.nsg13_lv_pmos[ids]
plot id
plot log(id)
.endc
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 50 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
