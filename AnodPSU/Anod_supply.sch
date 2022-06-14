EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "LU KFI"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 62288D30
P 1675 1450
F 0 "J1" H 1732 1767 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1732 1676 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1725 1410 50  0001 C CNN
F 3 "~" H 1725 1410 50  0001 C CNN
	1    1675 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 62295AE8
P 3525 1575
F 0 "C1" H 3643 1621 50  0000 L CNN
F 1 "100uF/100V" H 3643 1530 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3563 1425 50  0001 C CNN
F 3 "~" H 3525 1575 50  0001 C CNN
	1    3525 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 1425 3525 1350
$Comp
L pspice:INDUCTOR L2
U 1 1 622982E1
P 3900 1350
F 0 "L2" H 3900 1565 50  0000 C CNN
F 1 "1mH" H 3900 1474 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D8.7mm_P5.00mm_Fastron_07HCP" H 3900 1350 50  0001 C CNN
F 3 "~" H 3900 1350 50  0001 C CNN
	1    3900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1350 3525 1350
Connection ~ 3525 1350
$Comp
L Device:CP C2
U 1 1 62298B6C
P 4375 1575
F 0 "C2" H 4493 1621 50  0000 L CNN
F 1 "100uF/100V" H 4493 1530 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4413 1425 50  0001 C CNN
F 3 "~" H 4375 1575 50  0001 C CNN
	1    4375 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1350 4375 1350
Wire Wire Line
	4375 1350 4375 1425
Wire Wire Line
	4375 1725 4375 2000
Connection ~ 3525 2000
$Comp
L Device:R R2
U 1 1 62299BE0
P 4825 1350
F 0 "R2" V 4618 1350 50  0000 C CNN
F 1 "150/18W" V 4709 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Horizontal_TabDown" V 4755 1350 50  0001 C CNN
F 3 "~" H 4825 1350 50  0001 C CNN
	1    4825 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 1350 4375 1350
Connection ~ 4375 1350
$Comp
L Device:C C3
U 1 1 6229AA73
P 5125 1600
F 0 "C3" H 4975 1700 50  0000 L CNN
F 1 "1uF/100V" H 4700 1500 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L13.0mm_W4.0mm_P10.00mm_FKS3_FKP3_MKS4" H 5163 1450 50  0001 C CNN
F 3 "~" H 5125 1600 50  0001 C CNN
	1    5125 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 1750 5125 2000
Wire Wire Line
	5125 2000 4375 2000
Connection ~ 4375 2000
Wire Wire Line
	5125 1350 5125 1450
$Comp
L Regulator_Linear:LM317_TO39 U1
U 1 1 6229CCB6
P 5575 1350
F 0 "U1" H 5575 1592 50  0000 C CNN
F 1 "LM317_TO39" H 5575 1501 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 5575 1575 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 5575 1350 50  0001 C CNN
	1    5575 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 1350 5125 1350
Connection ~ 5125 1350
Wire Wire Line
	5125 1025 5125 1350
Wire Wire Line
	5975 1025 6025 1025
Wire Wire Line
	6025 1025 6025 1350
Wire Wire Line
	6025 1350 5875 1350
Wire Wire Line
	5125 1025 5575 1025
Wire Wire Line
	6025 1475 6025 1350
Connection ~ 6025 1350
Wire Wire Line
	6025 1875 6025 2000
Wire Wire Line
	6025 2000 5575 2000
Wire Wire Line
	5575 2000 5575 1650
$Comp
L Device:R R3
U 1 1 622A116F
P 6550 1700
F 0 "R3" H 6620 1746 50  0000 L CNN
F 1 "240" H 6620 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6480 1700 50  0001 C CNN
F 3 "~" H 6550 1700 50  0001 C CNN
	1    6550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 1350 6550 1350
Wire Wire Line
	6550 1350 6550 1550
Wire Wire Line
	6550 1850 6550 2000
Wire Wire Line
	6550 2000 6025 2000
Connection ~ 6025 2000
$Comp
L Device:C C4
U 1 1 622A2694
P 5325 2000
F 0 "C4" V 5073 2000 50  0000 C CNN
F 1 "2,2uF " V 5164 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L13.0mm_W4.0mm_P10.00mm_FKS3_FKP3_MKS4" H 5363 1850 50  0001 C CNN
F 3 "~" H 5325 2000 50  0001 C CNN
	1    5325 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	5475 2000 5575 2000
Connection ~ 5575 2000
Connection ~ 5125 2000
Wire Wire Line
	5575 2000 5575 2200
$Comp
L Device:LED D5
U 1 1 622A7334
P 7900 2000
F 0 "D5" V 7939 1882 50  0000 R CNN
F 1 "LED" V 7848 1882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7900 2000 50  0001 C CNN
F 3 "~" H 7900 2000 50  0001 C CNN
	1    7900 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 622A7D66
P 7525 1625
F 0 "R4" H 7455 1579 50  0000 R CNN
F 1 "47K" H 7455 1670 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7455 1625 50  0001 C CNN
F 3 "~" H 7525 1625 50  0001 C CNN
	1    7525 1625
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 622A8A8B
P 6925 1675
F 0 "C5" H 7040 1721 50  0000 L CNN
F 1 "1uF/100V" H 7040 1630 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L13.0mm_W4.0mm_P10.00mm_FKS3_FKP3_MKS4" H 6963 1525 50  0001 C CNN
F 3 "~" H 6925 1675 50  0001 C CNN
	1    6925 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 1525 6925 1350
