v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 20 -100 40 {
lab=#net1}
N -100 20 40 20 {
lab=#net1}
N -100 0 -100 20 {
lab=#net1}
N -100 70 -100 150 {
lab=GND}
N -150 70 -140 70 {
lab=Vin}
N -150 -30 -140 -30 {
lab=Vin}
N -150 20 -150 70 {
lab=Vin}
N -100 -90 -100 -30 {
lab=VDD}
N -220 20 -150 20 {
lab=Vin}
N -150 -30 -150 20 {
lab=Vin}
C {sg13g2_pr/sg13_hv_nmos.sym} -120 70 2 1 {name=M3
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -120 -30 0 0 {name=M4
l=0.45u
w=2.72u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} -100 -90 1 0 {name=p3 lab=VDD}
C {ipin.sym} -220 20 0 0 {name=p1 lab=Vin
}
C {ipin.sym} -100 130 3 0 {name=p2 lab=GND
}
C {opin.sym} 40 20 0 0 {name=p4 lab=Vout}
