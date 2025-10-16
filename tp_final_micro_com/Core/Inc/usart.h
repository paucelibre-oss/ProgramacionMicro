/*
 * usart.h
 *
 *  Created on: Oct 8, 2025
 *      Author: Paulo
 */

#ifndef INC_USART_H_
#define INC_USART_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

#define USART_TX_Pin GPIO_PIN_2
#define USART_TX_GPIO_Port GPIOA
#define USART_RX_Pin GPIO_PIN_3
#define USART_RX_GPIO_Port GPIOA

extern UART_HandleTypeDef huart2;

HAL_StatusTypeDef UART_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* INC_USART_H_ */
