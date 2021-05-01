typedef int I2C_WRITE_RESULT;
typedef int I2C_READ_RESULT;

typedef int I2C_ADDRESS;

#define I2C_WRITE_RESULT_SUCCESS			0
#define I2C_WRITE_RESULT_FAIL_UNEXPECTED	sizeof(I2C_WRITE_RESULT)

#define I2C_READ_RESULT_SUCCESS				0
#define I2C_READ_RESULT_FAIL_UNEXPECTED		sizeof(I2C_READ_RESULT)

void i2c_setup(void);

I2C_WRITE_RESULT i2c_write_register(const I2C_ADDRESS targetAddress, const int value);
I2C_READ_RESULT i2c_read_register(const I2C_ADDRESS targetAddress, int* pValue);
I2C_READ_RESULT i2c_read_registers(const I2C_ADDRESS targetAddress, int* pValue, const int length);
