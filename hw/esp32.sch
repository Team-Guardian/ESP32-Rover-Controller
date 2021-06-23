EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 3
Title "ESP32 | Rover Controller"
Date "2021-05-10"
Rev "v0.0.01"
Comp "Team Guardian"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Component Prefix: ESP"
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U_ESP_1
U 1 1 609A3F69
P 5050 3400
F 0 "U_ESP_1" H 5050 4981 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 5050 4890 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5050 1900 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 4750 3450 50  0001 C CNN
F 4 "	‎Espressif Systems‎" H 5050 3400 50  0001 C CNN "Manufacturer"
F 5 "ESP32-WROOM-32D (16MB)" H 5050 3400 50  0001 C CNN "Manufacturer Product Number"
F 6 "Digikey Canada" H 5050 3400 50  0001 C CNN "Vendor"
F 7 "1904-1025-1-ND" H 5050 3400 50  0001 C CNN "Vendor Product Number"
	1    5050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60AB04B1
P 5050 5050
F 0 "#PWR?" H 5050 4800 50  0001 C CNN
F 1 "GND" H 5055 4877 50  0000 C CNN
F 2 "" H 5050 5050 50  0001 C CNN
F 3 "" H 5050 5050 50  0001 C CNN
	1    5050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4800 5050 5050
Text HLabel 6350 3500 2    50   Input ~ 0
IMU_SDO
Text HLabel 6350 3400 2    50   Input ~ 0
IMU_INT1
Text HLabel 6350 3300 2    50   Input ~ 0
IMU_INT2
Text HLabel 6350 3700 2    50   Output ~ 0
IMU_SCL
Text HLabel 6350 3600 2    50   Input ~ 0
IMU_SDA
Wire Wire Line
	5650 3300 6350 3300
Wire Wire Line
	5650 3400 6350 3400
Wire Wire Line
	5650 3500 6350 3500
Wire Wire Line
	5650 3600 6350 3600
Wire Wire Line
	5650 3700 6350 3700
$EndSCHEMATC
