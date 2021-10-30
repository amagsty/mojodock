
#define F_CPU 4000000UL

#include "stm8s.h"
#include "delay.h"
#include "adc.h"

//ms: n*124
#define LED_FLASH_VERYSLOW 40 //5s
#define LED_FLASH_SLOW 8 // 992ms
#define LED_FLASH_NORMAL 4 // 496ms
#define LED_FLASH_FAST 1 // 124ms
#define LED_DARKER_PCT 0.38
#define LED_DARKER_COUNT 30 //90s


#define VCURRENT_TOOHIGH 12
#define VCURRENT_HIGH 9
#define VCURRENT_LOW 2

void Setup(void);
void FlashLed(char ms);
void FlashLedERR(void);
void CapMonitor(void);
void LedOn(char ms);
void LedOff(char ms);
void LedDarker(char ms);

unsigned int vstatus = 0; // 0 start, 1 request 9v, 100 9v ok
unsigned int vsource=0;
unsigned int vcurrent=0;
unsigned int i=0;

float ledStep=0;
float ledL = 0;
char isLedOn = 0;
char isDarkerMode = 0;
char ccounter = 0;
float ledStepTarget=0;


/* interface 

boot: do nothing
request 9v: flash quickly
charge cap: flash slowly

*/









main()
{
	_delay_ms(250);
				
	Setup();
		
	while (1){
		switch(vstatus) {
			case 0:			{							
				// init									
				// close ldo					
				GPIO_WriteLow(GPIOD,GPIO_PIN_4);
				
				TIM1_Cmd(ENABLE);			
				TIM1_SetCompare3(0);	//led on
				LedOn(LED_FLASH_FAST);			

				// check v
				vsource=ADC(5);				
				if (vsource<550) {
					// init charge					
					GPIO_WriteHigh(GPIOD,GPIO_PIN_4);
					_delay_ms(1000);
					LedOff(LED_FLASH_NORMAL);
					vstatus=1;	
				} else {							
					LedOff(LED_FLASH_FAST);					
				}				
				break;
			}
			case 1:			{								
				// request 9v		
				vsource=ADC(5);				
					// 671.4754098360656 12v
					// 503.6065573770492 9v
					// 279.7814207650273 5v
					
				if (vsource<400) {
				
					// 5v									
					// step 1: d+  0.6v, d-  float:
					GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);
					GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
										
					// wait > 1250ms									
					// light 0%-100%-0% : 400ms
					i=0;
					while(i<3){
						i++;						
						FlashLed(LED_FLASH_NORMAL);
					}
					
					// step 2: d+ 3.3v d- 0.6v:
					GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_HIGH_SLOW);	
					GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_SLOW);	
										
					_delay_ms(500);	
					
				} else if (vsource>550) {
					// 12v, show error
					// close ldo				
					GPIO_WriteLow(GPIOD,GPIO_PIN_4);
					// SHOW ERROR V TOO HIGH
					TIM1_Cmd(ENABLE);			
					TIM1_SetCompare3(0);	//led off	
					FlashLedERR();		
				} else {
					// 9v ok, 
					vstatus=100;
				}
				break;
			}
			
			case 100: {	
				// check vsource every sec
												
				vsource=ADC(5);	
				if (vsource<400) {
					// request 9v
					vstatus=0;
				} else if (vsource>550) {
					// votage too high						
					// SHOW ERROR V TOO HIGH
					TIM1_Cmd(ENABLE);			
					TIM1_SetCompare3(0);	//led off	
					FlashLedERR();						
				} else {
					// normal status
					GPIO_WriteHigh(GPIOD,GPIO_PIN_4);		
					_delay_ms(100);	
					CapMonitor();
				}
					
				// delay
				_delay_ms(1000);			
				
				break;
			}
		}
	};
}

// check cap
void CapMonitor(void) {
	
		// vcurrent check
		vcurrent=ADC(4);	
		// >200mA, flash led, wait a while
		// <50mA, off
		// 50 - 200mA stay on
		// 200mA, 0.2r = 12.4 adc, 12
		// 50mA, 0.2r = 3.1 adc, 3
		if (vcurrent>VCURRENT_HIGH){
			
			// charge cap, flash 
			TIM1_Cmd(ENABLE);	
			if (isLedOn==1){
				LedOff(LED_FLASH_SLOW);			
			}			
			
			while(vcurrent>=VCURRENT_HIGH) {	
				if (vcurrent>VCURRENT_TOOHIGH) {			
					// too high, protect		
					GPIO_WriteLow(GPIOD,GPIO_PIN_4);			
					FlashLedERR();	
					GPIO_WriteHigh(GPIOD,GPIO_PIN_4);		
				} else {		
					// ok, charge					
					FlashLed(LED_FLASH_SLOW);					
				}
				vcurrent=ADC(4);		
			}
		} else if (vcurrent<=VCURRENT_LOW) {
			// led off				
			if (isLedOn==1){			
				TIM1_Cmd(ENABLE);	
				LedOff(LED_FLASH_VERYSLOW);
				TIM1_Cmd(DISABLE);	
				GPIO_WriteHigh(GPIOC,GPIO_PIN_3);			
			}
		} else {			
			// stay on
			if (isLedOn==0){
				TIM1_Cmd(ENABLE);	
				LedOn(LED_FLASH_SLOW);				
			} else {
				if (ccounter>LED_DARKER_COUNT) {					
					if (isDarkerMode==0){		
						LedDarker(LED_FLASH_VERYSLOW);
					}
				} else {
					ccounter++;
				}
			}
		}
		
}