Wire Wire Line
	6925 1350 6550 1350
Connection ~ 6550 1350
Wire Wire Line
	7525 1475 7525 1350
Wire Wire Line
	7525 1350 7300 1350
Connection ~ 6925 1350
Connection ~ 7525 1350
Wire Wire Line
	3525 1725 3525 2000
Wire Wire Line
	1975 1350 2150 1350
$Comp
L Device:R_POT RV7
U 1 1 622C12BB
P 6275 2425
F 0 "RV7" H 6425 2600 50  0000 C CNN
F 1 "2K2" H 6425 2525 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 6275 2425 50  0001 C CNN
F 3 "~" H 6275 2425 50  0001 C CNN
	1    6275 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 2200 5600 2200
$Comp
L Device:R R5
U 1 1 622A3EB7
P 5750 2200
F 0 "R5" V 5650 2175 50  0000 C CNN
F 1 "6K8" V 5850 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2200 50  0001 C CNN
F 3 "~" H 5750 2200 50  0001 C CNN
	1    5750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2200 5975 2200
Wire Wire Line
	6925 1825 6925 2800
$Comp
L Device:R R6
U 1 1 622A4C5D
P 5975 2425
F 0 "R6" H 5905 2379 50  0000 R CNN
F 1 "2K2" H 5905 2470 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5905 2425 50  0001 C CNN
F 3 "~" H 5975 2425 50  0001 C CNN
	1    5975 2425
	-1   0    0    1   
$EndComp
Wire Wire Line
	5975 2275 5975 2200
Connection ~ 5975 2200
Wire Wire Line
	6275 2275 6275 2200
Wire Wire Line
	5975 2200 6275 2200
Wire Wire Line
	5175 2000 5125 2000
NoConn ~ 1975 1450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 622A0CBF
P 5125 1025
F 0 "#FLG01" H 5125 1100 50  0001 C CNN
F 1 "PWR_FLAG" H 5125 1198 50  0000 C CNN
F 2 "" H 5125 1025 50  0001 C CNN
F 3 "~" H 5125 1025 50  0001 C CNN
	1    5125 1025
	1    0    0    -1  
$EndComp
Connection ~ 5125 1025
Wire Wire Line
	1975 2000 1975 1550
Connection ~ 6925 2800
Wire Wire Line
	3675 3875 4400 3875
Connection ~ 3675 3875
Wire Wire Line
	3675 3825 3675 3875
Wire Wire Line
	3375 3825 3375 3875
Wire Wire Line
	3675 3475 3375 3475
Connection ~ 3675 3475
Wire Wire Line
	3675 3525 3675 3475
Wire Wire Line
	3375 3475 3375 3525
Wire Wire Line
	3800 3475 3675 3475
$Comp
L Device:CP C7
U 1 1 622F2236
P 3375 3675
F 0 "C7" V 3225 3625 50  0000 L CNN
F 1 "330uF/100V" V 3525 3475 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 3413 3525 50  0001 C CNN
F 3 "~" H 3375 3675 50  0001 C CNN
	1    3375 3675
	1    0    0    -1  
$EndComp
Connection ~ 4400 3875
Wire Wire Line
	4400 3900 4400 3875
Wire Wire Line
	4400 3400 4400 3475
Wire Wire Line
	4300 3475 4400 3475
Connection ~ 4400 3475
Connection ~ 5975 2800
Wire Wire Line
	5125 2800 5975 2800
Wire Wire Line
	5125 2000 5125 2800
$Comp
L MULTICOMP:MPRB4805 PS1
U 1 1 622A2990
P 5100 3675
F 0 "PS1" H 5100 4100 50  0000 C CNN
F 1 "MPRB4805" H 5100 4009 50  0000 C CNN
F 2 "MPRB4805:MPRB4805" H 5100 4008 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/3195175.pdf" H 5100 4009 50  0001 C CNN
	1    5100 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3475 4700 3475
Wire Wire Line
	4700 3475 4700 3575
Wire Wire Line
	4700 3575 4800 3575
Wire Wire Line
	4800 3775 4700 3775
Wire Wire Line
	4700 3775 4700 3875
$Comp
L Device:CP C9
U 1 1 622B1AE5
P 4400 3650
F 0 "C9" V 4250 3600 50  0000 L CNN
F 1 "330uF/100V" V 4550 3450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 4438 3500 50  0001 C CNN
F 3 "~" H 4400 3650 50  0001 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3500 4400 3475
Wire Wire Line
	4400 3475 4700 3475
Connection ~ 4700 3475
Wire Wire Line
	4400 3800 4400 3875
Wire Wire Line
	4400 3875 4700 3875
Wire Wire Line
	5400 3575 5400 3525
Wire Wire Line
	5400 3525 5500 3525
Wire Wire Line
	5400 3775 5400 3825
