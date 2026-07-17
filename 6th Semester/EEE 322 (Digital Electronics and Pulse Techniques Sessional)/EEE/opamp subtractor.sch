*version 9.1 3155634345
u 48
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
pageloc 1 0 3233 
@status
n 0 126:03:16:00:37:29;1776278249 e 
s 2832 126:03:16:02:01:38;1776283298 e 
*page 1 0 970 720 iA
@ports
port 42 GND_EARTH 140 240 h
port 41 GND_EARTH 290 100 h
@parts
part 5 r 290 240 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 2 opamp 290 160 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 6 r 260 140 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 4 r 190 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 7 vsin 150 160 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=15
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 3 r 190 200 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 8 vsin 150 200 v
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
part 45 nodeMarker 380 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 46 nodeMarker 190 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 47 nodeMarker 190 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 24
a 0 up 0:33 0 0 0 hln 100 V=
s 290 160 260 160 23
s 260 160 230 160 27
a 0 up 33 0 245 159 hct 100 V=
s 260 140 260 160 25
w 29
a 0 up 0:33 0 0 0 hln 100 V=
s 230 200 260 200 28
s 260 200 290 200 32
s 260 200 260 240 30
a 0 up 33 0 262 220 hlt 100 V=
s 260 240 290 240 33
w 10
a 0 up 0:33 0 0 0 hln 100 V=
s 150 160 140 160 9
s 140 160 140 200 11
s 140 200 150 200 13
s 140 200 140 240 17
a 0 up 33 0 142 220 hlt 100 V=
w 44
a 0 up 0:33 0 0 0 hln 100 V=
s 260 100 290 100 43
a 0 up 33 0 275 99 hct 100 V=
w 36
a 0 up 0:33 0 0 0 hln 100 V=
s 330 240 380 240 35
s 380 240 380 180 37
a 0 up 33 0 382 210 hlt 100 V=
s 380 180 370 180 39
@junction
j 140 200
+ w 10
+ w 10
j 230 160
+ p 4 2
+ w 24
j 260 140
+ p 6 1
+ w 24
j 260 160
+ w 24
+ w 24
j 230 200
+ p 3 2
+ w 29
j 260 200
+ w 29
+ w 29
j 290 240
+ p 5 1
+ w 29
j 330 240
+ p 5 2
+ w 36
j 140 240
+ s 42
+ w 10
j 260 100
+ p 6 2
+ w 44
j 290 100
+ s 41
+ w 44
j 190 200
+ p 8 -
+ p 3 1
j 150 200
+ p 8 +
+ w 10
j 190 160
+ p 7 -
+ p 4 1
j 150 160
+ p 7 +
+ w 10
j 290 160
+ p 2 +
+ w 24
j 290 200
+ p 2 -
+ w 29
j 370 180
+ p 2 OUT
+ w 36
j 380 180
+ p 45 pin1
+ w 36
j 190 160
+ p 46 pin1
+ p 4 1
j 190 160
+ p 46 pin1
+ p 7 -
j 190 200
+ p 47 pin1
+ p 3 1
j 190 200
+ p 47 pin1
+ p 8 -
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
