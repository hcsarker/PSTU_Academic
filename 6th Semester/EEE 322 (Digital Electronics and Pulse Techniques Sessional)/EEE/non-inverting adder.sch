*version 9.1 2683356725
u 56
U? 2
R? 5
V? 3
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
pageloc 1 0 2918 
@status
n 0 126:03:16:00:17:06;1776277026 e 
s 2832 126:03:16:00:17:10;1776277030 e 
*page 1 0 970 720 iA
@ports
port 34 GND_EARTH 250 200 h
port 42 GND_EARTH 350 210 h
@parts
part 37 r 350 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 43 r 410 240 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 2 opamp 390 140 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 3 r 290 120 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 22 vsin 250 120 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 4 r 290 170 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 23 vsin 250 170 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=5
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 53 nodeMarker 470 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 54 nodeMarker 290 120 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 55 nodeMarker 290 170 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 20
s 340 170 330 170 18
s 340 120 330 120 19
s 340 170 340 140 16
s 340 140 340 120 26
s 390 140 340 140 29
w 32
s 250 120 250 170 31
s 250 170 250 200 33
w 39
s 350 210 350 180 40
w 36
s 390 180 390 240 44
s 390 240 410 240 46
s 380 180 390 180 35
w 50
s 450 240 470 240 49
s 470 240 470 160 51
@junction
j 330 170
+ p 4 2
+ w 20
j 330 120
+ p 3 2
+ w 20
j 340 140
+ w 20
+ w 20
j 390 140
+ p 2 +
+ w 20
j 290 120
+ p 22 -
+ p 3 1
j 290 170
+ p 23 -
+ p 4 1
j 250 120
+ p 22 +
+ w 32
j 250 170
+ p 23 +
+ w 32
j 250 200
+ s 34
+ w 32
j 390 180
+ p 2 -
+ w 36
j 390 180
+ p 37 2
+ p 2 -
j 390 180
+ p 37 2
+ w 36
j 350 180
+ p 37 1
+ w 39
j 350 210
+ s 42
+ w 39
j 410 240
+ p 43 1
+ w 36
j 450 240
+ p 43 2
+ w 50
j 470 160
+ p 2 OUT
+ w 50
j 470 160
+ p 53 pin1
+ p 2 OUT
j 470 160
+ p 53 pin1
+ w 50
j 290 120
+ p 54 pin1
+ p 3 1
j 290 120
+ p 54 pin1
+ p 22 -
j 290 170
+ p 55 pin1
+ p 4 1
j 290 170
+ p 55 pin1
+ p 23 -
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
