   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
 189                     ; 5 unsigned int ADC(ADC1_Channel_TypeDef ADC_Channel){	
 191                     	switch	.text
 192  0000               _ADC:
 194  0000 5209          	subw	sp,#9
 195       00000009      OFST:	set	9
 198                     ; 6 		unsigned int sum=0;
 200  0002 5f            	clrw	x
 201  0003 1f01          	ldw	(OFST-8,sp),x
 203                     ; 8 		int max=0;
 205  0005 5f            	clrw	x
 206  0006 1f03          	ldw	(OFST-6,sp),x
 208                     ; 9 		int min=1024;
 210  0008 ae0400        	ldw	x,#1024
 211  000b 1f05          	ldw	(OFST-4,sp),x
 213                     ; 12 		ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
 213                     ; 13 			ADC_Channel,
 213                     ; 14 			ADC1_PRESSEL_FCPU_D2,
 213                     ; 15 			ADC1_EXTTRIG_GPIO,
 213                     ; 16 			DISABLE,
 213                     ; 17 			ADC1_ALIGN_RIGHT,
 213                     ; 18 			ADC1_SCHMITTTRIG_ALL,
 213                     ; 19 			DISABLE);
 215  000d 4b00          	push	#0
 216  000f 4bff          	push	#255
 217  0011 4b08          	push	#8
 218  0013 4b00          	push	#0
 219  0015 4b10          	push	#16
 220  0017 4b00          	push	#0
 221  0019 ae0100        	ldw	x,#256
 222  001c 97            	ld	xl,a
 223  001d cd0000        	call	_ADC1_Init
 225  0020 5b06          	addw	sp,#6
 226                     ; 22 		for(i=0;i<3;i++) {
 228  0022 0f07          	clr	(OFST-2,sp)
 230  0024               L311:
 231                     ; 23 			ADC1_StartConversion();
 233  0024 cd0000        	call	_ADC1_StartConversion
 236  0027               L321:
 237                     ; 24 			while(ADC1_GetFlagStatus(ADC1_FLAG_EOC) == FALSE);
 239  0027 a680          	ld	a,#128
 240  0029 cd0000        	call	_ADC1_GetFlagStatus
 242  002c 4d            	tnz	a
 243  002d 27f8          	jreq	L321
 244                     ; 25 			ADC1_ClearFlag(ADC1_FLAG_EOC);
 246  002f a680          	ld	a,#128
 247  0031 cd0000        	call	_ADC1_ClearFlag
 249                     ; 22 		for(i=0;i<3;i++) {
 251  0034 0c07          	inc	(OFST-2,sp)
 255  0036 7b07          	ld	a,(OFST-2,sp)
 256  0038 a103          	cp	a,#3
 257  003a 25e8          	jrult	L311
 258                     ; 29 		for(i=0;i<10;i++) {
 260  003c 0f07          	clr	(OFST-2,sp)
 262  003e               L721:
 263                     ; 30 			ADC1_StartConversion();
 265  003e cd0000        	call	_ADC1_StartConversion
 268  0041               L731:
 269                     ; 31 			while(ADC1_GetFlagStatus(ADC1_FLAG_EOC) == FALSE);
 271  0041 a680          	ld	a,#128
 272  0043 cd0000        	call	_ADC1_GetFlagStatus
 274  0046 4d            	tnz	a
 275  0047 27f8          	jreq	L731
 276                     ; 32 			tmp= ADC1_GetConversionValue();
 278  0049 cd0000        	call	_ADC1_GetConversionValue
 280  004c 1f08          	ldw	(OFST-1,sp),x
 282                     ; 33 			ADC1_ClearFlag(ADC1_FLAG_EOC);
 284  004e a680          	ld	a,#128
 285  0050 cd0000        	call	_ADC1_ClearFlag
 287                     ; 35 			if(tmp>max) max=tmp; 
 289  0053 9c            	rvf
 290  0054 1e08          	ldw	x,(OFST-1,sp)
 291  0056 1303          	cpw	x,(OFST-6,sp)
 292  0058 2d04          	jrsle	L341
 295  005a 1e08          	ldw	x,(OFST-1,sp)
 296  005c 1f03          	ldw	(OFST-6,sp),x
 298  005e               L341:
 299                     ; 36 			if(tmp<min) min=tmp; 
 301  005e 9c            	rvf
 302  005f 1e08          	ldw	x,(OFST-1,sp)
 303  0061 1305          	cpw	x,(OFST-4,sp)
 304  0063 2e04          	jrsge	L541
 307  0065 1e08          	ldw	x,(OFST-1,sp)
 308  0067 1f05          	ldw	(OFST-4,sp),x
 310  0069               L541:
 311                     ; 37 			sum+=tmp; 
 313  0069 1e01          	ldw	x,(OFST-8,sp)
 314  006b 72fb08        	addw	x,(OFST-1,sp)
 315  006e 1f01          	ldw	(OFST-8,sp),x
 317                     ; 29 		for(i=0;i<10;i++) {
 319  0070 0c07          	inc	(OFST-2,sp)
 323  0072 7b07          	ld	a,(OFST-2,sp)
 324  0074 a10a          	cp	a,#10
 325  0076 25c6          	jrult	L721
 326                     ; 40 		sum=sum-(max+min); 
 328  0078 1e03          	ldw	x,(OFST-6,sp)
 329  007a 72fb05        	addw	x,(OFST-4,sp)
 330  007d 72f001        	subw	x,(OFST-8,sp)
 331  0080 50            	negw	x
 332  0081 1f01          	ldw	(OFST-8,sp),x
 334                     ; 42 		sum>>=3; 
 336  0083 a603          	ld	a,#3
 337  0085               L6:
 338  0085 0401          	srl	(OFST-8,sp)
 339  0087 0602          	rrc	(OFST-7,sp)
 340  0089 4a            	dec	a
 341  008a 26f9          	jrne	L6
 343                     ; 43 		return sum; 
 345  008c 1e01          	ldw	x,(OFST-8,sp)
 348  008e 5b09          	addw	sp,#9
 349  0090 81            	ret
 362                     	bsct
 363  0000               _vstatus:
 364  0000 0000          	dc.w	0
 365  0002               _vsource:
 366  0002 0000          	dc.w	0
 367  0004               _vcurrent:
 368  0004 0000          	dc.w	0
 369  0006               _i:
 370  0006 0000          	dc.w	0
 371  0008               _ledStep:
 372  0008 00000000      	dc.w	0,0
 373  000c               _ledL:
 374  000c 00000000      	dc.w	0,0
 375  0010               _isLedOn:
 376  0010 00            	dc.b	0
 377  0011               _isDarkerMode:
 378  0011 00            	dc.b	0
 379  0012               _ccounter:
 380  0012 00            	dc.b	0
 381  0013               _ledStepTarget:
 382  0013 00000000      	dc.w	0,0
 481                     ; 58 main()
 481                     ; 59 {
 482                     	switch	.text
 483  0091               _main:
 485  0091 89            	pushw	x
 486       00000002      OFST:	set	2
 492  0092 ae00fa        	ldw	x,#250
 493  0095 1f01          	ldw	(OFST-1,sp),x
 496  0097 2008          	jra	L362
 497  0099               L752:
 498                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
 502  0099 ae0534        	ldw	x,#1332
 504  009c 9d            nop
 505  009d                L21:
 506  009d 5a             decw X
 507  009e 26fd           jrne L21
 508  00a0 9d             nop
 509                      
 511  00a1               L362:
 512                     ; 37 	while ( __ms-- )
 514  00a1 1e01          	ldw	x,(OFST-1,sp)
 515  00a3 1d0001        	subw	x,#1
 516  00a6 1f01          	ldw	(OFST-1,sp),x
 517  00a8 1c0001        	addw	x,#1
 519  00ab a30000        	cpw	x,#0
 520  00ae 26e9          	jrne	L752
 521                     ; 62 	Setup();
 523  00b0 cd0529        	call	_Setup
 525  00b3               L762:
 526                     ; 65 		switch(vstatus) {
 528  00b3 be00          	ldw	x,_vstatus
 530                     ; 154 				break;
 531  00b5 5d            	tnzw	x
 532  00b6 270d          	jreq	L551
 533  00b8 5a            	decw	x
 534  00b9 2769          	jreq	L561
 535  00bb 1d0063        	subw	x,#99
 536  00be 2603          	jrne	L42
 537  00c0 cc01bf        	jp	L571
 538  00c3               L42:
 539  00c3 20ee          	jra	L762
 540  00c5               L551:
 541                     ; 69 				GPIO_WriteLow(GPIOD,GPIO_PIN_4);
 543  00c5 4b10          	push	#16
 544  00c7 ae500f        	ldw	x,#20495
 545  00ca cd0000        	call	_GPIO_WriteLow
 547  00cd 84            	pop	a
 548                     ; 71 				TIM1_Cmd(ENABLE);			
 550  00ce a601          	ld	a,#1
 551  00d0 cd0000        	call	_TIM1_Cmd
 553                     ; 72 				TIM1_SetCompare3(0);	//led on
 555  00d3 5f            	clrw	x
 556  00d4 cd0000        	call	_TIM1_SetCompare3
 558                     ; 73 				LedOn(LED_FLASH_FAST);			
 560  00d7 a601          	ld	a,#1
 561  00d9 cd037e        	call	_LedOn
 563                     ; 76 				vsource=ADC(5);				
 565  00dc a605          	ld	a,#5
 566  00de cd0000        	call	_ADC
 568  00e1 bf02          	ldw	_vsource,x
 569                     ; 77 				if (vsource<550) {
 571  00e3 be02          	ldw	x,_vsource
 572  00e5 a30226        	cpw	x,#550
 573  00e8 2433          	jruge	L772
 574                     ; 79 					GPIO_WriteHigh(GPIOD,GPIO_PIN_4);
 576  00ea 4b10          	push	#16
 577  00ec ae500f        	ldw	x,#20495
 578  00ef cd0000        	call	_GPIO_WriteHigh
 580  00f2 84            	pop	a
 584  00f3 ae03e8        	ldw	x,#1000
 585  00f6 1f01          	ldw	(OFST-1,sp),x
 588  00f8 2008          	jra	L503
 589  00fa               L103:
 590                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
 594  00fa ae0534        	ldw	x,#1332
 596  00fd 9d            nop
 597  00fe                L41:
 598  00fe 5a             decw X
 599  00ff 26fd           jrne L41
 600  0101 9d             nop
 601                      
 603  0102               L503:
 604                     ; 37 	while ( __ms-- )
 606  0102 1e01          	ldw	x,(OFST-1,sp)
 607  0104 1d0001        	subw	x,#1
 608  0107 1f01          	ldw	(OFST-1,sp),x
 609  0109 1c0001        	addw	x,#1
 611  010c a30000        	cpw	x,#0
 612  010f 26e9          	jrne	L103
 613                     ; 81 					LedOff(LED_FLASH_NORMAL);
 615  0111 a604          	ld	a,#4
 616  0113 cd041e        	call	_LedOff
 618                     ; 82 					vstatus=1;	
 620  0116 ae0001        	ldw	x,#1
 621  0119 bf00          	ldw	_vstatus,x
 623  011b 2096          	jra	L762
 624  011d               L772:
 625                     ; 84 					LedOff(LED_FLASH_FAST);					
 627  011d a601          	ld	a,#1
 628  011f cd041e        	call	_LedOff
 630  0122 208f          	jra	L762
 631  0124               L561:
 632                     ; 90 				vsource=ADC(5);				
 634  0124 a605          	ld	a,#5
 635  0126 cd0000        	call	_ADC
 637  0129 bf02          	ldw	_vsource,x
 638                     ; 95 				if (vsource<400) {
 640  012b be02          	ldw	x,_vsource
 641  012d a30190        	cpw	x,#400
 642  0130 2464          	jruge	L313
 643                     ; 99 					GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);
 645  0132 4b00          	push	#0
 646  0134 4b80          	push	#128
 647  0136 ae500a        	ldw	x,#20490
 648  0139 cd0000        	call	_GPIO_Init
 650  013c 85            	popw	x
 651                     ; 100 					GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
 653  013d 4b00          	push	#0
 654  013f 4b08          	push	#8
 655  0141 ae5000        	ldw	x,#20480
 656  0144 cd0000        	call	_GPIO_Init
 658  0147 85            	popw	x
 659                     ; 104 					i=0;
 661  0148 5f            	clrw	x
 662  0149 bf06          	ldw	_i,x
 663  014b               L513:
 664                     ; 106 						i++;						
 666  014b be06          	ldw	x,_i
 667  014d 1c0001        	addw	x,#1
 668  0150 bf06          	ldw	_i,x
 669                     ; 107 						FlashLed(LED_FLASH_NORMAL);
 671  0152 a604          	ld	a,#4
 672  0154 cd02d1        	call	_FlashLed
 674                     ; 105 					while(i<3){
 676  0157 be06          	ldw	x,_i
 677  0159 a30003        	cpw	x,#3
 678  015c 25ed          	jrult	L513
 679                     ; 111 					GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_HIGH_SLOW);	
 681  015e 4bd0          	push	#208
 682  0160 4b80          	push	#128
 683  0162 ae500a        	ldw	x,#20490
 684  0165 cd0000        	call	_GPIO_Init
 686  0168 85            	popw	x
 687                     ; 112 					GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_SLOW);	
 689  0169 4bd0          	push	#208
 690  016b 4b08          	push	#8
 691  016d ae5000        	ldw	x,#20480
 692  0170 cd0000        	call	_GPIO_Init
 694  0173 85            	popw	x
 698  0174 ae01f4        	ldw	x,#500
 699  0177 1f01          	ldw	(OFST-1,sp),x
 702  0179 2008          	jra	L723
 703  017b               L323:
 704                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
 708  017b ae0534        	ldw	x,#1332
 710  017e 9d            nop
 711  017f                L61:
 712  017f 5a             decw X
 713  0180 26fd           jrne L61
 714  0182 9d             nop
 715                      
 717  0183               L723:
 718                     ; 37 	while ( __ms-- )
 720  0183 1e01          	ldw	x,(OFST-1,sp)
 721  0185 1d0001        	subw	x,#1
 722  0188 1f01          	ldw	(OFST-1,sp),x
 723  018a 1c0001        	addw	x,#1
 725  018d a30000        	cpw	x,#0
 726  0190 26e9          	jrne	L323
 727  0192 acb300b3      	jpf	L762
 728  0196               L313:
 729                     ; 116 				} else if (vsource>550) {
 731  0196 be02          	ldw	x,_vsource
 732  0198 a30227        	cpw	x,#551
 733  019b 2519          	jrult	L533
 734                     ; 119 					GPIO_WriteLow(GPIOD,GPIO_PIN_4);
 736  019d 4b10          	push	#16
 737  019f ae500f        	ldw	x,#20495
 738  01a2 cd0000        	call	_GPIO_WriteLow
 740  01a5 84            	pop	a
 741                     ; 121 					TIM1_Cmd(ENABLE);			
 743  01a6 a601          	ld	a,#1
 744  01a8 cd0000        	call	_TIM1_Cmd
 746                     ; 122 					TIM1_SetCompare3(0);	//led off	
 748  01ab 5f            	clrw	x
 749  01ac cd0000        	call	_TIM1_SetCompare3
 751                     ; 123 					FlashLedERR();		
 753  01af cd02dc        	call	_FlashLedERR
 756  01b2 acb300b3      	jpf	L762
 757  01b6               L533:
 758                     ; 126 					vstatus=100;
 760  01b6 ae0064        	ldw	x,#100
 761  01b9 bf00          	ldw	_vstatus,x
 762  01bb acb300b3      	jpf	L762
 763  01bf               L571:
 764                     ; 134 				vsource=ADC(5);	
 766  01bf a605          	ld	a,#5
 767  01c1 cd0000        	call	_ADC
 769  01c4 bf02          	ldw	_vsource,x
 770                     ; 135 				if (vsource<400) {
 772  01c6 be02          	ldw	x,_vsource
 773  01c8 a30190        	cpw	x,#400
 774  01cb 2405          	jruge	L143
 775                     ; 137 					vstatus=0;
 777  01cd 5f            	clrw	x
 778  01ce bf00          	ldw	_vstatus,x
 780  01d0 2013          	jra	L343
 781  01d2               L143:
 782                     ; 138 				} else if (vsource>550) {
 784  01d2 be02          	ldw	x,_vsource
 785  01d4 a30227        	cpw	x,#551
 786  01d7 2513          	jrult	L543
 787                     ; 141 					TIM1_Cmd(ENABLE);			
 789  01d9 a601          	ld	a,#1
 790  01db cd0000        	call	_TIM1_Cmd
 792                     ; 142 					TIM1_SetCompare3(0);	//led off	
 794  01de 5f            	clrw	x
 795  01df cd0000        	call	_TIM1_SetCompare3
 797                     ; 143 					FlashLedERR();						
 799  01e2 cd02dc        	call	_FlashLedERR
 802  01e5               L343:
 806  01e5 ae03e8        	ldw	x,#1000
 807  01e8 1f01          	ldw	(OFST-1,sp),x
 810  01ea 2033          	jra	L563
 811  01ec               L543:
 812                     ; 146 					GPIO_WriteHigh(GPIOD,GPIO_PIN_4);		
 814  01ec 4b10          	push	#16
 815  01ee ae500f        	ldw	x,#20495
 816  01f1 cd0000        	call	_GPIO_WriteHigh
 818  01f4 84            	pop	a
 822  01f5 ae0064        	ldw	x,#100
 823  01f8 1f01          	ldw	(OFST-1,sp),x
 826  01fa 2008          	jra	L553
 827  01fc               L153:
 828                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
 832  01fc ae0534        	ldw	x,#1332
 834  01ff 9d            nop
 835  0200                L02:
 836  0200 5a             decw X
 837  0201 26fd           jrne L02
 838  0203 9d             nop
 839                      
 841  0204               L553:
 842                     ; 37 	while ( __ms-- )
 844  0204 1e01          	ldw	x,(OFST-1,sp)
 845  0206 1d0001        	subw	x,#1
 846  0209 1f01          	ldw	(OFST-1,sp),x
 847  020b 1c0001        	addw	x,#1
 849  020e a30000        	cpw	x,#0
 850  0211 26e9          	jrne	L153
 851                     ; 148 					CapMonitor();
 853  0213 ad21          	call	_CapMonitor
 855  0215 20ce          	jra	L343
 856  0217               L163:
 857                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
 861  0217 ae0534        	ldw	x,#1332
 863  021a 9d            nop
 864  021b                L22:
 865  021b 5a             decw X
 866  021c 26fd           jrne L22
 867  021e 9d             nop
 868                      
 870  021f               L563:
 871                     ; 37 	while ( __ms-- )
 873  021f 1e01          	ldw	x,(OFST-1,sp)
 874  0221 1d0001        	subw	x,#1
 875  0224 1f01          	ldw	(OFST-1,sp),x
 876  0226 1c0001        	addw	x,#1
 878  0229 a30000        	cpw	x,#0
 879  022c 26e9          	jrne	L163
 880  022e acb300b3      	jpf	L762
 881  0232               L572:
 882                     ; 154 				break;
 883  0232 acb300b3      	jpf	L762
 919                     ; 161 void CapMonitor(void) {
 920                     	switch	.text
 921  0236               _CapMonitor:
 925                     ; 164 		vcurrent=ADC(4);	
 927  0236 a604          	ld	a,#4
 928  0238 cd0000        	call	_ADC
 930  023b bf04          	ldw	_vcurrent,x
 931                     ; 170 		if (vcurrent>VCURRENT_HIGH){
 933  023d be04          	ldw	x,_vcurrent
 934  023f a3000a        	cpw	x,#10
 935  0242 2543          	jrult	L104
 936                     ; 173 			TIM1_Cmd(ENABLE);	
 938  0244 a601          	ld	a,#1
 939  0246 cd0000        	call	_TIM1_Cmd
 941                     ; 174 			if (isLedOn==1){
 943  0249 b610          	ld	a,_isLedOn
 944  024b a101          	cp	a,#1
 945  024d 262f          	jrne	L704
 946                     ; 175 				LedOff(LED_FLASH_SLOW);			
 948  024f a608          	ld	a,#8
 949  0251 cd041e        	call	_LedOff
 951  0254 2028          	jra	L704
 952  0256               L504:
 953                     ; 179 				if (vcurrent>VCURRENT_TOOHIGH) {			
 955  0256 be04          	ldw	x,_vcurrent
 956  0258 a3000d        	cpw	x,#13
 957  025b 2516          	jrult	L314
 958                     ; 181 					GPIO_WriteLow(GPIOD,GPIO_PIN_4);			
 960  025d 4b10          	push	#16
 961  025f ae500f        	ldw	x,#20495
 962  0262 cd0000        	call	_GPIO_WriteLow
 964  0265 84            	pop	a
 965                     ; 182 					FlashLedERR();	
 967  0266 ad74          	call	_FlashLedERR
 969                     ; 183 					GPIO_WriteHigh(GPIOD,GPIO_PIN_4);		
 971  0268 4b10          	push	#16
 972  026a ae500f        	ldw	x,#20495
 973  026d cd0000        	call	_GPIO_WriteHigh
 975  0270 84            	pop	a
 977  0271 2004          	jra	L514
 978  0273               L314:
 979                     ; 186 					FlashLed(LED_FLASH_SLOW);					
 981  0273 a608          	ld	a,#8
 982  0275 ad5a          	call	_FlashLed
 984  0277               L514:
 985                     ; 188 				vcurrent=ADC(4);		
 987  0277 a604          	ld	a,#4
 988  0279 cd0000        	call	_ADC
 990  027c bf04          	ldw	_vcurrent,x
 991  027e               L704:
 992                     ; 178 			while(vcurrent>=VCURRENT_HIGH) {	
 994  027e be04          	ldw	x,_vcurrent
 995  0280 a30009        	cpw	x,#9
 996  0283 24d1          	jruge	L504
 998  0285 2049          	jra	L714
 999  0287               L104:
1000                     ; 190 		} else if (vcurrent<=VCURRENT_LOW) {
1002  0287 be04          	ldw	x,_vcurrent
1003  0289 a30003        	cpw	x,#3
1004  028c 241f          	jruge	L124
1005                     ; 192 			if (isLedOn==1){			
1007  028e b610          	ld	a,_isLedOn
1008  0290 a101          	cp	a,#1
1009  0292 263c          	jrne	L714
1010                     ; 193 				TIM1_Cmd(ENABLE);	
1012  0294 a601          	ld	a,#1
1013  0296 cd0000        	call	_TIM1_Cmd
1015                     ; 194 				LedOff(LED_FLASH_VERYSLOW);
1017  0299 a628          	ld	a,#40
1018  029b cd041e        	call	_LedOff
1020                     ; 195 				TIM1_Cmd(DISABLE);	
1022  029e 4f            	clr	a
1023  029f cd0000        	call	_TIM1_Cmd
1025                     ; 196 				GPIO_WriteHigh(GPIOC,GPIO_PIN_3);			
1027  02a2 4b08          	push	#8
1028  02a4 ae500a        	ldw	x,#20490
1029  02a7 cd0000        	call	_GPIO_WriteHigh
1031  02aa 84            	pop	a
1032  02ab 2023          	jra	L714
1033  02ad               L124:
1034                     ; 200 			if (isLedOn==0){
1036  02ad 3d10          	tnz	_isLedOn
1037  02af 260c          	jrne	L724
1038                     ; 201 				TIM1_Cmd(ENABLE);	
1040  02b1 a601          	ld	a,#1
1041  02b3 cd0000        	call	_TIM1_Cmd
1043                     ; 202 				LedOn(LED_FLASH_SLOW);				
1045  02b6 a608          	ld	a,#8
1046  02b8 cd037e        	call	_LedOn
1049  02bb 2013          	jra	L714
1050  02bd               L724:
1051                     ; 204 				if (ccounter>LED_DARKER_COUNT) {					
1053  02bd b612          	ld	a,_ccounter
1054  02bf a11f          	cp	a,#31
1055  02c1 250b          	jrult	L334
1056                     ; 205 					if (isDarkerMode==0){		
1058  02c3 3d11          	tnz	_isDarkerMode
1059  02c5 2609          	jrne	L714
1060                     ; 206 						LedDarker(LED_FLASH_VERYSLOW);
1062  02c7 a628          	ld	a,#40
1063  02c9 cd04a0        	call	_LedDarker
1065  02cc 2002          	jra	L714
1066  02ce               L334:
1067                     ; 209 					ccounter++;
1069  02ce 3c12          	inc	_ccounter
1070  02d0               L714:
1071                     ; 214 }
1074  02d0 81            	ret
1110                     ; 217 void FlashLed(char ms)
1110                     ; 218 {
1111                     	switch	.text
1112  02d1               _FlashLed:
1114  02d1 88            	push	a
1115       00000000      OFST:	set	0
1118                     ; 219 	LedOn(ms);
1120  02d2 cd037e        	call	_LedOn
1122                     ; 220 	LedOff(ms);
1124  02d5 7b01          	ld	a,(OFST+1,sp)
1125  02d7 cd041e        	call	_LedOff
1127                     ; 221 }
1130  02da 84            	pop	a
1131  02db 81            	ret
1200                     ; 223 void FlashLedERR(void) 
1200                     ; 224 {
1201                     	switch	.text
1202  02dc               _FlashLedERR:
1204  02dc 89            	pushw	x
1205       00000002      OFST:	set	2
1208                     ; 226 	FlashLed(1);
1210  02dd a601          	ld	a,#1
1211  02df adf0          	call	_FlashLed
1213                     ; 227 	FlashLed(1);
1215  02e1 a601          	ld	a,#1
1216  02e3 adec          	call	_FlashLed
1218                     ; 228 	FlashLed(1);
1220  02e5 a601          	ld	a,#1
1221  02e7 ade8          	call	_FlashLed
1223                     ; 229 	FlashLed(1);	
1225  02e9 a601          	ld	a,#1
1226  02eb ade4          	call	_FlashLed
1231  02ed ae00fa        	ldw	x,#250
1232  02f0 1f01          	ldw	(OFST-1,sp),x
1235  02f2 2008          	jra	L545
1236  02f4               L145:
1237                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1241  02f4 ae0534        	ldw	x,#1332
1243  02f7 9d            nop
1244  02f8                L43:
1245  02f8 5a             decw X
1246  02f9 26fd           jrne L43
1247  02fb 9d             nop
1248                      
1250  02fc               L545:
1251                     ; 37 	while ( __ms-- )
1253  02fc 1e01          	ldw	x,(OFST-1,sp)
1254  02fe 1d0001        	subw	x,#1
1255  0301 1f01          	ldw	(OFST-1,sp),x
1256  0303 1c0001        	addw	x,#1
1258  0306 a30000        	cpw	x,#0
1259  0309 26e9          	jrne	L145
1260                     ; 231 	FlashLed(1);
1262  030b a601          	ld	a,#1
1263  030d adc2          	call	_FlashLed
1268  030f ae00fa        	ldw	x,#250
1269  0312 1f01          	ldw	(OFST-1,sp),x
1272  0314 2008          	jra	L555
1273  0316               L155:
1274                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1278  0316 ae0534        	ldw	x,#1332
1280  0319 9d            nop
1281  031a                L63:
1282  031a 5a             decw X
1283  031b 26fd           jrne L63
1284  031d 9d             nop
1285                      
1287  031e               L555:
1288                     ; 37 	while ( __ms-- )
1290  031e 1e01          	ldw	x,(OFST-1,sp)
1291  0320 1d0001        	subw	x,#1
1292  0323 1f01          	ldw	(OFST-1,sp),x
1293  0325 1c0001        	addw	x,#1
1295  0328 a30000        	cpw	x,#0
1296  032b 26e9          	jrne	L155
1297                     ; 233 	FlashLed(1);
1299  032d a601          	ld	a,#1
1300  032f ada0          	call	_FlashLed
1305  0331 ae00fa        	ldw	x,#250
1306  0334 1f01          	ldw	(OFST-1,sp),x
1309  0336 2008          	jra	L565
1310  0338               L165:
1311                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1315  0338 ae0534        	ldw	x,#1332
1317  033b 9d            nop
1318  033c                L04:
1319  033c 5a             decw X
1320  033d 26fd           jrne L04
1321  033f 9d             nop
1322                      
1324  0340               L565:
1325                     ; 37 	while ( __ms-- )
1327  0340 1e01          	ldw	x,(OFST-1,sp)
1328  0342 1d0001        	subw	x,#1
1329  0345 1f01          	ldw	(OFST-1,sp),x
1330  0347 1c0001        	addw	x,#1
1332  034a a30000        	cpw	x,#0
1333  034d 26e9          	jrne	L165
1334                     ; 235 	FlashLed(1);
1336  034f a601          	ld	a,#1
1337  0351 cd02d1        	call	_FlashLed
1339                     ; 236 	FlashLed(1);
1341  0354 a601          	ld	a,#1
1342  0356 cd02d1        	call	_FlashLed
1344                     ; 237 	FlashLed(1);
1346  0359 a601          	ld	a,#1
1347  035b cd02d1        	call	_FlashLed
1352  035e ae03e8        	ldw	x,#1000
1353  0361 1f01          	ldw	(OFST-1,sp),x
1356  0363 2008          	jra	L575
1357  0365               L175:
1358                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1362  0365 ae0534        	ldw	x,#1332
1364  0368 9d            nop
1365  0369                L24:
1366  0369 5a             decw X
1367  036a 26fd           jrne L24
1368  036c 9d             nop
1369                      
1371  036d               L575:
1372                     ; 37 	while ( __ms-- )
1374  036d 1e01          	ldw	x,(OFST-1,sp)
1375  036f 1d0001        	subw	x,#1
1376  0372 1f01          	ldw	(OFST-1,sp),x
1377  0374 1c0001        	addw	x,#1
1379  0377 a30000        	cpw	x,#0
1380  037a 26e9          	jrne	L175
1381                     ; 239 }
1384  037c 85            	popw	x
1385  037d 81            	ret
1438                     ; 242 void LedOn(char ms)
1438                     ; 243 {
1439                     	switch	.text
1440  037e               _LedOn:
1442  037e 88            	push	a
1443  037f 5206          	subw	sp,#6
1444       00000006      OFST:	set	6
1447                     ; 244 	ledStep=31.5*(ledL/999);
1449  0381 ae000c        	ldw	x,#_ledL
1450  0384 cd0000        	call	c_ltor
1452  0387 ae0008        	ldw	x,#L536
1453  038a cd0000        	call	c_fdiv
1455  038d ae000c        	ldw	x,#L546
1456  0390 cd0000        	call	c_fmul
1458  0393 ae0008        	ldw	x,#_ledStep
1459  0396 cd0000        	call	c_rtol
1462  0399 2049          	jra	L556
1463  039b               L156:
1464                     ; 246 		TIM1_SetCompare3(ledL);	
1466  039b ae000c        	ldw	x,#_ledL
1467  039e cd0000        	call	c_ltor
1469  03a1 cd0000        	call	c_ftoi
1471  03a4 cd0000        	call	_TIM1_SetCompare3
1473                     ; 247 		ledStep+=0.5;	
1475  03a7 ae0004        	ldw	x,#L566
1476  03aa cd0000        	call	c_ltor
1478  03ad ae0008        	ldw	x,#_ledStep
1479  03b0 cd0000        	call	c_fgadd
1481                     ; 248 		ledL=ledStep*ledStep;			
1483  03b3 ae0008        	ldw	x,#_ledStep
1484  03b6 cd0000        	call	c_ltor
1486  03b9 ae0008        	ldw	x,#_ledStep
1487  03bc cd0000        	call	c_fmul
1489  03bf ae000c        	ldw	x,#_ledL
1490  03c2 cd0000        	call	c_rtol
1495  03c5 7b07          	ld	a,(OFST+1,sp)
1496  03c7 5f            	clrw	x
1497  03c8 97            	ld	xl,a
1498  03c9 1f05          	ldw	(OFST-1,sp),x
1501  03cb 2008          	jra	L576
1502  03cd               L176:
1503                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1507  03cd ae0534        	ldw	x,#1332
1509  03d0 9d            nop
1510  03d1                L64:
1511  03d1 5a             decw X
1512  03d2 26fd           jrne L64
1513  03d4 9d             nop
1514                      
1516  03d5               L576:
1517                     ; 37 	while ( __ms-- )
1519  03d5 1e05          	ldw	x,(OFST-1,sp)
1520  03d7 1d0001        	subw	x,#1
1521  03da 1f05          	ldw	(OFST-1,sp),x
1522  03dc 1c0001        	addw	x,#1
1524  03df a30000        	cpw	x,#0
1525  03e2 26e9          	jrne	L176
1526  03e4               L556:
1527                     ; 245 	while(ledL<999){
1529  03e4 9c            	rvf
1530  03e5 ae03e7        	ldw	x,#999
1531  03e8 cd0000        	call	c_itof
1533  03eb 96            	ldw	x,sp
1534  03ec 1c0001        	addw	x,#OFST-5
1535  03ef cd0000        	call	c_rtol
1538  03f2 ae000c        	ldw	x,#_ledL
1539  03f5 cd0000        	call	c_ltor
1541  03f8 96            	ldw	x,sp
1542  03f9 1c0001        	addw	x,#OFST-5
1543  03fc cd0000        	call	c_fcmp
1545  03ff 2f9a          	jrslt	L156
1546                     ; 251 	isLedOn=1;
1548  0401 35010010      	mov	_isLedOn,#1
1549                     ; 252 	ledL=999;
1551  0405 ae03e7        	ldw	x,#999
1552  0408 cd0000        	call	c_itof
1554  040b ae000c        	ldw	x,#_ledL
1555  040e cd0000        	call	c_rtol
1557                     ; 253 	isDarkerMode=0;
1559  0411 3f11          	clr	_isDarkerMode
1560                     ; 254 	ccounter=0;
1562  0413 3f12          	clr	_ccounter
1563                     ; 255 	TIM1_SetCompare3(ledL);	
1565  0415 ae03e7        	ldw	x,#999
1566  0418 cd0000        	call	_TIM1_SetCompare3
1568                     ; 256 }
1571  041b 5b07          	addw	sp,#7
1572  041d 81            	ret
1625                     ; 258 void LedOff(char ms)
1625                     ; 259 {
1626                     	switch	.text
1627  041e               _LedOff:
1629  041e 88            	push	a
1630  041f 89            	pushw	x
1631       00000002      OFST:	set	2
1634                     ; 260 	ledStep=31.5*(ledL/999);
1636  0420 ae000c        	ldw	x,#_ledL
1637  0423 cd0000        	call	c_ltor
1639  0426 ae0008        	ldw	x,#L536
1640  0429 cd0000        	call	c_fdiv
1642  042c ae000c        	ldw	x,#L546
1643  042f cd0000        	call	c_fmul
1645  0432 ae0008        	ldw	x,#_ledStep
1646  0435 cd0000        	call	c_rtol
1649  0438 2049          	jra	L537
1650  043a               L137:
1651                     ; 262 		TIM1_SetCompare3(ledL);		
1653  043a ae000c        	ldw	x,#_ledL
1654  043d cd0000        	call	c_ltor
1656  0440 cd0000        	call	c_ftoi
1658  0443 cd0000        	call	_TIM1_SetCompare3
1660                     ; 263 		ledStep-=0.5;	
1662  0446 ae0004        	ldw	x,#L566
1663  0449 cd0000        	call	c_ltor
1665  044c ae0008        	ldw	x,#_ledStep
1666  044f cd0000        	call	c_fgsub
1668                     ; 264 		ledL=ledStep*ledStep;		
1670  0452 ae0008        	ldw	x,#_ledStep
1671  0455 cd0000        	call	c_ltor
1673  0458 ae0008        	ldw	x,#_ledStep
1674  045b cd0000        	call	c_fmul
1676  045e ae000c        	ldw	x,#_ledL
1677  0461 cd0000        	call	c_rtol
1682  0464 7b03          	ld	a,(OFST+1,sp)
1683  0466 5f            	clrw	x
1684  0467 97            	ld	xl,a
1685  0468 1f01          	ldw	(OFST-1,sp),x
1688  046a 2008          	jra	L547
1689  046c               L147:
1690                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1694  046c ae0534        	ldw	x,#1332
1696  046f 9d            nop
1697  0470                L25:
1698  0470 5a             decw X
1699  0471 26fd           jrne L25
1700  0473 9d             nop
1701                      
1703  0474               L547:
1704                     ; 37 	while ( __ms-- )
1706  0474 1e01          	ldw	x,(OFST-1,sp)
1707  0476 1d0001        	subw	x,#1
1708  0479 1f01          	ldw	(OFST-1,sp),x
1709  047b 1c0001        	addw	x,#1
1711  047e a30000        	cpw	x,#0
1712  0481 26e9          	jrne	L147
1713  0483               L537:
1714                     ; 261 	while(ledStep>0){
1716  0483 9c            	rvf
1717  0484 9c            	rvf
1718  0485 3d08          	tnz	_ledStep
1719  0487 2cb1          	jrsgt	L137
1720                     ; 267 	isLedOn=0;
1722  0489 3f10          	clr	_isLedOn
1723                     ; 268 	ledL=0;
1725  048b ae0000        	ldw	x,#0
1726  048e bf0e          	ldw	_ledL+2,x
1727  0490 ae0000        	ldw	x,#0
1728  0493 bf0c          	ldw	_ledL,x
1729                     ; 269 	isDarkerMode=0;
1731  0495 3f11          	clr	_isDarkerMode
1732                     ; 270 	ccounter=0;
1734  0497 3f12          	clr	_ccounter
1735                     ; 271 	TIM1_SetCompare3(ledL);	
1737  0499 5f            	clrw	x
1738  049a cd0000        	call	_TIM1_SetCompare3
1740                     ; 272 }
1743  049d 5b03          	addw	sp,#3
1744  049f 81            	ret
1797                     ; 275 void LedDarker(char ms){
1798                     	switch	.text
1799  04a0               _LedDarker:
1801  04a0 88            	push	a
1802  04a1 89            	pushw	x
1803       00000002      OFST:	set	2
1806                     ; 276 	ledStep=31.5*(ledL/999);
1808  04a2 ae000c        	ldw	x,#_ledL
1809  04a5 cd0000        	call	c_ltor
1811  04a8 ae0008        	ldw	x,#L536
1812  04ab cd0000        	call	c_fdiv
1814  04ae ae000c        	ldw	x,#L546
1815  04b1 cd0000        	call	c_fmul
1817  04b4 ae0008        	ldw	x,#_ledStep
1818  04b7 cd0000        	call	c_rtol
1820                     ; 277 	ledStepTarget = 31.5*LED_DARKER_PCT;
1822  04ba ce0002        	ldw	x,L5001+2
1823  04bd bf15          	ldw	_ledStepTarget+2,x
1824  04bf ce0000        	ldw	x,L5001
1825  04c2 bf13          	ldw	_ledStepTarget,x
1827  04c4 2049          	jra	L5101
1828  04c6               L1101:
1829                     ; 279 		TIM1_SetCompare3(ledL);		
1831  04c6 ae000c        	ldw	x,#_ledL
1832  04c9 cd0000        	call	c_ltor
1834  04cc cd0000        	call	c_ftoi
1836  04cf cd0000        	call	_TIM1_SetCompare3
1838                     ; 280 		ledStep-=0.5;	
1840  04d2 ae0004        	ldw	x,#L566
1841  04d5 cd0000        	call	c_ltor
1843  04d8 ae0008        	ldw	x,#_ledStep
1844  04db cd0000        	call	c_fgsub
1846                     ; 281 		ledL=ledStep*ledStep;		
1848  04de ae0008        	ldw	x,#_ledStep
1849  04e1 cd0000        	call	c_ltor
1851  04e4 ae0008        	ldw	x,#_ledStep
1852  04e7 cd0000        	call	c_fmul
1854  04ea ae000c        	ldw	x,#_ledL
1855  04ed cd0000        	call	c_rtol
1860  04f0 7b03          	ld	a,(OFST+1,sp)
1861  04f2 5f            	clrw	x
1862  04f3 97            	ld	xl,a
1863  04f4 1f01          	ldw	(OFST-1,sp),x
1866  04f6 2008          	jra	L5201
1867  04f8               L1201:
1868                     ; 27 	_asm("nop\n $N:\n decw X\n jrne $L\n nop\n ", __ticks);
1872  04f8 ae0534        	ldw	x,#1332
1874  04fb 9d            nop
1875  04fc                L65:
1876  04fc 5a             decw X
1877  04fd 26fd           jrne L65
1878  04ff 9d             nop
1879                      
1881  0500               L5201:
1882                     ; 37 	while ( __ms-- )
1884  0500 1e01          	ldw	x,(OFST-1,sp)
1885  0502 1d0001        	subw	x,#1
1886  0505 1f01          	ldw	(OFST-1,sp),x
1887  0507 1c0001        	addw	x,#1
1889  050a a30000        	cpw	x,#0
1890  050d 26e9          	jrne	L1201
1891  050f               L5101:
1892                     ; 278 	while(ledStep>ledStepTarget){
1894  050f 9c            	rvf
1895  0510 ae0008        	ldw	x,#_ledStep
1896  0513 cd0000        	call	c_ltor
1898  0516 ae0013        	ldw	x,#_ledStepTarget
1899  0519 cd0000        	call	c_fcmp
1901  051c 2ca8          	jrsgt	L1101
1902                     ; 284 	isLedOn=1;
1904  051e 35010010      	mov	_isLedOn,#1
1905                     ; 285 	isDarkerMode=1;
1907  0522 35010011      	mov	_isDarkerMode,#1
1908                     ; 286 }
1911  0526 5b03          	addw	sp,#3
1912  0528 81            	ret
1955                     ; 290 void Setup(void)
1955                     ; 291 {
1956                     	switch	.text
1957  0529               _Setup:
1961                     ; 293 	CLK_DeInit();
1963  0529 cd0000        	call	_CLK_DeInit
1965                     ; 294 	CLK_HSECmd(DISABLE);	
1967  052c 4f            	clr	a
1968  052d cd0000        	call	_CLK_HSECmd
1970                     ; 295 	CLK_LSICmd(ENABLE);
1972  0530 a601          	ld	a,#1
1973  0532 cd0000        	call	_CLK_LSICmd
1976  0535               L3401:
1977                     ; 296 	while(CLK_GetFlagStatus(CLK_FLAG_LSIRDY) == FALSE);
1979  0535 ae0110        	ldw	x,#272
1980  0538 cd0000        	call	_CLK_GetFlagStatus
1982  053b 4d            	tnz	a
1983  053c 27f7          	jreq	L3401
1984                     ; 297 	CLK_HSICmd(ENABLE);
1986  053e a601          	ld	a,#1
1987  0540 cd0000        	call	_CLK_HSICmd
1990  0543               L1501:
1991                     ; 298 	while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
1993  0543 ae0102        	ldw	x,#258
1994  0546 cd0000        	call	_CLK_GetFlagStatus
1996  0549 4d            	tnz	a
1997  054a 27f7          	jreq	L1501
1998                     ; 300 	CLK_ClockSwitchCmd(ENABLE);	
2000  054c a601          	ld	a,#1
2001  054e cd0000        	call	_CLK_ClockSwitchCmd
2003                     ; 301 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
2005  0551 4b01          	push	#1
2006  0553 4b00          	push	#0
2007  0555 ae01e1        	ldw	x,#481
2008  0558 cd0000        	call	_CLK_ClockSwitchConfig
2010  055b 85            	popw	x
2011                     ; 302 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
2013  055c 4f            	clr	a
2014  055d cd0000        	call	_CLK_HSIPrescalerConfig
2016                     ; 303 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV4);		
2018  0560 a682          	ld	a,#130
2019  0562 cd0000        	call	_CLK_SYSCLKConfig
2021                     ; 304 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
2023  0565 5f            	clrw	x
2024  0566 cd0000        	call	_CLK_PeripheralClockConfig
2026                     ; 305 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
2028  0569 ae0100        	ldw	x,#256
2029  056c cd0000        	call	_CLK_PeripheralClockConfig
2031                     ; 306 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
2033  056f ae0300        	ldw	x,#768
2034  0572 cd0000        	call	_CLK_PeripheralClockConfig
2036                     ; 307 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
2038  0575 ae0701        	ldw	x,#1793
2039  0578 cd0000        	call	_CLK_PeripheralClockConfig
2041                     ; 308 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
2043  057b ae0500        	ldw	x,#1280
2044  057e cd0000        	call	_CLK_PeripheralClockConfig
2046                     ; 309 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, DISABLE);
2048  0581 ae0400        	ldw	x,#1024
2049  0584 cd0000        	call	_CLK_PeripheralClockConfig
2051                     ; 310 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
2053  0587 ae1200        	ldw	x,#4608
2054  058a cd0000        	call	_CLK_PeripheralClockConfig
2056                     ; 311 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, ENABLE);
2058  058d ae1301        	ldw	x,#4865
2059  0590 cd0000        	call	_CLK_PeripheralClockConfig
2061                     ; 312 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_CAN, DISABLE);	
2063  0593 ae1700        	ldw	x,#5888
2064  0596 cd0000        	call	_CLK_PeripheralClockConfig
2066                     ; 314 	TIM1_DeInit(); 
2068  0599 cd0000        	call	_TIM1_DeInit
2070                     ; 315   TIM1_TimeBaseInit(32, TIM1_COUNTERMODE_UP, 999, 0);
2072  059c 4b00          	push	#0
2073  059e ae03e7        	ldw	x,#999
2074  05a1 89            	pushw	x
2075  05a2 4b00          	push	#0
2076  05a4 ae0020        	ldw	x,#32
2077  05a7 cd0000        	call	_TIM1_TimeBaseInit
2079  05aa 5b04          	addw	sp,#4
2080                     ; 316   TIM1_OC3Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE, 0, TIM1_OCPOLARITY_HIGH, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_RESET, TIM1_OCNIDLESTATE_RESET);
2082  05ac 4b00          	push	#0
2083  05ae 4b00          	push	#0
2084  05b0 4b00          	push	#0
2085  05b2 4b00          	push	#0
2086  05b4 5f            	clrw	x
2087  05b5 89            	pushw	x
2088  05b6 4b44          	push	#68
2089  05b8 ae7011        	ldw	x,#28689
2090  05bb cd0000        	call	_TIM1_OC3Init
2092  05be 5b07          	addw	sp,#7
2093                     ; 317   TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, 0, TIM1_OCPOLARITY_HIGH, TIM1_OCIDLESTATE_RESET);
2095  05c0 4b00          	push	#0
2096  05c2 4b00          	push	#0
2097  05c4 5f            	clrw	x
2098  05c5 89            	pushw	x
2099  05c6 ae7011        	ldw	x,#28689
2100  05c9 cd0000        	call	_TIM1_OC4Init
2102  05cc 5b04          	addw	sp,#4
2103                     ; 318   TIM1_CCxCmd(TIM1_CHANNEL_3, ENABLE); 
2105  05ce ae0201        	ldw	x,#513
2106  05d1 cd0000        	call	_TIM1_CCxCmd
2108                     ; 319   TIM1_CCxCmd(TIM1_CHANNEL_4, ENABLE); 
2110  05d4 ae0301        	ldw	x,#769
2111  05d7 cd0000        	call	_TIM1_CCxCmd
2113                     ; 320   TIM1_OC3PreloadConfig(ENABLE); 
2115  05da a601          	ld	a,#1
2116  05dc cd0000        	call	_TIM1_OC3PreloadConfig
2118                     ; 321   TIM1_OC4PreloadConfig(ENABLE); 
2120  05df a601          	ld	a,#1
2121  05e1 cd0000        	call	_TIM1_OC4PreloadConfig
2123                     ; 322   TIM1_CtrlPWMOutputs(ENABLE); 
2125  05e4 a601          	ld	a,#1
2126  05e6 cd0000        	call	_TIM1_CtrlPWMOutputs
2128                     ; 326 	GPIO_DeInit(GPIOA);
2130  05e9 ae5000        	ldw	x,#20480
2131  05ec cd0000        	call	_GPIO_DeInit
2133                     ; 328 	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_OD_LOW_SLOW);
2135  05ef 4b80          	push	#128
2136  05f1 4b02          	push	#2
2137  05f3 ae5000        	ldw	x,#20480
2138  05f6 cd0000        	call	_GPIO_Init
2140  05f9 85            	popw	x
2141                     ; 330 	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
2143  05fa 4b80          	push	#128
2144  05fc 4b04          	push	#4
2145  05fe ae5000        	ldw	x,#20480
2146  0601 cd0000        	call	_GPIO_Init
2148  0604 85            	popw	x
2149                     ; 332 	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
2151  0605 4b00          	push	#0
2152  0607 4b08          	push	#8
2153  0609 ae5000        	ldw	x,#20480
2154  060c cd0000        	call	_GPIO_Init
2156  060f 85            	popw	x
2157                     ; 334 	GPIO_DeInit(GPIOB);
2159  0610 ae5005        	ldw	x,#20485
2160  0613 cd0000        	call	_GPIO_DeInit
2162                     ; 336 	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_LOW_SLOW);
2164  0616 4b80          	push	#128
2165  0618 4b10          	push	#16
2166  061a ae5005        	ldw	x,#20485
2167  061d cd0000        	call	_GPIO_Init
2169  0620 85            	popw	x
2170                     ; 338 	GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_LOW_SLOW);
2172  0621 4b80          	push	#128
2173  0623 4b20          	push	#32
2174  0625 ae5005        	ldw	x,#20485
2175  0628 cd0000        	call	_GPIO_Init
2177  062b 85            	popw	x
2178                     ; 340 	GPIO_DeInit(GPIOC);
2180  062c ae500a        	ldw	x,#20490
2181  062f cd0000        	call	_GPIO_DeInit
2183                     ; 342 	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_SLOW);
2185  0632 4bd0          	push	#208
2186  0634 4b08          	push	#8
2187  0636 ae500a        	ldw	x,#20490
2188  0639 cd0000        	call	_GPIO_Init
2190  063c 85            	popw	x
2191                     ; 344 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_OD_LOW_SLOW);	
2193  063d 4b80          	push	#128
2194  063f 4b10          	push	#16
2195  0641 ae500a        	ldw	x,#20490
2196  0644 cd0000        	call	_GPIO_Init
2198  0647 85            	popw	x
2199                     ; 346 	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_OD_LOW_SLOW);	
2201  0648 4b80          	push	#128
2202  064a 4b20          	push	#32
2203  064c ae500a        	ldw	x,#20490
2204  064f cd0000        	call	_GPIO_Init
2206  0652 85            	popw	x
2207                     ; 348 	GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_OD_LOW_SLOW);
2209  0653 4b80          	push	#128
2210  0655 4b40          	push	#64
2211  0657 ae500a        	ldw	x,#20490
2212  065a cd0000        	call	_GPIO_Init
2214  065d 85            	popw	x
2215                     ; 350 	GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);
2217  065e 4b00          	push	#0
2218  0660 4b80          	push	#128
2219  0662 ae500a        	ldw	x,#20490
2220  0665 cd0000        	call	_GPIO_Init
2222  0668 85            	popw	x
2223                     ; 352 	GPIO_DeInit(GPIOD);
2225  0669 ae500f        	ldw	x,#20495
2226  066c cd0000        	call	_GPIO_DeInit
2228                     ; 354 	GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);
2230  066f 4b00          	push	#0
2231  0671 4b02          	push	#2
2232  0673 ae500f        	ldw	x,#20495
2233  0676 cd0000        	call	_GPIO_Init
2235  0679 85            	popw	x
2236                     ; 356 	GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
2238  067a 4b80          	push	#128
2239  067c 4b04          	push	#4
2240  067e ae500f        	ldw	x,#20495
2241  0681 cd0000        	call	_GPIO_Init
2243  0684 85            	popw	x
2244                     ; 358 	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
2246  0685 4b00          	push	#0
2247  0687 4b08          	push	#8
2248  0689 ae500f        	ldw	x,#20495
2249  068c cd0000        	call	_GPIO_Init
2251  068f 85            	popw	x
2252                     ; 360 	GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);
2254  0690 4bc0          	push	#192
2255  0692 4b10          	push	#16
2256  0694 ae500f        	ldw	x,#20495
2257  0697 cd0000        	call	_GPIO_Init
2259  069a 85            	popw	x
2260                     ; 362 	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);	
2262  069b 4b00          	push	#0
2263  069d 4b20          	push	#32
2264  069f ae500f        	ldw	x,#20495
2265  06a2 cd0000        	call	_GPIO_Init
2267  06a5 85            	popw	x
2268                     ; 364 	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_OUT_OD_LOW_SLOW);
2270  06a6 4b80          	push	#128
2271  06a8 4b40          	push	#64
2272  06aa ae500f        	ldw	x,#20495
2273  06ad cd0000        	call	_GPIO_Init
2275  06b0 85            	popw	x
2276                     ; 365 }
2279  06b1 81            	ret
2384                     	xdef	_main
2385                     	xdef	_ledStepTarget
2386                     	xdef	_ccounter
2387                     	xdef	_isDarkerMode
2388                     	xdef	_isLedOn
2389                     	xdef	_ledL
2390                     	xdef	_ledStep
2391                     	xdef	_i
2392                     	xdef	_vcurrent
2393                     	xdef	_vsource
2394                     	xdef	_vstatus
2395                     	xdef	_LedDarker
2396                     	xdef	_LedOff
2397                     	xdef	_LedOn
2398                     	xdef	_CapMonitor
2399                     	xdef	_FlashLedERR
2400                     	xdef	_FlashLed
2401                     	xdef	_Setup
2402                     	xdef	_ADC
2403                     	xref	_TIM1_SetCompare3
2404                     	xref	_TIM1_CCxCmd
2405                     	xref	_TIM1_OC4PreloadConfig
2406                     	xref	_TIM1_OC3PreloadConfig
2407                     	xref	_TIM1_CtrlPWMOutputs
2408                     	xref	_TIM1_Cmd
2409                     	xref	_TIM1_OC4Init
2410                     	xref	_TIM1_OC3Init
2411                     	xref	_TIM1_TimeBaseInit
2412                     	xref	_TIM1_DeInit
2413                     	xref	_GPIO_WriteLow
2414                     	xref	_GPIO_WriteHigh
2415                     	xref	_GPIO_Init
2416                     	xref	_GPIO_DeInit
2417                     	xref	_CLK_GetFlagStatus
2418                     	xref	_CLK_SYSCLKConfig
2419                     	xref	_CLK_HSIPrescalerConfig
2420                     	xref	_CLK_ClockSwitchConfig
2421                     	xref	_CLK_PeripheralClockConfig
2422                     	xref	_CLK_ClockSwitchCmd
2423                     	xref	_CLK_LSICmd
2424                     	xref	_CLK_HSICmd
2425                     	xref	_CLK_HSECmd
2426                     	xref	_CLK_DeInit
2427                     	xref	_ADC1_ClearFlag
2428                     	xref	_ADC1_GetFlagStatus
2429                     	xref	_ADC1_GetConversionValue
2430                     	xref	_ADC1_StartConversion
2431                     	xref	_ADC1_Init
2432                     .const:	section	.text
2433  0000               L5001:
2434  0000 413f851e      	dc.w	16703,-31458
2435  0004               L566:
2436  0004 3f000000      	dc.w	16128,0
2437  0008               L536:
2438  0008 4479c000      	dc.w	17529,-16384
2439  000c               L546:
2440  000c 41fc0000      	dc.w	16892,0
2441                     	xref.b	c_x
2461                     	xref	c_fgsub
2462                     	xref	c_fcmp
2463                     	xref	c_itof
2464                     	xref	c_fgadd
2465                     	xref	c_ftoi
2466                     	xref	c_rtol
2467                     	xref	c_fmul
2468                     	xref	c_fdiv
2469                     	xref	c_ltor
2470                     	end
