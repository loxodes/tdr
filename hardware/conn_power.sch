EESchema Schematic File Version 4
LIBS:tdr-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 8
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
L Connector:Conn_Coaxial J?
U 1 1 5BC3BE12
P 15050 2050
F 0 "J?" H 15149 2026 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 1935 50  0000 L CNN
F 2 "" H 15050 2050 50  0001 C CNN
F 3 " ~" H 15050 2050 50  0001 C CNN
	1    15050 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5BC3BE2C
P 15050 2950
F 0 "J?" H 15149 2926 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 2835 50  0000 L CNN
F 2 "" H 15050 2950 50  0001 C CNN
F 3 " ~" H 15050 2950 50  0001 C CNN
	1    15050 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BC3BEF4
P 14000 2950
F 0 "R?" V 13804 2950 50  0000 C CNN
F 1 "JMP" V 13895 2950 50  0000 C CNN
F 2 "" H 14000 2950 50  0001 C CNN
F 3 "~" H 14000 2950 50  0001 C CNN
	1    14000 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BC3BF43
P 14500 2950
F 0 "R?" V 14304 2950 50  0000 C CNN
F 1 "JMP" V 14395 2950 50  0000 C CNN
F 2 "" H 14500 2950 50  0001 C CNN
F 3 "~" H 14500 2950 50  0001 C CNN
	1    14500 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BC3BF6B
P 14250 2450
F 0 "R?" H 14191 2404 50  0000 R CNN
F 1 "DNP" H 14191 2495 50  0000 R CNN
F 2 "" H 14250 2450 50  0001 C CNN
F 3 "~" H 14250 2450 50  0001 C CNN
	1    14250 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BC3C07C
P 14500 2050
F 0 "R?" V 14304 2050 50  0000 C CNN
F 1 "JMP" V 14395 2050 50  0000 C CNN
F 2 "" H 14500 2050 50  0001 C CNN
F 3 "~" H 14500 2050 50  0001 C CNN
	1    14500 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC3C277
P 15050 2300
F 0 "#PWR?" H 15050 2050 50  0001 C CNN
F 1 "GND" H 15055 2127 50  0000 C CNN
F 2 "" H 15050 2300 50  0001 C CNN
F 3 "" H 15050 2300 50  0001 C CNN
	1    15050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC3C295
P 15050 3200
F 0 "#PWR?" H 15050 2950 50  0001 C CNN
F 1 "GND" H 15055 3027 50  0000 C CNN
F 2 "" H 15050 3200 50  0001 C CNN
F 3 "" H 15050 3200 50  0001 C CNN
	1    15050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 2300 15050 2250
Wire Wire Line
	15050 3200 15050 3150
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5BC3C7CA
P 15050 5750
F 0 "J?" H 15149 5726 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 5635 50  0000 L CNN
F 2 "" H 15050 5750 50  0001 C CNN
F 3 " ~" H 15050 5750 50  0001 C CNN
	1    15050 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC3C7D0
P 15050 6000
F 0 "#PWR?" H 15050 5750 50  0001 C CNN
F 1 "GND" H 15055 5827 50  0000 C CNN
F 2 "" H 15050 6000 50  0001 C CNN
F 3 "" H 15050 6000 50  0001 C CNN
	1    15050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 6000 15050 5950
Wire Wire Line
	14850 5750 14500 5750
Text HLabel 14500 5750 0    50   Output ~ 0
EXT_TRIG
Wire Wire Line
	14850 2950 14600 2950
Wire Wire Line
	14400 2950 14250 2950
Wire Wire Line
	14250 2950 14250 2550
Connection ~ 14250 2950
Wire Wire Line
	14250 2950 14100 2950
Wire Wire Line
	14250 2350 14250 2050
Wire Wire Line
	14250 2050 14400 2050
Wire Wire Line
	14600 2050 14850 2050
Wire Wire Line
	14250 2050 13500 2050
Connection ~ 14250 2050
Wire Wire Line
	13900 2950 13500 2950
Text HLabel 13500 2050 0    50   Input ~ 0
PULSE_OUT_P
Text HLabel 13500 2950 0    50   Output ~ 0
ANALOG_INPUT
Text HLabel 13500 1100 0    50   Input ~ 0
PULSE_OUT_N
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5BD9EE8D
P 15050 1100
F 0 "J?" H 15149 1076 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 985 50  0000 L CNN
F 2 "" H 15050 1100 50  0001 C CNN
F 3 " ~" H 15050 1100 50  0001 C CNN
	1    15050 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD9EE94
P 15050 1350
F 0 "#PWR?" H 15050 1100 50  0001 C CNN
F 1 "GND" H 15055 1177 50  0000 C CNN
F 2 "" H 15050 1350 50  0001 C CNN
F 3 "" H 15050 1350 50  0001 C CNN
	1    15050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 1350 15050 1300
Wire Wire Line
	13500 1100 14250 1100
Text HLabel 14350 6450 0    50   Output ~ 0
EXT_REF_P
Text HLabel 14350 7300 0    50   Output ~ 0
EXT_REF_N
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5BDAA721
P 15050 6450
F 0 "J?" H 15149 6426 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 6335 50  0000 L CNN
F 2 "" H 15050 6450 50  0001 C CNN
F 3 " ~" H 15050 6450 50  0001 C CNN
	1    15050 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDAA728
P 15050 6800
F 0 "#PWR?" H 15050 6550 50  0001 C CNN
F 1 "GND" H 15055 6627 50  0000 C CNN
F 2 "" H 15050 6800 50  0001 C CNN
F 3 "" H 15050 6800 50  0001 C CNN
	1    15050 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BDAAD22
P 14650 6450
F 0 "R?" V 14454 6450 50  0000 C CNN
F 1 "JMP" V 14545 6450 50  0000 C CNN
F 2 "" H 14650 6450 50  0001 C CNN
F 3 "~" H 14650 6450 50  0001 C CNN
	1    14650 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BDAB126
P 14450 6650
F 0 "R?" V 14254 6650 50  0000 C CNN
F 1 "JMP" V 14345 6650 50  0000 C CNN
F 2 "" H 14450 6650 50  0001 C CNN
F 3 "~" H 14450 6650 50  0001 C CNN
	1    14450 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	14750 6450 14850 6450
Wire Wire Line
	14450 6550 14450 6450
