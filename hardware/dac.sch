EESchema Schematic File Version 4
LIBS:tdr-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5BC36C4A
P 6700 3600
AR Path="/5BC3F67C/5BC36C4A" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36C4A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 3350 50  0001 C CNN
F 1 "GND" H 6705 3427 50  0000 C CNN
F 2 "" H 6700 3600 50  0001 C CNN
F 3 "" H 6700 3600 50  0001 C CNN
	1    6700 3600
	1    0    0    -1  
$EndComp
$Comp
L tdr-rescue:AD9740ACPZ-symbols-tdr-rescue U?
U 1 1 5BC36C50
P 3800 1200
AR Path="/5BC3F67C/5BC36C50" Ref="U?"  Part="1" 
AR Path="/5BC349EC/5BC36C50" Ref="U?"  Part="1" 
AR Path="/5BC36C50" Ref="U?"  Part="1" 
F 0 "U?" H 5043 1587 60  0000 C CNN
F 1 "AD9740ACPZ" H 5043 1481 60  0000 C CNN
F 2 "CP_32_2" H 4800 1540 60  0001 C CNN
F 3 "" H 3800 1200 60  0000 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3500 6700 3500
Wire Wire Line
	6700 3500 6700 3600
Wire Wire Line
	6600 3400 6700 3400
Wire Wire Line
	6700 3400 6700 3500
Connection ~ 6700 3500
Wire Wire Line
	6600 3300 6700 3300
Wire Wire Line
	6700 3300 6700 3400
Connection ~ 6700 3400
Wire Wire Line
	6600 3200 6700 3200
Wire Wire Line
	6700 3200 6700 3300
Connection ~ 6700 3300
Wire Wire Line
	6600 3100 6700 3100
Wire Wire Line
	6700 3100 6700 3200
Connection ~ 6700 3200
NoConn ~ 6600 2600
NoConn ~ 6600 2700
NoConn ~ 6600 2800
NoConn ~ 6600 2900
$Comp
L power:GND #PWR?
U 1 1 5BC36C69
P 6700 1300
AR Path="/5BC3F67C/5BC36C69" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36C69" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 1050 50  0001 C CNN
F 1 "GND" H 6705 1127 50  0000 C CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "" H 6700 1300 50  0001 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1200 6600 1200
Wire Wire Line
	6700 1200 6700 1300
Text HLabel 1400 1800 0    50   Input ~ 0
CLK_P
Text HLabel 1400 1900 0    50   Input ~ 0
CLK_N
Text Notes 2650 1550 0    50   ~ 0
PECL CLK
$Comp
L Device:R_Small R?
U 1 1 5BC36C74
P 3500 1500
AR Path="/5BC3F67C/5BC36C74" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BC36C74" Ref="R?"  Part="1" 
F 0 "R?" V 3450 1650 50  0000 C CNN
F 1 "DNI" V 3450 1350 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "~" H 3500 1500 50  0001 C CNN
	1    3500 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36C7B
P 3300 1500
AR Path="/5BC3F67C/5BC36C7B" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36C7B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 1250 50  0001 C CNN
F 1 "GND" H 3305 1327 50  0000 C CNN
F 2 "" H 3300 1500 50  0001 C CNN
F 3 "" H 3300 1500 50  0001 C CNN
	1    3300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1500 3400 1500
Wire Wire Line
	3600 1500 3800 1500
$Comp
L Device:R_Small R?
U 1 1 5BC36C83
P 3500 1300
AR Path="/5BC3F67C/5BC36C83" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BC36C83" Ref="R?"  Part="1" 
F 0 "R?" V 3450 1450 50  0000 C CNN
F 1 "JMP" V 3450 1150 50  0000 C CNN
F 2 "" H 3500 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36C8A
P 3300 1300
AR Path="/5BC3F67C/5BC36C8A" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36C8A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 1050 50  0001 C CNN
F 1 "GND" H 3305 1127 50  0000 C CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0001 C CNN
	1    3300 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1300 3400 1300
Wire Wire Line
	3600 1300 3800 1300
Text Notes 2550 1300 0    50   ~ 0
binary input
$Comp
L Device:R_Small R?
U 1 1 5BC36C93
P 3500 1200
AR Path="/5BC3F67C/5BC36C93" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BC36C93" Ref="R?"  Part="1" 
F 0 "R?" V 3450 1350 50  0000 C CNN
F 1 "2k" V 3450 1050 50  0000 C CNN
F 2 "" H 3500 1200 50  0001 C CNN
F 3 "~" H 3500 1200 50  0001 C CNN
	1    3500 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 1200 3800 1200
$Comp
L power:GND #PWR?
U 1 1 5BC36C9B
P 3300 1200
AR Path="/5BC3F67C/5BC36C9B" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36C9B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 950 50  0001 C CNN
F 1 "GND" H 3305 1027 50  0000 C CNN
F 2 "" H 3300 1200 50  0001 C CNN
F 3 "" H 3300 1200 50  0001 C CNN
	1    3300 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1200 3400 1200
