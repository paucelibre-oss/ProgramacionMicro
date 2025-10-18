/*
 * spi.h
 *
 *  Created on: Oct 8, 2025
 *      Author: Paulo
 */

#ifndef INC_SPI_H_
#define INC_SPI_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include <stdbool.h>
#include <stdint.h>

extern SPI_HandleTypeDef hspi3;

void clearFlagTxSPI(void);
void clearFlagRxSPI(void);
bool getRxFlagStatusSPI(void);
bool getTxFlagStatusSPI(void);

bool SPI_Init(void);
bool writeRegisterSPI_IT(uint8_t* txBuffer, uint16_t sizeData);
bool readRegisterSPI_IT(uint8_t* rxBuffer, uint16_t sizeData);
bool writeRegisterSPI(uint8_t* txBuffer, uint16_t sizeData, uint32_t Timeout);
bool readRegisterSPI(uint8_t* rxBuffer, uint16_t sizeData, uint32_t Timeout);
bool writeReadRegisterSPI(uint8_t* txBuffer, uint8_t* rxBuffer, uint16_t sizeData, uint32_t Timeout);
bool abortTransactionSPI(void);

#ifdef __cplusplus
}
#endif

#endif /* INC_SPI_H_ */
