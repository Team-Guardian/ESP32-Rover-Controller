EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 4
Title "IMU | Rover Controller"
Date "2021-05-10"
Rev "v0.0.01"
Comp "Team Guardian"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Component Prefix: IMU"
$EndDescr
$Comp
L power:+3.3V #PWR?
U 1 1 60AD089D
P 1550 1200
F 0 "#PWR?" H 1550 1050 50  0001 C CNN
F 1 "+3.3V" H 1565 1373 50  0000 C CNN
F 2 "" H 1550 1200 50  0001 C CNN
F 3 "" H 1550 1200 50  0001 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60ACF823
P 3450 2400
F 0 "#PWR?" H 3450 2250 50  0001 C CNN
F 1 "+3.3V" H 3465 2573 50  0000 C CNN
F 2 "" H 3450 2400 50  0001 C CNN
F 3 "" H 3450 2400 50  0001 C CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3700 4150 4200
$Comp
L power:GND #PWR?
U 1 1 60ACE4E5
P 6600 4350
F 0 "#PWR?" H 6600 4100 50  0001 C CNN
F 1 "GND" H 6605 4177 50  0000 C CNN
F 2 "" H 6600 4350 50  0001 C CNN
F 3 "" H 6600 4350 50  0001 C CNN
	1    6600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60ACD629
P 4150 4200
F 0 "#PWR?" H 4150 3950 50  0001 C CNN
F 1 "GND" H 4155 4027 50  0000 C CNN
F 2 "" H 4150 4200 50  0001 C CNN
F 3 "" H 4150 4200 50  0001 C CNN
	1    4150 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60ACC949
P 1550 2000
F 0 "#PWR?" H 1550 1750 50  0001 C CNN
F 1 "GND" H 1555 1827 50  0000 C CNN
F 2 "" H 1550 2000 50  0001 C CNN
F 3 "" H 1550 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1750 1550 2000
Connection ~ 3450 2700
Wire Wire Line
	3450 2400 3450 2700
Wire Wire Line
	3450 2700 3450 2800
Wire Wire Line
	3950 2700 3450 2700
Wire Wire Line
	3950 2800 3950 2700
Wire Wire Line
	2400 3300 3950 3300
Wire Wire Line
	3950 3300 4650 3300
Connection ~ 3950 3300
Wire Wire Line
	4200 3200 4650 3200
Text Label 4200 3200 0    50   ~ 0
+3.3V_cap
$Comp
L Device:R IMU_R2
U 1 1 60A2D06B
P 3950 2950
F 0 "IMU_R2" H 4020 2996 50  0000 L CNN
F 1 "4.7k" H 4020 2905 50  0000 L CNN
F 2 "footprints:RESC1508X55N" V 3880 2950 50  0001 C CNN
F 3 "~https://www.vishay.com/docs/28760/mcat_pro.pdf" H 3950 2950 50  0001 C CNN
F 4 "Digikey" H 3950 2950 50  0001 C CNN "Vendor"
F 5 "MCT0603-4.7K-MDCT-ND" H 3950 2950 50  0001 C CNN "Vendor Part Number"
F 6 "Vishay Beyschlag/Draloric/BC Components" H 3950 2950 50  0001 C CNN "Manufacturer"
F 7 "MCT0603MD4701DP500" H 3950 2950 50  0001 C CNN "Manufacturer Part Number"
	1    3950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4100 6600 4350
Wire Wire Line
	6450 4100 6600 4100
Wire Wire Line
	3950 3100 3950 3300
Wire Wire Line
	3450 3400 4650 3400
Connection ~ 3450 3400
Wire Wire Line
	3450 3100 3450 3400
$Comp
L Device:R IMU_R1
U 1 1 60A29787
P 3450 2950
F 0 "IMU_R1" H 3520 2996 50  0000 L CNN
F 1 "4.7k" H 3520 2905 50  0000 L CNN
F 2 "footprints:RESC1508X55N" V 3380 2950 50  0001 C CNN
F 3 "~https://www.vishay.com/docs/28760/mcat_pro.pdf" H 3450 2950 50  0001 C CNN
F 4 "Digikey" H 3450 2950 50  0001 C CNN "Vendor"
F 5 "MCT0603-4.7K-MDCT-ND" H 3450 2950 50  0001 C CNN "Vendor Part Number"
F 6 "Vishay Beyschlag/Draloric/BC Components" H 3450 2950 50  0001 C CNN "Manufacturer"
F 7 "MCT0603MD4701DP500" H 3450 2950 50  0001 C CNN "Manufacturer Part Number"
	1    3450 2950
	1    0    0    -1  
