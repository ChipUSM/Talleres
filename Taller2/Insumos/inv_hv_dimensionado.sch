v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -30 -10 -10 {
lab=Vout}
N -10 -30 130 -30 {
lab=Vout}
N -10 -50 -10 -30 {
lab=Vout}
N -10 20 -10 50 {
lab=GND}
N -60 20 -50 20 {
lab=Vin}
N -60 -30 -60 20 {
lab=Vin}
N -60 -80 -50 -80 {
lab=Vin}
N -60 -80 -60 -30 {
lab=Vin}
N -300 -30 -300 -10 {
lab=Vin}
N -10 -140 -10 -80 {
lab=#net1}
N -230 -140 -10 -140 {
lab=#net1}
N 130 -30 130 -20 {
lab=Vout}
N -300 -30 -60 -30 {
lab=Vin}
C {gnd.sym} -10 50 0 0 {name=l1 lab=GND}
C {vsource.sym} -300 20 0 0 {name=Vin value="PULSE(0 3.3 1n 100p 100p 10n 20n)"  savecurrent=false}
C {gnd.sym} -300 50 0 0 {name=l2 lab=GND}
C {vsource.sym} -230 -110 0 0 {name=Vd value=3.3 savecurrent=false}
C {gnd.sym} -230 -80 0 0 {name=Vd1 lab=GND}
C {code_shown.sym} -600 110 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOShv.lib mos_tt
"}
C {code_shown.sym} -850 -430 0 0 {name=Simulacion only_toplevel=false value="
.param wn = 1.0u
.param wp = 2.72u

.control
save all

tran 100p 25n
plot v(Vin) v(vout)

meas tran rise_time Trig  v(Vout) VAL=0.01 RISE=1 TARG v(Vout) VAL=1.65 RISE=1
meas tran fall_time Trig  v(vout) VAL=3.25 FALL=1 TARG v(Vout) VAL=1.65 FALL=1
 
.endc
"}
C {lab_pin.sym} -300 -30 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 130 -30 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {capa.sym} 130 10 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 130 40 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} -30 20 2 1 {name=M1
l=0.45u
w=\{wn\}
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -30 -80 0 0 {name=M2
l=0.45u
w=\{wp\}
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
