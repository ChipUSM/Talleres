v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -530 -430 -530 -410 {
lab=#net1}
N -340 -430 -340 -410 {
lab=#net1}
N -430 -430 -340 -430 {
lab=#net1}
N -520 -430 -430 -430 {
lab=#net1}
N -530 -350 -530 -330 {
lab=Vout}
N -340 -350 -340 -330 {
lab=Vout}
N -400 -330 -340 -330 {
lab=Vout}
N -400 -180 -400 -120 {
lab=#net2}
N -400 -40 -400 -20 {
lab=GND}
N -400 -280 -160 -280 {
lab=Vout}
N -400 -280 -400 -240 {
lab=Vout}
N -450 -210 -440 -210 {
lab=V1}
N -570 -90 -440 -90 {
lab=V2}
N -530 -330 -400 -330 {
lab=Vout}
N -450 -380 -450 -210 {
lab=V1}
N -450 -380 -380 -380 {
lab=V1}
N -600 -90 -570 -90 {
lab=V2}
N -570 -380 -570 -90 {
lab=V2}
N -400 -330 -400 -280 {
lab=Vout}
N -500 -210 -450 -210 {
lab=V1}
N -530 -380 -520 -380 {
lab=#net1}
N -520 -430 -520 -380 {
lab=#net1}
N -530 -430 -520 -430 {
lab=#net1}
N -350 -380 -330 -380 {
lab=#net1}
N -330 -430 -330 -380 {
lab=#net1}
N -340 -430 -330 -430 {
lab=#net1}
N -400 -90 -390 -90 {
lab=GND}
N -390 -90 -390 -40 {
lab=GND}
N -400 -40 -390 -40 {
lab=GND}
N -400 -60 -400 -40 {
lab=GND}
N -400 -210 -390 -210 {
lab=GND}
N -390 -210 -390 -90 {
lab=GND}
N -670 -470 -430 -470 {
lab=#net1}
N -430 -470 -430 -430 {
lab=#net1}
C {sg13g2_pr/sg13_hv_nmos.sym} -420 -210 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -360 -380 0 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -550 -380 0 0 {name=M3
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -420 -90 0 0 {name=M4
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -160 -280 2 0 {name=p3 sig_type=std_logic lab=Vout}
C {gnd.sym} -400 -20 0 0 {name=l1 lab=GND}
C {vsource.sym} -670 -440 0 0 {name=Vd value=3.3 savecurrent=false}
C {gnd.sym} -670 -410 0 0 {name=Vd1 lab=GND}
C {lab_pin.sym} -500 -210 2 1 {name=p1 sig_type=std_logic lab=V1}
C {lab_pin.sym} -600 -90 2 1 {name=p2 sig_type=std_logic lab=V2}
C {vsource.sym} -1060 -270 0 0 {name=Vin value="PULSE(0 3.3 50n 100p 100p 50n 100n)"  savecurrent=false}
C {gnd.sym} -1060 -240 0 0 {name=l2 lab=GND}
C {vsource.sym} -1060 -160 0 0 {name=Vin1 value="PULSE(0 3.3 100n 100p 100p 100n 200n)"  savecurrent=false}
C {gnd.sym} -1060 -130 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1060 -300 2 1 {name=p4 sig_type=std_logic lab=V1}
C {lab_pin.sym} -1060 -190 2 1 {name=p5 sig_type=std_logic lab=V2}
C {code_shown.sym} -1560 -600 0 0 {name=Simulacion only_toplevel=false value="

.control
save all

tran 10p 270n
plot v(V1)+v(V2) 
plot v(vout)
plot v(V1) v(V2)

meas tran fall_time Trig  v(V1) VAL=1.65 RISE=1 TARG v(Vout) VAL=1.65 FALL=1
meas tran rise_time Trig  v(V1) VAL=1.65 FALL=2 TARG v(Vout) VAL=1.65 RISE=1
 
.endc
"}
C {code_shown.sym} -1540 -290 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOShv.lib mos_tt
"}
