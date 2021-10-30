   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 6 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  43                     ; 7 {
  44                     	switch	.text
  45  0000               f_NonHandledInterrupt:
  49                     ; 11 }
  52  0000 80            	iret
  74                     ; 19 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  74                     ; 20 {
  75                     	switch	.text
  76  0001               f_TRAP_IRQHandler:
  80                     ; 24 }
  83  0001 80            	iret
 105                     ; 31 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 105                     ; 32 
 105                     ; 33 {
 106                     	switch	.text
 107  0002               f_TLI_IRQHandler:
 111                     ; 37 }
 114  0002 80            	iret
 136                     ; 44 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 136                     ; 45 {
 137                     	switch	.text
 138  0003               f_AWU_IRQHandler:
 142                     ; 49 }
 145  0003 80            	iret
 167                     ; 56 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 167                     ; 57 {
 168                     	switch	.text
 169  0004               f_CLK_IRQHandler:
 173                     ; 61 }
 176  0004 80            	iret
 199                     ; 68 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 199                     ; 69 {
 200                     	switch	.text
 201  0005               f_EXTI_PORTA_IRQHandler:
 205                     ; 73 }
 208  0005 80            	iret
 231                     ; 80 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 231                     ; 81 {
 232                     	switch	.text
 233  0006               f_EXTI_PORTB_IRQHandler:
 237                     ; 85 }
 240  0006 80            	iret
 263                     ; 92 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 263                     ; 93 {
 264                     	switch	.text
 265  0007               f_EXTI_PORTC_IRQHandler:
 269                     ; 97 }
 272  0007 80            	iret
 295                     ; 104 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 295                     ; 105 {
 296                     	switch	.text
 297  0008               f_EXTI_PORTD_IRQHandler:
 301                     ; 109 }
 304  0008 80            	iret
 327                     ; 116 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 327                     ; 117 {
 328                     	switch	.text
 329  0009               f_EXTI_PORTE_IRQHandler:
 333                     ; 121 }
 336  0009 80            	iret
 358                     ; 128 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 358                     ; 129 {
 359                     	switch	.text
 360  000a               f_SPI_IRQHandler:
 364                     ; 133 }
 367  000a 80            	iret
 390                     ; 140 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 390                     ; 141 {
 391                     	switch	.text
 392  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 396                     ; 145 }
 399  000b 80            	iret
 422                     ; 152 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 422                     ; 153 {
 423                     	switch	.text
 424  000c               f_TIM1_CAP_COM_IRQHandler:
 428                     ; 157 }
 431  000c 80            	iret
 454                     ; 164  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 454                     ; 165  {
 455                     	switch	.text
 456  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 460                     ; 169  }
 463  000d 80            	iret
 486                     ; 176  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 486                     ; 177  {
 487                     	switch	.text
 488  000e               f_TIM2_CAP_COM_IRQHandler:
 492                     ; 181  }
 495  000e 80            	iret
 518                     ; 188  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 518                     ; 189  {
 519                     	switch	.text
 520  000f               f_UART1_TX_IRQHandler:
 524                     ; 193  }
 527  000f 80            	iret
 550                     ; 200  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 550                     ; 201  {
 551                     	switch	.text
 552  0010               f_UART1_RX_IRQHandler:
 556                     ; 205  }
 559  0010 80            	iret
 581                     ; 212 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 581                     ; 213 {
 582                     	switch	.text
 583  0011               f_I2C_IRQHandler:
 587                     ; 217 }
 590  0011 80            	iret
 612                     ; 226  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 612                     ; 227  {
 613                     	switch	.text
 614  0012               f_ADC1_IRQHandler:
 618                     ; 231  }
 621  0012 80            	iret
 644                     ; 238  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 644                     ; 239  {
 645                     	switch	.text
 646  0013               f_TIM4_UPD_OVF_IRQHandler:
 650                     ; 243  }
 653  0013 80            	iret
 676                     ; 250 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 676                     ; 251 {
 677                     	switch	.text
 678  0014               f_EEPROM_EEC_IRQHandler:
 682                     ; 255 }
 685  0014 80            	iret
 697                     	xdef	f_EEPROM_EEC_IRQHandler
 698                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 699                     	xdef	f_ADC1_IRQHandler
 700                     	xdef	f_I2C_IRQHandler
 701                     	xdef	f_UART1_RX_IRQHandler
 702                     	xdef	f_UART1_TX_IRQHandler
 703                     	xdef	f_TIM2_CAP_COM_IRQHandler
 704                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 705                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 706                     	xdef	f_TIM1_CAP_COM_IRQHandler
 707                     	xdef	f_SPI_IRQHandler
 708                     	xdef	f_EXTI_PORTE_IRQHandler
 709                     	xdef	f_EXTI_PORTD_IRQHandler
 710                     	xdef	f_EXTI_PORTC_IRQHandler
 711                     	xdef	f_EXTI_PORTB_IRQHandler
 712                     	xdef	f_EXTI_PORTA_IRQHandler
 713                     	xdef	f_CLK_IRQHandler
 714                     	xdef	f_AWU_IRQHandler
 715                     	xdef	f_TLI_IRQHandler
 716                     	xdef	f_TRAP_IRQHandler
 717                     	xdef	f_NonHandledInterrupt
 736                     	end
