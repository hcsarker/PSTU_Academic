*version 9.1 3782693271
u 42
U? 2
R? 4
V? 5
? 4
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
pageloc 1 0 2678 
@status
n 0 126:03:16:00:27:18;1776277638 e 
s 2832 126:03:16:02:00:02;1776283202 e 
*page 1 0 970 720 iA
@ports
port 20 GND_EARTH 260 130 u
port 28 GND_EARTH 140 250 h
@parts
part 34 r 290 250 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 2 opamp 290 150 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 4 r 180 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 23 vsin 140 180 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 20 10 hcn 100 REFDES=V3
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 3 r 180 220 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 24 vsin 140 220 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 20 10 hcn 100 REFDES=V4
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=5
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 39 nodeMarker 370 170 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 40 nodeMarker 180 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 41 nodeMarker 180 220 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 17
s 290 150 260 150 16
s 260 150 260 130 18
w 26
s 140 180 140 220 25
s 140 220 140 250 27
w 6
s 220 180 240 180 5
s 240 180 240 190 7
s 240 220 220 220 9
s 240 190 240 220 13
s 290 190 270 190 11
s 270 190 240 190 31
s 270 190 270 250 29
s 270 250 290 250 32
w 36
s 330 250 370 250 35
s 370 250 370 170 37
@junction
j 220 180
+ p 4 2
+ w 6
j 220 220
+ p 3 2
+ w 6
j 290 190
+ p 2 -
+ w 6
j 240 190
+ w 6
+ w 6
j 290 150
+ p 2 +
+ w 17
j 260 130
+ s 20
+ w 17
j 180 180
+ p 23 -
+ p 4 1
j 180 220
+ p 24 -
+ p 3 1
j 140 180
+ p 23 +
+ w 26
j 140 220
+ p 24 +
+ w 26
j 140 250
+ s 28
+ w 26
j 270 190
+ w 6
+ w 6
j 290 250
+ p 34 1
+ w 6
j 330 250
+ p 34 2
+ w 36
j 370 170
+ p 2 OUT
+ w 36
j 370 170
+ p 39 pin1
+ p 2 OUT
j 370 170
+ p 39 pin1
+ w 36
j 180 180
+ p 40 pin1
+ p 4 1
j 180 180
+ p 40 pin1
+ p 23 -
j 180 220
+ p 41 pin1
+ p 3 1
j 180 220
+ p 41 pin1
+ p 24 -
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
