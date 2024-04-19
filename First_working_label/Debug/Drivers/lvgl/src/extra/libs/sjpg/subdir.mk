################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.c \
../Drivers/lvgl/src/extra/libs/sjpg/tjpgd.c 

OBJS += \
./Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.o \
./Drivers/lvgl/src/extra/libs/sjpg/tjpgd.o 

C_DEPS += \
./Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.d \
./Drivers/lvgl/src/extra/libs/sjpg/tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/extra/libs/sjpg/%.o Drivers/lvgl/src/extra/libs/sjpg/%.su Drivers/lvgl/src/extra/libs/sjpg/%.cyclo: ../Drivers/lvgl/src/extra/libs/sjpg/%.c Drivers/lvgl/src/extra/libs/sjpg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-libs-2f-sjpg

clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-libs-2f-sjpg:
	-$(RM) ./Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.cyclo ./Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.d ./Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.o ./Drivers/lvgl/src/extra/libs/sjpg/lv_sjpg.su ./Drivers/lvgl/src/extra/libs/sjpg/tjpgd.cyclo ./Drivers/lvgl/src/extra/libs/sjpg/tjpgd.d ./Drivers/lvgl/src/extra/libs/sjpg/tjpgd.o ./Drivers/lvgl/src/extra/libs/sjpg/tjpgd.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-libs-2f-sjpg
