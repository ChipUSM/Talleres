v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -100 520 -100 {
lab=VOUT}
N 450 -100 450 -80 {
lab=VOUT}
N 380 -100 450 -100 {
lab=VOUT}
N 450 -20 450 0 {
lab=GND}
N 340 -170 340 -130 {
lab=VDD}
N 340 -70 340 -30 {
lab=GND}
N 250 -100 300 -100 {
lab=VIN}
C {code.sym} -40 -80 0 0 {name=librerias only_toplevel=true
format="tcleval( @value )"
value="

.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

*.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
*.lib $::SG13G2_MODELS/cornerRES.lib res_typ
*.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
C {devices/code.sym} -40 -220 0 0 {name=base_sim only_toplevel=false 
value="
vin VIN 0 PULSE(0 3.3 1ns 0ns 0ns 2ns 4ns)
.control
save all
tran 0.01n 8n
plot V(VIN) v(VOUT)
meas tran tpHL_in FIND time WHEN v(VIN)=0.9 TD=0 FALL=1
meas tran tpHL_fin FIND time WHEN v(VOUT)=0.9 TD=0 RISE=1
print tpHL_fin - tpHL_in
.endc
"
}
C {/home/designer/shared/Taller2/NOT.sym} 340 -200 0 0 {name=x1}
C {capa-2.sym} 450 -50 0 0 {name=C1
m=1
value=25f
footprint=1206
device=polarized_capacitor}
C {iopin.sym} 520 -100 0 0 {name=p1 lab=VOUT
}
C {vdd.sym} 340 -170 0 0 {name=l1 lab=VDD}
C {gnd.sym} 340 -30 0 0 {name=l2 lab=GND}
C {iopin.sym} 250 -100 0 1 {name=p2 lab=VIN
}
C {vsource.sym} 120 -90 0 0 {name=V1 value=3 savecurrent=false}
C {vdd.sym} 120 -120 0 0 {name=l3 lab=VDD}
C {gnd.sym} 120 -60 0 0 {name=l4 lab=GND}
C {gnd.sym} 450 0 0 0 {name=l5 lab=GND}
