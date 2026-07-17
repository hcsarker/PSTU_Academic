*version 9.1 171748804
u 45
D? 5
C? 2
U? 2
V? 3
R? 4
? 3
@libraries
@analysis
.AC 1 3 0
+0 101
+1 10
+2 100K
.TRAN 1 0 0 0
+0 0ns
+1 2ns
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
pageloc 1 0 2578 
@status
n 0 126:05:11:03:01:00;1781125260 e 
s 2832 126:05:11:12:59:49;1781161189 e 
c 126:05:11:03:00:58;1781125258
*page 1 0 970 720 iA
@ports
port 28 GND_EARTH 290 220 h
port 30 GND_EARTH 390 120 u
port 41 GND_EARTH 350 210 h
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
part 3 c 390 150 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 40 hln 100 VALUE=0.022u
part 5 vsin 290 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 FREQ=4
a 1 u 0 0 0 0 hcn 100 VAMPL=10
part 23 r 320 170 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 35 nodeMarker 510 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=U1:OUT
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTYELLOW
@conn
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 480 260 510 260 15
s 510 260 510 190 17
a 0 up 33 0 512 225 hlt 100 V=
s 510 190 490 190 19
w 22
a 0 up 0:33 0 0 0 hln 100 V=
s 290 180 290 170 21
s 290 170 320 170 36
a 0 up 33 0 305 169 hct 100 V=
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 360 170 390 170 26
a 0 up 33 0 375 169 hct 100 V=
s 390 170 410 170 33
s 390 150 390 170 31
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 410 210 390 210 7
s 390 210 390 260 9
s 390 260 440 260 11
a 0 up 33 0 415 259 hct 100 V=
s 350 210 390 210 43
@junction
j 480 260
+ p 6 2
+ w 14
j 320 170
+ p 23 1
+ w 22
j 360 170
+ p 23 2
+ w 27
j 390 170
+ w 27
+ w 27
j 510 190
+ p 35 pin1
+ w 14
j 390 120
+ s 30
+ p 3 2
j 390 150
+ p 3 1
+ w 27
j 440 260
+ p 6 1
+ w 8
j 410 210
+ p 4 -
+ w 8
j 490 190
+ p 4 OUT
+ w 14
j 410 170
+ p 4 +
+ w 27
j 290 180
+ p 5 +
+ w 22
j 290 220
+ s 28
+ p 5 -
j 350 210
+ s 41
+ w 8
j 390 210
+ w 8
+ w 8
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
