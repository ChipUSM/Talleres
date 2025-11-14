v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -530 -110 {}
P 4 5 -70 -20 -70 120 290 120 290 -20 -70 -20 {}
P 4 5 -440 -430 -440 120 -80 120 -80 -430 -440 -430 {}
P 4 5 -70 -430 -70 -190 290 -190 290 -430 -70 -430 {}
T {Alimentacion del sistema:
Aqui se crean los nodos VDD & VSS
} -70 -60 0 0 0.3 0.3 {}
T {Este script esta en el TOP 
del PDK. Es necesario para
que el test_bench reconozca
los transistores y piezas.} -300 -340 0 0 0.25 0.25 {}
T {Este script NO es obligatorio
sus comandos se pueden poner
en el mismo script con el bloque
.control} -300 -170 0 0 0.25 0.25 {}
T {En este script se corre la 
simulacion los comandos,
saves, plots y demas se 
ponen aqui.} -300 -10 0 0 0.25 0.25 {}
T {Fuentes voltaje para las entradas 
Los parametros de una SINE son:
Offset(DC) - Amplitud(AC) Periodo

Los parametros de un PULSE son:
Voltaje minimo - voltaje maximo - Delay - T_rise - T_fall - Duty-cycle -Periodo -Fase
} -70 -180 0 0 0.25 0.25 {}
N 120 520 120 530 {lab=VSS}
N 70 360 80 360 {lab=VIN2}
N -280 370 -270 370 {lab=Vin1}
N -110 220 -110 300 {lab=V_Ctrl}
N -110 220 -50 220 {lab=V_Ctrl}
N 30 220 240 220 {lab=#net1}
N 240 220 240 290 {lab=#net1}
N 290 360 290 460 {lab=Vout}
N -60 460 290 460 {lab=Vout}
N -60 370 -60 460 {lab=Vout}
N 30 0 30 20 {lab=Vss}
N 190 0 190 20 {lab=Vdd}
N -440 310 -440 330 {lab=Vss}
N -440 220 -440 250 {lab=V_Ctrl}
N -440 220 -110 220 {lab=V_Ctrl}
C {devices/code.sym} -420 -360 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif
"}
C {code.sym} -420 -200 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2

.param temp = 27
.param TR = 240e-12
.param TF = 240e-12
.param D = 0.5
.param T2 = 200e-09
.param T1 = 15e-09

"}
C {devices/vsource.sym} 190 50 0 0 {name=VCC value=\{Vdd\}}
C {devices/vsource.sym} 30 50 0 0 {name=VSS value=0}
C {devices/gnd.sym} 30 80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 190 80 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 30 0 0 0 {name=p3 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 190 0 0 0 {name=p6 sig_type=std_logic lab=Vdd}
C {devices/code.sym} -420 -40 0 0 {name=Transient_Simulation only_toplevel=false value="
.save all

*.OPTION CSHUNT=0.05e-12
.OPTION ABSTOL=1e-15.
*.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
*.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5


*Se guardan las transconductancias de compuerta Source-Drain 
.save @n.x1.xm2.nsg13_lv_nmos[gds]
.save @n.x1.xm1.nsg13_lv_pmos[gds]
.save @n.x2.xm2.nsg13_lv_nmos[gds]
.save @n.x2.xm1.nsg13_lv_pmos[gds]

*Se guarda la tension Drain-source de los Mosfet en el Switch/Transmision-gate
.save @n.x1.xm2.nsg13_lv_nmos[vds]
.save @n.x1.xm1.nsg13_lv_pmos[vds]
.save @n.x2.xm2.nsg13_lv_nmos[vds]
.save @n.x2.xm1.nsg13_lv_pmos[vds]


.control
set color0 = white

tran 0.1n  400n  

*Se convierten en variables transientes (poniendolas post sim "tran") de variables guardadas
let GDS_N1 = @n.x1.xm2.nsg13_lv_nmos[gds]
let GDS_P1 = @n.x1.xm1.nsg13_lv_pmos[gds]
let GDS_N2 = @n.x2.xm2.nsg13_lv_nmos[gds]
let GDS_P2 = @n.x2.xm1.nsg13_lv_pmos[gds]

let Vds_N1 = @n.x1.xm2.nsg13_lv_nmos[vds]
let Vds_P1 = @n.x1.xm1.nsg13_lv_pmos[vds]
let Vds_N2 = @n.x2.xm2.nsg13_lv_nmos[vds]
let Vds_P2 = @n.x2.xm1.nsg13_lv_pmos[vds]

*Para guardar las resistencias de encendido se guarda como variable 1/gds:

let Ro_N1 = 1/GDS_N1
let Ro_P1 = 1/GDS_P1
let Ro_N2 = 1/GDS_N2
let Ro_P2 = 1/GDS_P2

*Plot salida basico
plot vout

*Plot salida en comparacion con la señal de control
plot V_ctrl+1.2 vout

*Opcionales para ver la diferencia de tension entre entrada y salida al TG. (Borral los "*" Para descomentar
*plot VIN1 vout
*plot VIN2 vout

*Plots de resistencias de encendido en cada transistor de los TG
plot Ro_P1 Ro_N1
plot Ro_N2 Ro_P2

*Plots de las diferencias de tension entre Drain y Source en cada MOS de los TG
plot Vds_N1 Vds_P1
plot Vds_N2 Vds_P2
plot Vds_P1
plot Vds_P2


.endc


"}
C {devices/vsource.sym} 220 -370 0 1 {name=Vin1 value= "sine( 0.5 0.5 50e06)"}
C {devices/vsource.sym} 220 -250 0 1 {name=Vin2 spice_ignore = 0 value="PULSE( 0 \{vdd\} 8e-09  \{TR\} \{TF\} \{T1*D\} \{T1\} 0)"}
C {devices/lab_pin.sym} 220 -340 0 1 {name=p1 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 220 -220 0 1 {name=p2 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 220 -400 0 1 {name=p4 sig_type=std_logic lab=Vin1}
C {devices/lab_pin.sym} 220 -280 0 1 {name=p5 sig_type=std_logic lab=Vin2}
C {devices/lab_pin.sym} -280 370 0 0 {name=p7 sig_type=std_logic lab=Vin1}
C {devices/lab_pin.sym} 70 360 0 0 {name=p8 sig_type=std_logic lab=VIN2}
C {devices/lab_pin.sym} 120 410 0 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/capa.sym} 120 490 0 1 {name=C_Delta
spice_ignore = 0 
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 120 530 0 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 460 2 0 {name=p11 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 160 410 0 0 {name=p13 sig_type=std_logic lab=Vss}
C {devices/vsource.sym} -440 280 0 0 {name=Vin3 value="PULSE( 0 \{vdd\} 0 \{TR\} \{TF\} \{T2*D\} \{T2\} 0)"}
C {devices/lab_pin.sym} -440 330 0 1 {name=p14 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -10 200 1 0 {name=p17 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -10 240 3 0 {name=p18 sig_type=std_logic lab=Vss}
C {/home/designer/shared/Taller2/Simbolo_Support_1.sym} -10 230 0 0 {name=x3}
C {/home/designer/shared/Taller2/Transmision_Gate.sym} 150 440 0 0 {name=x2}
C {/home/designer/shared/Taller2/Transmision_Gate.sym} -200 450 0 0 {name=x1

}
C {devices/lab_pin.sym} -230 420 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -190 420 0 0 {name=p20 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -440 220 0 0 {name=p12 sig_type=std_logic lab=V_Ctrl}
