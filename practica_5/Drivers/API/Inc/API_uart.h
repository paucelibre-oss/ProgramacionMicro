/*
 * API_uart.h
 *
 *  Created on: Sep 25, 2025
 *      Author: Paulo
 */

#ifndef API_INC_API_UART_H_
#define API_INC_API_UART_H_

#include <stdint.h> /*Libreria necesaria para reconocimiento de vatiables tipo UINT*/
#include <stdbool.h>/*Libreria necesaria para reconocimiento de variables tipo boleanas*/
#include <string.h>
#include <stdio.h>
#include "stm32f4xx_hal.h"
#include "usart.h"

#define MAX_LEN_STRING 100

typedef uint32_t tick_t;
typedef bool bool_t;

/*
 *@brief uartInit: UART initialization.
 *@param None.
 *@return Status of initialization. True if success, else false.
 */
bool_t uartInit(void);

/*
 * @brief uartSendString: Receives a pointer to a string that you want to send over the UART.
 * @param uint8_t * pstring: A pointer to a string that you want to send.
 * @return None.
 * */
void uartSendString(uint8_t * pstring);

/*
 * @brief uartSendStringSize: Receives a pointer to a string to be sent over the UART. Also, the number of characters to be sent.
 * @param uint8_t * pstring: A pointer to a string that you want to send.
 * @param uint16_t size: The number of characters to be sent.
 * @return None.
 * */
void uartSendStringSize(uint8_t * pstring, uint16_t size);


void uartReceiveStringSize(uint8_t * pstring, uint16_t size);


#endif /* API_INC_API_UART_H_ */