$Comp
L power:GND #PWR?
U 1 1 5BDABC60
P 14450 6800
F 0 "#PWR?" H 14450 6550 50  0001 C CNN
F 1 "GND" H 14455 6627 50  0000 C CNN
F 2 "" H 14450 6800 50  0001 C CNN
F 3 "" H 14450 6800 50  0001 C CNN
	1    14450 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 6450 14550 6450
Wire Wire Line
	14350 6450 14450 6450
Connection ~ 14450 6450
Wire Wire Line
	14450 6750 14450 6800
Wire Wire Line
	15050 6650 15050 6800
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5BDACF72
P 15050 7300
F 0 "J?" H 15149 7276 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 7185 50  0000 L CNN
F 2 "" H 15050 7300 50  0001 C CNN
F 3 " ~" H 15050 7300 50  0001 C CNN
	1    15050 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDACF79
P 15050 7650
F 0 "#PWR?" H 15050 7400 50  0001 C CNN
F 1 "GND" H 15055 7477 50  0000 C CNN
F 2 "" H 15050 7650 50  0001 C CNN
F 3 "" H 15050 7650 50  0001 C CNN
	1    15050 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BDACF7F
P 14650 7300
F 0 "R?" V 14454 7300 50  0000 C CNN
F 1 "JMP" V 14545 7300 50  0000 C CNN
F 2 "" H 14650 7300 50  0001 C CNN
F 3 "~" H 14650 7300 50  0001 C CNN
	1    14650 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BDACF86
P 14450 7500
F 0 "R?" V 14254 7500 50  0000 C CNN
F 1 "JMP" V 14345 7500 50  0000 C CNN
F 2 "" H 14450 7500 50  0001 C CNN
F 3 "~" H 14450 7500 50  0001 C CNN
	1    14450 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	14750 7300 14850 7300
Wire Wire Line
	14450 7400 14450 7300
$Comp
L power:GND #PWR?
U 1 1 5BDACF8F
P 14450 7650
F 0 "#PWR?" H 14450 7400 50  0001 C CNN
F 1 "GND" H 14455 7477 50  0000 C CNN
F 2 "" H 14450 7650 50  0001 C CNN
F 3 "" H 14450 7650 50  0001 C CNN
	1    14450 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 7300 14550 7300
Wire Wire Line
	14350 7300 14450 7300
Connection ~ 14450 7300
Wire Wire Line
	14450 7600 14450 7650
Wire Wire Line
	15050 7500 15050 7650
$Comp
L Device:R_Small R?
U 1 1 5BDADE00
P 14250 1300
F 0 "R?" H 14191 1254 50  0000 R CNN
F 1 "50" H 14191 1345 50  0000 R CNN
F 2 "" H 14250 1300 50  0001 C CNN
F 3 "~" H 14250 1300 50  0001 C CNN
	1    14250 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDADE4E
P 14250 1450
F 0 "#PWR?" H 14250 1200 50  0001 C CNN
F 1 "GND" H 14255 1277 50  0000 C CNN
F 2 "" H 14250 1450 50  0001 C CNN
F 3 "" H 14250 1450 50  0001 C CNN
	1    14250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 1450 14250 1400
Wire Wire Line
	14250 1200 14250 1100
$Comp
L Device:R_Small R?
U 1 1 5BDAEBB5
P 14550 1100
F 0 "R?" H 14491 1054 50  0000 R CNN
F 1 "DNP" H 14491 1145 50  0000 R CNN
F 2 "" H 14550 1100 50  0001 C CNN
F 3 "~" H 14550 1100 50  0001 C CNN
	1    14550 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	14250 1100 14450 1100
Connection ~ 14250 1100
Wire Wire Line
	14650 1100 14850 1100
$Comp
L Connector:Barrel_Jack_Switch J?
U 1 1 5BDD534A
P 15150 9150
F 0 "J?" H 15205 9467 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 15205 9376 50  0000 C CNN
F 2 "" H 15200 9110 50  0001 C CNN
F 3 "~" H 15200 9110 50  0001 C CNN
	1    15150 9150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDD549E
P 14700 9300
F 0 "#PWR?" H 14700 9050 50  0001 C CNN
F 1 "GND" H 14705 9127 50  0000 C CNN
F 2 "" H 14700 9300 50  0001 C CNN
F 3 "" H 14700 9300 50  0001 C CNN
	1    14700 9300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14850 9250 14700 9250
Wire Wire Line
	14700 9250 14700 9300
Wire Wire Line
	14850 9150 14700 9150
Wire Wire Line
	14700 9150 14700 9250
Connection ~ 14700 9250
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 5BDD60FD
P 14300 9050
F 0 "J?" H 14350 9267 50  0000 C CNN
F 1 "Conn_02x01" H 14350 9176 50  0000 C CNN
F 2 "" H 14300 9050 50  0001 C CNN
F 3 "~" H 14300 9050 50  0001 C CNN
	1    14300 9050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14850 9050 14600 9050
$Comp
L power:GND #PWR?
U 1 1 5BDD6899
P 13950 9300
F 0 "#PWR?" H 13950 9050 50  0001 C CNN
F 1 "GND" H 13955 9127 50  0000 C CNN
F 2 "" H 13950 9300 50  0001 C CNN
F 3 "" H 13950 9300 50  0001 C CNN
	1    13950 9300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14000 9050 13950 9050
Wire Wire Line
	13950 9050 13950 9300
$Comp
L power:VPP #PWR?
U 1 1 5BDDA803
P 14600 8700
F 0 "#PWR?" H 14600 8550 50  0001 C CNN
F 1 "VPP" H 14615 8873 50  0000 C CNN
F 2 "" H 14600 8700 50  0001 C CNN
F 3 "" H 14600 8700 50  0001 C CNN
	1    14600 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	14600 8700 14600 9050
Connection ~ 14600 9050
Wire Wire Line
	14600 9050 14500 9050
$Comp
L power:-5VA #PWR?
U 1 1 5BDDBB0E
P 11800 8500
F 0 "#PWR?" H 11800 8600 50  0001 C CNN
F 1 "-5VA" H 11815 8673 50  0000 C CNN
F 2 "" H 11800 8500 50  0001 C CNN
F 3 "" H 11800 8500 50  0001 C CNN
	1    11800 8500
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5BDDBBB7
P 11800 7300
F 0 "#PWR?" H 11800 7150 50  0001 C CNN
F 1 "+5VA" H 11815 7473 50  0000 C CNN
F 2 "" H 11800 7300 50  0001 C CNN
F 3 "" H 11800 7300 50  0001 C CNN
	1    11800 7300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BDDC84F