Wire Wire Line
	5400 3825 5500 3825
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 622BABB4
P 6425 3625
F 0 "J3" H 6453 3601 50  0000 L CNN
F 1 "Conn_01x02" H 6453 3510 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6425 3625 50  0001 C CNN
F 3 "~" H 6425 3625 50  0001 C CNN
	1    6425 3625
	1    0    0    -1  
$EndComp
Connection ~ 5500 3525
Wire Wire Line
	6225 3725 6225 3825
Wire Wire Line
	6225 3825 5950 3825
Connection ~ 5500 3825
$Comp
L Device:C C12
U 1 1 622C0634
P 4400 3250
F 0 "C12" H 4425 3325 50  0000 L CNN
F 1 "1nF/2KV" H 4400 3175 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W2.5mm_P5.00mm" H 4438 3100 50  0001 C CNN
F 3 "~" H 4400 3250 50  0001 C CNN
	1    4400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3100 5500 3100
$Comp
L pspice:INDUCTOR L3
U 1 1 622C5E27
P 4050 3475
F 0 "L3" H 4050 3690 50  0000 C CNN
F 1 "4.7uH" H 4050 3599 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D7.5mm_P3.50mm_Fastron_07P" H 4050 3475 50  0001 C CNN
F 3 "~" H 4050 3475 50  0001 C CNN
	1    4050 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 622C6D49
P 3675 3675
F 0 "C8" H 3790 3721 50  0000 L CNN
F 1 "1uF/100V" H 3790 3630 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L13.0mm_W4.0mm_P10.00mm_FKS3_FKP3_MKS4" H 3713 3525 50  0001 C CNN
F 3 "~" H 3675 3675 50  0001 C CNN
	1    3675 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 2800 6925 2800
Connection ~ 6425 2800
Wire Wire Line
	6425 2425 6425 2800
Wire Wire Line
	6275 2800 6425 2800
Connection ~ 6275 2800
Wire Wire Line
	5975 2800 6275 2800
Wire Wire Line
	6275 2575 6275 2800
Wire Wire Line
	5975 2575 5975 2800
Wire Wire Line
	1975 3875 1975 2000
Wire Wire Line
	1975 3875 3050 3875
Connection ~ 3375 3875
Wire Wire Line
	3375 3875 3675 3875
Connection ~ 1975 2000
Wire Wire Line
	2675 1350 2700 1350
$Comp
L Device:Fuse F1
U 1 1 6229E624
P 2525 1350
F 0 "F1" V 2328 1350 50  0000 C CNN
F 1 "Fuse" V 2419 1350 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 2455 1350 50  0001 C CNN
F 3 "~" H 2525 1350 50  0001 C CNN
	1    2525 1350
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D8
U 1 1 622C2A4F
P 2775 3025
F 0 "D8" H 2775 3290 50  0000 C CNN
F 1 "IN4007" H 2775 3199 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2775 3025 50  0001 C CNN
F 3 "~" H 2775 3025 50  0001 C CNN
	1    2775 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 622DC8F7
P 2425 3025
F 0 "F2" V 2228 3025 50  0000 C CNN
F 1 "Fuse" V 2319 3025 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 2355 3025 50  0001 C CNN
F 3 "~" H 2425 3025 50  0001 C CNN
	1    2425 3025
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 622895D7
P 2900 1350
F 0 "D1" H 2900 1615 50  0000 C CNN
F 1 "IN4007" H 2900 1524 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2900 1350 50  0001 C CNN
F 3 "~" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 1350 3200 1350
Wire Wire Line
	3200 1350 3100 1350
Connection ~ 3200 1350
Wire Wire Line
	3200 2000 3525 2000
Wire Wire Line
	3100 2000 3200 2000
Connection ~ 3200 2000
$Comp
L Device:LED D2
U 1 1 6228AEC4
P 3200 1850
F 0 "D2" V 3239 1732 50  0000 R CNN
F 1 "LED" V 3148 1732 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3200 1850 50  0001 C CNN
F 3 "~" H 3200 1850 50  0001 C CNN
	1    3200 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 62294610
P 3200 1550
F 0 "R1" H 3270 1596 50  0000 L CNN
F 1 "47K" H 3270 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 1550 50  0001 C CNN
F 3 "~" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1400 3200 1350
$Comp
L Device:R R9
U 1 1 622FBD4F
P 3050 3375
F 0 "R9" V 2950 3325 50  0000 L CNN
F 1 "47K" V 3150 3300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 3375 50  0001 C CNN
F 3 "~" H 3050 3375 50  0001 C CNN
	1    3050 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3825 3050 3875
Connection ~ 3050 3875
Wire Wire Line
	3050 3875 3375 3875
Wire Wire Line
	2975 3025 3050 3025
Wire Wire Line
	3050 3025 3050 3225
Connection ~ 2150 1350
Wire Wire Line
	2150 1350 2375 1350
Wire Wire Line
	2275 3025 2150 3025
Wire Wire Line
	2150 3025 2150 1350
Wire Wire Line
	3050 3025 3375 3025
Wire Wire Line
	3375 3025 3375 3475
