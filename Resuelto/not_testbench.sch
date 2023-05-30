v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -260 240 -260 {
lab=VIN}
N 310 -210 310 -190 {
lab=GND}
N 310 -320 310 -310 {
lab=VDD}
N 430 -250 430 -240 {
lab=VOUT}
N 420 -260 440 -260 {
lab=VOUT}
N 430 -260 430 -250 {
lab=VOUT}
C {devices/vdd.sym} 310 -320 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 310 -190 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 40 -250 0 0 {name=Vdd value=1.8}
C {devices/vdd.sym} 40 -280 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 40 -220 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -650 -390 0 0 {name=NGSPICE only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

vin VIN 0 PULSE(0 1.8 1ns 0ns 0ns 2ns 4ns)

.param Wp = 4.5
.param Wn = Wp/3

.control
save all

tran 0.01n 8n
plot V(VIN) v(VOUT)

meas tran tpHL_in FIND time WHEN v(VIN)=0.9 TD=0 FALL=1
meas tran tpHL_fin FIND time WHEN v(VOUT)=0.9 TD=0 RISE=1

print tpHL_fin - tpHL_in

.endc
"}
C {devices/ipin.sym} 220 -260 0 0 {name=p3 lab=VIN}
C {devices/opin.sym} 440 -260 0 0 {name=p4 lab=VOUT}
C {devices/capa.sym} 430 -210 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 430 -180 0 0 {name=l5 lab=GND}
C {ChipUSM/Taller2_xschem/not.sym} 300 -260 0 0 {name=X1}