Text Notes 3250 900  0    50   ~ 0
Ioutfs = 32 Iref, Iref = Vrefio / R
Text Label 3000 1400 2    50   ~ 0
DAC_SLEEP
$Comp
L Connector:TestPoint TP?
U 1 1 5BC36CA4
P 3050 1050
AR Path="/5BC3F67C/5BC36CA4" Ref="TP?"  Part="1" 
AR Path="/5BC349EC/5BC36CA4" Ref="TP?"  Part="1" 
F 0 "TP?" H 3108 1170 50  0000 L CNN
F 1 "TestPoint" H 3108 1079 50  0000 L CNN
F 2 "" H 3250 1050 50  0001 C CNN
F 3 "~" H 3250 1050 50  0001 C CNN
	1    3050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1400 3050 1400
Wire Wire Line
	3050 1400 3050 1050
Connection ~ 3050 1400
Wire Wire Line
	3050 1400 3800 1400
Wire Wire Line
	3800 1600 2250 1600
$Comp
L Connector:TestPoint TP?
U 1 1 5BC36CB0
P 2250 1050
AR Path="/5BC3F67C/5BC36CB0" Ref="TP?"  Part="1" 
AR Path="/5BC349EC/5BC36CB0" Ref="TP?"  Part="1" 
F 0 "TP?" H 2308 1170 50  0000 L CNN
F 1 "TestPoint" H 2308 1079 50  0000 L CNN
F 2 "" H 2450 1050 50  0001 C CNN
F 3 "~" H 2450 1050 50  0001 C CNN
	1    2250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1050 2250 1150
$Comp
L Device:C_Small C?
U 1 1 5BC36CB8
P 1850 1300
AR Path="/5BC3F67C/5BC36CB8" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36CB8" Ref="C?"  Part="1" 
F 0 "C?" H 1942 1346 50  0000 L CNN
F 1 "100 nF" H 1942 1255 50  0000 L CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "~" H 1850 1300 50  0001 C CNN
	1    1850 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36CBF
P 1850 1450
AR Path="/5BC3F67C/5BC36CBF" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36CBF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 1200 50  0001 C CNN
F 1 "GND" H 1855 1277 50  0000 C CNN
F 2 "" H 1850 1450 50  0001 C CNN
F 3 "" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1450 1850 1400
Wire Wire Line
	1850 1200 1850 1150
Connection ~ 2250 1150
Wire Wire Line
	2250 1150 2250 1600
Wire Wire Line
	1850 1150 2250 1150
$Comp
L Device:R_Pack04 RN?
U 1 1 5BC36CCA
P 1900 2300
AR Path="/5BC3F67C/5BC36CCA" Ref="RN?"  Part="1" 
AR Path="/5BC349EC/5BC36CCA" Ref="RN?"  Part="1" 
F 0 "RN?" V 1483 2300 50  0000 C CNN
F 1 "R_Pack04" V 1574 2300 50  0000 C CNN
F 2 "" V 2175 2300 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1900 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN?
U 1 1 5BC36CD1
P 1900 2950
AR Path="/5BC3F67C/5BC36CD1" Ref="RN?"  Part="1" 
AR Path="/5BC349EC/5BC36CD1" Ref="RN?"  Part="1" 
F 0 "RN?" V 1483 2950 50  0000 C CNN
F 1 "R_Pack04" V 1574 2950 50  0000 C CNN
F 2 "" V 2175 2950 50  0001 C CNN
F 3 "~" H 1900 2950 50  0001 C CNN
	1    1900 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2750 2250 2750
Wire Wire Line
	2250 2750 2250 2500
Wire Wire Line
	2100 2850 2350 2850
Wire Wire Line
	2350 2850 2350 2600
Wire Wire Line
	2100 2950 2450 2950
Wire Wire Line
	2450 2950 2450 2700
Wire Wire Line
	2100 3050 2550 3050
Wire Wire Line
	2550 3050 2550 2800
$Comp
L Device:R_Pack04 RN?
U 1 1 5BC36CE0
P 1900 3600
AR Path="/5BC3F67C/5BC36CE0" Ref="RN?"  Part="1" 
AR Path="/5BC349EC/5BC36CE0" Ref="RN?"  Part="1" 
F 0 "RN?" V 1483 3600 50  0000 C CNN
F 1 "R_Pack04" V 1574 3600 50  0000 C CNN
F 2 "" V 2175 3600 50  0001 C CNN
F 3 "~" H 1900 3600 50  0001 C CNN
	1    1900 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2100 3800 2100
Wire Wire Line
	1400 1800 3800 1800
Wire Wire Line
	1400 1900 3800 1900
Wire Wire Line
	2100 2200 3800 2200
Wire Wire Line
	2100 2300 3800 2300
Wire Wire Line
	2100 2400 3800 2400
Wire Wire Line
	2250 2500 3800 2500
Wire Wire Line
	2350 2600 3800 2600
Wire Wire Line
	2450 2700 3800 2700
Wire Wire Line
	2550 2800 3800 2800
Wire Wire Line
	2100 3400 2650 3400
