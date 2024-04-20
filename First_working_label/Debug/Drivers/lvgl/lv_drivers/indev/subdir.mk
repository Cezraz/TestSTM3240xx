################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/lv_drivers/indev/AD_touch.c \
../Drivers/lvgl/lv_drivers/indev/FT5406EE8.c \
../Drivers/lvgl/lv_drivers/indev/XPT2046.c \
../Drivers/lvgl/lv_drivers/indev/evdev.c \
../Drivers/lvgl/lv_drivers/indev/libinput.c \
../Drivers/lvgl/lv_drivers/indev/xkb.c 

OBJS += \
./Drivers/lvgl/lv_drivers/indev/AD_touch.o \
./Drivers/lvgl/lv_drivers/indev/FT5406EE8.o \
./Drivers/lvgl/lv_drivers/indev/XPT2046.o \
./Drivers/lvgl/lv_drivers/indev/evdev.o \
./Drivers/lvgl/lv_drivers/indev/libinput.o \
./Drivers/lvgl/lv_drivers/indev/xkb.o 

C_DEPS += \
./Drivers/lvgl/lv_drivers/indev/AD_touch.d \
./Drivers/lvgl/lv_drivers/indev/FT5406EE8.d \
./Drivers/lvgl/lv_drivers/indev/XPT2046.d \
./Drivers/lvgl/lv_drivers/indev/evdev.d \
./Drivers/lvgl/lv_drivers/indev/libinput.d \
./Drivers/lvgl/lv_drivers/indev/xkb.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/lv_drivers/indev/%.o Drivers/lvgl/lv_drivers/indev/%.su Drivers/lvgl/lv_drivers/indev/%.cyclo: ../Drivers/lvgl/lv_drivers/indev/%.c Drivers/lvgl/lv_drivers/indev/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -I../FreeRTOS/Source/include -I../FreeRTOS/Source/portable -I../FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-lv_drivers-2f-indev

clean-Drivers-2f-lvgl-2f-lv_drivers-2f-indev:
	-$(RM) ./Drivers/lvgl/lv_drivers/indev/AD_touch.cyclo ./Drivers/lvgl/lv_drivers/indev/AD_touch.d ./Drivers/lvgl/lv_drivers/indev/AD_touch.o ./Drivers/lvgl/lv_drivers/indev/AD_touch.su ./Drivers/lvgl/lv_drivers/indev/FT5406EE8.cyclo ./Drivers/lvgl/lv_drivers/indev/FT5406EE8.d ./Drivers/lvgl/lv_drivers/indev/FT5406EE8.o ./Drivers/lvgl/lv_drivers/indev/FT5406EE8.su ./Drivers/lvgl/lv_drivers/indev/XPT2046.cyclo ./Drivers/lvgl/lv_drivers/indev/XPT2046.d ./Drivers/lvgl/lv_drivers/indev/XPT2046.o ./Drivers/lvgl/lv_drivers/indev/XPT2046.su ./Drivers/lvgl/lv_drivers/indev/evdev.cyclo ./Drivers/lvgl/lv_drivers/indev/evdev.d ./Drivers/lvgl/lv_drivers/indev/evdev.o ./Drivers/lvgl/lv_drivers/indev/evdev.su ./Drivers/lvgl/lv_drivers/indev/libinput.cyclo ./Drivers/lvgl/lv_drivers/indev/libinput.d ./Drivers/lvgl/lv_drivers/indev/libinput.o ./Drivers/lvgl/lv_drivers/indev/libinput.su ./Drivers/lvgl/lv_drivers/indev/xkb.cyclo ./Drivers/lvgl/lv_drivers/indev/xkb.d ./Drivers/lvgl/lv_drivers/indev/xkb.o ./Drivers/lvgl/lv_drivers/indev/xkb.su

.PHONY: clean-Drivers-2f-lvgl-2f-lv_drivers-2f-indev