P 5900 2950
F 0 "#PWR?" H 5900 2800 50  0001 C CNN
F 1 "+3V3" H 5915 3123 50  0000 C CNN
F 2 "" H 5900 2950 50  0001 C CNN
F 3 "" H 5900 2950 50  0001 C CNN
	1    5900 2950
	0    1    1    0   
$EndComp
Text HLabel 14500 5100 0    50   Input ~ 0
REF_CLK_OUT
$Comp
L power:+3.3VP #PWR?
U 1 1 5BCA9587
P 9250 3150
F 0 "#PWR?" H 9400 3100 50  0001 C CNN
F 1 "+3.3VP" H 9270 3293 50  0000 C CNN
F 2 "" H 9250 3150 50  0001 C CNN
F 3 "" H 9250 3150 50  0001 C CNN
	1    9250 3150
	0    1    1    0   
$EndComp
Text HLabel 13500 3750 0    50   Input ~ 0
ANALOG_TRIG
$Comp
L ld39100:LD39100 U?
U 1 1 5BFD0283
P 4850 2650
F 0 "U?" H 4850 3037 60  0000 C CNN
F 1 "LD39100" H 4850 2931 60  0000 C CNN
F 2 "" H 4850 2650 60  0001 C CNN
F 3 "" H 4850 2650 60  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
$Comp
L lm27762:LM27762 U?
U 1 1 5BFD054D
P 9650 7850
F 0 "U?" H 9650 8787 60  0000 C CNN
F 1 "LM27762" H 9650 8681 60  0000 C CNN
F 2 "" H 9550 7150 60  0001 C CNN
F 3 "" H 9550 7150 60  0001 C CNN
	1    9650 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BFD0DED
P 10400 6850
F 0 "C?" H 10492 6896 50  0000 L CNN
F 1 "2.2 uF" H 10492 6805 50  0000 L CNN
F 2 "" H 10400 6850 50  0001 C CNN
F 3 "~" H 10400 6850 50  0001 C CNN
	1    10400 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD1094
P 10400 7450
F 0 "R?" H 10459 7496 50  0000 L CNN
F 1 "TBD" H 10459 7405 50  0000 L CNN
F 2 "" H 10400 7450 50  0001 C CNN
F 3 "~" H 10400 7450 50  0001 C CNN
	1    10400 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD11B6
P 10400 7750
F 0 "R?" H 10459 7796 50  0000 L CNN
F 1 "TBD" H 10459 7705 50  0000 L CNN
F 2 "" H 10400 7750 50  0001 C CNN
F 3 "~" H 10400 7750 50  0001 C CNN
	1    10400 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD1200
P 10400 8050
F 0 "R?" H 10459 8096 50  0000 L CNN
F 1 "TBD" H 10459 8005 50  0000 L CNN
F 2 "" H 10400 8050 50  0001 C CNN
F 3 "~" H 10400 8050 50  0001 C CNN
	1    10400 8050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD1250
P 10400 8350
F 0 "R?" H 10459 8396 50  0000 L CNN
F 1 "TBD" H 10459 8305 50  0000 L CNN
F 2 "" H 10400 8350 50  0001 C CNN
F 3 "~" H 10400 8350 50  0001 C CNN
	1    10400 8350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BFD13FF
P 10950 7550
F 0 "C?" H 11042 7596 50  0000 L CNN
F 1 "2.2 uF" H 11042 7505 50  0000 L CNN
F 2 "" H 10950 7550 50  0001 C CNN
F 3 "~" H 10950 7550 50  0001 C CNN
	1    10950 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BFD14AF
P 10950 8150
F 0 "C?" H 11042 8196 50  0000 L CNN
F 1 "2.2 uF" H 11042 8105 50  0000 L CNN
F 2 "" H 10950 8150 50  0001 C CNN
F 3 "~" H 10950 8150 50  0001 C CNN
	1    10950 8150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD150F
P 11450 8500
F 0 "R?" V 11646 8500 50  0000 C CNN
F 1 "R_Small" V 11555 8500 50  0000 C CNN
F 2 "" H 11450 8500 50  0001 C CNN
F 3 "~" H 11450 8500 50  0001 C CNN
	1    11450 8500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD2D21
P 11400 7300
F 0 "R?" V 11596 7300 50  0000 C CNN
F 1 "R_Small" V 11505 7300 50  0000 C CNN
F 2 "" H 11400 7300 50  0001 C CNN
F 3 "~" H 11400 7300 50  0001 C CNN
	1    11400 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BFD45B4
P 8800 7900
F 0 "C?" H 8708 7854 50  0000 R CNN
F 1 "1 uF" H 8708 7945 50  0000 R CNN
F 2 "" H 8800 7900 50  0001 C CNN
F 3 "~" H 8800 7900 50  0001 C CNN
	1    8800 7900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BFD76C6
P 8800 7450
F 0 "R?" H 8859 7496 50  0000 L CNN
F 1 "10k" H 8859 7405 50  0000 L CNN
F 2 "" H 8800 7450 50  0001 C CNN
F 3 "~" H 8800 7450 50  0001 C CNN
	1    8800 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BFD77A4
P 8400 6950
F 0 "C?" H 8308 6904 50  0000 R CNN
F 1 "2.2 uF" H 8308 6995 50  0000 R CNN
F 2 "" H 8400 6950 50  0001 C CNN
F 3 "~" H 8400 6950 50  0001 C CNN
	1    8400 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 7750 8800 7750
Wire Wire Line
	8800 7750 8800 7800
Wire Wire Line
	9100 8050 8800 8050
Wire Wire Line
	8800 8050 8800 8000
Wire Wire Line
	9100 7600 8800 7600
Wire Wire Line
	8800 7600 8800 7550
Wire Wire Line
	9100 7300 8800 7300
Wire Wire Line
	8800 7300 8800 7350
Wire Wire Line
	8800 7600 8650 7600