Wire Wire Line
	2650 3400 2650 2900
Wire Wire Line
	2650 2900 3800 2900
Wire Wire Line
	2100 3500 2750 3500
Wire Wire Line
	2750 3500 2750 3000
Wire Wire Line
	2750 3000 3800 3000
Text HLabel 1400 2100 0    50   Input ~ 0
D0
Wire Wire Line
	1400 2100 1700 2100
Text HLabel 1400 2200 0    50   Input ~ 0
D1
Text HLabel 1400 2300 0    50   Input ~ 0
D2
Text HLabel 1400 2400 0    50   Input ~ 0
D3
Text HLabel 1400 2750 0    50   Input ~ 0
D4
Text HLabel 1400 2850 0    50   Input ~ 0
D5
Text HLabel 1400 2950 0    50   Input ~ 0
D6
Text HLabel 1400 3050 0    50   Input ~ 0
D7
Wire Wire Line
	1400 2750 1700 2750
Wire Wire Line
	1400 2850 1700 2850
Wire Wire Line
	1400 2950 1700 2950
Wire Wire Line
	1400 3050 1700 3050
Text HLabel 1400 3400 0    50   Input ~ 0
D8
Text HLabel 1400 3500 0    50   Input ~ 0
D9
Wire Wire Line
	1400 3400 1700 3400
Wire Wire Line
	1700 3500 1400 3500
Text Label 2350 3700 0    50   ~ 0
DAC_SLEEP
Wire Wire Line
	2350 3700 2100 3700
Wire Wire Line
	1700 3700 1400 3700
Text HLabel 1400 3700 0    50   Input ~ 0
DAC_SLEEP
NoConn ~ 2100 3600
NoConn ~ 1700 3600
Wire Wire Line
	1400 2200 1700 2200
Wire Wire Line
	1400 2300 1700 2300
Wire Wire Line
	1400 2400 1700 2400
$Comp
L Device:C_Small C?
U 1 1 5BC36D17
P 1850 4400
AR Path="/5BC3F67C/5BC36D17" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D17" Ref="C?"  Part="1" 
F 0 "C?" H 1942 4446 50  0000 L CNN
F 1 "100 nF" H 1942 4355 50  0000 L CNN
F 2 "" H 1850 4400 50  0001 C CNN
F 3 "~" H 1850 4400 50  0001 C CNN
	1    1850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36D1E
P 1400 4400
AR Path="/5BC3F67C/5BC36D1E" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D1E" Ref="C?"  Part="1" 
F 0 "C?" H 1492 4446 50  0000 L CNN
F 1 "2.2 uF" H 1492 4355 50  0000 L CNN
F 2 "" H 1400 4400 50  0001 C CNN
F 3 "~" H 1400 4400 50  0001 C CNN
	1    1400 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36D25
P 2350 4400
AR Path="/5BC3F67C/5BC36D25" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D25" Ref="C?"  Part="1" 
F 0 "C?" H 2442 4446 50  0000 L CNN
F 1 "100 pF" H 2442 4355 50  0000 L CNN
F 2 "" H 2350 4400 50  0001 C CNN
F 3 "~" H 2350 4400 50  0001 C CNN
	1    2350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D2C
P 1400 4550
AR Path="/5BC3F67C/5BC36D2C" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1400 4300 50  0001 C CNN
F 1 "GND" H 1405 4377 50  0001 C CNN
F 2 "" H 1400 4550 50  0001 C CNN
F 3 "" H 1400 4550 50  0001 C CNN
	1    1400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4250 1850 4250
$Comp
L power:GND #PWR?
U 1 1 5BC36D33
P 1850 4550
AR Path="/5BC3F67C/5BC36D33" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D33" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 4300 50  0001 C CNN
F 1 "GND" H 1855 4377 50  0001 C CNN
F 2 "" H 1850 4550 50  0001 C CNN
F 3 "" H 1850 4550 50  0001 C CNN
	1    1850 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D39
P 2350 4550
AR Path="/5BC3F67C/5BC36D39" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D39" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 4300 50  0001 C CNN
F 1 "GND" H 2355 4377 50  0001 C CNN
F 2 "" H 2350 4550 50  0001 C CNN
F 3 "" H 2350 4550 50  0001 C CNN
	1    2350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4550 1400 4500
Wire Wire Line
	1400 4300 1400 4250
Wire Wire Line
	1850 4300 1850 4250
Connection ~ 1850 4250
Wire Wire Line
	1850 4250 2350 4250
Wire Wire Line
	1850 4500 1850 4550
Wire Wire Line
	2350 4550 2350 4500
Wire Wire Line
	2350 4250 2350 4300
$Comp
L Device:C_Small C?
U 1 1 5BC36D47
P 1850 5100
AR Path="/5BC3F67C/5BC36D47" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D47" Ref="C?"  Part="1" 
F 0 "C?" H 1942 5146 50  0000 L CNN
F 1 "100 nF" H 1942 5055 50  0000 L CNN
F 2 "" H 1850 5100 50  0001 C CNN
F 3 "~" H 1850 5100 50  0001 C CNN
	1    1850 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36D4E
