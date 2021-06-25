EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4350 2650 5050 2650
Text HLabel 4350 2650 0    50   Input ~ 0
EN
Text HLabel 4350 2850 0    50   Input ~ 0
GPIO36
Text HLabel 4350 2950 0    50   Input ~ 0
GPIO39
Wire Wire Line
	4350 2850 5050 2850
Wire Wire Line
	4350 2950 5050 2950
Text HLabel 6900 4850 2    50   Input ~ 0
GPIO34
Text HLabel 6900 4950 2    50   Input ~ 0
GPIO35
Text HLabel 6900 4750 2    50   Input ~ 0
XTAL_32K_N
Text HLabel 6900 4650 2    50   Input ~ 0
XTAL_32K_P
Text HLabel 6900 4350 2    50   Input ~ 0
GPIO25
Text HLabel 6900 4450 2    50   Input ~ 0
GPIO26
Text HLabel 6900 4550 2    50   Input ~ 0
GPIO27
Text HLabel 6900 3450 2    50   Input ~ 0
GPIO14
Text HLabel 6900 3250 2    50   Input ~ 0
GPIO12
Text HLabel 6900 3350 2    50   Input ~ 0
GPIO13
Text HLabel 4350 4050 0    50   Input ~ 0
GPIO9
Text HLabel 4350 4150 0    50   Input ~ 0
GPIO10
Text HLabel 4350 4350 0    50   Input ~ 0
GPIO11
Text HLabel 4350 4250 0    50   Input ~ 0
GPIO6
Text HLabel 4350 3850 0    50   Input ~ 0
GPIO7
Text HLabel 4350 3950 0    50   Input ~ 0
GPIO8
Wire Wire Line
	4350 3950 5050 3950
Wire Wire Line
	5050 4050 4350 4050
Wire Wire Line
	4350 4150 5050 4150
Wire Wire Line
	5050 4250 4350 4250
Wire Wire Line
	4350 4350 5050 4350
Wire Wire Line
	6900 3250 6250 3250
Wire Wire Line
	6900 3350 6250 3350
Wire Wire Line
	6900 3450 6250 3450
Wire Wire Line
	6900 4350 6250 4350
Wire Wire Line
	6900 4450 6250 4450
Wire Wire Line
	6250 4550 6900 4550
Wire Wire Line
	6900 4650 6250 4650
Wire Wire Line
	6900 4750 6250 4750
Wire Wire Line
	6250 4850 6900 4850
Wire Wire Line
	6250 4950 6900 4950
Wire Wire Line
	4350 3850 5050 3850
Text HLabel 5650 2050 1    50   UnSpc ~ 0
3V3
Wire Wire Line
	5650 2050 5650 2450
$Comp
L RF_Module:ESP32-WROOM-32D U?
U 1 1 60C15E52
P 5650 3850
F 0 "U?" H 4700 4500 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 4750 4350 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5650 2350 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 5350 3900 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
Text HLabel 5650 5500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	5650 5250 5650 5500
Text HLabel 6900 3550 2    50   Input ~ 0
GPIO15
Text HLabel 6900 2850 2    50   Input ~ 0
GPIO2
Text HLabel 6900 2650 2    50   Input ~ 0
GPIO0
Wire Wire Line
	6900 3550 6250 3550
Wire Wire Line
	6900 2850 6250 2850
Wire Wire Line
	6250 2650 6900 2650
Text HLabel 6900 3050 2    50   Input ~ 0
GPIO4
Wire Wire Line
	6900 3050 6250 3050
Text HLabel 6900 3650 2    50   Input ~ 0
GPIO16
Text HLabel 6900 3750 2    50   Input ~ 0
GPIO17
Text HLabel 6900 3150 2    50   Input ~ 0
GPIO5
Text HLabel 6900 3850 2    50   Input ~ 0
GPIO18
Text HLabel 6900 3950 2    50   Input ~ 0
GPIO19
Text HLabel 6900 4050 2    50   Input ~ 0
GPIO21
Text HLabel 6900 2950 2    50   Input ~ 0
GPIO3
Text HLabel 6900 2750 2    50   Input ~ 0
GPIO1
Text HLabel 6900 4150 2    50   Input ~ 0
GPIO22
Text HLabel 6900 4250 2    50   Input ~ 0
GPIO23
Wire Wire Line
	6900 4250 6250 4250
Wire Wire Line
	6900 4150 6250 4150
Wire Wire Line
	6900 4050 6250 4050
Wire Wire Line
	6900 3950 6250 3950
Wire Wire Line
	6900 3850 6250 3850
Wire Wire Line
	6900 3750 6250 3750
Wire Wire Line
	6900 3650 6250 3650
Wire Wire Line
	6900 3150 6250 3150
Wire Wire Line
	6900 2950 6250 2950
Wire Wire Line
	6900 2750 6250 2750
$EndSCHEMATC
