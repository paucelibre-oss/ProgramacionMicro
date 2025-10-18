################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/API/Src/gpio_port.c \
../Drivers/API/Src/i2c_port.c \
../Drivers/API/Src/myApp_GPIO.c \
../Drivers/API/Src/myApp_MCP960X.c \
../Drivers/API/Src/myApp_NFC.c \
../Drivers/API/Src/myApp_PCcom.c \
../Drivers/API/Src/myApp_mef.c \
../Drivers/API/Src/spi_port.c \
../Drivers/API/Src/usart_port.c 

OBJS += \
./Drivers/API/Src/gpio_port.o \
./Drivers/API/Src/i2c_port.o \
./Drivers/API/Src/myApp_GPIO.o \
./Drivers/API/Src/myApp_MCP960X.o \
./Drivers/API/Src/myApp_NFC.o \
./Drivers/API/Src/myApp_PCcom.o \
./Drivers/API/Src/myApp_mef.o \
./Drivers/API/Src/spi_port.o \
./Drivers/API/Src/usart_port.o 

C_DEPS += \
./Drivers/API/Src/gpio_port.d \
./Drivers/API/Src/i2c_port.d \
./Drivers/API/Src/myApp_GPIO.d \
./Drivers/API/Src/myApp_MCP960X.d \
./Drivers/API/Src/myApp_NFC.d \
./Drivers/API/Src/myApp_PCcom.d \
./Drivers/API/Src/myApp_mef.d \
./Drivers/API/Src/spi_port.d \
./Drivers/API/Src/usart_port.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/API/Src/%.o Drivers/API/Src/%.su Drivers/API/Src/%.cyclo: ../Drivers/API/Src/%.c Drivers/API/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-API-2f-Src

clean-Drivers-2f-API-2f-Src:
	-$(RM) ./Drivers/API/Src/gpio_port.cyclo ./Drivers/API/Src/gpio_port.d ./Drivers/API/Src/gpio_port.o ./Drivers/API/Src/gpio_port.su ./Drivers/API/Src/i2c_port.cyclo ./Drivers/API/Src/i2c_port.d ./Drivers/API/Src/i2c_port.o ./Drivers/API/Src/i2c_port.su ./Drivers/API/Src/myApp_GPIO.cyclo ./Drivers/API/Src/myApp_GPIO.d ./Drivers/API/Src/myApp_GPIO.o ./Drivers/API/Src/myApp_GPIO.su ./Drivers/API/Src/myApp_MCP960X.cyclo ./Drivers/API/Src/myApp_MCP960X.d ./Drivers/API/Src/myApp_MCP960X.o ./Drivers/API/Src/myApp_MCP960X.su ./Drivers/API/Src/myApp_NFC.cyclo ./Drivers/API/Src/myApp_NFC.d ./Drivers/API/Src/myApp_NFC.o ./Drivers/API/Src/myApp_NFC.su ./Drivers/API/Src/myApp_PCcom.cyclo ./Drivers/API/Src/myApp_PCcom.d ./Drivers/API/Src/myApp_PCcom.o ./Drivers/API/Src/myApp_PCcom.su ./Drivers/API/Src/myApp_mef.cyclo ./Drivers/API/Src/myApp_mef.d ./Drivers/API/Src/myApp_mef.o ./Drivers/API/Src/myApp_mef.su ./Drivers/API/Src/spi_port.cyclo ./Drivers/API/Src/spi_port.d ./Drivers/API/Src/spi_port.o ./Drivers/API/Src/spi_port.su ./Drivers/API/Src/usart_port.cyclo ./Drivers/API/Src/usart_port.d ./Drivers/API/Src/usart_port.o ./Drivers/API/Src/usart_port.su

.PHONY: clean-Drivers-2f-API-2f-Src