// led
void FlashLed(char ms)
{
	LedOn(ms);
	LedOff(ms);
}

void FlashLedERR(void) 
{
	// show sos code	
	FlashLed(1);
	FlashLed(1);
	FlashLed(1);
	FlashLed(1);	
	_delay_ms(250);
	FlashLed(1);
	_delay_ms(250);
	FlashLed(1);
	_delay_ms(250);
	FlashLed(1);
	FlashLed(1);
	FlashLed(1);
	_delay_ms(1000);	
}


void LedOn(char ms)
{
	ledStep=31.5*(ledL/999);
	while(ledL<999){
		TIM1_SetCompare3(ledL);	
		ledStep+=0.5;	
		ledL=ledStep*ledStep;			
		_delay_ms(ms);	
	}
	isLedOn=1;
	ledL=999;
	isDarkerMode=0;
	ccounter=0;
	TIM1_SetCompare3(ledL);	
}

void LedOff(char ms)
{
	ledStep=31.5*(ledL/999);
	while(ledStep>0){
		TIM1_SetCompare3(ledL);		
		ledStep-=0.5;	
		ledL=ledStep*ledStep;		
		_delay_ms(ms);	
	}
	isLedOn=0;
	ledL=0;
	isDarkerMode=0;
	ccounter=0;
	TIM1_SetCompare3(ledL);	
}


void LedDarker(char ms){
	ledStep=31.5*(ledL/999);
	ledStepTarget = 31.5*LED_DARKER_PCT;
	while(ledStep>ledStepTarget){
		TIM1_SetCompare3(ledL);		
		ledStep-=0.5;	
		ledL=ledStep*ledStep;		
		_delay_ms(ms);	
	}
	isLedOn=1;
	isDarkerMode=1;
}


// setups
void Setup(void)
{
	// clock
	CLK_DeInit();
	CLK_HSECmd(DISABLE);	
	CLK_LSICmd(ENABLE);
	while(CLK_GetFlagStatus(CLK_FLAG_LSIRDY) == FALSE);
	CLK_HSICmd(ENABLE);
	while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
	
	CLK_ClockSwitchCmd(ENABLE);	
	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV4);		
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_CAN, DISABLE);	
	
	TIM1_DeInit(); 
  TIM1_TimeBaseInit(32, TIM1_COUNTERMODE_UP, 999, 0);
  TIM1_OC3Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE, 0, TIM1_OCPOLARITY_HIGH, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_RESET, TIM1_OCNIDLESTATE_RESET);
  TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, 0, TIM1_OCPOLARITY_HIGH, TIM1_OCIDLESTATE_RESET);
  TIM1_CCxCmd(TIM1_CHANNEL_3, ENABLE); 
  TIM1_CCxCmd(TIM1_CHANNEL_4, ENABLE); 
  TIM1_OC3PreloadConfig(ENABLE); 
  TIM1_OC4PreloadConfig(ENABLE); 
  TIM1_CtrlPWMOutputs(ENABLE); 
  // TIM1_Cmd(ENABLE);

	// gpio	A123, B45, C34567, D123456
	GPIO_DeInit(GPIOA);
	// PA1: NOT USED	
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_OD_LOW_SLOW);
	// PA2: NOT USED
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
	// PA3: D-
	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
	
	GPIO_DeInit(GPIOB);
	// PB4: NOT USED
	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_LOW_SLOW);
	// PB5: NOT USED
	GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_LOW_SLOW);
	
	GPIO_DeInit(GPIOC);
	// PC3: LED
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_SLOW);
	// PC4: NOT USED
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_OD_LOW_SLOW);	
	// PC5: NOT USED
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_OD_LOW_SLOW);	
	// PC6: NOT USED
	GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_OD_LOW_SLOW);
	// PC7: D+
	GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);
	
	GPIO_DeInit(GPIOD);
	// PD1: swim / request 
	GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);
	// PD2: NOT USED
	GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
	// PD3: vcurrent
	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
	// PD4: EN
	GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);
	// PD5: VSOURCE
	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);	
	// PD6: NOT USED
	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_OUT_OD_LOW_SLOW);
}
