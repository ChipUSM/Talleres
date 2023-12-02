v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -430 200 -400 {
lab=VDD}
N 200 -340 200 -290 {
lab=OUT}
N 200 -230 200 -190 {
lab=GND}
N 200 -260 220 -260 {
lab=GND}
N 220 -260 220 -220 {
lab=GND}
N 200 -220 220 -220 {
lab=GND}
N 200 -370 220 -370 {
lab=VDD}
N 220 -410 220 -370 {
lab=VDD}
N 200 -410 220 -410 {
lab=VDD}
N 120 -370 160 -370 {
lab=IN}
N 120 -370 120 -260 {
lab=IN}
N 120 -260 160 -260 {
lab=IN}
N 90 -320 120 -320 {
lab=IN}
N 200 -320 290 -320 {
lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 180 -260 0 0 {name=M1
L=0.3
W=\{Wn\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -370 0 0 {name=M2
L=0.3
W=\{Wp\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 200 -430 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 200 -190 1 0 {name=p2 lab=GND}
C {devices/ipin.sym} 90 -320 0 0 {name=p3 lab=VIN}
C {devices/opin.sym} 290 -320 0 0 {name=p4 lab=VOUT}
