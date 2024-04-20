################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/lv_drivers/sdl/sdl.c \
../Drivers/lvgl/lv_drivers/sdl/sdl_common.c \
../Drivers/lvgl/lv_drivers/sdl/sdl_gpu.c 

OBJS += \
./Drivers/lvgl/lv_drivers/sdl/sdl.o \
./Drivers/lvgl/lv_drivers/sdl/sdl_common.o \
./Drivers/lvgl/lv_drivers/sdl/sdl_gpu.o 

C_DEPS += \
./Drivers/lvgl/lv_drivers/sdl/sdl.d \
./Drivers/lvgl/lv_drivers/sdl/sdl_common.d \
./Drivers/lvgl/lv_drivers/sdl/sdl_gpu.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/lv_drivers/sdl/%.o Drivers/lvgl/lv_drivers/sdl/%.su Drivers/lvgl/lv_drivers/sdl/%.cyclo: ../Drivers/lvgl/lv_drivers/sdl/%.c Drivers/lvgl/lv_drivers/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -I../FreeRTOS/Source/include -I../FreeRTOS/Source/portable -I../FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-lv_drivers-2f-sdl

clean-Drivers-2f-lvgl-2f-lv_drivers-2f-sdl:
	-$(RM) ./Drivers/lvgl/lv_drivers/sdl/sdl.cyclo ./Drivers/lvgl/lv_drivers/sdl/sdl.d ./Drivers/lvgl/lv_drivers/sdl/sdl.o ./Drivers/lvgl/lv_drivers/sdl/sdl.su ./Drivers/lvgl/lv_drivers/sdl/sdl_common.cyclo ./Drivers/lvgl/lv_drivers/sdl/sdl_common.d ./Drivers/lvgl/lv_drivers/sdl/sdl_common.o ./Drivers/lvgl/lv_drivers/sdl/sdl_common.su ./Drivers/lvgl/lv_drivers/sdl/sdl_gpu.cyclo ./Drivers/lvgl/lv_drivers/sdl/sdl_gpu.d ./Drivers/lvgl/lv_drivers/sdl/sdl_gpu.o ./Drivers/lvgl/lv_drivers/sdl/sdl_gpu.su

.PHONY: clean-Drivers-2f-lvgl-2f-lv_drivers-2f-sdl

