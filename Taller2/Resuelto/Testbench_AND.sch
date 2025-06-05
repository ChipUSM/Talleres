v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(0 3.3 0 \{TR\} \{TF\} \{PW\} \{PER\})} -500 270 0 0 0.4 0.4 {}
N -40 40 -10 40 {
lab=#net1}
N -160 -70 -160 -50 {
lab=#net2}
N -330 -140 -160 -140 {
lab=#net2}
N -370 60 -370 70 {
lab=V2}
N -370 60 -180 60 {
lab=V2}
N -460 20 -180 20 {
lab=V1}
N -460 20 -460 70 {
lab=V1}
N 30 70 30 150 {
lab=GND}
N -160 150 30 150 {
lab=GND}
N -160 130 -160 150 {
lab=GND}
N 30 -70 30 10 {
lab=#net2}
N -160 -70 30 -70 {
lab=#net2}
N -160 -140 -160 -70 {
lab=#net2}
N -160 150 -160 160 {
lab=GND}
N 70 40 160 40 {
lab=Vout}
C {/home/designer/shared/Taller2/NOT.sym} 30 -60 0 0 {name=x1}
C {/home/designer/shared/Taller2/Nand.sym} -160 -10 0 0 {name=x2}
C {vsource.sym} -330 -110 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -330 -80 0 0 {name=l1 lab=GND}
C {gnd.sym} -160 160 0 0 {name=l2 lab=GND}
C {code_shown.sym} -1500 10 0 0 {name=Simulación only_toplevel=false value=
"
.param TR = 100p
.param TF = 100p

.param PW_A= 30n
.param PER_A= 60n

.param PW= 100n
.param PER= 200n


.control
save all
set color0 = white

tran 100p 200n
*dc V2 0 3.3 1m

meas tran rise_time Trig  v(Vout) VAL=0.01 RISE=1 TARG v(Vout) VAL=1.65 RISE=1
meas tran fall_time Trig  v(Vout) VAL=3.25 FALL=1 TARG v(Vout) VAL=1.65 FALL=1


let Time_Diff = rise_time-fall_time



plot v(V2) v(V1)
plot v(Vout)

print rise_time fall_time
print Time_Diff

.endc
"}
C {code_shown.sym} -1030 -190 0 0 {name=Modelos only_toplevel=false value="
.lib cornerMOShv.lib mos_tt
"}
C {vsource.sym} -370 100 0 0 {name=V3 value= "PULSE(0 3.3 0 \{TR\} \{TF\} \{PW\} \{PER\})" savecurrent=false}
C {gnd.sym} -460 130 0 0 {name=l4 lab=GND}
C {gnd.sym} -370 130 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 160 40 0 1 {name=p1 sig_type=std_logic lab=Vout}
C {vsource.sym} -460 100 0 1 {name=V2 value= "PULSE(0 3.3 0 \{TR\} \{TF\} \{PW_A\} \{PER_A\})" savecurrent=false}
C {lab_pin.sym} -460 50 0 1 {name=p2 sig_type=std_logic lab=V1}
C {lab_pin.sym} -350 60 3 1 {name=p3 sig_type=std_logic lab=V2}
