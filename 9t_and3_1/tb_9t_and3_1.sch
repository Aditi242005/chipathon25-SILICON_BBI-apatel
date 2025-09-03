v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 120 -190 0 0 {name=NGSPICE only_toplevel=true
value=
".PARAM PAR_VDD=3.3
.CSPARAM CPAR_VDD=PAR_VDD
.PARAM PAR_CLOAD=5f
.PARAM PAR_SLEW=100p
.PARAM PAR_PER=10n
.CSPARAM CPAR_PER=PAR_PER
.PARAM PAR_DEL='0.1*PAR_PER'
.CSPARAM CPAR_DEL=PAR_DEL

.INCLUDE "9t_and3_1.spice"

**netlist
XAND3 A B Y C VDD VSS 9t_and3_1 
Cload   Y     	VSS  	'PAR_CLOAD' 

**Sources
Vdc   	VDD   	VSS   	PAR_VDD	
VinA   	A    	VSS   	0 	PULSE(0 PAR_VDD PAR_DEL PAR_SLEW PAR_SLEW '0.5*PAR_PER' '1.0*PAR_PER')
VinB   	B    	VSS   	0	PULSE(0 PAR_VDD PAR_DEL PAR_SLEW PAR_SLEW '1.0*PAR_PER' '2.0*PAR_PER')
VinC   	C    	VSS   	0	PULSE(0 PAR_VDD PAR_DEL PAR_SLEW PAR_SLEW '2.0*PAR_PER' '4.0*PAR_PER')
Vgnd	VSS	0	0	

** Rise/Fall 10-90%
.MEASURE TRAN tr1090 TRIG v(Y) VAL='0.1*PAR_VDD' RISE=1 TARG v(Y) VAL='0.9*PAR_VDD' RISE=1
.MEASURE TRAN tf9010 TRIG v(Y) VAL='0.9*PAR_VDD' FALL=1 TARG v(Y) VAL='0.1*PAR_VDD' FALL=1

** Delay Rise Fall
.MEASURE TRAN tdrise TRIG v(A)  VAL='0.5*PAR_VDD' RISE=1 TARG v(Y) VAL='0.5*PAR_VDD' RISE=1
.MEASURE TRAN tdfall TRIG v(A)  VAL='0.5*PAR_VDD' FALL=1 TARG v(Y) VAL='0.5*PAR_VDD' FALL=1

**Leakage current and average current
.MEASURE TRAN iavg AVG vdc#branch FROM=PAR_DEL TO='PAR_DEL+PAR_PER' 
.MEASURE TRAN ileak AVG vdc#branch FROM='PAR_DEL+0.4*PAR_PER' TO='PAR_DEL+0.45*PAR_PER'

.control
save all
OP
TRAN 1p 41n 

PLOT v(Y) 'CPAR_VDD + v(A)' '2*CPAR_VDD + v(B)' '3*CPAR_VDD + v(C)' 
LET cut-tstart=CPAR_DEL
LET cut-tstop='0.75*CPAR_PER'
cutout
PLOT v(Y) v(A)

**To go back to the full time range of theplot
**SETPLOT

.endc"}
C {devices/code_shown.sym} -360 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