Connection ~ 8800 7600
Text Label 8650 7600 2    50   ~ 0
~PGOOD
$Comp
L power:GND #PWR?
U 1 1 5BFE2314
P 8400 7100
F 0 "#PWR?" H 8400 6850 50  0001 C CNN
F 1 "GND" H 8405 6927 50  0000 C CNN
F 2 "" H 8400 7100 50  0001 C CNN
F 3 "" H 8400 7100 50  0001 C CNN
	1    8400 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 7050 8400 7100
Wire Wire Line
	8400 6850 8400 6700
Wire Wire Line
	8400 6700 8800 6700
Wire Wire Line
	8800 6700 8800 7300
Connection ~ 8800 7300
Connection ~ 8800 6700
Wire Wire Line
	10200 7300 10400 7300
Wire Wire Line
	10400 7300 10400 7350
Wire Wire Line
	10200 7600 10400 7600
Wire Wire Line
	10400 7600 10400 7550
Wire Wire Line
	10400 7600 10400 7650
Connection ~ 10400 7600
Wire Wire Line
	10200 7900 10400 7900
Wire Wire Line
	10400 7900 10400 7850
Wire Wire Line
	10400 7950 10400 7900
Connection ~ 10400 7900
Wire Wire Line
	10200 8200 10400 8200
Wire Wire Line
	10400 8200 10400 8150
Wire Wire Line
	10400 8200 10400 8250
Connection ~ 10400 8200
Wire Wire Line
	10400 8450 10400 8500
Wire Wire Line
	10400 8500 10200 8500
Wire Wire Line
	10400 7900 10950 7900
Wire Wire Line
	10950 7900 10950 8050
Wire Wire Line
	10950 8250 10950 8500
Wire Wire Line
	10950 8500 10400 8500
Connection ~ 10400 8500
Wire Wire Line
	10950 7300 10950 7450
Connection ~ 10400 7300
Wire Wire Line
	10950 7650 10950 7900
Connection ~ 10950 7900
Wire Wire Line
	10950 7900 11100 7900
$Comp
L power:GND #PWR?
U 1 1 5C00D418
P 11100 7900
F 0 "#PWR?" H 11100 7650 50  0001 C CNN
F 1 "GND" H 11105 7727 50  0000 C CNN
F 2 "" H 11100 7900 50  0001 C CNN
F 3 "" H 11100 7900 50  0001 C CNN
	1    11100 7900
	0    -1   1    0   
$EndComp
Wire Wire Line
	10200 7200 10250 7200
Wire Wire Line
	10250 7200 10250 6650
Wire Wire Line
	10250 6650 10400 6650
Wire Wire Line
	10400 6650 10400 6750
$Comp
L power:GND #PWR?
U 1 1 5C014C6A
P 10400 7000
F 0 "#PWR?" H 10400 6750 50  0001 C CNN
F 1 "GND" H 10405 6827 50  0000 C CNN
F 2 "" H 10400 7000 50  0001 C CNN
F 3 "" H 10400 7000 50  0001 C CNN
	1    10400 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10400 6950 10400 7000
$Comp
L Device:R_Small R?
U 1 1 5C019228
P 8550 8350
F 0 "R?" V 8354 8350 50  0000 C CNN
F 1 "10k" V 8445 8350 50  0000 C CNN
F 2 "" H 8550 8350 50  0001 C CNN
F 3 "~" H 8550 8350 50  0001 C CNN
	1    8550 8350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C019357
P 8550 8650
F 0 "R?" V 8354 8650 50  0000 C CNN
F 1 "10k" V 8445 8650 50  0000 C CNN
F 2 "" H 8550 8650 50  0001 C CNN
F 3 "~" H 8550 8650 50  0001 C CNN
	1    8550 8650
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 8650 8850 8650
Wire Wire Line
	8850 8650 8850 8500
Wire Wire Line
	8850 8500 9100 8500
Wire Wire Line
	9100 8400 8850 8400
Wire Wire Line
	8850 8400 8850 8350
Wire Wire Line
	8850 8350 8650 8350
$Comp
L power:VPP #PWR?
U 1 1 5C025341
P 8250 8350
F 0 "#PWR?" H 8250 8200 50  0001 C CNN
F 1 "VPP" H 8265 8523 50  0000 C CNN
F 2 "" H 8250 8350 50  0001 C CNN
F 3 "" H 8250 8350 50  0001 C CNN
	1    8250 8350
	0    -1   -1   0   
$EndComp
$Comp
L power:VPP #PWR?
U 1 1 5C0255B0
P 8250 8650
F 0 "#PWR?" H 8250 8500 50  0001 C CNN
F 1 "VPP" H 8265 8823 50  0000 C CNN
F 2 "" H 8250 8650 50  0001 C CNN
F 3 "" H 8250 8650 50  0001 C CNN
	1    8250 8650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 8350 8450 8350
Wire Wire Line
	8250 8650 8450 8650
$Comp
L power:GND #PWR?
U 1 1 5C032897
P 9650 8900
F 0 "#PWR?" H 9650 8650 50  0001 C CNN
F 1 "GND" H 9655 8727 50  0000 C CNN
F 2 "" H 9650 8900 50  0001 C CNN
F 3 "" H 9650 8900 50  0001 C CNN
	1    9650 8900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 8800 9650 8900
Wire Wire Line
	10950 8500 11350 8500
Connection ~ 10950 8500
Wire Wire Line
	11550 8500 11800 8500
Wire Wire Line
	11800 7300 11500 7300
Wire Wire Line
	10400 7300 10950 7300
Connection ~ 10950 7300
Wire Wire Line
	10950 7300 11300 7300
$Comp
L power:VPP #PWR?
U 1 1 5C08C622
P 8800 6550
F 0 "#PWR?" H 8800 6400 50  0001 C CNN
F 1 "VPP" H 8815 6723 50  0000 C CNN
F 2 "" H 8800 6550 50  0001 C CNN
F 3 "" H 8800 6550 50  0001 C CNN
	1    8800 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6550 8800 6700
$Comp
L Device:R_Small R?
U 1 1 5C0AA1D8
P 3550 2900
F 0 "R?" H 3609 2946 50  0000 L CNN
F 1 "10k" H 3609 2855 50  0000 L CNN
F 2 "" H 3550 2900 50  0001 C CNN
F 3 "~" H 3550 2900 50  0001 C CNN
	1    3550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0AA427