Connection ~ 3050 3025
Connection ~ 3375 3475
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 62337E66
P 4700 3475
F 0 "#FLG0101" H 4700 3550 50  0001 C CNN
F 1 "PWR_FLAG" H 4700 3625 50  0001 C CNN
F 2 "" H 4700 3475 50  0001 C CNN
F 3 "~" H 4700 3475 50  0001 C CNN
	1    4700 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6233D19D
P 5950 3675
F 0 "R10" H 6020 3721 50  0000 L CNN
F 1 "47K" H 6025 3650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 3675 50  0001 C CNN
F 3 "~" H 5950 3675 50  0001 C CNN
	1    5950 3675
	1    0    0    -1  
$EndComp
Connection ~ 5950 3825
Wire Wire Line
	5950 3825 5500 3825
$Comp
L power:+5V #PWR01
U 1 1 6238EAE1
P 5950 3075
F 0 "#PWR01" H 5950 2925 50  0001 C CNN
F 1 "+5V" H 5965 3248 50  0000 C CNN
F 2 "" H 5950 3075 50  0001 C CNN
F 3 "" H 5950 3075 50  0001 C CNN
	1    5950 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4025 5950 3950
Wire Wire Line
	8875 4275 8500 4275
Wire Wire Line
	8500 4275 8500 4475
Wire Wire Line
	8875 4475 8500 4475
$Comp
L power:GNDA #PWR010
U 1 1 6242CAA4
P 9475 4475
F 0 "#PWR010" H 9475 4225 50  0001 C CNN
F 1 "GNDA" H 9480 4302 50  0000 C CNN
F 2 "" H 9475 4475 50  0001 C CNN
F 3 "" H 9475 4475 50  0001 C CNN
	1    9475 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 4475 9475 4475
Wire Wire Line
	9175 4275 9475 4275
Wire Wire Line
	9475 4275 9475 4475
Connection ~ 9475 4475
$Comp
L power:GNDA #PWR08
U 1 1 624A3028
P 7950 1450
F 0 "#PWR08" H 7950 1200 50  0001 C CNN
F 1 "GNDA" H 7955 1277 50  0000 C CNN
F 2 "" H 7950 1450 50  0001 C CNN
F 3 "" H 7950 1450 50  0001 C CNN
	1    7950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1450 7950 1350
$Comp
L Relay:G5V-1 K1
U 1 1 624AF228
P 8375 2500
F 0 "K1" H 7945 2454 50  0000 R CNN
F 1 "G5V-1" H 7945 2545 50  0000 R CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G5V-1" H 9505 2470 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 8375 2500 50  0001 C CNN
	1    8375 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8575 2200 9200 2200
Wire Wire Line
	9200 2200 9200 2225
Connection ~ 9200 2200
Wire Wire Line
	8575 2800 9200 2800
Connection ~ 9200 2800
Wire Wire Line
	6925 2800 7300 2800
Wire Wire Line
	7525 1775 7525 2000
Wire Wire Line
	7525 2000 7750 2000
Wire Wire Line
	8050 2000 8175 2000
Connection ~ 8175 2000
Wire Wire Line
	8175 2000 8175 2200
Wire Wire Line
	8175 1450 8175 2000
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 62546B8F
P 8375 1450
F 0 "J2" H 8403 1476 50  0000 L CNN
F 1 "Cathode" H 8403 1385 50  0000 L CNN
F 2 "Connector_Pin:Pin_D0.9mm_L10.0mm_W2.4mm_FlatFork" H 8375 1450 50  0001 C CNN
F 3 "~" H 8375 1450 50  0001 C CNN
	1    8375 1450
	1    0    0    -1  
$EndComp
NoConn ~ 9425 5250
Wire Wire Line
	9000 4850 9425 4850
Text Label 9000 4850 0    50   ~ 0
GNDA
Wire Wire Line
	9425 4750 9000 4750
Text Label 9000 4750 0    50   ~ 0
+5V
Wire Wire Line
	9000 4950 9425 4950
Wire Wire Line
	9425 5050 9000 5050
Wire Wire Line
	9425 5150 9000 5150
Text Label 9000 4950 0    50   ~ 0
SCL
Text Label 9000 5050 0    50   ~ 0
SDA
Text Label 9000 5150 0    50   ~ 0
GNDA
$Comp
L MCU_Module:WeMos_D1_mini U3
U 1 1 62638257
P 2600 5500
F 0 "U3" H 2975 4950 50  0000 C CNN
F 1 "WeMos_D1_mini" H 3200 4850 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 2600 4350 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 750 4350 50  0001 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 1350 5125 1350
Wire Wire Line
	3525 2000 4375 2000
$Comp
L Device:R R8
U 1 1 627C055A
P 7300 2025
F 0 "R8" H 7230 1979 50  0000 R CNN
F 1 "47K" H 7230 2070 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7230 2025 50  0001 C CNN
F 3 "~" H 7300 2025 50  0001 C CNN
	1    7300 2025
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 627C0DFB
P 7300 2400
F 0 "D6" V 7339 2282 50  0000 R CNN
F 1 "LED" V 7248 2282 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7300 2400 50  0001 C CNN
F 3 "~" H 7300 2400 50  0001 C CNN
	1    7300 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2550 7300 2800
Connection ~ 7300 2800
Wire Wire Line
	7300 2800 8075 2800
Wire Wire Line
	7300 2175 7300 2250