P 1400 5100
AR Path="/5BC3F67C/5BC36D4E" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D4E" Ref="C?"  Part="1" 
F 0 "C?" H 1492 5146 50  0000 L CNN
F 1 "2.2 uF" H 1492 5055 50  0000 L CNN
F 2 "" H 1400 5100 50  0001 C CNN
F 3 "~" H 1400 5100 50  0001 C CNN
	1    1400 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36D55
P 2350 5100
AR Path="/5BC3F67C/5BC36D55" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D55" Ref="C?"  Part="1" 
F 0 "C?" H 2442 5146 50  0000 L CNN
F 1 "100 pF" H 2442 5055 50  0000 L CNN
F 2 "" H 2350 5100 50  0001 C CNN
F 3 "~" H 2350 5100 50  0001 C CNN
	1    2350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4950 1850 4950
Wire Wire Line
	1400 5250 1400 5200
Wire Wire Line
	1400 5000 1400 4950
Wire Wire Line
	1850 5000 1850 4950
Connection ~ 1850 4950
Wire Wire Line
	1850 4950 2350 4950
Wire Wire Line
	1850 5200 1850 5250
Wire Wire Line
	2350 5250 2350 5200
Wire Wire Line
	2350 4950 2350 5000
$Comp
L Device:C_Small C?
U 1 1 5BC36D77
P 1850 5800
AR Path="/5BC3F67C/5BC36D77" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D77" Ref="C?"  Part="1" 
F 0 "C?" H 1942 5846 50  0000 L CNN
F 1 "100 nF" H 1942 5755 50  0000 L CNN
F 2 "" H 1850 5800 50  0001 C CNN
F 3 "~" H 1850 5800 50  0001 C CNN
	1    1850 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36D7E
P 1400 5800
AR Path="/5BC3F67C/5BC36D7E" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D7E" Ref="C?"  Part="1" 
F 0 "C?" H 1492 5846 50  0000 L CNN
F 1 "2.2 uF" H 1492 5755 50  0000 L CNN
F 2 "" H 1400 5800 50  0001 C CNN
F 3 "~" H 1400 5800 50  0001 C CNN
	1    1400 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36D85
P 2350 5800
AR Path="/5BC3F67C/5BC36D85" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36D85" Ref="C?"  Part="1" 
F 0 "C?" H 2442 5846 50  0000 L CNN
F 1 "100 pF" H 2442 5755 50  0000 L CNN
F 2 "" H 2350 5800 50  0001 C CNN
F 3 "~" H 2350 5800 50  0001 C CNN
	1    2350 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D8C
P 1400 5950
AR Path="/5BC3F67C/5BC36D8C" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D8C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1400 5700 50  0001 C CNN
F 1 "GND" H 1405 5777 50  0001 C CNN
F 2 "" H 1400 5950 50  0001 C CNN
F 3 "" H 1400 5950 50  0001 C CNN
	1    1400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5650 1850 5650
$Comp
L power:GND #PWR?
U 1 1 5BC36D93
P 1850 5950
AR Path="/5BC3F67C/5BC36D93" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 5700 50  0001 C CNN
F 1 "GND" H 1855 5777 50  0001 C CNN
F 2 "" H 1850 5950 50  0001 C CNN
F 3 "" H 1850 5950 50  0001 C CNN
	1    1850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D99
P 2350 5950
AR Path="/5BC3F67C/5BC36D99" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D99" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 5700 50  0001 C CNN
F 1 "GND" H 2355 5777 50  0001 C CNN
F 2 "" H 2350 5950 50  0001 C CNN
F 3 "" H 2350 5950 50  0001 C CNN
	1    2350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5950 1400 5900
Wire Wire Line
	1400 5700 1400 5650
Wire Wire Line
	1850 5700 1850 5650
Connection ~ 1850 5650
Wire Wire Line
	1850 5650 2350 5650
Wire Wire Line
	1850 5900 1850 5950
Wire Wire Line
	2350 5950 2350 5900
Wire Wire Line
	2350 5650 2350 5700
$Comp
L Device:C_Small C?
U 1 1 5BC36DA7
P 1850 6500
AR Path="/5BC3F67C/5BC36DA7" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36DA7" Ref="C?"  Part="1" 
F 0 "C?" H 1942 6546 50  0000 L CNN
F 1 "100 nF" H 1942 6455 50  0000 L CNN
F 2 "" H 1850 6500 50  0001 C CNN
F 3 "~" H 1850 6500 50  0001 C CNN
	1    1850 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36DAE
P 1400 6500
AR Path="/5BC3F67C/5BC36DAE" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36DAE" Ref="C?"  Part="1" 
F 0 "C?" H 1492 6546 50  0000 L CNN
F 1 "2.2 uF" H 1492 6455 50  0000 L CNN
F 2 "" H 1400 6500 50  0001 C CNN
F 3 "~" H 1400 6500 50  0001 C CNN
	1    1400 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC36DB5