P 4250 2650
F 0 "#PWR?" H 4250 2400 50  0001 C CNN
F 1 "GND" H 4255 2477 50  0000 C CNN
F 2 "" H 4250 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	4250 2650 4350 2650
$Comp
L power:GND #PWR?
U 1 1 5C0B2FCB
P 3550 3150
F 0 "#PWR?" H 3550 2900 50  0001 C CNN
F 1 "GND" H 3555 2977 50  0000 C CNN
F 2 "" H 3550 3150 50  0001 C CNN
F 3 "" H 3550 3150 50  0001 C CNN
	1    3550 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 2550 3550 2800
$Comp
L power:GND #PWR?
U 1 1 5C0BBF16
P 4850 3300
F 0 "#PWR?" H 4850 3050 50  0001 C CNN
F 1 "GND" H 4855 3127 50  0000 C CNN
F 2 "" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 3000 3550 3150
$Comp
L Device:C_Small C?
U 1 1 5C0C9F56
P 5500 3150
F 0 "C?" H 5408 3104 50  0000 R CNN
F 1 "2.2 uF" H 5408 3195 50  0000 R CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "~" H 5500 3150 50  0001 C CNN
	1    5500 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0CA0DC
P 5500 3300
F 0 "#PWR?" H 5500 3050 50  0001 C CNN
F 1 "GND" H 5505 3127 50  0000 C CNN
F 2 "" H 5500 3300 50  0001 C CNN
F 3 "" H 5500 3300 50  0001 C CNN
	1    5500 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 3250 5500 3300
Wire Wire Line
	4850 3100 4850 3300
Wire Wire Line
	5350 2750 5500 2750
Wire Wire Line
	5500 2750 5500 2950
$Comp
L Device:R_Small R?
U 1 1 5C0E1E0D
P 5700 2800
F 0 "R?" H 5759 2846 50  0000 L CNN
F 1 "TBD" H 5759 2755 50  0000 L CNN
F 2 "" H 5700 2800 50  0001 C CNN
F 3 "~" H 5700 2800 50  0001 C CNN
	1    5700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2650 5700 2650
Wire Wire Line
	5700 2650 5700 2700
Wire Wire Line
	5500 2950 5700 2950
Wire Wire Line
	5700 2950 5700 2900
Connection ~ 5500 2950
Wire Wire Line
	5500 2950 5500 3050
Wire Wire Line
	5700 2950 5900 2950
Connection ~ 5700 2950
Wire Wire Line
	5350 2550 5500 2550
$Comp
L power:VPP #PWR?
U 1 1 5C1171A3
P 5500 2000
F 0 "#PWR?" H 5500 1850 50  0001 C CNN
F 1 "VPP" H 5515 2173 50  0000 C CNN
F 2 "" H 5500 2000 50  0001 C CNN
F 3 "" H 5500 2000 50  0001 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C11D0D9
P 5700 2200
F 0 "C?" H 5608 2154 50  0000 R CNN
F 1 "2.2 uF" H 5608 2245 50  0000 R CNN
F 2 "" H 5700 2200 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2000 5500 2050
$Comp
L power:GND #PWR?
U 1 1 5C133550
P 5700 2350
F 0 "#PWR?" H 5700 2100 50  0001 C CNN
F 1 "GND" H 5705 2177 50  0000 C CNN
F 2 "" H 5700 2350 50  0001 C CNN
F 3 "" H 5700 2350 50  0001 C CNN
	1    5700 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 2300 5700 2350
Wire Wire Line
	5500 2050 5700 2050
Wire Wire Line
	5700 2050 5700 2100
Connection ~ 5500 2050
Wire Wire Line
	5500 2050 5500 2550
Wire Wire Line
	4350 2750 4250 2750
Text Label 4250 2750 2    50   ~ 0
PGOOD_2V5
Wire Wire Line
	3550 2550 4350 2550
Text Notes 2650 2400 0    50   ~ 0
TODO: GATE OFF PGOOD FROM OTHER RAIL
$Comp
L power:+2V5 #PWR?
U 1 1 5C164B58
P 5900 4800
F 0 "#PWR?" H 5900 4650 50  0001 C CNN
F 1 "+2V5" H 5915 4973 50  0000 C CNN
F 2 "" H 5900 4800 50  0001 C CNN
F 3 "" H 5900 4800 50  0001 C CNN
	1    5900 4800
	0    1    1    0   
$EndComp
$Comp
L ld39100:LD39100 U?
U 1 1 5C164B5E
P 4850 4500
F 0 "U?" H 4850 4887 60  0000 C CNN
F 1 "LD39100" H 4850 4781 60  0000 C CNN
F 2 "" H 4850 4500 60  0001 C CNN
F 3 "" H 4850 4500 60  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C164B65
P 3550 4750
F 0 "R?" H 3609 4796 50  0000 L CNN
F 1 "10k" H 3609 4705 50  0000 L CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "~" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C164B6C
P 4250 4500
F 0 "#PWR?" H 4250 4250 50  0001 C CNN
F 1 "GND" H 4255 4327 50  0000 C CNN
F 2 "" H 4250 4500 50  0001 C CNN
F 3 "" H 4250 4500 50  0001 C CNN
	1    4250 4500
	0    1    -1   0   
$EndComp
Wire Wire Line
	4250 4500 4350 4500
$Comp
L power:GND #PWR?
U 1 1 5C164B73
P 3550 5000
F 0 "#PWR?" H 3550 4750 50  0001 C CNN
F 1 "GND" H 3555 4827 50  0000 C CNN
F 2 "" H 3550 5000 50  0001 C CNN
F 3 "" H 3550 5000 50  0001 C CNN
	1    3550 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4400 3550 4650
$Comp
L power:GND #PWR?
U 1 1 5C164B7A
P 4850 5150
F 0 "#PWR?" H 4850 4900 50  0001 C CNN
F 1 "GND" H 4855 4977 50  0000 C CNN
F 2 "" H 4850 5150 50  0001 C CNN
F 3 "" H 4850 5150 50  0001 C CNN
	1    4850 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4850 3550 5000
$Comp
L Device:C_Small C?
U 1 1 5C164B81
P 5500 5000
F 0 "C?" H 5408 4954 50  0000 R CNN
F 1 "2.2 uF" H 5408 5045 50  0000 R CNN
F 2 "" H 5500 5000 50  0001 C CNN
F 3 "~" H 5500 5000 50  0001 C CNN
	1    5500 5000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C164B88
