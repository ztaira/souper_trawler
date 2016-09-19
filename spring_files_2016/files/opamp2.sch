*version 9.1 2963689311
u 91
U? 2
R? 4
V? 3
? 3
C? 4
@libraries
@analysis
.AC 1 3 0
+0 101
+1 10
+2 1.00g
.DC 0 0 0 0 1 1
+ 0 0 v2
+ 0 4 -4
+ 0 5 4
+ 0 6 .1
.TRAN 0 0 0 0
+0 0ns
+1 1000us
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
pageloc 1 0 3915 
@status
n 0 109:08:20:12:21:00;1253463660 e 
s 0 109:08:20:12:21:02;1253463662 e 
*page 1 0 970 720 iA
@ports
port 6 EGND 240 310 h
port 5 EGND 100 310 h
port 7 EGND 400 310 h
port 84 EGND 190 270 h
@parts
part 4 r 140 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=R1
a 0 xp 9 0 15 0 hln 100 REFDES=R1
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
part 3 r 280 80 h
a 0 u 13 0 15 25 hln 100 VALUE=5k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=r2
a 0 xp 9 0 15 0 hln 100 REFDES=r2
part 2 OPAMP 270 200 U
a 0 sp 11 0 50 60 hln 100 PART=OPAMP
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 48 VDC 100 240 h
a 1 u 13 0 -11 18 hcn 100 DC=2V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
part 8 VSIN 100 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 DC=0
a 1 u 0 0 0 0 hcn 100 AC=1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=1
a 1 u 0 0 0 0 hcn 100 FREQ=3k
part 9 r 400 260 v
a 0 u 13 0 15 35 hln 100 VALUE=500
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=RLoad
a 0 xp 9 0 15 0 hln 100 REFDES=RLoad
part 64 c 430 180 h
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 82 c 190 230 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 15 25 hln 100 VALUE=1u
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 62 nodeMarker 460 220 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=C1:1
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 36
s 240 320 240 310 35
s 240 310 240 200 37
s 240 200 270 200 38
s 270 200 280 200 40
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 140 160 100 160 10
s 100 160 100 180 12
a 0 up 33 0 102 170 hlt 100 V=
w 44
a 0 up 0:33 0 0 0 hln 100 V=
s 100 310 100 320 45
s 100 310 100 280 55
s 100 280 100 270 57
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 400 250 400 260 58
s 400 260 400 310 60
a 0 up 0:33 0 402 285 hlt 100 V=
s 400 310 400 320 61
w 50
a 0 up 0:33 0 0 0 hln 100 V=
s 100 240 100 220 49
a 0 up 0:33 0 102 230 hlt 100 V=
s 100 220 100 210 51
w 81
a 0 up 0:33 0 0 0 hln 100 V=
s 400 180 430 180 65
s 350 180 400 180 25
s 400 180 400 80 29
a 0 up 33 0 402 130 hlt 100 V=
s 400 80 320 80 31
w 26
a 0 up 0:33 0 0 0 hln 100 V=
s 460 180 460 220 75
s 460 220 400 220 77
a 0 up 33 0 430 219 hct 100 V=
s 400 220 400 230 79
w 86
a 0 up 0:33 0 0 0 hln 100 V=
s 190 220 190 230 85
s 190 230 190 270 87
a 0 up 33 0 192 250 hlt 100 V=
w 17
a 0 up 0:33 0 0 0 hln 100 V=
s 270 160 230 160 14
s 230 160 190 160 20
s 230 80 230 160 18
a 0 up 33 0 232 120 hlt 100 V=
s 230 80 280 80 21
s 190 160 180 160 90
s 190 200 190 160 88
@junction
j 320 80
+ p 3 2
+ w 81
j 240 310
+ s 6
+ w 36
j 100 310
+ s 5
+ w 44
j 100 220
+ p 8 -
+ w 50
j 100 240
+ p 48 +
+ w 50
j 100 280
+ p 48 -
+ w 44
j 400 260
+ p 9 1
+ w 59
j 400 310
+ s 7
+ w 59
j 140 160
+ p 4 1
+ w 11
j 100 180
+ p 8 +
+ w 11
j 350 180
+ p 2 OUT
+ w 81
j 270 200
+ p 2 +
+ w 36
j 280 80
+ p 3 1
+ w 17
j 270 160
+ p 2 -
+ w 17
j 180 160
+ p 4 2
+ w 17
j 230 160
+ w 17
+ w 17
j 430 180
+ p 64 1
+ w 81
j 460 180
+ p 64 2
+ w 26
j 400 220
+ p 9 2
+ w 26
j 460 220
+ p 62 pin1
+ w 26
j 190 230
+ p 82 1
+ w 86
j 190 270
+ s 84
+ w 86
j 190 200
+ p 82 2
+ w 17
j 190 160
+ w 17
+ w 17
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