Wire Wire Line
	7300 1875 7300 1350
Connection ~ 7300 1350
Wire Wire Line
	7300 1350 6925 1350
Wire Wire Line
	3000 5200 3375 5200
Text Label 3425 5200 0    50   ~ 0
SCL
Text Label 3450 5300 0    50   ~ 0
SDA
$Comp
L Device:R R14
U 1 1 6280D10B
P 3375 5050
F 0 "R14" V 3275 5000 50  0000 L CNN
F 1 "10K" V 3475 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3305 5050 50  0001 C CNN
F 3 "~" H 3375 5050 50  0001 C CNN
	1    3375 5050
	1    0    0    -1  
$EndComp
Connection ~ 3375 5200
Wire Wire Line
	3375 5200 3600 5200
$Comp
L Device:R R13
U 1 1 6280D748
P 3200 4775
F 0 "R13" V 3100 4725 50  0000 L CNN
F 1 "10K" V 3300 4725 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 4775 50  0001 C CNN
F 3 "~" H 3200 4775 50  0001 C CNN
	1    3200 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4925 3200 5300
Wire Wire Line
	3000 5300 3200 5300
Connection ~ 3200 5300
Wire Wire Line
	3200 5300 3600 5300
Wire Wire Line
	2700 4700 2700 4550
Wire Wire Line
	2700 4550 3200 4550
Wire Wire Line
	3200 4550 3200 4625
Wire Wire Line
	3375 4900 3375 4550
Wire Wire Line
	3375 4550 3200 4550
Connection ~ 3200 4550
$Comp
L power:GNDD #PWR013
U 1 1 628374B9
P 9200 3325
F 0 "#PWR013" H 9200 3075 50  0001 C CNN
F 1 "GNDD" H 9204 3170 50  0000 C CNN
F 2 "" H 9200 3325 50  0001 C CNN
F 3 "" H 9200 3325 50  0001 C CNN
	1    9200 3325
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR014
U 1 1 62838717
P 5950 4025
F 0 "#PWR014" H 5950 3775 50  0001 C CNN
F 1 "GNDD" H 5954 3870 50  0000 C CNN
F 2 "" H 5950 4025 50  0001 C CNN
F 3 "" H 5950 4025 50  0001 C CNN
	1    5950 4025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 62839E73
P 6100 3950
F 0 "R11" V 6025 3950 50  0000 C CNN
F 1 "0R" V 6175 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 3950 50  0001 C CNN
F 3 "~" H 6100 3950 50  0001 C CNN
	1    6100 3950
	0    1    1    0   
$EndComp
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 5950 3825
Wire Wire Line
	6250 3950 6250 4025
$Comp
L power:GNDD #PWR016
U 1 1 6284B023
P 2600 6425
F 0 "#PWR016" H 2600 6175 50  0001 C CNN
F 1 "GNDD" H 2604 6270 50  0000 C CNN
F 2 "" H 2600 6425 50  0001 C CNN
F 3 "" H 2600 6425 50  0001 C CNN
	1    2600 6425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 6284C3A8
P 2500 4475
F 0 "#PWR015" H 2500 4325 50  0001 C CNN
F 1 "+5V" H 2515 4648 50  0000 C CNN
F 2 "" H 2500 4475 50  0001 C CNN
F 3 "" H 2500 4475 50  0001 C CNN
	1    2500 4475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 6284CB13
P 4200 5300
F 0 "R15" V 4275 5300 50  0000 L CNN
F 1 "1K" V 4275 5175 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 5300 50  0001 C CNN
F 3 "~" H 4200 5300 50  0001 C CNN
	1    4200 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2625 9200 2800
$Comp
L power:+5V #PWR09
U 1 1 6285B06D
P 9200 2000
F 0 "#PWR09" H 9200 1850 50  0001 C CNN
F 1 "+5V" H 9215 2173 50  0000 C CNN
F 2 "" H 9200 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2000 9200 2200
NoConn ~ 2200 5400
NoConn ~ 2200 5500
NoConn ~ 2200 5100
Wire Wire Line
	4350 5300 4500 5300
Text Label 4500 5300 0    50   ~ 0
REL_TR
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 628AF4FE
P 9100 3100
F 0 "Q1" H 9291 3146 50  0000 L CNN
F 1 "BC547" H 9291 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9300 3025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 9100 3100 50  0001 L CNN
	1    9100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4200 8500 4275
Connection ~ 8500 4275
Wire Wire Line
	9200 3300 9200 3325
Wire Wire Line
	9200 2900 9200 2800
Wire Wire Line
	8900 3100 8525 3100
Text Label 8525 3100 0    50   ~ 0
REL_TR
Wire Wire Line
	9200 3325 9650 3325
Connection ~ 9200 3325
$Comp
L Device:CP C6
U 1 1 628FC986
P 9650 2675
F 0 "C6" V 9500 2625 50  0000 L CNN
F 1 "330uF/10V" V 9800 2475 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 9688 2525 50  0001 C CNN
F 3 "~" H 9650 2675 50  0001 C CNN
	1    9650 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2525 9650 2200
Wire Wire Line
	9200 2200 9650 2200
Wire Wire Line
	9650 2825 9650 3325
