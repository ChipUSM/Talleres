

# #####################	#
#   ChipUSM - UTFSM    	#
#   Project: taller 2  	#
#   Inverter layout		#
#   27-05-2023        	#
# #####################	#

drc style drc(full)

# NMOS
box 0.9um 0.6um 1.9um 2.1um
paint ndiffusion
box 1.25um 0.45um 1.55um 2.25um
paint polysilicon
box 0.95um 0.75um 1.15um 1.95um
paint ndcontact
box 1.65um 0.75um 1.85um 1.95um
paint ndcontact
box 0.9um 0.65um 1.2um 2.05um
paint locali
box 1.6um 0.65um 1.9um 2.05um
paint locali

# PMOS
box 0.2um 2.7um 2.6um 4.2um
paint pdiffusion
box 0.55um 2.5um 0.85um 4.35um
paint polysilicon
box 1.25um 2.5um 1.55um 4.35um
paint polysilicon
box 1.95um 2.5um 2.25um 4.35um
paint polysilicon
box 0.25um 2.85um 0.45um 4.05um
paint pdcontact
box 0.95um 2.85um 1.15um 4.05um
paint pdcontact
box 1.65um 2.85um 1.85um 4.05um
paint pdcontact
box 2.35um 2.85um 2.55um 4.05um
paint pdcontact
box 0.2um 2.75um 0.5um 4.15um
paint locali
box 0.9um 2.75um 1.2um 4.15um
paint locali
box 1.6um 2.75um 1.9um 4.15um
paint locali
box 2.3um 2.75um 2.6um 4.15um
paint locali
box 0um 2.5um 2.8um 4.4um
paint nwell

# Wires
box 0um 0um 2.8um 0.3um
paint locali
box 0um 0um 0.2um 0.3um
label GND west locali
box 0.95um 0.3um 1.15um 0.65um
paint locali
box 0.55um 2.2um 2.25um 2.5um
paint polysilicon
box 0.95um 2.25um 2.8um 2.45um
label Vout east locali
paint locali
box 1.65um 2.05um 1.85um 2.25um
paint locali
box 0.95um 2.45um 1.15um 2.75um
paint locali
box 2.35um 2.45um 2.55um 2.75um
paint locali
box 0um 2.25um 0.3um 2.45um
paint locali
label Vin west locali
box 0.3um 2.15um 0.7um 2.55um
paint {polysilicon locali}
box 0.4um 2.25um 0.6um 2.45um
paint pcontact
box 0.25um 4.15um 0.45um 4.5um
paint locali
box 1.65um 4.15um 1.85um 4.5um
paint locali
box 0um 4.5um 2.8um 4.8um
paint locali
box 0um 4.5um 0.2um 4.8um
label VDD west locali

# Well Taps
box 0.2um 0um 2.6um 0.3um
paint psubstratepdiff
box 0.35um 0.05um 2.45um 0.25um
paint psubstratepcontact
box 0.2um 4.5um 2.6um 4.8um
paint nsubstratendiff
box 0.35um 4.55um 2.45um 4.75um
paint nsubstratencontact
box 0um 4.4um 2.8um 5um
paint nwell