P 2350 6500
AR Path="/5BC3F67C/5BC36DB5" Ref="C?"  Part="1" 
AR Path="/5BC349EC/5BC36DB5" Ref="C?"  Part="1" 
F 0 "C?" H 2442 6546 50  0000 L CNN
F 1 "100 pF" H 2442 6455 50  0000 L CNN
F 2 "" H 2350 6500 50  0001 C CNN
F 3 "~" H 2350 6500 50  0001 C CNN
	1    2350 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36DBC
P 1400 6650
AR Path="/5BC3F67C/5BC36DBC" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36DBC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1400 6400 50  0001 C CNN
F 1 "GND" H 1405 6477 50  0001 C CNN
F 2 "" H 1400 6650 50  0001 C CNN
F 3 "" H 1400 6650 50  0001 C CNN
	1    1400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6350 1850 6350
$Comp
L power:GND #PWR?
U 1 1 5BC36DC3
P 1850 6650
AR Path="/5BC3F67C/5BC36DC3" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36DC3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 6400 50  0001 C CNN
F 1 "GND" H 1855 6477 50  0001 C CNN
F 2 "" H 1850 6650 50  0001 C CNN
F 3 "" H 1850 6650 50  0001 C CNN
	1    1850 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36DC9
P 2350 6650
AR Path="/5BC3F67C/5BC36DC9" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36DC9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 6400 50  0001 C CNN
F 1 "GND" H 2355 6477 50  0001 C CNN
F 2 "" H 2350 6650 50  0001 C CNN
F 3 "" H 2350 6650 50  0001 C CNN
	1    2350 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6650 1400 6600
Wire Wire Line
	1400 6400 1400 6350
Wire Wire Line
	1850 6400 1850 6350
Connection ~ 1850 6350
Wire Wire Line
	1850 6350 2350 6350
Wire Wire Line
	1850 6600 1850 6650
Wire Wire Line
	2350 6650 2350 6600
Wire Wire Line
	2350 6350 2350 6400
Wire Wire Line
	2350 4250 3000 4250
Wire Wire Line
	3000 4250 3000 3200
Wire Wire Line
	3000 3200 3800 3200
Connection ~ 2350 4250
Wire Wire Line
	2350 4950 3100 4950
Wire Wire Line
	3100 4950 3100 3300
Wire Wire Line
	3100 3300 3800 3300
Connection ~ 2350 4950
Wire Wire Line
	2350 5650 3200 5650
Wire Wire Line
	3200 5650 3200 3400
Wire Wire Line
	3200 3400 3800 3400
Connection ~ 2350 5650
Wire Wire Line
	2350 6350 3300 6350
Wire Wire Line
	3300 6350 3300 3500
Wire Wire Line
	3300 3500 3800 3500
Connection ~ 2350 6350
$Comp
L Device:L_Small L?
U 1 1 5BC36DE7
P 800 4250
AR Path="/5BC3F67C/5BC36DE7" Ref="L?"  Part="1" 
AR Path="/5BC349EC/5BC36DE7" Ref="L?"  Part="1" 
F 0 "L?" V 985 4250 50  0000 C CNN
F 1 "JMP" V 894 4250 50  0000 C CNN
F 2 "" H 800 4250 50  0001 C CNN
F 3 "~" H 800 4250 50  0001 C CNN
	1    800  4250
	0    -1   -1   0   
$EndComp
Connection ~ 1400 4250
$Comp
L power:+3V3 #PWR?
U 1 1 5BC36E01
P 700 5600
AR Path="/5BC3F67C/5BC36E01" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36E01" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 700 5450 50  0001 C CNN
F 1 "+3V3" H 715 5773 50  0000 C CNN
F 2 "" H 700 5600 50  0001 C CNN
F 3 "" H 700 5600 50  0001 C CNN
	1    700  5600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5BC36E07
P 1100 5650
AR Path="/5BC3F67C/5BC36E07" Ref="L?"  Part="1" 
AR Path="/5BC349EC/5BC36E07" Ref="L?"  Part="1" 
F 0 "L?" V 1285 5650 50  0000 C CNN
F 1 "JMP" V 1194 5650 50  0000 C CNN
F 2 "" H 1100 5650 50  0001 C CNN
F 3 "~" H 1100 5650 50  0001 C CNN
	1    1100 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  5600 700  5650
Wire Wire Line
	700  5650 1000 5650
$Comp
L power:+3V3 #PWR?
U 1 1 5BC36E10
P 700 6300
AR Path="/5BC3F67C/5BC36E10" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36E10" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 700 6150 50  0001 C CNN
F 1 "+3V3" H 715 6473 50  0000 C CNN
F 2 "" H 700 6300 50  0001 C CNN
F 3 "" H 700 6300 50  0001 C CNN
	1    700  6300
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5BC36E16
P 1100 6350
AR Path="/5BC3F67C/5BC36E16" Ref="L?"  Part="1" 
AR Path="/5BC349EC/5BC36E16" Ref="L?"  Part="1" 
F 0 "L?" V 1285 6350 50  0000 C CNN
F 1 "JMP" V 1194 6350 50  0000 C CNN
F 2 "" H 1100 6350 50  0001 C CNN
F 3 "~" H 1100 6350 50  0001 C CNN
	1    1100 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  6300 700  6350
