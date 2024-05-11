################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/widgets/lv_arc.c \
../Drivers/lvgl/src/widgets/lv_bar.c \
../Drivers/lvgl/src/widgets/lv_btn.c \
../Drivers/lvgl/src/widgets/lv_btnmatrix.c \
../Drivers/lvgl/src/widgets/lv_canvas.c \
../Drivers/lvgl/src/widgets/lv_checkbox.c \
../Drivers/lvgl/src/widgets/lv_dropdown.c \
../Drivers/lvgl/src/widgets/lv_img.c \
../Drivers/lvgl/src/widgets/lv_label.c \
../Drivers/lvgl/src/widgets/lv_line.c \
../Drivers/lvgl/src/widgets/lv_objx_templ.c \
../Drivers/lvgl/src/widgets/lv_roller.c \
../Drivers/lvgl/src/widgets/lv_slider.c \
../Drivers/lvgl/src/widgets/lv_switch.c \
../Drivers/lvgl/src/widgets/lv_table.c \
../Drivers/lvgl/src/widgets/lv_textarea.c 

OBJS += \
./Drivers/lvgl/src/widgets/lv_arc.o \
./Drivers/lvgl/src/widgets/lv_bar.o \
./Drivers/lvgl/src/widgets/lv_btn.o \
./Drivers/lvgl/src/widgets/lv_btnmatrix.o \
./Drivers/lvgl/src/widgets/lv_canvas.o \
./Drivers/lvgl/src/widgets/lv_checkbox.o \
./Drivers/lvgl/src/widgets/lv_dropdown.o \
./Drivers/lvgl/src/widgets/lv_img.o \
./Drivers/lvgl/src/widgets/lv_label.o \
./Drivers/lvgl/src/widgets/lv_line.o \
./Drivers/lvgl/src/widgets/lv_objx_templ.o \
./Drivers/lvgl/src/widgets/lv_roller.o \
./Drivers/lvgl/src/widgets/lv_slider.o \
./Drivers/lvgl/src/widgets/lv_switch.o \
./Drivers/lvgl/src/widgets/lv_table.o \
./Drivers/lvgl/src/widgets/lv_textarea.o 

C_DEPS += \
./Drivers/lvgl/src/widgets/lv_arc.d \
./Drivers/lvgl/src/widgets/lv_bar.d \
./Drivers/lvgl/src/widgets/lv_btn.d \
./Drivers/lvgl/src/widgets/lv_btnmatrix.d \
./Drivers/lvgl/src/widgets/lv_canvas.d \
./Drivers/lvgl/src/widgets/lv_checkbox.d \
./Drivers/lvgl/src/widgets/lv_dropdown.d \
./Drivers/lvgl/src/widgets/lv_img.d \
./Drivers/lvgl/src/widgets/lv_label.d \
./Drivers/lvgl/src/widgets/lv_line.d \
./Drivers/lvgl/src/widgets/lv_objx_templ.d \
./Drivers/lvgl/src/widgets/lv_roller.d \
./Drivers/lvgl/src/widgets/lv_slider.d \
./Drivers/lvgl/src/widgets/lv_switch.d \
./Drivers/lvgl/src/widgets/lv_table.d \
./Drivers/lvgl/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/widgets/%.o Drivers/lvgl/src/widgets/%.su: ../Drivers/lvgl/src/widgets/%.c Drivers/lvgl/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM324xG_EVAL -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Drivers/lvgl -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/BSP/STM324xG_EVAL -I../Drivers/BSP/Components -I../Drivers/CMSIS/Include -I../FreeRTOS/Source/include -I../FreeRTOS/Source/portable -I../FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-widgets

clean-Drivers-2f-lvgl-2f-src-2f-widgets:
	-$(RM) ./Drivers/lvgl/src/widgets/lv_arc.d ./Drivers/lvgl/src/widgets/lv_arc.o ./Drivers/lvgl/src/widgets/lv_arc.su ./Drivers/lvgl/src/widgets/lv_bar.d ./Drivers/lvgl/src/widgets/lv_bar.o ./Drivers/lvgl/src/widgets/lv_bar.su ./Drivers/lvgl/src/widgets/lv_btn.d ./Drivers/lvgl/src/widgets/lv_btn.o ./Drivers/lvgl/src/widgets/lv_btn.su ./Drivers/lvgl/src/widgets/lv_btnmatrix.d ./Drivers/lvgl/src/widgets/lv_btnmatrix.o ./Drivers/lvgl/src/widgets/lv_btnmatrix.su ./Drivers/lvgl/src/widgets/lv_canvas.d ./Drivers/lvgl/src/widgets/lv_canvas.o ./Drivers/lvgl/src/widgets/lv_canvas.su ./Drivers/lvgl/src/widgets/lv_checkbox.d ./Drivers/lvgl/src/widgets/lv_checkbox.o ./Drivers/lvgl/src/widgets/lv_checkbox.su ./Drivers/lvgl/src/widgets/lv_dropdown.d ./Drivers/lvgl/src/widgets/lv_dropdown.o ./Drivers/lvgl/src/widgets/lv_dropdown.su ./Drivers/lvgl/src/widgets/lv_img.d ./Drivers/lvgl/src/widgets/lv_img.o ./Drivers/lvgl/src/widgets/lv_img.su ./Drivers/lvgl/src/widgets/lv_label.d ./Drivers/lvgl/src/widgets/lv_label.o ./Drivers/lvgl/src/widgets/lv_label.su ./Drivers/lvgl/src/widgets/lv_line.d ./Drivers/lvgl/src/widgets/lv_line.o ./Drivers/lvgl/src/widgets/lv_line.su ./Drivers/lvgl/src/widgets/lv_objx_templ.d ./Drivers/lvgl/src/widgets/lv_objx_templ.o ./Drivers/lvgl/src/widgets/lv_objx_templ.su ./Drivers/lvgl/src/widgets/lv_roller.d ./Drivers/lvgl/src/widgets/lv_roller.o ./Drivers/lvgl/src/widgets/lv_roller.su ./Drivers/lvgl/src/widgets/lv_slider.d ./Drivers/lvgl/src/widgets/lv_slider.o ./Drivers/lvgl/src/widgets/lv_slider.su ./Drivers/lvgl/src/widgets/lv_switch.d ./Drivers/lvgl/src/widgets/lv_switch.o ./Drivers/lvgl/src/widgets/lv_switch.su ./Drivers/lvgl/src/widgets/lv_table.d ./Drivers/lvgl/src/widgets/lv_table.o ./Drivers/lvgl/src/widgets/lv_table.su ./Drivers/lvgl/src/widgets/lv_textarea.d ./Drivers/lvgl/src/widgets/lv_textarea.o ./Drivers/lvgl/src/widgets/lv_textarea.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-widgets