Wire Wire Line
	8100 5450 8300 5450
Connection ~ 8100 5450
Wire Wire Line
	8100 5000 8100 5450
Wire Wire Line
	8900 5000 8900 5350
Wire Wire Line
	8400 5000 8900 5000
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 62547FF9
P 7300 5450
F 0 "J4" H 7192 5225 50  0000 C CNN
F 1 "Anode" H 7192 5316 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.9mm_L10.0mm_W2.4mm_FlatFork" H 7300 5450 50  0001 C CNN
F 3 "~" H 7300 5450 50  0001 C CNN
	1    7300 5450
	-1   0    0    1   
$EndComp
Connection ~ 8500 5700
Wire Wire Line
	8500 5750 8500 5700
Wire Wire Line
	8500 5700 8500 5650
Wire Wire Line
	8275 5700 8500 5700
Wire Wire Line
	8275 5250 8275 5700
Wire Wire Line
	8300 5250 8275 5250
$Comp
L power:GNDA #PWR05
U 1 1 623C1C0D
P 8500 5750
F 0 "#PWR05" H 8500 5500 50  0001 C CNN
F 1 "GNDA" H 8505 5577 50  0000 C CNN
F 2 "" H 8500 5750 50  0001 C CNN
F 3 "" H 8500 5750 50  0001 C CNN
	1    8500 5750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP601-xP U2
U 1 1 62394E2E
P 8600 5350
F 0 "U2" H 8525 5625 50  0000 L CNN
F 1 "MCP601-xP" H 8525 5525 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8500 5150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21314g.pdf" H 8750 5500 50  0001 C CNN
	1    8600 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J5
U 1 1 62571814
P 9625 5250
F 0 "J5" V 9460 5178 50  0000 C CNN
F 1 "ads1115_connector" V 9551 5178 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B10B-EH-A_1x10_P2.50mm_Vertical" H 9625 5250 50  0001 C CNN
F 3 "~" H 9625 5250 50  0001 C CNN
	1    9625 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 5800 7950 5800
Connection ~ 7850 5800
Wire Wire Line
	7850 5925 7850 5800
$Comp
L power:GNDA #PWR011
U 1 1 62483407
P 7850 5925
F 0 "#PWR011" H 7850 5675 50  0001 C CNN
F 1 "GNDA" H 7855 5752 50  0000 C CNN
F 2 "" H 7850 5925 50  0001 C CNN
F 3 "" H 7850 5925 50  0001 C CNN
	1    7850 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5800 7950 5750
Wire Wire Line
	7750 5800 7850 5800
Wire Wire Line
	7750 5750 7750 5800
$Comp
L Device:R R12
U 1 1 62440604
P 8250 5000
F 0 "R12" V 8325 5100 50  0000 R CNN
F 1 "1K" V 8150 5100 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8180 5000 50  0001 C CNN
F 3 "~" H 8250 5000 50  0001 C CNN
	1    8250 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 623C3209
P 8500 4200
F 0 "#PWR02" H 8500 4050 50  0001 C CNN
F 1 "+5V" H 8515 4373 50  0000 C CNN
F 2 "" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 5350 9375 5350
Connection ~ 8900 5350
Wire Wire Line
	8500 4475 8500 5050
Connection ~ 8500 4475
$Comp
L Device:LED D10
U 1 1 6256BB37
P 5950 3375
F 0 "D10" H 6000 3475 50  0000 R CNN
F 1 "LED" H 6025 3275 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5950 3375 50  0001 C CNN
F 3 "~" H 5950 3375 50  0001 C CNN
	1    5950 3375
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6225 3100 5950 3100
Wire Wire Line
	6225 3100 6225 3625
Connection ~ 5950 3100
Wire Wire Line
	5950 3100 5950 3225
Wire Wire Line
	5950 3100 5500 3100
Connection ~ 5500 3100
Wire Wire Line
	5500 3100 5500 3525
$Comp
L power:GNDA #PWR03
U 1 1 623ADA33
P 6250 4025
F 0 "#PWR03" H 6250 3775 50  0001 C CNN
F 1 "GNDA" H 6255 3852 50  0000 C CNN
F 2 "" H 6250 4025 50  0001 C CNN
F 3 "" H 6250 4025 50  0001 C CNN
	1    6250 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4200 5500 3825
Wire Wire Line
	4400 4200 5500 4200
$Comp
L Device:C C11
U 1 1 622C12AF
P 4400 4050
F 0 "C11" H 4515 4096 50  0000 L CNN
F 1 "1nF/2KV" H 4515 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W2.5mm_P5.00mm" H 4438 3900 50  0001 C CNN
F 3 "~" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3075 5950 3100
$Comp
L Device:R R16
U 1 1 626086F9
P 8125 2950
F 0 "R16" V 8025 2900 50  0000 L CNN
F 1 "0R" V 8225 2900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8055 2950 50  0001 C CNN
F 3 "~" H 8125 2950 50  0001 C CNN
	1    8125 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 1350 7525 1350
$Comp
L power:GNDA #PWR04
U 1 1 6262B2DD
P 7875 3000
F 0 "#PWR04" H 7875 2750 50  0001 C CNN
F 1 "GNDA" H 7880 2827 50  0000 C CNN
F 2 "" H 7875 3000 50  0001 C CNN
F 3 "" H 7875 3000 50  0001 C CNN
	1    7875 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 2950 7875 2950
