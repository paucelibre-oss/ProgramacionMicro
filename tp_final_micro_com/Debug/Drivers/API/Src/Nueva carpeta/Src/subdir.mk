################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/API/Src/Nueva\ carpeta/Src/PN532.c \
../Drivers/API/Src/Nueva\ carpeta/Src/gpio.c \
../Drivers/API/Src/Nueva\ carpeta/Src/main.c \
../Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.c \
../Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.c \
../Drivers/API/Src/Nueva\ carpeta/Src/spi.c \
../Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.c \
../Drivers/API/Src/Nueva\ carpeta/Src/usart.c 

OBJS += \
./Drivers/API/Src/Nueva\ carpeta/Src/PN532.o \
./Drivers/API/Src/Nueva\ carpeta/Src/gpio.o \
./Drivers/API/Src/Nueva\ carpeta/Src/main.o \
./Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.o \
./Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.o \
./Drivers/API/Src/Nueva\ carpeta/Src/spi.o \
./Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.o \
./Drivers/API/Src/Nueva\ carpeta/Src/usart.o 

C_DEPS += \
./Drivers/API/Src/Nueva\ carpeta/Src/PN532.d \
./Drivers/API/Src/Nueva\ carpeta/Src/gpio.d \
./Drivers/API/Src/Nueva\ carpeta/Src/main.d \
./Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.d \
./Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.d \
./Drivers/API/Src/Nueva\ carpeta/Src/spi.d \
./Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.d \
./Drivers/API/Src/Nueva\ carpeta/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/API/Src/Nueva\ carpeta/Src/PN532.o: ../Drivers/API/Src/Nueva\ carpeta/Src/PN532.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/PN532.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/gpio.o: ../Drivers/API/Src/Nueva\ carpeta/Src/gpio.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/gpio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/main.o: ../Drivers/API/Src/Nueva\ carpeta/Src/main.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.o: ../Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/myApp_GPIO.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.o: ../Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/myApp_PCcom.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/spi.o: ../Drivers/API/Src/Nueva\ carpeta/Src/spi.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/spi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.o: ../Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/stm32f4xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/API/Src/Nueva\ carpeta/Src/usart.o: ../Drivers/API/Src/Nueva\ carpeta/Src/usart.c Drivers/API/Src/Nueva\ carpeta/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/API/Src/Nueva carpeta/Src/usart.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-API-2f-Src-2f-Nueva-20-carpeta-2f-Src

clean-Drivers-2f-API-2f-Src-2f-Nueva-20-carpeta-2f-Src:
	-$(RM) ./Drivers/API/Src/Nueva\ carpeta/Src/PN532.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/PN532.d ./Drivers/API/Src/Nueva\ carpeta/Src/PN532.o ./Drivers/API/Src/Nueva\ carpeta/Src/PN532.su ./Drivers/API/Src/Nueva\ carpeta/Src/gpio.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/gpio.d ./Drivers/API/Src/Nueva\ carpeta/Src/gpio.o ./Drivers/API/Src/Nueva\ carpeta/Src/gpio.su ./Drivers/API/Src/Nueva\ carpeta/Src/main.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/main.d ./Drivers/API/Src/Nueva\ carpeta/Src/main.o ./Drivers/API/Src/Nueva\ carpeta/Src/main.su ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.d ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.o ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_GPIO.su ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.d ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.o ./Drivers/API/Src/Nueva\ carpeta/Src/myApp_PCcom.su ./Drivers/API/Src/Nueva\ carpeta/Src/spi.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/spi.d ./Drivers/API/Src/Nueva\ carpeta/Src/spi.o ./Drivers/API/Src/Nueva\ carpeta/Src/spi.su ./Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.d ./Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.o ./Drivers/API/Src/Nueva\ carpeta/Src/stm32f4xx_hal_msp.su ./Drivers/API/Src/Nueva\ carpeta/Src/usart.cyclo ./Drivers/API/Src/Nueva\ carpeta/Src/usart.d ./Drivers/API/Src/Nueva\ carpeta/Src/usart.o ./Drivers/API/Src/Nueva\ carpeta/Src/usart.su

.PHONY: clean-Drivers-2f-API-2f-Src-2f-Nueva-20-carpeta-2f-Src

