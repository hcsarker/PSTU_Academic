*version 9.1 1536679894
u 29
D? 4
V? 2
R? 2
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
pageloc 1 0 1673 
@status
n 0 126:03:16:01:45:53;1776282353 e 
s 2832 126:03:16:01:47:08;1776282428 e 
*page 1 0 970 720 iA
@ports
port 21 GND_EARTH 230 220 h
@parts
part 14 r 300 210 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 3 vsin 160 170 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 27 D1N4148 210 160 h
a 0 sp 11 0 15 25 hln 100 PART=D1N4148
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-35
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 15 0 hln 100 REFDES=D2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 24 nodeMarker 300 220 h
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTGREEN
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 23 nodeMarker 300 160 h
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTCYAN
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:2
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 13
s 160 210 160 220 12
s 300 210 300 220 17
s 300 220 230 220 19
s 230 220 160 220 22
w 9
s 300 160 300 170 15
s 240 160 300 160 8
w 5
s 160 160 160 170 4
s 160 160 210 160 6
@junction
j 300 170
+ p 14 2
+ w 9
j 300 210
+ p 14 1
+ w 13
j 230 220
+ s 21
+ w 13
j 300 160
+ p 23 pin1
+ w 9
j 300 220
+ p 24 pin1
+ w 13
j 160 170
+ p 3 +
+ w 5
j 160 210
+ p 3 -
+ w 13
j 240 160
+ p 27 2
+ w 9
j 210 160
+ p 27 1
+ w 5
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