Wire Wire Line
	700  6350 1000 6350
Wire Wire Line
	1200 6350 1400 6350
Connection ~ 1400 6350
Wire Wire Line
	1200 5650 1400 5650
Connection ~ 1400 5650
Connection ~ 1400 4950
Text HLabel 10600 1700 2    50   Output ~ 0
DAC_OUT
Wire Wire Line
	650  4250 700  4250
Wire Wire Line
	950  5250 950  5200
Wire Wire Line
	950  4950 950  5000
$Comp
L Device:CP_Small C?
U 1 1 5BC9034E
P 950 5100
F 0 "C?" H 1038 5146 50  0000 L CNN
F 1 "47 uF" H 1038 5055 50  0000 L CNN
F 2 "" H 950 5100 50  0001 C CNN
F 3 "~" H 950 5100 50  0001 C CNN
	1    950  5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC86C56
P 950 5250
AR Path="/5BC3F67C/5BC86C56" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC86C56" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 950 5000 50  0001 C CNN
F 1 "GND" H 955 5077 50  0001 C CNN
F 2 "" H 950 5250 50  0001 C CNN
F 3 "" H 950 5250 50  0001 C CNN
	1    950  5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D69
P 2350 5250
AR Path="/5BC3F67C/5BC36D69" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D69" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 5000 50  0001 C CNN
F 1 "GND" H 2355 5077 50  0001 C CNN
F 2 "" H 2350 5250 50  0001 C CNN
F 3 "" H 2350 5250 50  0001 C CNN
	1    2350 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D63
P 1850 5250
AR Path="/5BC3F67C/5BC36D63" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D63" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 5000 50  0001 C CNN
F 1 "GND" H 1855 5077 50  0001 C CNN
F 2 "" H 1850 5250 50  0001 C CNN
F 3 "" H 1850 5250 50  0001 C CNN
	1    1850 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC36D5C
P 1400 5250
AR Path="/5BC3F67C/5BC36D5C" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1400 5000 50  0001 C CNN
F 1 "GND" H 1405 5077 50  0001 C CNN
F 2 "" H 1400 5250 50  0001 C CNN
F 3 "" H 1400 5250 50  0001 C CNN
	1    1400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4950 1400 4950
Wire Wire Line
	900  4250 950  4250
Wire Wire Line
	950  4250 950  4950
Wire Wire Line
	950  4250 1400 4250
Connection ~ 950  4250
Connection ~ 950  4950
$Comp
L power:+3V3 #PWR?
U 1 1 5BC36D11
P 650 4000
AR Path="/5BC3F67C/5BC36D11" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC36D11" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 3850 50  0001 C CNN
F 1 "+3V3" H 665 4173 50  0000 C CNN
F 2 "" H 650 4000 50  0001 C CNN
F 3 "" H 650 4000 50  0001 C CNN
	1    650  4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4000 650  4250
Wire Wire Line
	6600 1900 6750 1900
Wire Wire Line
	6750 1900 6750 2100
Wire Wire Line
	6750 2100 7150 2100
Wire Wire Line
	6600 1800 6750 1800
Wire Wire Line
	6750 1800 6750 1600
Wire Wire Line
	6750 1600 7150 1600
$Comp
L Device:C_Small C?
U 1 1 5BCE1DF5
P 7150 1850
F 0 "C?" H 7242 1896 50  0000 L CNN
F 1 "DNP" H 7242 1805 50  0000 L CNN
F 2 "" H 7150 1850 50  0001 C CNN
F 3 "~" H 7150 1850 50  0001 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1750 7150 1600
Connection ~ 7150 1600
Wire Wire Line
	7150 1950 7150 2100
Connection ~ 7150 2100
$Comp
L Device:R_Small R?
U 1 1 5BCEBF51
P 7150 1300
AR Path="/5BC3F67C/5BCEBF51" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BCEBF51" Ref="R?"  Part="1" 
F 0 "R?" H 7050 1300 50  0000 C CNN
F 1 "25" H 7050 1400 50  0000 C CNN
F 2 "" H 7150 1300 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEC1DF
P 7300 1000
AR Path="/5BC3F67C/5BCEC1DF" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BCEC1DF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7300 750 50  0001 C CNN
F 1 "GND" H 7305 827 50  0000 C CNN
F 2 "" H 7300 1000 50  0001 C CNN
F 3 "" H 7300 1000 50  0001 C CNN
	1    7300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1200 7150 950 
Wire Wire Line
	7150 950  7300 950 
Wire Wire Line
	7300 950  7300 1000
Wire Wire Line
	7150 1400 7150 1600
