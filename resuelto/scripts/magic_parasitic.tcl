source ../scripts/magic.tcl

set cellname $env(TOP)
set layout   $env(LAYOUT)

drc off

load_layout $layout $cellname
generate_parasitic_spice $cellname

quit -noprompt