P 5500 5150
F 0 "#PWR?" H 5500 4900 50  0001 C CNN
F 1 "GND" H 5505 4977 50  0000 C CNN
F 2 "" H 5500 5150 50  0001 C CNN
F 3 "" H 5500 5150 50  0001 C CNN
	1    5500 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 5100 5500 5150
Wire Wire Line
	4850 4950 4850 5150
Wire Wire Line
	5350 4600 5500 4600
Wire Wire Line
	5500 4600 5500 4800
$Comp
L Device:R_Small R?
U 1 1 5C164B92
P 5700 4650
F 0 "R?" H 5759 4696 50  0000 L CNN
F 1 "TBD" H 5759 4605 50  0000 L CNN
F 2 "" H 5700 4650 50  0001 C CNN
F 3 "~" H 5700 4650 50  0001 C CNN
	1    5700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4500 5700 4500
Wire Wire Line
	5700 4500 5700 4550
Wire Wire Line
	5500 4800 5700 4800
Wire Wire Line
	5700 4800 5700 4750
Connection ~ 5500 4800
Wire Wire Line
	5500 4800 5500 4900
Wire Wire Line
	5700 4800 5900 4800
Connection ~ 5700 4800
Wire Wire Line
	5350 4400 5500 4400
$Comp
L power:VPP #PWR?
U 1 1 5C164BA2
P 5500 3850
F 0 "#PWR?" H 5500 3700 50  0001 C CNN
F 1 "VPP" H 5515 4023 50  0000 C CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C164BA8
P 5700 4050
F 0 "C?" H 5608 4004 50  0000 R CNN
F 1 "2.2 uF" H 5608 4095 50  0000 R CNN
F 2 "" H 5700 4050 50  0001 C CNN
F 3 "~" H 5700 4050 50  0001 C CNN
	1    5700 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3850 5500 3900
$Comp
L power:GND #PWR?
U 1 1 5C164BB0
P 5700 4200
F 0 "#PWR?" H 5700 3950 50  0001 C CNN
F 1 "GND" H 5705 4027 50  0000 C CNN
F 2 "" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 4150 5700 4200
Wire Wire Line
	5500 3900 5700 3900
Wire Wire Line
	5700 3900 5700 3950
Connection ~ 5500 3900
Wire Wire Line
	5500 3900 5500 4400
Wire Wire Line
	4350 4600 4250 4600
Text Label 4250 4600 2    50   ~ 0
PGOOD_2V5
Wire Wire Line
	3550 4400 4350 4400
Text Notes 2650 4250 0    50   ~ 0
TODO: GATE OFF PGOOD FROM OTHER RAIL
$Comp
L ld39100:LD39100 U?
U 1 1 5C1A5311
P 8200 2850
F 0 "U?" H 8200 3237 60  0000 C CNN
F 1 "LD39100" H 8200 3131 60  0000 C CNN
F 2 "" H 8200 2850 60  0001 C CNN
F 3 "" H 8200 2850 60  0001 C CNN
	1    8200 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C1A5318
P 6900 3100
F 0 "R?" H 6959 3146 50  0000 L CNN
F 1 "10k" H 6959 3055 50  0000 L CNN
F 2 "" H 6900 3100 50  0001 C CNN
F 3 "~" H 6900 3100 50  0001 C CNN
	1    6900 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C1A531F
P 7600 2850
F 0 "#PWR?" H 7600 2600 50  0001 C CNN
F 1 "GND" H 7605 2677 50  0000 C CNN
F 2 "" H 7600 2850 50  0001 C CNN
F 3 "" H 7600 2850 50  0001 C CNN
	1    7600 2850
	0    1    -1   0   
$EndComp
Wire Wire Line
	7600 2850 7700 2850
$Comp
L power:GND #PWR?
U 1 1 5C1A5326
P 6900 3350
F 0 "#PWR?" H 6900 3100 50  0001 C CNN
F 1 "GND" H 6905 3177 50  0000 C CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 2750 6900 3000
$Comp
L power:GND #PWR?
U 1 1 5C1A532D
P 8200 3500
F 0 "#PWR?" H 8200 3250 50  0001 C CNN
F 1 "GND" H 8205 3327 50  0000 C CNN
F 2 "" H 8200 3500 50  0001 C CNN
F 3 "" H 8200 3500 50  0001 C CNN
	1    8200 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 3200 6900 3350
$Comp
L Device:C_Small C?
U 1 1 5C1A5334
P 8850 3350
F 0 "C?" H 8758 3304 50  0000 R CNN
F 1 "2.2 uF" H 8758 3395 50  0000 R CNN
F 2 "" H 8850 3350 50  0001 C CNN
F 3 "~" H 8850 3350 50  0001 C CNN
	1    8850 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C1A533B
P 8850 3500
F 0 "#PWR?" H 8850 3250 50  0001 C CNN
F 1 "GND" H 8855 3327 50  0000 C CNN
F 2 "" H 8850 3500 50  0001 C CNN
F 3 "" H 8850 3500 50  0001 C CNN
	1    8850 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 3450 8850 3500
Wire Wire Line
	8200 3300 8200 3500
Wire Wire Line
	8700 2950 8850 2950
Wire Wire Line
	8850 2950 8850 3150
$Comp
L Device:R_Small R?
U 1 1 5C1A5345
P 9050 3000
F 0 "R?" H 9109 3046 50  0000 L CNN
F 1 "TBD" H 9109 2955 50  0000 L CNN
F 2 "" H 9050 3000 50  0001 C CNN
F 3 "~" H 9050 3000 50  0001 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2850 9050 2850
Wire Wire Line
	9050 2850 9050 2900
Wire Wire Line
	8850 3150 9050 3150
Wire Wire Line
	9050 3150 9050 3100
Connection ~ 8850 3150
Wire Wire Line
	8850 3150 8850 3250
Wire Wire Line
	9050 3150 9250 3150
Connection ~ 9050 3150
Wire Wire Line
	8700 2750 8850 2750
$Comp
L power:VPP #PWR?
U 1 1 5C1A5355
P 8850 2200
F 0 "#PWR?" H 8850 2050 50  0001 C CNN
F 1 "VPP" H 8865 2373 50  0000 C CNN
F 2 "" H 8850 2200 50  0001 C CNN
F 3 "" H 8850 2200 50  0001 C CNN
	1    8850 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C1A535B