$Comp
L Device:R_Small R?
U 1 1 5BCF6E39
P 7150 2400
AR Path="/5BC3F67C/5BCF6E39" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BCF6E39" Ref="R?"  Part="1" 
F 0 "R?" H 7050 2400 50  0000 C CNN
F 1 "25" H 7050 2500 50  0000 C CNN
F 2 "" H 7150 2400 50  0001 C CNN
F 3 "~" H 7150 2400 50  0001 C CNN
	1    7150 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 2100 7150 2300
$Comp
L power:GND #PWR?
U 1 1 5BCFC3D2
P 7150 2650
AR Path="/5BC3F67C/5BCFC3D2" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BCFC3D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 2400 50  0001 C CNN
F 1 "GND" H 7155 2477 50  0000 C CNN
F 2 "" H 7150 2650 50  0001 C CNN
F 3 "" H 7150 2650 50  0001 C CNN
	1    7150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2650 7150 2500
$Comp
L tdr-rescue:ADA4817-1-synth_lib-tdr-rescue U?
U 1 1 5BC6297A
P 8850 1750
F 0 "U?" H 8850 2165 50  0000 C CNN
F 1 "ADA4817-1" H 8850 2074 50  0000 C CNN
F 2 "" H 8850 1750 50  0001 C CNN
F 3 "" H 8850 1750 50  0001 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC63021
P 8850 2250
AR Path="/5BC3F67C/5BC63021" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC63021" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 2000 50  0001 C CNN
F 1 "GND" H 8855 2077 50  0000 C CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2200 8850 2250
$Comp
L power:+5VA #PWR?
U 1 1 5BC6B845
P 9500 1100
F 0 "#PWR?" H 9500 950 50  0001 C CNN
F 1 "+5VA" H 9515 1273 50  0000 C CNN
F 2 "" H 9500 1100 50  0001 C CNN
F 3 "" H 9500 1100 50  0001 C CNN
	1    9500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:-5VA #PWR?
U 1 1 5BC6B933
P 9550 2250
F 0 "#PWR?" H 9550 2350 50  0001 C CNN
F 1 "-5VA" H 9565 2423 50  0000 C CNN
F 2 "" H 9550 2250 50  0001 C CNN
F 3 "" H 9550 2250 50  0001 C CNN
	1    9550 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 1900 9550 1900
Wire Wire Line
	9550 1900 9550 2250
$Comp
L Device:C_Small C?
U 1 1 5BC91C72
P 9750 2100
F 0 "C?" H 9842 2146 50  0000 L CNN
F 1 "100 pF" H 9842 2055 50  0000 L CNN
F 2 "" H 9750 2100 50  0001 C CNN
F 3 "~" H 9750 2100 50  0001 C CNN
	1    9750 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BC9757F
P 10250 2100
F 0 "C?" H 10342 2146 50  0000 L CNN
F 1 "100 nF" H 10342 2055 50  0000 L CNN
F 2 "" H 10250 2100 50  0001 C CNN
F 3 "~" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC975E3
P 9750 2250
AR Path="/5BC3F67C/5BC975E3" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC975E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9750 2000 50  0001 C CNN
F 1 "GND" H 9755 2077 50  0000 C CNN
F 2 "" H 9750 2250 50  0001 C CNN
F 3 "" H 9750 2250 50  0001 C CNN
	1    9750 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC9762E
P 10250 2250
AR Path="/5BC3F67C/5BC9762E" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BC9762E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10250 2000 50  0001 C CNN
F 1 "GND" H 10255 2077 50  0000 C CNN
F 2 "" H 10250 2250 50  0001 C CNN
F 3 "" H 10250 2250 50  0001 C CNN
	1    10250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1900 9750 1900
Wire Wire Line
	9750 1900 9750 2000
Connection ~ 9550 1900
Wire Wire Line
	9750 1900 10250 1900
Wire Wire Line
	10250 1900 10250 2000
Connection ~ 9750 1900
Wire Wire Line
	9750 2200 9750 2250
Wire Wire Line
	10250 2200 10250 2250
$Comp
L Device:C_Small C?
U 1 1 5BCAE55B
P 9750 1300
F 0 "C?" H 9842 1346 50  0000 L CNN
F 1 "100 pF" H 9842 1255 50  0000 L CNN
F 2 "" H 9750 1300 50  0001 C CNN
F 3 "~" H 9750 1300 50  0001 C CNN
	1    9750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BCAE6D4
P 10250 1300
F 0 "C?" H 10342 1346 50  0000 L CNN
F 1 "100 nF" H 10342 1255 50  0000 L CNN
F 2 "" H 10250 1300 50  0001 C CNN
F 3 "~" H 10250 1300 50  0001 C CNN
	1    10250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCB44F8
P 9750 1450
AR Path="/5BC3F67C/5BCB44F8" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BCB44F8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9750 1200 50  0001 C CNN
F 1 "GND" H 9755 1277 50  0000 C CNN
F 2 "" H 9750 1450 50  0001 C CNN
F 3 "" H 9750 1450 50  0001 C CNN
	1    9750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCB4547
