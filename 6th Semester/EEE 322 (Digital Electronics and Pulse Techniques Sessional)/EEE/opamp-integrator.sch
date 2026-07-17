*version 9.1 3904570727
u 42
U? 2
R? 4
V? 3
C? 2
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 2.5s
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 2704 
@status
n 0 126:03:16:11:02:54;1776315774 e 
s 2832 126:05:11:13:06:55;1781161615 e 
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 240 180 h
port 14 GND_EARTH 130 230 h
@parts
part 22 c 300 250 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 2 opamp 290 170 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 10 r 170 210 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 11 vsin 130 210 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 34 r 300 230 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 32 nodeMarker 380 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=U1:OUT
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTGREEN
part 31 nodeMarker 170 210 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTRED
@conn
w 4
a 0 up 0:33 0 0 0 hln 100 V=
s 240 170 290 170 3
a 0 up 33 0 265 169 hct 100 V=
s 240 170 240 180 5
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 130 210 130 230 12
a 0 up 33 0 132 220 hlt 100 V=
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 210 210 270 210 8
a 0 up 33 0 240 209 hct 100 V=
s 270 210 290 210 17
s 270 250 270 230 18
s 270 250 300 250 20
s 270 230 270 210 38
s 270 230 300 230 36
w 24
a 0 up 0:33 0 0 0 hln 100 V=
s 380 250 330 250 25
s 380 250 380 230 27
a 0 up 33 0 382 220 hlt 100 V=
s 380 190 370 190 29
s 380 230 380 190 41
s 380 230 340 230 39
@junction
j 290 170
+ p 2 +
+ w 4
j 240 180
+ s 7
+ w 4
j 290 210
+ p 2 -
+ w 9
j 210 210
+ p 10 2
+ w 9
j 130 230
+ s 14
+ w 13
j 270 210
+ w 9
+ w 9
j 370 190
+ p 2 OUT
+ w 24
j 170 210
+ p 31 pin1
+ p 10 1
j 380 190
+ p 32 pin1
+ w 24
j 300 250
+ p 22 1
+ w 9
j 330 250
+ p 22 2
+ w 24
j 170 210
+ p 11 -
+ p 10 1
j 130 210
+ p 11 +
+ w 13
j 170 210
+ p 31 pin1
+ p 11 -
j 300 230
+ p 34 1
+ w 9
j 270 230
+ w 9
+ w 9
j 340 230
+ p 34 2
+ w 24
j 380 230
+ w 24
+ w 24
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
