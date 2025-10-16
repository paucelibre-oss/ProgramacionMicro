/*
 * myApp_mef.h
 *
 *  Created on: Oct 12, 2025
 *      Author: Paulo
 */

#ifndef API_INC_MYAPP_MEF_H_
#define API_INC_MYAPP_MEF_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <stdbool.h>
#include "myApp_MCP960X.h"
#include "myApp_GPIO.h"
#include "myApp_PCcom.h"
#include "myApp_NFC.h"
#include "myApp_mef_errors.h"

typedef enum {
	MEF_STATE_REQUEST_THRESHOLD_UART,
	MEF_STATE_MEASURE_TEMPERATURE_LISTEN_UART,
	MEF_STATE_SAVE_MEDITION,
	MEF_STATE_ALARM,
	MEF_STATE_PRINT_TEMPERATURE,
	MEF_STATE_NOTIFY_RESET,
	MEF_STATE_REWRITE_THRESHOLD_TEMPERATURE,
	MEF_STATE_PRINT_ALARM
} _mefStates;

bool initPeripheralsMEF(void);
_mefStates updateState(_mefStates actState);
void executeState(_mefStates newState);

#ifdef __cplusplus
}
#endif


#endif /* API_INC_MYAPP_MEF_H_ */
