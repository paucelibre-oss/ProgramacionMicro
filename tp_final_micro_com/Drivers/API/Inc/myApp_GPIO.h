/*
 * myApp_GPIO.h
 *
 *  Created on: Oct 8, 2025
 *      Author: Paulo
 */

#ifndef API_INC_MYAPP_GPIO_H_
#define API_INC_MYAPP_GPIO_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include <stdbool.h>
#include <stdint.h>
#include "gpio.h"

void gpioInit(void);
void nfcSS(_gpioState state);
void nfcRST(_gpioState state);
void ledOff(void);
void ledToggleNonBlocking(uint32_t interval);

#ifdef __cplusplus
}
#endif

#endif /* API_INC_MYAPP_GPIO_H_ */
