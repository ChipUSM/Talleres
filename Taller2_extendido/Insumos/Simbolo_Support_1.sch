v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -60 -40 -60 { lab=VIN}
N -80 -10 -80 50 { lab=VIN}
N -80 50 -40 50 { lab=VIN}
N 0 -10 0 20 { lab=VOUT}
N 0 -110 0 -90 { lab=VDD}
N -140 -10 -80 -10 { lab=VIN}
N 0 -60 30 -60 { lab=VDD}
N 30 -110 30 -60 { lab=VDD}
N 0 -110 30 -110 { lab=VDD}
N 0 50 30 50 { lab=VSS}
N 30 50 30 100 { lab=VSS}
N 0 100 30 100 { lab=VSS}
N 0 80 0 100 { lab=VSS}
N 0 100 0 130 { lab=VSS}
N 0 -10 60 -10 { lab=VOUT}
N -80 -60 -80 -10 { lab=VIN}
N 0 -140 0 -110 { lab=VDD}
N 0 -30 0 -10 { lab=VOUT}
C {devices/ipin.sym} -140 -10 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} 0 -140 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 0 130 1 0 {name=p4 lab=VSS}
C {devices/opin.sym} 60 -10 0 0 {name=p5 lab=VOUT}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -60 0 0 {name=M1
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 50 0 0 {name=M2
l=0.15u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
