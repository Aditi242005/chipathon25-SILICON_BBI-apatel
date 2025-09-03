v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -350 130 -320 { lab=VDD}
N 130 -260 130 -230 { lab=#net1}
N 130 -230 270 -230 { lab=#net1}
N 290 -260 290 -230 { lab=#net1}
N 200 -230 200 -210 { lab=#net1}
N 200 -150 200 -110 { lab=#net2}
N 200 -50 200 -20 { lab=#net3}
N 70 -290 90 -290 { lab=A}
N 240 -290 250 -290 { lab=B}
N 620 -230 680 -230 { lab=Y}
N 130 -290 150 -290 { lab=VDD}
N 290 -290 310 -290 { lab=VDD}
N 200 -180 210 -180 { lab=VSS}
N 200 -80 220 -80 { lab=VSS}
N 140 -180 160 -180 { lab=A}
N 140 -80 160 -80 { lab=B}
N 620 -240 620 -210 { lab=Y}
N 540 -180 580 -180 { lab=#net1}
N 540 -260 540 -180 { lab=#net1}
N 540 -270 540 -260 { lab=#net1}
N 540 -270 580 -270 { lab=#net1}
N 270 -230 370 -230 { lab=#net1}
N 440 -350 440 -320 { lab=VDD}
N 440 -260 440 -230 { lab=#net1}
N 390 -290 400 -290 { lab=C}
N 440 -290 460 -290 { lab=VDD}
N 420 -230 520 -230 { lab=#net1}
N 370 -230 420 -230 {lab=#net1}
N 130 -400 130 -350 {lab=VDD}
N 130 -350 330 -350 {lab=VDD}
N 150 -290 180 -290 {lab=VDD}
N 180 -350 180 -290 {lab=VDD}
N 310 -290 340 -290 {lab=VDD}
N 340 -350 340 -290 {lab=VDD}
N 330 -350 680 -350 {lab=VDD}
N 680 -350 680 -270 {lab=VDD}
N 620 -270 680 -270 {lab=VDD}
N 620 -350 620 -300 {lab=VDD}
N 460 -290 500 -290 {lab=VDD}
N 500 -350 500 -290 {lab=VDD}
N 290 -350 290 -320 {lab=VDD}
N 520 -230 540 -230 {lab=#net1}
N 200 10 220 10 { lab=VSS}
N 140 10 160 10 { lab=C}
N 200 40 200 100 {lab=VSS}
N 620 -150 620 60 {lab=VSS}
N 200 60 620 60 {lab=VSS}
N 620 -180 660 -180 {lab=VSS}
N 660 -180 660 -140 {lab=VSS}
N 620 -140 660 -140 {lab=VSS}
N 210 -180 280 -180 {lab=VSS}
N 280 -180 280 60 {lab=VSS}
N 220 -80 280 -80 {lab=VSS}
N 220 10 280 10 {lab=VSS}
C {ipin.sym} 70 -290 0 0 {name=p3 lab=A
}
C {ipin.sym} 240 -290 0 0 {name=p4 lab=B
}
C {opin.sym} 680 -230 0 0 {name=p5 lab=Y}
C {pmos4.sym} 110 -290 0 0 {name=X1 model=pfet_03v3 w=1.7u l=0.3u m=1}
C {pmos4.sym} 270 -290 0 0 {name=X0 model=pfet_03v3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 180 -180 0 0 {name=X2 model=nfet_03v3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 180 -80 0 0 {name=X3 model=nfet_03v3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 140 -180 0 0 {name=l8 sig_type=std_logic lab=A}
C {lab_wire.sym} 140 -80 0 0 {name=l9 sig_type=std_logic lab=B}
C {pmos4.sym} 600 -270 0 0 {name=X4 model=pfet_03v3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 600 -180 0 0 {name=X5 model=nfet_03v3 w=0.85u l=0.3u m=1}
C {ipin.sym} 390 -290 0 0 {name=p1 lab=C
}
C {pmos4.sym} 420 -290 0 0 {name=X6 model=pfet_03v3 w=1.7u l=0.3u m=1}
C {iopin.sym} 130 -400 0 0 {name=p2 lab=VDD}
C {nmos4.sym} 180 10 0 0 {name=X7 model=nfet_03v3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 140 10 0 0 {name=l1 sig_type=std_logic lab=C}
C {iopin.sym} 200 100 0 0 {name=p6 lab=VSS}
