v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 90 -130 100 {
lab=Vout}
N -200 90 -130 90 {
lab=Vout}
N -380 90 -380 120 {
lab=Vin}
N -380 90 -280 90 {
lab=Vin}
N -380 -40 -380 -10 {
lab=Vdd}
N -240 -40 -240 60 {
lab=#net1}
N -570 -140 -570 -110 {
lab=E}
N -260 -40 -240 -40 {
lab=#net1}
N -380 -40 -290 -40 {
lab=Vdd}
N -290 -100 -290 -80 {
lab=E}
N -570 -60 -570 -50 {
lab=GND}
C {code_shown.sym} -720 0 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} -720 70 0 0 {name=Parametros only_toplevel=false value="
.param Vdd = 1.2
.param L   = 0.13u
.param Wn  = 1.0u
.param Wp  = 2.0u
"}
C {lab_pin.sym} -130 90 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {capa.sym} -130 130 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -130 160 0 0 {name=l3 lab=GND}
C {gnd.sym} -240 120 0 0 {name=l1 lab=GND}
C {code.sym} -730 -150 0 0 {name=Simulacion only_toplevel=false value="
.control

tran 100p 100n
plot v(Vin) 
plot v(vout) v(E)

meas tran fall_time Trig  v(Vin) VAL=0.6 RISE=1 TARG v(Vout) VAL=0.6 FALL=1
meas tran rise_time Trig  v(Vin) VAL=0.6 FALL=1 TARG v(Vout) VAL=0.6 RISE=1

let time_diff = abs(fall_time - rise_time)
let prop_time = (fall_time + rise_time)/2

print time_diff
print prop_time
.endc
"}
C {vsource.sym} -380 150 0 0 {name=Vin value="PULSE(0 \{Vdd\} 1n 100p 100p 10n 20n)" savecurrent=false}
C {lab_pin.sym} -380 90 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -380 180 0 0 {name=l2 lab=GND}
C {vsource.sym} -380 20 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -380 -40 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {gnd.sym} -380 50 0 0 {name=l4 lab=GND}
C {../Insumos/inv_lv.sym} -240 90 0 0 {name=x1}
C {vsource.sym} -570 -90 0 0 {name=Vin1 value="PULSE(0 \{Vdd\} 0 100p 100p 30n 60n)" savecurrent=false}
C {gnd.sym} -570 -50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -570 -140 2 0 {name=p4 sig_type=std_logic lab=E}
C {lab_pin.sym} -290 -100 2 0 {name=p5 sig_type=std_logic lab=E}
C {sg13g2_pr/sg13_lv_pmos.sym} -290 -60 1 0 {name=M1
l=0.13u
w=7.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
