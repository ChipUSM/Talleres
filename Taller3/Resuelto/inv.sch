v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 0 0 10 {
lab=VOUT}
N 0 0 100 0 {
lab=VOUT}
N 0 -10 0 0 {
lab=VOUT}
N -40 0 -40 40 {
lab=VIN}
N -60 0 -40 0 {
lab=VIN}
N -40 -40 -40 0 {
lab=VIN}
N 0 -90 0 -40 {
lab=VDD}
N -0 40 -0 90 {
lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 40 2 1 {name=M2
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -40 0 0 {name=M1
l=0.13u
w=0.81u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -60 0 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 0 90 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 0 2 0 {name=p3 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 0 -90 0 0 {name=p4 sig_type=std_logic lab=VDD}