Wire Wire Line
	7875 2950 7875 3000
Wire Wire Line
	8275 2950 8275 2800
Text Notes 7475 7125 0    50   ~ 0
LZP-2020/1-0200
$Comp
L pspice:INDUCTOR L1
U 1 1 6238FAEE
P 2850 2000
F 0 "L1" H 2850 2215 50  0000 C CNN
F 1 "1mH" H 2850 2124 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D8.7mm_P5.00mm_Fastron_07HCP" H 2850 2000 50  0001 C CNN
F 3 "~" H 2850 2000 50  0001 C CNN
	1    2850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 2000 2600 2000
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 623A1A03
P 9225 5350
F 0 "JP2" H 9125 5400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9225 5464 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9225 5350 50  0001 C CNN
F 3 "~" H 9225 5350 50  0001 C CNN
	1    9225 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9075 5350 9050 5350
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 623A2428
P 9225 5450
F 0 "JP3" H 8975 5450 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9225 5564 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9225 5450 50  0001 C CNN
F 3 "~" H 9225 5450 50  0001 C CNN
	1    9225 5450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 623A2833
P 9225 5550
F 0 "JP4" H 8975 5550 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9225 5664 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9225 5550 50  0001 C CNN
F 3 "~" H 9225 5550 50  0001 C CNN
	1    9225 5550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 623A3113
P 9225 5650
F 0 "JP5" H 8975 5650 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9225 5764 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9225 5650 50  0001 C CNN
F 3 "~" H 9225 5650 50  0001 C CNN
	1    9225 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9075 5650 9050 5650
Wire Wire Line
	9050 5650 9050 5550
Connection ~ 9050 5350
Wire Wire Line
	9050 5350 8900 5350
Wire Wire Line
	9075 5450 9050 5450
Connection ~ 9050 5450
Wire Wire Line
	9050 5450 9050 5350
Wire Wire Line
	9075 5550 9050 5550
Connection ~ 9050 5550
Wire Wire Line
	9050 5550 9050 5450
Wire Wire Line
	9375 5450 9425 5450
Wire Wire Line
	9375 5550 9425 5550
Wire Wire Line
	9375 5650 9425 5650
NoConn ~ 3000 5500
$Comp
L Connector:TestPoint TP5
U 1 1 623C6C8D
P 3100 5900
F 0 "TP5" V 3100 6088 50  0000 L CNN
F 1 "TP" V 3145 6088 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 3300 5900 50  0001 C CNN
F 3 "~" H 3300 5900 50  0001 C CNN
	1    3100 5900
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 623C8513
P 3100 5800
F 0 "TP4" V 3100 5988 50  0000 L CNN
F 1 "TP" V 3145 5988 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 3300 5800 50  0001 C CNN
F 3 "~" H 3300 5800 50  0001 C CNN
	1    3100 5800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 623C878F
P 3100 5700
F 0 "TP3" V 3100 5888 50  0000 L CNN
F 1 "TP" V 3145 5888 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 3300 5700 50  0001 C CNN
F 3 "~" H 3300 5700 50  0001 C CNN
	1    3100 5700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 623C89A7
P 3100 5600
F 0 "TP2" V 3100 5788 50  0000 L CNN
F 1 "TP" V 3145 5788 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 3300 5600 50  0001 C CNN
F 3 "~" H 3300 5600 50  0001 C CNN
	1    3100 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5600 3100 5600
Wire Wire Line
	3000 5700 3100 5700
Wire Wire Line
	3000 5800 3100 5800
Wire Wire Line
	3000 5900 3100 5900
$Comp
L Connector:TestPoint TP1
U 1 1 623F09A2
P 3000 5000
F 0 "TP1" V 2950 5000 50  0000 L CNN
F 1 "TestPoint" V 3045 5188 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 3200 5000 50  0001 C CNN
F 3 "~" H 3200 5000 50  0001 C CNN
	1    3000 5000
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 62406080
P 3850 5300
F 0 "JP1" V 3896 5367 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 3500 4550 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 3850 5300 50  0001 C CNN
F 3 "~" H 3850 5300 50  0001 C CNN
	1    3850 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 5300 4000 5300
Wire Wire Line
	3850 5500 3400 5500
Wire Wire Line
	3400 5500 3400 5400
Wire Wire Line
	3400 5400 3000 5400
Wire Wire Line
	3000 5100 3850 5100
Wire Wire Line
	2500 4475 2500 4700
Wire Wire Line
	2600 6300 2600 6425
Wire Wire Line
	4800 3875 4700 3875
Connection ~ 4700 3875
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 623DACB3
P 1975 1550
F 0 "#FLG0102" H 1975 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 1975 1700 50  0001 C CNN
F 2 "" H 1975 1550 50  0001 C CNN
F 3 "~" H 1975 1550 50  0001 C CNN
	1    1975 1550
	0    1    1    0   