P 9050 2400
F 0 "C?" H 8958 2354 50  0000 R CNN
F 1 "2.2 uF" H 8958 2445 50  0000 R CNN
F 2 "" H 9050 2400 50  0001 C CNN
F 3 "~" H 9050 2400 50  0001 C CNN
	1    9050 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 2200 8850 2250
$Comp
L power:GND #PWR?
U 1 1 5C1A5363
P 9050 2550
F 0 "#PWR?" H 9050 2300 50  0001 C CNN
F 1 "GND" H 9055 2377 50  0000 C CNN
F 2 "" H 9050 2550 50  0001 C CNN
F 3 "" H 9050 2550 50  0001 C CNN
	1    9050 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 2500 9050 2550
Wire Wire Line
	8850 2250 9050 2250
Wire Wire Line
	9050 2250 9050 2300
Connection ~ 8850 2250
Wire Wire Line
	8850 2250 8850 2750
Wire Wire Line
	7700 2950 7600 2950
Text Label 7600 2950 2    50   ~ 0
PGOOD_2V5
Wire Wire Line
	6900 2750 7700 2750
Text Notes 5100 1450 0    50   ~ 0
TODO: GATE OFF PGOOD FROM OTHER RAIL
$Comp
L ld39100:LD39100 U?
U 1 1 5C209DE0
P 7900 4450
F 0 "U?" H 7900 4837 60  0000 C CNN
F 1 "LD39100" H 7900 4731 60  0000 C CNN
F 2 "" H 7900 4450 60  0001 C CNN
F 3 "" H 7900 4450 60  0001 C CNN
	1    7900 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C209DE7
P 6600 4700
F 0 "R?" H 6659 4746 50  0000 L CNN
F 1 "10k" H 6659 4655 50  0000 L CNN
F 2 "" H 6600 4700 50  0001 C CNN
F 3 "~" H 6600 4700 50  0001 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C209DEE
P 7300 4450
F 0 "#PWR?" H 7300 4200 50  0001 C CNN
F 1 "GND" H 7305 4277 50  0000 C CNN
F 2 "" H 7300 4450 50  0001 C CNN
F 3 "" H 7300 4450 50  0001 C CNN
	1    7300 4450
	0    1    -1   0   
$EndComp
Wire Wire Line
	7300 4450 7400 4450
$Comp
L power:GND #PWR?
U 1 1 5C209DF5
P 6600 4950
F 0 "#PWR?" H 6600 4700 50  0001 C CNN
F 1 "GND" H 6605 4777 50  0000 C CNN
F 2 "" H 6600 4950 50  0001 C CNN
F 3 "" H 6600 4950 50  0001 C CNN
	1    6600 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 4350 6600 4600
$Comp
L power:GND #PWR?
U 1 1 5C209DFC
P 7900 5100
F 0 "#PWR?" H 7900 4850 50  0001 C CNN
F 1 "GND" H 7905 4927 50  0000 C CNN
F 2 "" H 7900 5100 50  0001 C CNN
F 3 "" H 7900 5100 50  0001 C CNN
	1    7900 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 4800 6600 4950
$Comp
L Device:C_Small C?
U 1 1 5C209E03
P 8550 4950
F 0 "C?" H 8458 4904 50  0000 R CNN
F 1 "2.2 uF" H 8458 4995 50  0000 R CNN
F 2 "" H 8550 4950 50  0001 C CNN
F 3 "~" H 8550 4950 50  0001 C CNN
	1    8550 4950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C209E0A
P 8550 5100
F 0 "#PWR?" H 8550 4850 50  0001 C CNN
F 1 "GND" H 8555 4927 50  0000 C CNN
F 2 "" H 8550 5100 50  0001 C CNN
F 3 "" H 8550 5100 50  0001 C CNN
	1    8550 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 5050 8550 5100
Wire Wire Line
	7900 4900 7900 5100
Wire Wire Line
	8400 4550 8550 4550
Wire Wire Line
	8550 4550 8550 4750
$Comp
L Device:R_Small R?
U 1 1 5C209E14
P 8750 4600
F 0 "R?" H 8809 4646 50  0000 L CNN
F 1 "TBD" H 8809 4555 50  0000 L CNN
F 2 "" H 8750 4600 50  0001 C CNN
F 3 "~" H 8750 4600 50  0001 C CNN
	1    8750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4450 8750 4450
Wire Wire Line
	8750 4450 8750 4500
Wire Wire Line
	8550 4750 8750 4750
Wire Wire Line
	8750 4750 8750 4700
Connection ~ 8550 4750
Wire Wire Line
	8550 4750 8550 4850
Wire Wire Line
	8750 4750 8950 4750
Connection ~ 8750 4750
Wire Wire Line
	8400 4350 8550 4350
$Comp
L power:VPP #PWR?
U 1 1 5C209E24
P 8550 3800
F 0 "#PWR?" H 8550 3650 50  0001 C CNN
F 1 "VPP" H 8565 3973 50  0000 C CNN
F 2 "" H 8550 3800 50  0001 C CNN
F 3 "" H 8550 3800 50  0001 C CNN
	1    8550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C209E2A
P 8750 4000
F 0 "C?" H 8658 3954 50  0000 R CNN
F 1 "2.2 uF" H 8658 4045 50  0000 R CNN
F 2 "" H 8750 4000 50  0001 C CNN
F 3 "~" H 8750 4000 50  0001 C CNN
	1    8750 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 3800 8550 3850
$Comp
L power:GND #PWR?
U 1 1 5C209E32
P 8750 4150
F 0 "#PWR?" H 8750 3900 50  0001 C CNN
F 1 "GND" H 8755 3977 50  0000 C CNN
F 2 "" H 8750 4150 50  0001 C CNN
F 3 "" H 8750 4150 50  0001 C CNN
	1    8750 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 4100 8750 4150
Wire Wire Line
	8550 3850 8750 3850
Wire Wire Line
	8750 3850 8750 3900
Connection ~ 8550 3850
Wire Wire Line
	8550 3850 8550 4350
Wire Wire Line
	7400 4550 7300 4550
Text Label 7300 4550 2    50   ~ 0
PGOOD_2V5
Wire Wire Line
	6600 4350 7400 4350
