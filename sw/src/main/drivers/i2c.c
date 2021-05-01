#include "i2c.h"

/**
 *  I2C Setup
 */
void i2c_setup(void) {

}

/**
 * I2C write register
 */
I2C_WRITE_RESULT i2c_write_register(const I2C_ADDRESS targetAddress, const int value) {
	/**
	 * Needs work
	 */	
	
	return I2C_WRITE_RESULT_SUCCESS;
}

/**
 * I2C read register
 */
I2C_READ_RESULT i2c_read_register(const I2C_ADDRESS targetAddress, int* pValue) {
	/**
	 * Needs work
	 */	
	
	return i2c_read_registers(targetAddress, pValue, sizeof(pValue));
}


/**
 * I2C read registers
 */
I2C_READ_RESULT i2c_read_registers(const I2C_ADDRESS targetAddress, int* pValue, const int length) {
	/**
	 * Needs work
	 */
	
	return I2C_READ_RESULT_SUCCESS;
}
