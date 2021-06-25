#include <stdio.h>
#include "include/tg_imu.h"
#include "include/libraries/Wire/src/Wire.h"
/**
 * IMU setup for ESP32.
 */ 

void tg_imu_setup(void) {
    printf("IMU setup\r\n");
    
    Wire.begin(SDA, SCL);

    while(readRegister(LSM6DSM_WHO_AM_I_REG) != WHO_AM_I_REG_VALUE){
        printf("Error, IMU not communicating");
        delay(1000);
    }

    /**
        Taken from LSM library
    */
    //set the gyroscope control register to work at 104 Hz, 2000 dps and in bypass mode
    writeRegister(LSM6DSM_CTRL2_G, 0x4C);

    // Set the Accelerometer control register to work at 104 Hz, 4G,and in bypass mode and enable ODR/4
    // low pass filter(check figure 9 on LSM6DSM's datasheet)
    writeRegister(LSM6DSM_CTRL1_XL, 0x4A); // I think this is correct??

    // set gyroscope power mode to high performance and bandwidth to 16 MHz
    writeRegister(LSM6DSM_CTRL7_G, 0x00);

    // Set the ODR config register to ODR/4
    writeRegister(LSM6DSM_CTRL8_XL, 0xA4); // I think this is correct??

    printf("IMU has been set up");

    return;
}

int writeRegister(uint8_t address, uint8_t value)
{
  Wire.beginTransmission(LSM6DSM_ADDRESS);
  Wire.write(address);
  Wire.write(value);
  if (Wire.endTransmission() != 0) {
    return 0;
  }

  return 1;
}

int readRegister(uint8_t address) {
  uint8_t value;

  if (readRegisters(address, &value, sizeof(value)) != 1) {
    return -1;
  }

  return value;
}

int readRegisters(uint8_t address, uint8_t* data, size_t length) {
  Wire.beginTransmission(LSM6DSM_ADDRESS);
  Wire.write(address);

  if (Wire.endTransmission(false) != 0) {
    return -1;
  }

  if (Wire.requestFrom(LSM6DSM_ADDRESS, length) != length) {
    return 0;
  }

  for (size_t i = 0; i < length; i++) {
    *data++ = Wire.read();
  }

  return 1;
}

int gyroscopeAvailable() {
  if (readRegister(LSM6DSM_STATUS_REG) & 0x02) {
    return 1;
  }

  return 0;
}

int accelerationAvailable() {
  if (readRegister(LSM6DSM_STATUS_REG) & 0x01) {
    return 1;
  }

  return 0;
}

int readGyroscope(float& x, float& y, float& z) {
  int16_t data[3];

  if (!readRegisters(LSM6DSM_OUTX_L_G, (uint8_t*)data, sizeof(data))) {
    x = NAN;
    y = NAN;
    z = NAN;

    return 0;
  }

  x = data[0] * 2000.0 / 32768.0;
  y = data[1] * 2000.0 / 32768.0;
  z = data[2] * 2000.0 / 32768.0;

  return 1;
}

int readAcceleration(float& x, float& y, float& z) {

  int16_t data[3];

  if (!readRegisters(LSM6DSM_OUTX_L_XL, (uint8_t*)data, sizeof(data))) {
    x = NAN;
    y = NAN;
    z = NAN;

    return 0;
  }

  x = data[0] * 4.0 / 32768.0;
  y = data[1] * 4.0 / 32768.0;
  z = data[2] * 4.0 / 32768.0;

  return 1;
}

void loop() {
  float x, y, z;

  if (gyroscopeAvailable()) {
    readGyroscope(x, y, z);

    Serial.print("Gyroscope: ");
    Serial.print(x);
    Serial.print('\t');
    Serial.print(y);
    Serial.print('\t');
    Serial.println(z);
  }

  if (accelerationAvailable()) {
    readAcceleration(x, y, z);

    Serial.print("Acceleration: ");
    Serial.print(x);
    Serial.print('\t');
    Serial.print(y);
    Serial.print('\t');
    Serial.println(z);
  }

  delay(100);
}