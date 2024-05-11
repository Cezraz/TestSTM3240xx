################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/extra/others/snapshot/lv_snapshot.c 

OBJS += \
./Drivers/lvgl/src/extra/others/snapshot/lv_snapshot.o 

C_DEPS += \
./Drivers/lvgl/src/extra/others/snapshot/lv_snapshot.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/extra/others/snapshot/%.o Drivers/lvgl/src/extra/others/snapshot/%.su: ../Drivers/lvgl/src/extra/others/snapshot/%.c Drivers/lvgl/src/extra/others/snapshot/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -I../FreeRTOS/Source/include -I../FreeRTOS/Source/portable -I../FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-others-2f-snapshot

clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-others-2f-snapshot:
	-$(RM) ./Drivers/lvgl/src/extra/others/snapshot/lv_snapshot.d ./Drivers/lvgl/src/extra/others/snapshot/lv_snapshot.o ./Drivers/lvgl/src/extra/others/snapshot/lv_snapshot.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-others-2f-snapshot

