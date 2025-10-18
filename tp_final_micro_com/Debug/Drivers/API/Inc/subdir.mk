################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/API/Inc/usart.c 

OBJS += \
./Drivers/API/Inc/usart.o 

C_DEPS += \
./Drivers/API/Inc/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/API/Inc/%.o Drivers/API/Inc/%.su Drivers/API/Inc/%.cyclo: ../Drivers/API/Inc/%.c Drivers/API/Inc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/API/Inc -I../Drivers/API/Src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-API-2f-Inc

clean-Drivers-2f-API-2f-Inc:
	-$(RM) ./Drivers/API/Inc/usart.cyclo ./Drivers/API/Inc/usart.d ./Drivers/API/Inc/usart.o ./Drivers/API/Inc/usart.su

.PHONY: clean-Drivers-2f-API-2f-Inc