$EndComp
Connection ~ 4150 3700
Wire Wire Line
	4650 3700 4150 3700
Wire Wire Line
	4150 3600 4150 3700
Wire Wire Line
	4650 3600 4150 3600
Wire Wire Line
	6600 3000 6600 3100
Connection ~ 6600 3000
Wire Wire Line
	6450 3000 6600 3000
Wire Wire Line
	6600 3100 6450 3100
Wire Wire Line
	6600 2750 6600 3000
Text Label 6600 2750 0    50   ~ 0
+3.3V_cap
Wire Wire Line
	1550 1400 1550 1550
Connection ~ 1550 1400
Wire Wire Line
	2000 1400 1550 1400
Text Label 2000 1400 0    50   ~ 0
+3.3V_cap
Wire Wire Line
	1550 1200 1550 1400
$Comp
L Device:C_Small IMU_C1
U 1 1 60A1BC4F
P 1550 1650
F 0 "IMU_C1" H 1642 1696 50  0000 L CNN
F 1 "0.1uF" H 1642 1605 50  0000 L CNN
F 2 "footprints:C1206S104K5RACAUTO" H 1550 1650 50  0001 C CNN
F 3 "~https://content.kemet.com/datasheets/KEM_C1014_X7R_FE-CAP_SMD.pdf" H 1550 1650 50  0001 C CNN
F 4 "Digikey" H 1550 1650 50  0001 C CNN "Vendor"
F 5 "399-C1206S104K5RACAUTOCT-ND" H 1550 1650 50  0001 C CNN "Vendor Part Number"
F 6 "KEMET" H 1550 1650 50  0001 C CNN "Manufacturer"
F 7 "C1206S104K5RACAUTO" H 1550 1650 50  0001 C CNN "Manufacturer Part Number"
	1    1550 1650
	1    0    0    -1  
$EndComp
NoConn ~ 6450 3600
NoConn ~ 6450 3500
Wire Wire Line
	2400 4000 4650 4000
Wire Wire Line
	2400 3900 4650 3900
Wire Wire Line
	2400 3500 4650 3500
Wire Wire Line
	2400 3400 3450 3400
Text HLabel 2400 3900 0    50   Input ~ 0
IMU_INT1
Text HLabel 2400 3300 0    50   Input ~ 0
IMU_SCL
$Comp
L LSM6DSMTR:LSM6DSMTR U_IMU_1
U 1 1 609A33A3
P 5550 3500
F 0 "U_IMU_1" H 5550 4539 50  0000 C CNN
F 1 "LSM6DSMTR" H 5550 4448 50  0000 C CNN
F 2 "footprints:LSM6DSMTR" H 5550 3500 50  0001 L BNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/76/27/cf/88/c5/03/42/6b/DM00218116.pdf/files/DM00218116.pdf/jcr:content/translations/en.DM00218116.pdf" H 5550 3500 50  0001 L BNN
F 4 "STMicroelectronics" H 5550 3500 50  0001 L BNN "Manufacturer"
F 5 "LSM6DSMTR" H 5550 4357 50  0000 C CNN "Manufacturer Product Number"
F 6 "Digikey Canada" H 5550 4266 50  0000 C CNN "Vendor"
F 7 "497-16696-2-ND" H 5550 4175 50  0000 C CNN "Vendor Product Number"
	1    5550 3500
	1    0    0    -1  
$EndComp
Text HLabel 2400 4000 0    50   Input ~ 0
IMU_INT2
Text HLabel 2400 3400 0    50   BiDi ~ 0
IMU_SDA
Text HLabel 2400 3500 0    50   Input ~ 0
IMU_SDO_SA0
$EndSCHEMATC