$EndComp
Connection ~ 1975 1550
$Comp
L Device:CP C10
U 1 1 624215FF
P 5500 3675
F 0 "C10" H 5550 3800 50  0000 L CNN
F 1 "10uF/16V" H 5525 3575 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 5538 3525 50  0001 C CNN
F 3 "~" H 5500 3675 50  0001 C CNN
	1    5500 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 62423E5D
P 9025 4275
F 0 "C13" V 9100 4350 50  0000 L CNN
F 1 "10uF/16V" V 9100 3825 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 9063 4125 50  0001 C CNN
F 3 "~" H 9025 4275 50  0001 C CNN
	1    9025 4275
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 62424EDA
P 9025 4475
F 0 "C14" V 9100 4325 50  0000 C CNN
F 1 "2,2uF " V 9100 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L13.0mm_W4.0mm_P10.00mm_FKS3_FKP3_MKS4" H 9063 4325 50  0001 C CNN
F 3 "~" H 9025 4475 50  0001 C CNN
	1    9025 4475
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D3
U 1 1 6242D005
P 5775 1025
F 0 "D3" H 5875 875 50  0000 C CNN
F 1 "IN4007" H 5650 875 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 5775 1025 50  0001 C CNN
F 3 "~" H 5775 1025 50  0001 C CNN
	1    5775 1025
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 624432AD
P 6025 1675
F 0 "D4" H 6125 1525 50  0000 C CNN
F 1 "IN4007" H 5900 1525 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 6025 1675 50  0001 C CNN
F 3 "~" H 6025 1675 50  0001 C CNN
	1    6025 1675
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D7
U 1 1 62443F18
P 9200 2425
F 0 "D7" H 9300 2275 50  0000 C CNN
F 1 "IN4007" H 9075 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 9200 2425 50  0001 C CNN
F 3 "~" H 9200 2425 50  0001 C CNN
	1    9200 2425
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D9
U 1 1 622FC420
P 3050 3675
F 0 "D9" H 3100 3775 50  0000 R CNN
F 1 "LED" H 3125 3575 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3050 3675 50  0001 C CNN
F 3 "~" H 3050 3675 50  0001 C CNN
	1    3050 3675
	0    -1   -1   0   
$EndComp
$Comp
L SB3100:SB3100 D11
U 1 1 624EF2DA
P 7750 5600
F 0 "D11" H 7725 5775 50  0000 R CNN
F 1 "SB3100" H 7825 5700 50  0000 R CNN
F 2 "Diode_THT:D_DO-201AE_P15.24mm_Horizontal" H 7750 5700 50  0001 C CNN
F 3 "https://ormix.lv/lv/catalog/showpdf/name/a9d77fbb2d1bda3a27e9fbd7d6135830.pdf/" H 7750 5700 50  0001 C CNN
	1    7750 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 5450 7750 5450
Connection ~ 7750 5450
$Comp
L SB3100:SB3100 D12
U 1 1 624F21A3
P 7950 5600
F 0 "D12" H 7950 5775 50  0000 C CNN
F 1 "SB3100" H 8000 5700 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AE_P15.24mm_Horizontal" H 7950 5700 50  0001 C CNN
F 3 "https://ormix.lv/lv/catalog/showpdf/name/a9d77fbb2d1bda3a27e9fbd7d6135830.pdf/" H 7950 5700 50  0001 C CNN
	1    7950 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 5450 7950 5450
Connection ~ 7950 5450
Wire Wire Line
	7950 5450 8100 5450
$Comp
L Device:CP C15
U 1 1 624F52FE
P 6925 3300
F 0 "C15" V 6775 3225 50  0000 L CNN
F 1 "10uF/16V" V 7050 3100 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 6963 3150 50  0001 C CNN
F 3 "~" H 6925 3300 50  0001 C CNN
	1    6925 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 624F6D07
P 7275 3300
F 0 "C16" V 7400 3300 50  0000 C CNN
F 1 "2,2uF " V 7150 3225 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L13.0mm_W4.0mm_P10.00mm_FKS3_FKP3_MKS4" H 7313 3150 50  0001 C CNN
F 3 "~" H 7275 3300 50  0001 C CNN
	1    7275 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR06
U 1 1 624F7586
P 7450 3500
F 0 "#PWR06" H 7450 3250 50  0001 C CNN
F 1 "GNDA" H 7455 3327 50  0000 C CNN
F 2 "" H 7450 3500 50  0001 C CNN
F 3 "" H 7450 3500 50  0001 C CNN
	1    7450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 3150 7275 3100
Wire Wire Line
	7275 3100 6925 3100
Connection ~ 6225 3100
Wire Wire Line
	6925 3150 6925 3100
Connection ~ 6925 3100
Wire Wire Line
	6925 3100 6225 3100
Wire Wire Line
	6925 3450 6925 3475
Wire Wire Line
	6925 3475 7275 3475
Wire Wire Line
	7450 3475 7450 3500
Wire Wire Line
	7275 3450 7275 3475
Connection ~ 7275 3475
Wire Wire Line
	7275 3475 7450 3475
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO?
U 1 1 625AA195
P 10500 1100
F 0 "#LOGO?" H 10500 1375 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10500 875 50  0001 C CNN
F 2 "" H 10500 1100 50  0001 C CNN
F 3 "~" H 10500 1100 50  0001 C CNN
	1    10500 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
