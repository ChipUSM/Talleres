v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 0 -10 20 {
lab=xxx}
N -10 -110 -10 -50 {
lab=Vdd}
N -50 0 -50 50 {
lab=Vin}
N -10 0 90 0 {
lab=xxx}
N -10 -20 -10 0 {
lab=xxx}
N -90 0 -50 0 {
lab=Vin}
N -50 -50 -50 0 {
lab=Vin}
N -10 50 -10 110 {
lab=Vss}
C {sg13g2_pr/sg13_hv_nmos.sym} -30 50 2 1 {name=M1
l=\{L\}
w=\{Wn\}
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -30 -50 0 0 {name=M2
l=\{L\}
w=\{Wp\}
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} -90 0 0 0 {name=p1 lab=Vin}
C {ipin.sym} -10 -110 0 0 {name=p2 lab=Vdd}
C {ipin.sym} -10 110 0 0 {name=p3 lab=Vss}
C {opin.sym} 90 0 0 0 {name=p4 lab=Vout}
