#include <stdio.h>

#include "lsm6dsm.h"
#include "i2c.h"

const int NUM_ITERATIONS_ATTEMPT = 3;

/**
 * Setup lsm6sm. 
 * 
 * Returns TRUE if successful.
 * Returns FALSE otherwise.
 */
void lsm6dsm_setup(void) {
    printf("lsm6sm setup()\r\n");

    i2c_setup();

    // int value;
    // int numIterationsAttempt = 0;

    // do {
    //     i2c_read_register(LSM6DSM_WHO_AM_I_REG, &value);
    //     numIterationsAttempt++;
    // } while(value != LSM6DSM_WHO_AM_I_REG_VALUE && numIterationsAttempt <= NUM_ITERATIONS_ATTEMPT);

    // if (value != LSM6DSM_WHO_AM_I_REG_VALUE) {
    //     return;
    // }   
}