P 10250 1450
AR Path="/5BC3F67C/5BCB4547" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BCB4547" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10250 1200 50  0001 C CNN
F 1 "GND" H 10255 1277 50  0000 C CNN
F 2 "" H 10250 1450 50  0001 C CNN
F 3 "" H 10250 1450 50  0001 C CNN
	1    10250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1600 9500 1600
Wire Wire Line
	9500 1100 9500 1150
Connection ~ 9500 1150
Wire Wire Line
	9500 1150 9500 1600
Wire Wire Line
	9750 1150 9750 1200
Wire Wire Line
	9500 1150 9750 1150
Wire Wire Line
	9750 1150 10250 1150
Wire Wire Line
	10250 1150 10250 1200
Connection ~ 9750 1150
Wire Wire Line
	10250 1400 10250 1450
Wire Wire Line
	9750 1400 9750 1450
Wire Wire Line
	9350 1700 10600 1700
$Comp
L Device:R_Small R?
U 1 1 5BD04F43
P 7600 2100
AR Path="/5BC3F67C/5BD04F43" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BD04F43" Ref="R?"  Part="1" 
F 0 "R?" H 7500 2100 50  0000 C CNN
F 1 "225" H 7500 2200 50  0000 C CNN
F 2 "" H 7600 2100 50  0001 C CNN
F 3 "~" H 7600 2100 50  0001 C CNN
	1    7600 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BD0501F
P 7600 1600
AR Path="/5BC3F67C/5BD0501F" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BD0501F" Ref="R?"  Part="1" 
F 0 "R?" H 7500 1600 50  0000 C CNN
F 1 "225" H 7500 1700 50  0000 C CNN
F 2 "" H 7600 1600 50  0001 C CNN
F 3 "~" H 7600 1600 50  0001 C CNN
	1    7600 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 2100 7500 2100
Wire Wire Line
	7150 1600 7500 1600
Wire Wire Line
	7700 2100 7800 2100
Wire Wire Line
	7800 2100 7800 1900
Wire Wire Line
	7700 1600 7800 1600
Wire Wire Line
	7800 1600 7800 1800
Wire Wire Line
	7800 1800 8350 1800
Wire Wire Line
	7800 1900 8350 1900
$Comp
L Device:R_Small R?
U 1 1 5BD62AC9
P 8050 1600
AR Path="/5BC3F67C/5BD62AC9" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BD62AC9" Ref="R?"  Part="1" 
F 0 "R?" H 7950 1600 50  0000 C CNN
F 1 "500" H 7950 1700 50  0000 C CNN
F 2 "" H 8050 1600 50  0001 C CNN
F 3 "~" H 8050 1600 50  0001 C CNN
	1    8050 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 1600 7950 1600
Connection ~ 7800 1600
Wire Wire Line
	8150 1600 8200 1600
Wire Wire Line
	8200 1600 8200 1700
Wire Wire Line
	8200 1700 8350 1700
$Comp
L Device:R_Small R?
U 1 1 5BD709EE
P 7800 2400
AR Path="/5BC3F67C/5BD709EE" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BD709EE" Ref="R?"  Part="1" 
F 0 "R?" H 7700 2400 50  0000 C CNN
F 1 "500" H 7700 2500 50  0000 C CNN
F 2 "" H 7800 2400 50  0001 C CNN
F 3 "~" H 7800 2400 50  0001 C CNN
	1    7800 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD70AE2
P 7800 2650
AR Path="/5BC3F67C/5BD70AE2" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BD70AE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7800 2400 50  0001 C CNN
F 1 "GND" H 7805 2477 50  0000 C CNN
F 2 "" H 7800 2650 50  0001 C CNN
F 3 "" H 7800 2650 50  0001 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2650 7800 2500
Wire Wire Line
	7800 2300 7800 2100
Connection ~ 7800 2100
Wire Wire Line
	8350 1600 8300 1600
Wire Wire Line
	8300 1250 8300 1600
$Comp
L Device:R_Small R?
U 1 1 5BD8E3F8
P 8300 1150
AR Path="/5BC3F67C/5BD8E3F8" Ref="R?"  Part="1" 
AR Path="/5BC349EC/5BD8E3F8" Ref="R?"  Part="1" 
F 0 "R?" H 8200 1150 50  0000 C CNN
F 1 "1k" H 8200 1250 50  0000 C CNN
F 2 "" H 8300 1150 50  0001 C CNN
F 3 "~" H 8300 1150 50  0001 C CNN
	1    8300 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD8E675
P 8500 1050
AR Path="/5BC3F67C/5BD8E675" Ref="#PWR?"  Part="1" 
AR Path="/5BC349EC/5BD8E675" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 800 50  0001 C CNN
F 1 "GND" H 8505 877 50  0000 C CNN
F 2 "" H 8500 1050 50  0001 C CNN
F 3 "" H 8500 1050 50  0001 C CNN
	1    8500 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1050 8500 950 
Wire Wire Line
	8500 950  8300 950 
Wire Wire Line
	8300 950  8300 1050
Text Notes 8050 750  0    50   ~ 0
TODO: replace with 3V3 OP AMP
$EndSCHEMATC
