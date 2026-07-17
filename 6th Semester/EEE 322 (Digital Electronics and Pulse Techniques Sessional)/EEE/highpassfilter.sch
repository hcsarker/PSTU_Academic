*version 9.1 996891376
u 49
D? 5
C? 3
U? 2
V? 3
R? 5
? 3
@libraries
@analysis
.AC 1 3 0
+0 101
+1 10
+2 100K
.TRAN 1 0 0 0
+0 0ns
+1 1000ns
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
pageloc 1 0 3036 
@status
n 0 126:05:11:02:43:02;1781124182 e 
s 2832 126:05:11:02:43:48;1781124228 e 
c 126:05:11:02:42:49;1781124169
*page 1 0 970 720 iA
@ports
port 28 GND_EARTH 290 220 h
port 41 GND_EARTH 350 210 h
port 30 GND_EARTH 390 120 u
@parts
part 4 opamp 410 170 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 6 r 440 260 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 5 vsin 290 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 42 r 350 210 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 43 r 390 160 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 45 c 330 170 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 15 25 hln 100 VALUE=1n
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 35 nodeMarker 510 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=U1:OUT
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTYELLOW
part 34 nodeMarker 360 170 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=;;BRIGHTMAGENTA
a 0 s 0 0 0 0 hln 100 PROBEVAR=R2:2;;BRIGHTMAGENTA
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTMAGENTA
@conn
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 480 260 510 260 15
s 510 260 510 190 17
a 0 up 33 0 512 225 hlt 100 V=
s 510 190 490 190 19
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 410 210 390 210 7
s 390 210 390 260 9
s 390 260 440 260 11
a 0 up 33 0 415 259 hct 100 V=
w 22
a 0 up 0:33 0 0 0 hln 100 V=
s 290 180 290 170 21
s 290 170 330 170 48
a 0 up 33 0 305 169 hct 100 V=
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 360 170 390 170 26
a 0 up 33 0 375 169 hct 100 V=
s 390 170 410 170 33
s 390 150 390 160 31
s 390 160 390 170 44
@junction
j 480 260
+ p 6 2
+ w 14
j 390 170
+ w 27
+ w 27
j 510 190
+ p 35 pin1
+ w 14
j 440 260
+ p 6 1
+ w 8
j 290 180
+ p 5 +
+ w 22
j 290 220
+ s 28
+ p 5 -
j 410 210
+ p 4 -
+ w 8
j 490 190
+ p 4 OUT
+ w 14
j 410 170
+ p 4 +
+ w 27
j 350 210
+ p 42 1
+ s 41
j 390 210
+ p 42 2
+ w 8
j 390 120
+ p 43 2
+ s 30
j 390 160
+ p 43 1
+ w 27
j 360 170
+ p 45 2
+ w 27
j 330 170
+ p 45 1
+ w 22
j 360 170
+ p 34 pin1
+ p 45 2
j 360 170
+ p 34 pin1
+ w 27
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
