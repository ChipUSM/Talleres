v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 90 20 170 { lab=VIN}
N 80 90 80 170 { lab=VOUT}
N -110 -30 -110 210 { lab=CTR}
N 50 10 50 40 { lab=VSS}
N 50 140 50 170 { lab=VDD}
N -30 90 20 90 { lab=VIN}
N 80 90 130 90 { lab=VOUT}
N -110 -30 50 -30 { lab=CTR}
N -110 210 -90 210 { lab=CTR}
N 20 10 20 90 { lab=VIN}
N 80 10 80 90 { lab=VOUT}
N -10 210 50 210 {lab=#net1}
N -50 170 -50 190 {lab=VDD}
N -50 230 -50 250 {lab=VSS}
C {devices/lab_pin.sym} -30 90 0 0 {name=l1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 130 90 0 1 {name=l2 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 50 40 3 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 50 140 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -50 250 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 170 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -110 -30 0 0 {name=l7 sig_type=std_logic lab=CTR}
C {devices/ipin.sym} -70 -130 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} -40 -130 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} -40 -100 0 0 {name=p3 lab=VSS}
C {devices/ipin.sym} -70 -100 0 0 {name=p4 lab=CTR}
C {devices/opin.sym} 50 -130 0 0 {name=p5 lab=VOUT}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 190 3 0 {name=M1
l=0.15u
w=6.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 -10 1 0 {name=M2
l=0.15u
w=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {Simbolo_Support_1.sym} -50 220 0 0 {name=x1}
