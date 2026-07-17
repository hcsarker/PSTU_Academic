*version 9.1 151750485
u 81
R? 5
V? 3
D? 5
? 8
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
pageloc 1 0 1912 
@status
n 0 126:03:16:02:20:01;1776284401 e 
s 2832 126:03:16:02:20:05;1776284405 e 
c 126:03:16:02:19:56;1776284396
*page 1 0 970 720 iA
@ports
port 21 GND_EARTH 230 230 h
@parts
part 19 vsin 160 150 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
part 74 r 200 130 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 76 D1N4148 300 180 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-35
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D4
a 0 ap 9 0 15 0 hln 100 REFDES=D4
a 0 sp 11 0 25 45 hln 100 PART=D1N4148
a 0 u 0 0 0 0 hln 100 value=3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 79 nodeMarker 300 130 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=6
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTCYAN
part 80 nodeMarker 300 220 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=7
a 0 sp 0 0 0 0 hln 100 COLOR=MUSTARD
@conn
w 15
a 0 up 0:33 0 0 0 hln 100 V=
s 160 130 160 150 14
s 160 130 200 130 54
a 0 up 33 0 180 129 hct 100 V=
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 230 130 240 130 57
a 0 up 33 0 280 129 hct 100 V=
s 300 130 300 150 60
s 240 130 300 130 75
w 3
s 300 220 230 220 8
a 0 up 33 0 195 219 hct 100 V=
s 160 190 160 220 2
s 230 220 160 220 72
s 230 220 230 230 61
s 300 220 300 180 77
@junction
j 230 230
+ s 21
+ w 3
j 230 220
+ w 3
+ w 3
j 160 150
+ p 19 +
+ w 15
j 160 190
+ p 19 -
+ w 3
j 200 130
+ p 74 1
+ w 15
j 240 130
+ p 74 2
+ w 11
j 300 150
+ p 76 2
+ w 11
j 300 180
+ p 76 1
+ w 3
j 300 130
+ p 79 pin1
+ w 11
j 300 220
+ p 80 pin1
+ w 3
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
