################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/examples/widgets/line/lv_example_line_1.c 

OBJS += \
./Drivers/lvgl/examples/widgets/line/lv_example_line_1.o 

C_DEPS += \
./Drivers/lvgl/examples/widgets/line/lv_example_line_1.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/examples/widgets/line/%.o Drivers/lvgl/examples/widgets/line/%.su Drivers/lvgl/examples/widgets/line/%.cyclo: ../Drivers/lvgl/examples/widgets/line/%.c Drivers/lvgl/examples/widgets/line/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-examples-2f-widgets-2f-line

clean-Drivers-2f-lvgl-2f-examples-2f-widgets-2f-line:
	-$(RM) ./Drivers/lvgl/examples/widgets/line/lv_example_line_1.cyclo ./Drivers/lvgl/examples/widgets/line/lv_example_line_1.d ./Drivers/lvgl/examples/widgets/line/lv_example_line_1.o ./Drivers/lvgl/examples/widgets/line/lv_example_line_1.su

.PHONY: clean-Drivers-2f-lvgl-2f-examples-2f-widgets-2f-line
