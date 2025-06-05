v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -140 70 -120 {
lab=VDD}
N 260 -140 260 -120 {
lab=VDD}
N 170 -140 260 -140 {
lab=VDD}
N 170 -170 170 -140 {
lab=VDD}
N 80 -140 170 -140 {
lab=VDD}
N 70 -60 70 -40 {
lab=Vout}
N 260 -60 260 -40 {
lab=Vout}
N 200 -40 260 -40 {
lab=Vout}
N 200 110 200 170 {
lab=#net1}
N 200 250 200 270 {
lab=GND}
N 200 10 440 10 {
lab=Vout}
N 200 10 200 50 {
lab=Vout}
N 150 80 160 80 {
lab=V1}
N 30 200 160 200 {
lab=V2}
N 70 -40 200 -40 {
lab=Vout}
N 150 -90 150 80 {
lab=V1}
N 150 -90 220 -90 {
lab=V1}
N 0 200 30 200 {
lab=V2}
N 30 -90 30 200 {
lab=V2}
N 200 -40 200 10 {
lab=Vout}
N 100 80 150 80 {
lab=V1}
N 70 -90 80 -90 {
lab=VDD}
N 80 -140 80 -90 {
lab=VDD}
N 70 -140 80 -140 {
lab=VDD}
N 250 -90 270 -90 {
lab=VDD}
N 270 -140 270 -90 {
lab=VDD}
N 260 -140 270 -140 {
lab=VDD}
N 200 200 210 200 {
lab=GND}
N 210 200 210 250 {
lab=GND}
N 200 250 210 250 {
lab=GND}
N 200 230 200 250 {
lab=GND}
N 200 80 210 80 {
lab=GND}
N 210 80 210 200 {
lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} 180 80 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 240 -90 0 0 {name=M2
l=0.45u
w=2.72u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 50 -90 0 0 {name=M3
l=0.45u
w=2.72u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 180 200 0 0 {name=M4
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 100 80 0 0 {name=p1 lab=V1}
C {ipin.sym} 0 200 0 0 {name=p2 lab=V2}
C {ipin.sym} 170 -170 1 0 {name=p3 lab=VDD}
C {ipin.sym} 200 270 0 0 {name=p4 lab=GND}
C {opin.sym} 440 10 0 0 {name=p5 lab=Vout}
