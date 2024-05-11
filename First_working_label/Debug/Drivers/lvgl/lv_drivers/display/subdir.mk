################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/lv_drivers/display/GC9A01.c \
../Drivers/lvgl/lv_drivers/display/ILI9341.c \
../Drivers/lvgl/lv_drivers/display/R61581.c \
../Drivers/lvgl/lv_drivers/display/SHARP_MIP.c \
../Drivers/lvgl/lv_drivers/display/SSD1963.c \
../Drivers/lvgl/lv_drivers/display/ST7565.c \
../Drivers/lvgl/lv_drivers/display/UC1610.c \
../Drivers/lvgl/lv_drivers/display/drm.c \
../Drivers/lvgl/lv_drivers/display/fbdev.c 

OBJS += \
./Drivers/lvgl/lv_drivers/display/GC9A01.o \
./Drivers/lvgl/lv_drivers/display/ILI9341.o \
./Drivers/lvgl/lv_drivers/display/R61581.o \
./Drivers/lvgl/lv_drivers/display/SHARP_MIP.o \
./Drivers/lvgl/lv_drivers/display/SSD1963.o \
./Drivers/lvgl/lv_drivers/display/ST7565.o \
./Drivers/lvgl/lv_drivers/display/UC1610.o \
./Drivers/lvgl/lv_drivers/display/drm.o \
./Drivers/lvgl/lv_drivers/display/fbdev.o 

C_DEPS += \
./Drivers/lvgl/lv_drivers/display/GC9A01.d \
./Drivers/lvgl/lv_drivers/display/ILI9341.d \
./Drivers/lvgl/lv_drivers/display/R61581.d \
./Drivers/lvgl/lv_drivers/display/SHARP_MIP.d \
./Drivers/lvgl/lv_drivers/display/SSD1963.d \
./Drivers/lvgl/lv_drivers/display/ST7565.d \
./Drivers/lvgl/lv_drivers/display/UC1610.d \
./Drivers/lvgl/lv_drivers/display/drm.d \
./Drivers/lvgl/lv_drivers/display/fbdev.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/lv_drivers/display/%.o Drivers/lvgl/lv_drivers/display/%.su: ../Drivers/lvgl/lv_drivers/display/%.c Drivers/lvgl/lv_drivers/display/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -I../FreeRTOS/Source/include -I../FreeRTOS/Source/portable -I../FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-lv_drivers-2f-display

clean-Drivers-2f-lvgl-2f-lv_drivers-2f-display:
	-$(RM) ./Drivers/lvgl/lv_drivers/display/GC9A01.d ./Drivers/lvgl/lv_drivers/display/GC9A01.o ./Drivers/lvgl/lv_drivers/display/GC9A01.su ./Drivers/lvgl/lv_drivers/display/ILI9341.d ./Drivers/lvgl/lv_drivers/display/ILI9341.o ./Drivers/lvgl/lv_drivers/display/ILI9341.su ./Drivers/lvgl/lv_drivers/display/R61581.d ./Drivers/lvgl/lv_drivers/display/R61581.o ./Drivers/lvgl/lv_drivers/display/R61581.su ./Drivers/lvgl/lv_drivers/display/SHARP_MIP.d ./Drivers/lvgl/lv_drivers/display/SHARP_MIP.o ./Drivers/lvgl/lv_drivers/display/SHARP_MIP.su ./Drivers/lvgl/lv_drivers/display/SSD1963.d ./Drivers/lvgl/lv_drivers/display/SSD1963.o ./Drivers/lvgl/lv_drivers/display/SSD1963.su ./Drivers/lvgl/lv_drivers/display/ST7565.d ./Drivers/lvgl/lv_drivers/display/ST7565.o ./Drivers/lvgl/lv_drivers/display/ST7565.su ./Drivers/lvgl/lv_drivers/display/UC1610.d ./Drivers/lvgl/lv_drivers/display/UC1610.o ./Drivers/lvgl/lv_drivers/display/UC1610.su ./Drivers/lvgl/lv_drivers/display/drm.d ./Drivers/lvgl/lv_drivers/display/drm.o ./Drivers/lvgl/lv_drivers/display/drm.su ./Drivers/lvgl/lv_drivers/display/fbdev.d ./Drivers/lvgl/lv_drivers/display/fbdev.o ./Drivers/lvgl/lv_drivers/display/fbdev.su

.PHONY: clean-Drivers-2f-lvgl-2f-lv_drivers-2f-display

