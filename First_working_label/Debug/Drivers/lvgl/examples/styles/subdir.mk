################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/examples/styles/lv_example_style_1.c \
../Drivers/lvgl/examples/styles/lv_example_style_10.c \
../Drivers/lvgl/examples/styles/lv_example_style_11.c \
../Drivers/lvgl/examples/styles/lv_example_style_12.c \
../Drivers/lvgl/examples/styles/lv_example_style_13.c \
../Drivers/lvgl/examples/styles/lv_example_style_14.c \
../Drivers/lvgl/examples/styles/lv_example_style_15.c \
../Drivers/lvgl/examples/styles/lv_example_style_2.c \
../Drivers/lvgl/examples/styles/lv_example_style_3.c \
../Drivers/lvgl/examples/styles/lv_example_style_4.c \
../Drivers/lvgl/examples/styles/lv_example_style_5.c \
../Drivers/lvgl/examples/styles/lv_example_style_6.c \
../Drivers/lvgl/examples/styles/lv_example_style_7.c \
../Drivers/lvgl/examples/styles/lv_example_style_8.c \
../Drivers/lvgl/examples/styles/lv_example_style_9.c 

OBJS += \
./Drivers/lvgl/examples/styles/lv_example_style_1.o \
./Drivers/lvgl/examples/styles/lv_example_style_10.o \
./Drivers/lvgl/examples/styles/lv_example_style_11.o \
./Drivers/lvgl/examples/styles/lv_example_style_12.o \
./Drivers/lvgl/examples/styles/lv_example_style_13.o \
./Drivers/lvgl/examples/styles/lv_example_style_14.o \
./Drivers/lvgl/examples/styles/lv_example_style_15.o \
./Drivers/lvgl/examples/styles/lv_example_style_2.o \
./Drivers/lvgl/examples/styles/lv_example_style_3.o \
./Drivers/lvgl/examples/styles/lv_example_style_4.o \
./Drivers/lvgl/examples/styles/lv_example_style_5.o \
./Drivers/lvgl/examples/styles/lv_example_style_6.o \
./Drivers/lvgl/examples/styles/lv_example_style_7.o \
./Drivers/lvgl/examples/styles/lv_example_style_8.o \
./Drivers/lvgl/examples/styles/lv_example_style_9.o 

C_DEPS += \
./Drivers/lvgl/examples/styles/lv_example_style_1.d \
./Drivers/lvgl/examples/styles/lv_example_style_10.d \
./Drivers/lvgl/examples/styles/lv_example_style_11.d \
./Drivers/lvgl/examples/styles/lv_example_style_12.d \
./Drivers/lvgl/examples/styles/lv_example_style_13.d \
./Drivers/lvgl/examples/styles/lv_example_style_14.d \
./Drivers/lvgl/examples/styles/lv_example_style_15.d \
./Drivers/lvgl/examples/styles/lv_example_style_2.d \
./Drivers/lvgl/examples/styles/lv_example_style_3.d \
./Drivers/lvgl/examples/styles/lv_example_style_4.d \
./Drivers/lvgl/examples/styles/lv_example_style_5.d \
./Drivers/lvgl/examples/styles/lv_example_style_6.d \
./Drivers/lvgl/examples/styles/lv_example_style_7.d \
./Drivers/lvgl/examples/styles/lv_example_style_8.d \
./Drivers/lvgl/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/examples/styles/%.o Drivers/lvgl/examples/styles/%.su: ../Drivers/lvgl/examples/styles/%.c Drivers/lvgl/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -I../FreeRTOS/Source/include -I../FreeRTOS/Source/portable -I../FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-examples-2f-styles

clean-Drivers-2f-lvgl-2f-examples-2f-styles:
	-$(RM) ./Drivers/lvgl/examples/styles/lv_example_style_1.d ./Drivers/lvgl/examples/styles/lv_example_style_1.o ./Drivers/lvgl/examples/styles/lv_example_style_1.su ./Drivers/lvgl/examples/styles/lv_example_style_10.d ./Drivers/lvgl/examples/styles/lv_example_style_10.o ./Drivers/lvgl/examples/styles/lv_example_style_10.su ./Drivers/lvgl/examples/styles/lv_example_style_11.d ./Drivers/lvgl/examples/styles/lv_example_style_11.o ./Drivers/lvgl/examples/styles/lv_example_style_11.su ./Drivers/lvgl/examples/styles/lv_example_style_12.d ./Drivers/lvgl/examples/styles/lv_example_style_12.o ./Drivers/lvgl/examples/styles/lv_example_style_12.su ./Drivers/lvgl/examples/styles/lv_example_style_13.d ./Drivers/lvgl/examples/styles/lv_example_style_13.o ./Drivers/lvgl/examples/styles/lv_example_style_13.su ./Drivers/lvgl/examples/styles/lv_example_style_14.d ./Drivers/lvgl/examples/styles/lv_example_style_14.o ./Drivers/lvgl/examples/styles/lv_example_style_14.su ./Drivers/lvgl/examples/styles/lv_example_style_15.d ./Drivers/lvgl/examples/styles/lv_example_style_15.o ./Drivers/lvgl/examples/styles/lv_example_style_15.su ./Drivers/lvgl/examples/styles/lv_example_style_2.d ./Drivers/lvgl/examples/styles/lv_example_style_2.o ./Drivers/lvgl/examples/styles/lv_example_style_2.su ./Drivers/lvgl/examples/styles/lv_example_style_3.d ./Drivers/lvgl/examples/styles/lv_example_style_3.o ./Drivers/lvgl/examples/styles/lv_example_style_3.su ./Drivers/lvgl/examples/styles/lv_example_style_4.d ./Drivers/lvgl/examples/styles/lv_example_style_4.o ./Drivers/lvgl/examples/styles/lv_example_style_4.su ./Drivers/lvgl/examples/styles/lv_example_style_5.d ./Drivers/lvgl/examples/styles/lv_example_style_5.o ./Drivers/lvgl/examples/styles/lv_example_style_5.su ./Drivers/lvgl/examples/styles/lv_example_style_6.d ./Drivers/lvgl/examples/styles/lv_example_style_6.o ./Drivers/lvgl/examples/styles/lv_example_style_6.su ./Drivers/lvgl/examples/styles/lv_example_style_7.d ./Drivers/lvgl/examples/styles/lv_example_style_7.o ./Drivers/lvgl/examples/styles/lv_example_style_7.su ./Drivers/lvgl/examples/styles/lv_example_style_8.d ./Drivers/lvgl/examples/styles/lv_example_style_8.o ./Drivers/lvgl/examples/styles/lv_example_style_8.su ./Drivers/lvgl/examples/styles/lv_example_style_9.d ./Drivers/lvgl/examples/styles/lv_example_style_9.o ./Drivers/lvgl/examples/styles/lv_example_style_9.su

.PHONY: clean-Drivers-2f-lvgl-2f-examples-2f-styles

