*version 9.1 3107234517
u 46
C? 2
D? 3
R? 2
V? 3
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 2s
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
pageloc 1 0 2397 
@status
n 0 126:03:16:02:45:50;1776285950 e 
s 2832 126:05:10:18:46:55;1781095615 e 
*page 1 0 970 720 iA
@ports
port 5 GND_EARTH 220 240 h
@parts
part 4 r 310 200 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 2 c 160 140 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=1m
part 6 vsin 130 170 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 FREQ=2
a 1 u 0 0 0 0 hcn 100 VAMPL=10
part 39 D1N4148 250 190 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-35
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 15 0 hln 100 REFDES=D2
a 0 sp 11 0 25 45 hln 100 PART=D1N4148
part 40 VDC 250 190 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=4v
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 37 nodeMarker 310 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 38 nodeMarker 310 230 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=LIGHTGREEN
@conn
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 130 170 130 140 7
s 130 140 160 140 9
a 0 up 33 0 145 139 hct 100 V=
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 190 140 250 140 11
a 0 up 33 0 280 139 hct 100 V=
s 310 140 310 160 13
s 250 140 310 140 43
s 250 140 250 160 15
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 310 230 250 230 20
s 130 230 130 210 22
s 220 230 130 230 26
a 0 up 33 0 175 229 hct 100 V=
s 220 240 220 230 24
s 310 230 310 200 29
s 250 230 220 230 45
@junction
j 130 170
+ p 6 +
+ w 8
j 130 210
+ p 6 -
+ w 19
j 220 240
+ s 5
+ w 19
j 220 230
+ w 19
+ w 19
j 310 160
+ p 4 2
+ w 12
j 310 200
+ p 4 1
+ w 19
j 160 140
+ p 2 1
+ w 8
j 190 140
+ p 2 2
+ w 12
j 310 140
+ p 37 pin1
+ w 12
j 310 230
+ p 38 pin1
+ w 19
j 250 160
+ p 39 2
+ w 12
j 250 140
+ w 12
+ w 12
j 250 190
+ p 40 +
+ p 39 1
j 250 230
+ p 40 -
+ w 19
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
