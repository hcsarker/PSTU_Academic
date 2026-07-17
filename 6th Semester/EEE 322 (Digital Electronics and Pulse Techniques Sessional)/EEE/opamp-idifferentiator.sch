*version 9.1 162298394
u 23
V? 2
U? 2
R? 2
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
pageloc 1 0 2049 
@status
n 0 126:03:16:00:58:04;1776279484 e 
s 2832 126:03:16:00:58:04;1776279484 e 
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 280 210 h
port 7 GND_EARTH 350 170 h
@parts
part 3 opamp 350 170 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 2 vsin 280 210 v
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 5 c 320 210 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=1u
part 4 r 370 260 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 19 nodeMarker 440 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=U1:OUT
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTCYAN
part 18 nodeMarker 320 210 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=V1:-
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=MUSTARD
@conn
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 350 210 350 260 8
a 0 up 33 0 352 235 hlt 100 V=
s 350 260 370 260 10
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 410 260 440 260 12
s 440 260 440 190 14
a 0 up 33 0 442 225 hlt 100 V=
s 440 190 430 190 16
@junction
j 350 210
+ p 5 2
+ p 3 -
j 350 170
+ s 7
+ p 3 +
j 350 210
+ p 5 2
+ w 9
j 350 210
+ p 3 -
+ w 9
j 370 260
+ p 4 1
+ w 9
j 410 260
+ p 4 2
+ w 13
j 430 190
+ p 3 OUT
+ w 13
j 320 210
+ p 18 pin1
+ p 5 1
j 440 190
+ p 19 pin1
+ w 13
j 320 210
+ p 2 -
+ p 5 1
j 280 210
+ s 6
+ p 2 +
j 320 210
+ p 18 pin1
+ p 2 -
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
