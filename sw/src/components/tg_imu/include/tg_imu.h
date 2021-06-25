/**
 * tg_imu.h
 * 
 * IMU component for the ESP32.
 * 
 */

/**
   LSM Registers
 */

#define LSM6DSM_ADDRESS             0x6B // SD0 should not be connected

#define LSM6DSM_WHO_AM_I_REG        0X0F
#define WHO_AM_I_REG_VALUE          0x6A

#define LSM6DSM_CTRL1_XL            0X10
#define LSM6DSM_CTRL2_G             0X11
#define LSM5DSM_CTRL3_C             0X12

#define LSM6DSM_STATUS_REG          0X1E

#define LSM6DSM_CTRL6_C             0X15
#define LSM6DSM_CTRL7_G             0X16
#define LSM6DSM_CTRL8_XL            0X17

//gyroscope output addresses
#define LSM6DSM_OUTX_L_G            0X22
#define LSM6DSM_OUTX_H_G            0X23
#define LSM6DSM_OUTY_L_G            0X24
#define LSM6DSM_OUTY_H_G            0X25
#define LSM6DSM_OUTZ_L_G            0X26
#define LSM6DSM_OUTZ_H_G            0X27

//accelerometer output addresses
#define LSM6DSM_OUTX_L_XL           0X28
#define LSM6DSM_OUTX_H_XL           0X29
#define LSM6DSM_OUTY_L_XL           0X2A
#define LSM6DSM_OUTY_H_XL           0X2B
#define LSM6DSM_OUTZ_L_XL           0X2C
#define LSM6DSM_OUTZ_H_XL           0X2D

#define SERIAL_BAUD_RATE            115200

/**
   ESP32 Pins
 */
#define IMU_INT2      26 // Pin 11
#define IMU_INT1      27 // Pin 12
#define IMU_SCL       22 // Pin xx
#define IMU_SDA       21 // Pin xx

void tg_imu_setup(void);

int writeRegister(uint8_t address, uint8_t value);
