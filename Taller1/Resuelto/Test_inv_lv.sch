v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 50 -110 60 {
lab=Vout}
N -180 50 -110 50 {
lab=Vout}
N -360 50 -360 80 {
lab=Vin}
N -360 50 -260 50 {
lab=Vin}
N -360 -80 -360 -50 {
lab=Vdd}
N -360 -80 -220 -80 {
lab=Vdd}
N -220 -80 -220 20 {
lab=Vdd}
C {code_shown.sym} -720 0 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} -720 70 0 0 {name=Parametros only_toplevel=false value="
.param Vdd = 1.2
.param L   = 0.13u
.param Wn  = 1.0u
.param Wp  = 2.0u
"}
C {lab_pin.sym} -110 50 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {capa.sym} -110 90 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -110 120 0 0 {name=l3 lab=GND}
C {gnd.sym} -220 80 0 0 {name=l1 lab=GND}
C {code.sym} -730 -150 0 0 {name=Simulacion only_toplevel=false value="
.control
save all

tran 100p 13n
plot v(Vin) v(vout)

meas tran fall_time Trig  v(Vin) VAL=0.6 RISE=1 TARG v(Vout) VAL=0.6 FALL=1
meas tran rise_time Trig  v(Vin) VAL=0.6 FALL=1 TARG v(Vout) VAL=0.6 RISE=1
let time_diff = abs(fall_time - rise_time)
let prop_time = (fall_time + rise_time)/2
print time_diff
print prop_time
.endc
"}
C {vsource.sym} -360 110 0 0 {name=Vin value="PULSE(0 \{Vdd\} 1n 100p 100p 10n 20n)" savecurrent=false}
C {lab_pin.sym} -360 50 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -360 140 0 0 {name=l2 lab=GND}
C {vsource.sym} -360 -20 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -360 -80 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {gnd.sym} -360 10 0 0 {name=l4 lab=GND}
C {/workspaces/usm-vlsi-tools/shared_xserver/IHP/Talleres/Taller1/inv_lv.sym} -220 50 0 0 {name=x1}