$Comp
L Device:R_Small R?
U 1 1 5C216198
P 9000 4450
F 0 "R?" V 8804 4450 50  0000 C CNN
F 1 "TBD" V 8895 4450 50  0000 C CNN
F 2 "" H 9000 4450 50  0001 C CNN
F 3 "~" H 9000 4450 50  0001 C CNN
	1    9000 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 4450 8900 4450
Connection ~ 8750 4450
$Comp
L power:GND #PWR?
U 1 1 5C23AA43
P 9200 4450
F 0 "#PWR?" H 9200 4200 50  0001 C CNN
F 1 "GND" H 9205 4277 50  0000 C CNN
F 2 "" H 9200 4450 50  0001 C CNN
F 3 "" H 9200 4450 50  0001 C CNN
	1    9200 4450
	0    -1   1    0   
$EndComp
Wire Wire Line
	9200 4450 9100 4450
$Comp
L Device:R_Small R?
U 1 1 5C247E3D
P 9300 2850
F 0 "R?" V 9104 2850 50  0000 C CNN
F 1 "TBD" V 9195 2850 50  0000 C CNN
F 2 "" H 9300 2850 50  0001 C CNN
F 3 "~" H 9300 2850 50  0001 C CNN
	1    9300 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C247E45
P 9500 2850
F 0 "#PWR?" H 9500 2600 50  0001 C CNN
F 1 "GND" H 9505 2677 50  0000 C CNN
F 2 "" H 9500 2850 50  0001 C CNN
F 3 "" H 9500 2850 50  0001 C CNN
	1    9500 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	9500 2850 9400 2850
Wire Wire Line
	9200 2850 9050 2850
Connection ~ 9050 2850
$Comp
L Device:R_Small R?
U 1 1 5C261DD3
P 6000 2650
F 0 "R?" V 5804 2650 50  0000 C CNN
F 1 "TBD" V 5895 2650 50  0000 C CNN
F 2 "" H 6000 2650 50  0001 C CNN
F 3 "~" H 6000 2650 50  0001 C CNN
	1    6000 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C261DDB
P 6200 2650
F 0 "#PWR?" H 6200 2400 50  0001 C CNN
F 1 "GND" H 6205 2477 50  0000 C CNN
F 2 "" H 6200 2650 50  0001 C CNN
F 3 "" H 6200 2650 50  0001 C CNN
	1    6200 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	6200 2650 6100 2650
$Comp
L Device:R_Small R?
U 1 1 5C26EE47
P 6000 4500
F 0 "R?" V 5804 4500 50  0000 C CNN
F 1 "TBD" V 5895 4500 50  0000 C CNN
F 2 "" H 6000 4500 50  0001 C CNN
F 3 "~" H 6000 4500 50  0001 C CNN
	1    6000 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C26EE4F
P 6200 4500
F 0 "#PWR?" H 6200 4250 50  0001 C CNN
F 1 "GND" H 6205 4327 50  0000 C CNN
F 2 "" H 6200 4500 50  0001 C CNN
F 3 "" H 6200 4500 50  0001 C CNN
	1    6200 4500
	0    -1   1    0   
$EndComp
Wire Wire Line
	6200 4500 6100 4500
Wire Wire Line
	5700 4500 5900 4500
Connection ~ 5700 4500
Wire Wire Line
	5700 2650 5900 2650
Connection ~ 5700 2650
$Comp
L power:+1V35 #PWR?
U 1 1 5C1044DD
P 8950 4750
AR Path="/5BC64E97/5C1044DD" Ref="#PWR?"  Part="1" 
AR Path="/5BC3F686/5C1044DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 4600 50  0001 C CNN
F 1 "+1V35" H 9000 4950 50  0000 C CNN
F 2 "" H 8950 4750 50  0001 C CNN
F 3 "" H 8950 4750 50  0001 C CNN
	1    8950 4750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5C16C85A
P 15050 5100
F 0 "J?" H 15149 5076 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 4985 50  0000 L CNN
F 2 "" H 15050 5100 50  0001 C CNN
F 3 " ~" H 15050 5100 50  0001 C CNN
	1    15050 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C16C861
P 15050 5350
F 0 "#PWR?" H 15050 5100 50  0001 C CNN
F 1 "GND" H 15055 5177 50  0000 C CNN
F 2 "" H 15050 5350 50  0001 C CNN
F 3 "" H 15050 5350 50  0001 C CNN
	1    15050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 5350 15050 5300
Wire Wire Line
	14850 5100 14500 5100
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5C1F024D
P 15050 3750
F 0 "J?" H 15149 3726 50  0000 L CNN
F 1 "Conn_Coaxial" H 15149 3635 50  0000 L CNN
F 2 "" H 15050 3750 50  0001 C CNN
F 3 " ~" H 15050 3750 50  0001 C CNN
	1    15050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C1F0254
P 15050 4000
F 0 "#PWR?" H 15050 3750 50  0001 C CNN
F 1 "GND" H 15055 3827 50  0000 C CNN
F 2 "" H 15050 4000 50  0001 C CNN
F 3 "" H 15050 4000 50  0001 C CNN
	1    15050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 4000 15050 3950
$Comp
L Device:R_Small R?
U 1 1 5C1FB1FE
P 14000 3750
F 0 "R?" V 13804 3750 50  0000 C CNN
F 1 "JMP" V 13895 3750 50  0000 C CNN
F 2 "" H 14000 3750 50  0001 C CNN
F 3 "~" H 14000 3750 50  0001 C CNN
	1    14000 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C1FB205
P 14500 3750
F 0 "R?" V 14304 3750 50  0000 C CNN
F 1 "JMP" V 14395 3750 50  0000 C CNN
F 2 "" H 14500 3750 50  0001 C CNN
F 3 "~" H 14500 3750 50  0001 C CNN
	1    14500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3750 14250 3750
Wire Wire Line
	14250 3750 14250 3350
Connection ~ 14250 3750
Wire Wire Line
	14250 3750 14100 3750
Wire Wire Line
	13900 3750 13500 3750
$Comp
L Device:R_Small R?
U 1 1 5C206702
P 14250 3250
F 0 "R?" H 14191 3204 50  0000 R CNN
F 1 "DNP" H 14191 3295 50  0000 R CNN
F 2 "" H 14250 3250 50  0001 C CNN
F 3 "~" H 14250 3250 50  0001 C CNN
	1    14250 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	14600 3750 14850 3750
Wire Wire Line
	14250 3150 14250 2950
$EndSCHEMATC
