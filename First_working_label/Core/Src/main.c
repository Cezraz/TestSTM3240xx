/**
  ******************************************************************************
  * @file    DCMI/DCMI_CaptureMode/Src/main.c 
  * @author  MCD Application Team
  * @brief   This example describes how to configure the camera in continuous mode
  *          and QVGA resolution.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2017 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "lvgl.h"
#include "examples/lv_examples.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "semphr.h"

/** @addtogroup STM32F4xx_HAL_Examples
  * @{
  */

/** @addtogroup DCMI_CaptureMode
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void SystemClock_Config(void);

void main_task(void *pvParameters);

int main(void) {

	SystemCoreClockUpdate();
	SysTick_Config(SystemCoreClock/1000);
  /* Инициализация системных тактовых сеток */
	SystemClock_Config();
	HAL_Init();
	lv_init();
	Display_Init();
	BSP_SRAM_Init();

	BSP_TS_Init(BSP_LCD_GetXSize(), BSP_LCD_GetYSize());
  /* Настройка и запуск задачи FreeRTOS */
	xTaskCreate(main_task,            // Указатель на функцию, которую должна выполнять задача
              "Main_Task",          // Имя задачи
              configMINIMAL_STACK_SIZE*50, // Размер стека задачи
              NULL,                 // Указатель на параметры задачи
              1, // Приоритет задачи
              NULL);                // Указатель на хендлер задачи (если не нужен, можно передать NULL)

  /* Запуск планировщика FreeRTOS */
	vTaskStartScheduler();

  /* Не должно никогда дойти до этой точки */
	while (1) {}
}

/* Функция, которую будет выполнять задача FreeRTOS */
void main_task(void *pvParameters) {
  /* Неиспользуемый параметр, чтобы избежать предупреждения о неиспользовании */
  (void)pvParameters;



  /* Создание примеров интерфейсов LVGL */
  static lv_style_t style;
        lv_style_init(&style);

        lv_style_set_radius(&style, 3);

        lv_style_set_bg_opa(&style, LV_OPA_100);
        lv_style_set_bg_color(&style, lv_palette_main(LV_PALETTE_BLUE));
        lv_style_set_bg_grad_color(&style, lv_palette_darken(LV_PALETTE_BLUE, 2));
        lv_style_set_bg_grad_dir(&style, LV_GRAD_DIR_VER);

        lv_style_set_border_opa(&style, LV_OPA_40);
        lv_style_set_border_width(&style, 2);
        lv_style_set_border_color(&style, lv_palette_main(LV_PALETTE_GREY));

        lv_style_set_shadow_width(&style, 8);
        lv_style_set_shadow_color(&style, lv_palette_main(LV_PALETTE_GREY));
        lv_style_set_shadow_ofs_y(&style, 8);

        lv_style_set_outline_opa(&style, LV_OPA_COVER);
        lv_style_set_outline_color(&style, lv_palette_main(LV_PALETTE_BLUE));

        lv_style_set_text_color(&style, lv_color_white());
        lv_style_set_pad_all(&style, 10);

        /*Init the pressed style*/
        static lv_style_t style_pr;
        lv_style_init(&style_pr);

        /*Add a large outline when pressed*/
        lv_style_set_outline_width(&style_pr, 30);
        lv_style_set_outline_opa(&style_pr, LV_OPA_TRANSP);

        lv_style_set_translate_y(&style_pr, 5);
        lv_style_set_shadow_ofs_y(&style_pr, 3);
        lv_style_set_bg_color(&style_pr, lv_palette_darken(LV_PALETTE_BLUE, 2));
        lv_style_set_bg_grad_color(&style_pr, lv_palette_darken(LV_PALETTE_BLUE, 4));

        /*Add a transition to the outline*/
        static lv_style_transition_dsc_t trans;
        static lv_style_prop_t props[] = {LV_STYLE_OUTLINE_WIDTH, LV_STYLE_OUTLINE_OPA, 0};
        lv_style_transition_dsc_init(&trans, props, lv_anim_path_linear, 300, 0, NULL);

        lv_style_set_transition(&style_pr, &trans);

        lv_obj_t * btn1 = lv_btn_create(lv_scr_act());
        lv_obj_remove_style_all(btn1);                          /*Remove the style coming from the theme*/
        lv_obj_add_style(btn1, &style, 0);
        lv_obj_add_style(btn1, &style_pr, LV_STATE_PRESSED);
        lv_obj_set_size(btn1, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
        lv_obj_center(btn1);

        lv_obj_t * label = lv_label_create(btn1);
        lv_label_set_text(label, "Press me");
        lv_obj_center(label);

  while (1) {
	  lv_task_handler();
    /* Задержка для предотвращения блокировки задачи */
    vTaskDelay(pdMS_TO_TICKS(5)); // Задержка в 5 миллисекунд
  }
}

/**
  * @brief  Frame Event callback.
  * @param  None
  * @retval None
  */
void BSP_CAMERA_FrameEventCallback(void)
{}

/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSE)
  *            SYSCLK(Hz)                     = 168000000
  *            HCLK(Hz)                       = 168000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 4
  *            APB2 Prescaler                 = 2
  *            HSE Frequency(Hz)              = 25000000
  *            PLL_M                          = 25
  *            PLL_N                          = 336
  *            PLL_P                          = 2
  *            PLL_Q                          = 7
  *            VDD(V)                         = 3.3
  *            Main regulator output voltage  = Scale1 mode
  *            Flash Latency(WS)              = 5
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();

  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /* Enable HSE Oscillator and Activate PLL with HSE ad source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 25;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5);

  /* STM32F405x/407x/415x/417x Revision Z and upper devices: prefetch is supported  */
  if (HAL_GetREVID() >= 0x1001)
  {
    /* Enable the Flash prefetch */
    __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
  }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */

/**
  * @}
  */
