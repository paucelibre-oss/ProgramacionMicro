/*
 * API_debounce.c
 *
 *  Created on: Sep 25, 2025
 *      Author: Paulo
 */

#include "../Inc/API_debounce.h"

#define DELAY_DURATION		40

static debounceState_t state = BUTTON_UP;
static delay_t myDelay;
static bool_t keyPressedFlag = false;

static void buttonPressed(void);
static void buttonReleased(void);

void debounceFSM_init(void)
{
	state = BUTTON_UP;
	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);
}// debe cargar el estado inicial

void debounceFSM_update(void)	// debe leer las entradas, resolver la lógica de transición de estados y actualizar las salidas
{

	switch(state){
		case BUTTON_UP:
			if( HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == GPIO_PIN_RESET){
				state = BUTTON_FALLING;
				delayInit(&myDelay, (tick_t)(DELAY_DURATION));
			}
			break;
		case BUTTON_FALLING:
			if(delayRead(&myDelay)){
				if( HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == GPIO_PIN_RESET){
					state = BUTTON_DOWN;
					buttonPressed();
				}else state = BUTTON_UP;
			}
			break;
		case BUTTON_DOWN:
			if( HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == GPIO_PIN_SET){
				state = BUTTON_RISING;
				delayInit(&myDelay, (tick_t)(DELAY_DURATION));
			}
			break;
		case BUTTON_RISING:
			if(delayRead(&myDelay)){
				if( HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == GPIO_PIN_SET){
					state = BUTTON_UP;
					buttonReleased();
				}
			}
			break;
		default:
			debounceFSM_init();
			break;
	}
}

static void buttonPressed(void)			// debe encender el LED
{
//	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_SET);
	keyPressedFlag = true;
}

static void buttonReleased(void)		// debe apagar el LED
{
//	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);
	keyPressedFlag = false;
}

bool_t readKey(void) {
    if (keyPressedFlag) {
        keyPressedFlag = false;   // limpiar el flag al leer
        return true;
    }
    return false;
}
