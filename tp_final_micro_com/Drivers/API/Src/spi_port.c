/*
 * spi.c
 *
 *  Created on: Oct 8, 2025
 *      Author: Paulo
 */
#include "spi.h"

SPI_HandleTypeDef hspi3;

static volatile bool txCompleteSPI = false;
static volatile bool rxCompleteSPI= false;

/* helpers */
void clearFlagTxSPI(void){ txCompleteSPI = false; }
void clearFlagRxSPI(void){ rxCompleteSPI = false; }
bool getRxFlagStatusSPI(void){ return rxCompleteSPI; }
bool getTxFlagStatusSPI(void){ return txCompleteSPI; }

void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi){
    if(hspi->Instance == SPI3){
    	txCompleteSPI = true;
    }
}

void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi){
	if(hspi->Instance == SPI3){
        rxCompleteSPI = true;
	}
}

void HAL_SPI_ErrorCallback(SPI_HandleTypeDef *hspi){
    if(hspi->Instance == SPI3){
    	rxCompleteSPI = true;
    	txCompleteSPI = true;
    }
}

/**
  * @brief SPI3 Initialization Function
  * @param None
  * @retval None
  */
bool SPI_Init(void){

	hspi3.Instance = SPI3;
	hspi3.Init.Mode = SPI_MODE_MASTER;
	hspi3.Init.Direction = SPI_DIRECTION_2LINES;
	hspi3.Init.DataSize = SPI_DATASIZE_8BIT;
	hspi3.Init.CLKPolarity = SPI_POLARITY_LOW;
	hspi3.Init.CLKPhase = SPI_PHASE_1EDGE;
	hspi3.Init.NSS = SPI_NSS_SOFT;
	hspi3.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_8;
	hspi3.Init.FirstBit = SPI_FIRSTBIT_MSB;
	hspi3.Init.TIMode = SPI_TIMODE_DISABLE;
	hspi3.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
	hspi3.Init.CRCPolynomial = 10;

	if(HAL_SPI_Init(&hspi3) != HAL_OK) return false;

	return true;
}


bool writeRegisterSPI_IT(
	uint8_t* txBuffer,
	uint16_t sizeData
){
	clearFlagTxSPI();

	if(HAL_SPI_Transmit_IT(&hspi3, txBuffer, sizeData) != HAL_OK) return false;

	return true;
}

bool readRegisterSPI_IT(
	uint8_t* rxBuffer,
	uint16_t sizeData
){
	clearFlagRxSPI();

	if(HAL_SPI_Receive_IT(&hspi3, rxBuffer, sizeData) != HAL_OK) return false;

	return true;
}

bool writeRegisterSPI(
	uint8_t* txBuffer,
	uint16_t sizeData,
	uint32_t Timeout
){
	if(HAL_SPI_Transmit(&hspi3, txBuffer, sizeData, Timeout) != HAL_OK) return false;

	return true;
}

bool readRegisterSPI(
	uint8_t* rxBuffer,
	uint16_t sizeData,
	uint32_t Timeout
){
	if(HAL_SPI_Receive(&hspi3, rxBuffer, sizeData, Timeout) != HAL_OK) return false;

	return true;
}

bool writeReadRegisterSPI(
	uint8_t* txBuffer,
	uint8_t* rxBuffer,
	uint16_t sizeData,
	uint32_t Timeout
){
	if(HAL_SPI_TransmitReceive(&hspi3, txBuffer, rxBuffer, sizeData, Timeout) != HAL_OK) return false;

	return true;
}

bool abortTransactionSPI(void){
	if(HAL_SPI_Abort(&hspi3) != HAL_OK) return false;

	return true;
}

