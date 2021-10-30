   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
  42                     ; 52 void TIM2_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _TIM2_DeInit:
  49                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  51  0000 725f5300      	clr	21248
  52                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  54  0004 725f5303      	clr	21251
  55                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  57  0008 725f5305      	clr	21253
  58                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  60  000c 725f530a      	clr	21258
  61                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  63  0010 725f530b      	clr	21259
  64                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  0014 725f530a      	clr	21258
  67                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0018 725f530b      	clr	21259
  70                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  72  001c 725f5307      	clr	21255
  73                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  75  0020 725f5308      	clr	21256
  76                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  78  0024 725f5309      	clr	21257
  79                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  81  0028 725f530c      	clr	21260
  82                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  84  002c 725f530d      	clr	21261
  85                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  87  0030 725f530e      	clr	21262
  88                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  90  0034 35ff530f      	mov	21263,#255
  91                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  93  0038 35ff5310      	mov	21264,#255
  94                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  96  003c 725f5311      	clr	21265
  97                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  99  0040 725f5312      	clr	21266
 100                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 102  0044 725f5313      	clr	21267
 103                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 105  0048 725f5314      	clr	21268
 106                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 108  004c 725f5315      	clr	21269
 109                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 111  0050 725f5316      	clr	21270
 112                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 114  0054 725f5304      	clr	21252
 115                     ; 81 }
 118  0058 81            	ret
 286                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 286                     ; 90                         uint16_t TIM2_Period)
 286                     ; 91 {
 287                     	switch	.text
 288  0059               _TIM2_TimeBaseInit:
 290  0059 88            	push	a
 291       00000000      OFST:	set	0
 294                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 296  005a c7530e        	ld	21262,a
 297                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 299  005d 7b04          	ld	a,(OFST+4,sp)
 300  005f c7530f        	ld	21263,a
 301                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 303  0062 7b05          	ld	a,(OFST+5,sp)
 304  0064 c75310        	ld	21264,a
 305                     ; 97 }
 308  0067 84            	pop	a
 309  0068 81            	ret
 466                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 466                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 466                     ; 110                   uint16_t TIM2_Pulse,
 466                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 466                     ; 112 {
 467                     	switch	.text
 468  0069               _TIM2_OC1Init:
 470  0069 89            	pushw	x
 471  006a 88            	push	a
 472       00000001      OFST:	set	1
 475                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 477                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 479                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 481                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 483  006b c6530a        	ld	a,21258
 484  006e a4fc          	and	a,#252
 485  0070 c7530a        	ld	21258,a
 486                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 486                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 488  0073 7b08          	ld	a,(OFST+7,sp)
 489  0075 a402          	and	a,#2
 490  0077 6b01          	ld	(OFST+0,sp),a
 492  0079 9f            	ld	a,xl
 493  007a a401          	and	a,#1
 494  007c 1a01          	or	a,(OFST+0,sp)
 495  007e ca530a        	or	a,21258
 496  0081 c7530a        	ld	21258,a
 497                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 497                     ; 126                           (uint8_t)TIM2_OCMode);
 499  0084 c65307        	ld	a,21255
 500  0087 a48f          	and	a,#143
 501  0089 1a02          	or	a,(OFST+1,sp)
 502  008b c75307        	ld	21255,a
 503                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 505  008e 7b06          	ld	a,(OFST+5,sp)
 506  0090 c75311        	ld	21265,a
 507                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 509  0093 7b07          	ld	a,(OFST+6,sp)
 510  0095 c75312        	ld	21266,a
 511                     ; 131 }
 514  0098 5b03          	addw	sp,#3
 515  009a 81            	ret
 579                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 579                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 579                     ; 144                   uint16_t TIM2_Pulse,
 579                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 579                     ; 146 {
 580                     	switch	.text
 581  009b               _TIM2_OC2Init:
 583  009b 89            	pushw	x
 584  009c 88            	push	a
 585       00000001      OFST:	set	1
 588                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 590                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 592                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 594                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 596  009d c6530a        	ld	a,21258
 597  00a0 a4cf          	and	a,#207
 598  00a2 c7530a        	ld	21258,a
 599                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 599                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 601  00a5 7b08          	ld	a,(OFST+7,sp)
 602  00a7 a420          	and	a,#32
 603  00a9 6b01          	ld	(OFST+0,sp),a
 605  00ab 9f            	ld	a,xl
 606  00ac a410          	and	a,#16
 607  00ae 1a01          	or	a,(OFST+0,sp)
 608  00b0 ca530a        	or	a,21258
 609  00b3 c7530a        	ld	21258,a
 610                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 610                     ; 162                           (uint8_t)TIM2_OCMode);
 612  00b6 c65308        	ld	a,21256
 613  00b9 a48f          	and	a,#143
 614  00bb 1a02          	or	a,(OFST+1,sp)
 615  00bd c75308        	ld	21256,a
 616                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 618  00c0 7b06          	ld	a,(OFST+5,sp)
 619  00c2 c75313        	ld	21267,a
 620                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 622  00c5 7b07          	ld	a,(OFST+6,sp)
 623  00c7 c75314        	ld	21268,a
 624                     ; 168 }
 627  00ca 5b03          	addw	sp,#3
 628  00cc 81            	ret
 692                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 692                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 692                     ; 181                   uint16_t TIM2_Pulse,
 692                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 692                     ; 183 {
 693                     	switch	.text
 694  00cd               _TIM2_OC3Init:
 696  00cd 89            	pushw	x
 697  00ce 88            	push	a
 698       00000001      OFST:	set	1
 701                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 703                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 705                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 707                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 709  00cf c6530b        	ld	a,21259
 710  00d2 a4fc          	and	a,#252
 711  00d4 c7530b        	ld	21259,a
 712                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 712                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 714  00d7 7b08          	ld	a,(OFST+7,sp)
 715  00d9 a402          	and	a,#2
 716  00db 6b01          	ld	(OFST+0,sp),a
 718  00dd 9f            	ld	a,xl
 719  00de a401          	and	a,#1
 720  00e0 1a01          	or	a,(OFST+0,sp)
 721  00e2 ca530b        	or	a,21259
 722  00e5 c7530b        	ld	21259,a
 723                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 723                     ; 196                           (uint8_t)TIM2_OCMode);
 725  00e8 c65309        	ld	a,21257
 726  00eb a48f          	and	a,#143
 727  00ed 1a02          	or	a,(OFST+1,sp)
 728  00ef c75309        	ld	21257,a
 729                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 731  00f2 7b06          	ld	a,(OFST+5,sp)
 732  00f4 c75315        	ld	21269,a
 733                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 735  00f7 7b07          	ld	a,(OFST+6,sp)
 736  00f9 c75316        	ld	21270,a
 737                     ; 201 }
 740  00fc 5b03          	addw	sp,#3
 741  00fe 81            	ret
 934                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 934                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 934                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 934                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 934                     ; 216                  uint8_t TIM2_ICFilter)
 934                     ; 217 {
 935                     	switch	.text
 936  00ff               _TIM2_ICInit:
 938  00ff 89            	pushw	x
 939       00000000      OFST:	set	0
 942                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 944                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 946                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 948                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 950                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 952                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
 954  0100 9e            	ld	a,xh
 955  0101 4d            	tnz	a
 956  0102 2614          	jrne	L104
 957                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
 957                     ; 229                (uint8_t)TIM2_ICSelection,
 957                     ; 230                (uint8_t)TIM2_ICFilter);
 959  0104 7b07          	ld	a,(OFST+7,sp)
 960  0106 88            	push	a
 961  0107 7b06          	ld	a,(OFST+6,sp)
 962  0109 97            	ld	xl,a
 963  010a 7b03          	ld	a,(OFST+3,sp)
 964  010c 95            	ld	xh,a
 965  010d cd044a        	call	L3_TI1_Config
 967  0110 84            	pop	a
 968                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 970  0111 7b06          	ld	a,(OFST+6,sp)
 971  0113 cd0340        	call	_TIM2_SetIC1Prescaler
 974  0116 202c          	jra	L304
 975  0118               L104:
 976                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
 978  0118 7b01          	ld	a,(OFST+1,sp)
 979  011a a101          	cp	a,#1
 980  011c 2614          	jrne	L504
 981                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
 981                     ; 239                (uint8_t)TIM2_ICSelection,
 981                     ; 240                (uint8_t)TIM2_ICFilter);
 983  011e 7b07          	ld	a,(OFST+7,sp)
 984  0120 88            	push	a
 985  0121 7b06          	ld	a,(OFST+6,sp)
 986  0123 97            	ld	xl,a
 987  0124 7b03          	ld	a,(OFST+3,sp)
 988  0126 95            	ld	xh,a
 989  0127 cd047a        	call	L5_TI2_Config
 991  012a 84            	pop	a
 992                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 994  012b 7b06          	ld	a,(OFST+6,sp)
 995  012d cd034d        	call	_TIM2_SetIC2Prescaler
 998  0130 2012          	jra	L304
 999  0132               L504:
1000                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1000                     ; 249                (uint8_t)TIM2_ICSelection,
1000                     ; 250                (uint8_t)TIM2_ICFilter);
1002  0132 7b07          	ld	a,(OFST+7,sp)
1003  0134 88            	push	a
1004  0135 7b06          	ld	a,(OFST+6,sp)
1005  0137 97            	ld	xl,a
1006  0138 7b03          	ld	a,(OFST+3,sp)
1007  013a 95            	ld	xh,a
1008  013b cd04aa        	call	L7_TI3_Config
1010  013e 84            	pop	a
1011                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1013  013f 7b06          	ld	a,(OFST+6,sp)
1014  0141 cd035a        	call	_TIM2_SetIC3Prescaler
1016  0144               L304:
1017                     ; 255 }
1020  0144 85            	popw	x
1021  0145 81            	ret
1117                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1117                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1117                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1117                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1117                     ; 270                      uint8_t TIM2_ICFilter)
1117                     ; 271 {
1118                     	switch	.text
1119  0146               _TIM2_PWMIConfig:
1121  0146 89            	pushw	x
1122  0147 89            	pushw	x
1123       00000002      OFST:	set	2
1126                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1128                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1130                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1132                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1134                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1136                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1138                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1140  0148 9f            	ld	a,xl
1141  0149 a144          	cp	a,#68
1142  014b 2706          	jreq	L754
1143                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1145  014d a644          	ld	a,#68
1146  014f 6b01          	ld	(OFST-1,sp),a
1149  0151 2002          	jra	L164
1150  0153               L754:
1151                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1153  0153 0f01          	clr	(OFST-1,sp)
1155  0155               L164:
1156                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1158  0155 7b07          	ld	a,(OFST+5,sp)
1159  0157 a101          	cp	a,#1
1160  0159 2606          	jrne	L364
1161                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1163  015b a602          	ld	a,#2
1164  015d 6b02          	ld	(OFST+0,sp),a
1167  015f 2004          	jra	L564
1168  0161               L364:
1169                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1171  0161 a601          	ld	a,#1
1172  0163 6b02          	ld	(OFST+0,sp),a
1174  0165               L564:
1175                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1177  0165 0d03          	tnz	(OFST+1,sp)
1178  0167 2626          	jrne	L764
1179                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1179                     ; 305                (uint8_t)TIM2_ICFilter);
1181  0169 7b09          	ld	a,(OFST+7,sp)
1182  016b 88            	push	a
1183  016c 7b08          	ld	a,(OFST+6,sp)
1184  016e 97            	ld	xl,a
1185  016f 7b05          	ld	a,(OFST+3,sp)
1186  0171 95            	ld	xh,a
1187  0172 cd044a        	call	L3_TI1_Config
1189  0175 84            	pop	a
1190                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1192  0176 7b08          	ld	a,(OFST+6,sp)
1193  0178 cd0340        	call	_TIM2_SetIC1Prescaler
1195                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1197  017b 7b09          	ld	a,(OFST+7,sp)
1198  017d 88            	push	a
1199  017e 7b03          	ld	a,(OFST+1,sp)
1200  0180 97            	ld	xl,a
1201  0181 7b02          	ld	a,(OFST+0,sp)
1202  0183 95            	ld	xh,a
1203  0184 cd047a        	call	L5_TI2_Config
1205  0187 84            	pop	a
1206                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1208  0188 7b08          	ld	a,(OFST+6,sp)
1209  018a cd034d        	call	_TIM2_SetIC2Prescaler
1212  018d 2024          	jra	L174
1213  018f               L764:
1214                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1214                     ; 320                (uint8_t)TIM2_ICFilter);
1216  018f 7b09          	ld	a,(OFST+7,sp)
1217  0191 88            	push	a
1218  0192 7b08          	ld	a,(OFST+6,sp)
1219  0194 97            	ld	xl,a
1220  0195 7b05          	ld	a,(OFST+3,sp)
1221  0197 95            	ld	xh,a
1222  0198 cd047a        	call	L5_TI2_Config
1224  019b 84            	pop	a
1225                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1227  019c 7b08          	ld	a,(OFST+6,sp)
1228  019e cd034d        	call	_TIM2_SetIC2Prescaler
1230                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1232  01a1 7b09          	ld	a,(OFST+7,sp)
1233  01a3 88            	push	a
1234  01a4 7b03          	ld	a,(OFST+1,sp)
1235  01a6 97            	ld	xl,a
1236  01a7 7b02          	ld	a,(OFST+0,sp)
1237  01a9 95            	ld	xh,a
1238  01aa cd044a        	call	L3_TI1_Config
1240  01ad 84            	pop	a
1241                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1243  01ae 7b08          	ld	a,(OFST+6,sp)
1244  01b0 cd0340        	call	_TIM2_SetIC1Prescaler
1246  01b3               L174:
1247                     ; 331 }
1250  01b3 5b04          	addw	sp,#4
1251  01b5 81            	ret
1306                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1306                     ; 340 {
1307                     	switch	.text
1308  01b6               _TIM2_Cmd:
1312                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1314                     ; 345   if (NewState != DISABLE)
1316  01b6 4d            	tnz	a
1317  01b7 2706          	jreq	L125
1318                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1320  01b9 72105300      	bset	21248,#0
1322  01bd 2004          	jra	L325
1323  01bf               L125:
1324                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1326  01bf 72115300      	bres	21248,#0
1327  01c3               L325:
1328                     ; 353 }
1331  01c3 81            	ret
1410                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1410                     ; 369 {
1411                     	switch	.text
1412  01c4               _TIM2_ITConfig:
1414  01c4 89            	pushw	x
1415       00000000      OFST:	set	0
1418                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1420                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1422                     ; 374   if (NewState != DISABLE)
1424  01c5 9f            	ld	a,xl
1425  01c6 4d            	tnz	a
1426  01c7 2709          	jreq	L365
1427                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1429  01c9 9e            	ld	a,xh
1430  01ca ca5303        	or	a,21251
1431  01cd c75303        	ld	21251,a
1433  01d0 2009          	jra	L565
1434  01d2               L365:
1435                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1437  01d2 7b01          	ld	a,(OFST+1,sp)
1438  01d4 43            	cpl	a
1439  01d5 c45303        	and	a,21251
1440  01d8 c75303        	ld	21251,a
1441  01db               L565:
1442                     ; 384 }
1445  01db 85            	popw	x
1446  01dc 81            	ret
1482                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1482                     ; 393 {
1483                     	switch	.text
1484  01dd               _TIM2_UpdateDisableConfig:
1488                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1490                     ; 398   if (NewState != DISABLE)
1492  01dd 4d            	tnz	a
1493  01de 2706          	jreq	L506
1494                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1496  01e0 72125300      	bset	21248,#1
1498  01e4 2004          	jra	L706
1499  01e6               L506:
1500                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1502  01e6 72135300      	bres	21248,#1
1503  01ea               L706:
1504                     ; 406 }
1507  01ea 81            	ret
1565                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1565                     ; 417 {
1566                     	switch	.text
1567  01eb               _TIM2_UpdateRequestConfig:
1571                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1573                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1575  01eb 4d            	tnz	a
1576  01ec 2706          	jreq	L736
1577                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1579  01ee 72145300      	bset	21248,#2
1581  01f2 2004          	jra	L146
1582  01f4               L736:
1583                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1585  01f4 72155300      	bres	21248,#2
1586  01f8               L146:
1587                     ; 430 }
1590  01f8 81            	ret
1647                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1647                     ; 441 {
1648                     	switch	.text
1649  01f9               _TIM2_SelectOnePulseMode:
1653                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1655                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1657  01f9 4d            	tnz	a
1658  01fa 2706          	jreq	L176
1659                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1661  01fc 72165300      	bset	21248,#3
1663  0200 2004          	jra	L376
1664  0202               L176:
1665                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1667  0202 72175300      	bres	21248,#3
1668  0206               L376:
1669                     ; 454 }
1672  0206 81            	ret
1740                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1740                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1740                     ; 486 {
1741                     	switch	.text
1742  0207               _TIM2_PrescalerConfig:
1746                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1748                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1750                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
1752  0207 9e            	ld	a,xh
1753  0208 c7530e        	ld	21262,a
1754                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1756  020b 9f            	ld	a,xl
1757  020c c75306        	ld	21254,a
1758                     ; 496 }
1761  020f 81            	ret
1819                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1819                     ; 508 {
1820                     	switch	.text
1821  0210               _TIM2_ForcedOC1Config:
1823  0210 88            	push	a
1824       00000000      OFST:	set	0
1827                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1829                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1829                     ; 514                             | (uint8_t)TIM2_ForcedAction);
1831  0211 c65307        	ld	a,21255
1832  0214 a48f          	and	a,#143
1833  0216 1a01          	or	a,(OFST+1,sp)
1834  0218 c75307        	ld	21255,a
1835                     ; 515 }
1838  021b 84            	pop	a
1839  021c 81            	ret
1875                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1875                     ; 527 {
1876                     	switch	.text
1877  021d               _TIM2_ForcedOC2Config:
1879  021d 88            	push	a
1880       00000000      OFST:	set	0
1883                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1885                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1885                     ; 533                           | (uint8_t)TIM2_ForcedAction);
1887  021e c65308        	ld	a,21256
1888  0221 a48f          	and	a,#143
1889  0223 1a01          	or	a,(OFST+1,sp)
1890  0225 c75308        	ld	21256,a
1891                     ; 534 }
1894  0228 84            	pop	a
1895  0229 81            	ret
1931                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1931                     ; 546 {
1932                     	switch	.text
1933  022a               _TIM2_ForcedOC3Config:
1935  022a 88            	push	a
1936       00000000      OFST:	set	0
1939                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1941                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1941                     ; 552                             | (uint8_t)TIM2_ForcedAction);
1943  022b c65309        	ld	a,21257
1944  022e a48f          	and	a,#143
1945  0230 1a01          	or	a,(OFST+1,sp)
1946  0232 c75309        	ld	21257,a
1947                     ; 553 }
1950  0235 84            	pop	a
1951  0236 81            	ret
1987                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1987                     ; 562 {
1988                     	switch	.text
1989  0237               _TIM2_ARRPreloadConfig:
1993                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1995                     ; 567   if (NewState != DISABLE)
1997  0237 4d            	tnz	a
1998  0238 2706          	jreq	L7201
1999                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2001  023a 721e5300      	bset	21248,#7
2003  023e 2004          	jra	L1301
2004  0240               L7201:
2005                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2007  0240 721f5300      	bres	21248,#7
2008  0244               L1301:
2009                     ; 575 }
2012  0244 81            	ret
2048                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2048                     ; 584 {
2049                     	switch	.text
2050  0245               _TIM2_OC1PreloadConfig:
2054                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2056                     ; 589   if (NewState != DISABLE)
2058  0245 4d            	tnz	a
2059  0246 2706          	jreq	L1501
2060                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2062  0248 72165307      	bset	21255,#3
2064  024c 2004          	jra	L3501
2065  024e               L1501:
2066                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2068  024e 72175307      	bres	21255,#3
2069  0252               L3501:
2070                     ; 597 }
2073  0252 81            	ret
2109                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2109                     ; 606 {
2110                     	switch	.text
2111  0253               _TIM2_OC2PreloadConfig:
2115                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2117                     ; 611   if (NewState != DISABLE)
2119  0253 4d            	tnz	a
2120  0254 2706          	jreq	L3701
2121                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2123  0256 72165308      	bset	21256,#3
2125  025a 2004          	jra	L5701
2126  025c               L3701:
2127                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2129  025c 72175308      	bres	21256,#3
2130  0260               L5701:
2131                     ; 619 }
2134  0260 81            	ret
2170                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2170                     ; 628 {
2171                     	switch	.text
2172  0261               _TIM2_OC3PreloadConfig:
2176                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2178                     ; 633   if (NewState != DISABLE)
2180  0261 4d            	tnz	a
2181  0262 2706          	jreq	L5111
2182                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2184  0264 72165309      	bset	21257,#3
2186  0268 2004          	jra	L7111
2187  026a               L5111:
2188                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2190  026a 72175309      	bres	21257,#3
2191  026e               L7111:
2192                     ; 641 }
2195  026e 81            	ret
2268                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2268                     ; 654 {
2269                     	switch	.text
2270  026f               _TIM2_GenerateEvent:
2274                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2276                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2278  026f c75306        	ld	21254,a
2279                     ; 660 }
2282  0272 81            	ret
2318                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2318                     ; 671 {
2319                     	switch	.text
2320  0273               _TIM2_OC1PolarityConfig:
2324                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2326                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2328  0273 4d            	tnz	a
2329  0274 2706          	jreq	L1711
2330                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2332  0276 7212530a      	bset	21258,#1
2334  027a 2004          	jra	L3711
2335  027c               L1711:
2336                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2338  027c 7213530a      	bres	21258,#1
2339  0280               L3711:
2340                     ; 684 }
2343  0280 81            	ret
2379                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2379                     ; 695 {
2380                     	switch	.text
2381  0281               _TIM2_OC2PolarityConfig:
2385                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2387                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2389  0281 4d            	tnz	a
2390  0282 2706          	jreq	L3121
2391                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2393  0284 721a530a      	bset	21258,#5
2395  0288 2004          	jra	L5121
2396  028a               L3121:
2397                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2399  028a 721b530a      	bres	21258,#5
2400  028e               L5121:
2401                     ; 708 }
2404  028e 81            	ret
2440                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2440                     ; 719 {
2441                     	switch	.text
2442  028f               _TIM2_OC3PolarityConfig:
2446                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2448                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2450  028f 4d            	tnz	a
2451  0290 2706          	jreq	L5321
2452                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2454  0292 7212530b      	bset	21259,#1
2456  0296 2004          	jra	L7321
2457  0298               L5321:
2458                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2460  0298 7213530b      	bres	21259,#1
2461  029c               L7321:
2462                     ; 732 }
2465  029c 81            	ret
2510                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2510                     ; 746 {
2511                     	switch	.text
2512  029d               _TIM2_CCxCmd:
2514  029d 89            	pushw	x
2515       00000000      OFST:	set	0
2518                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2520                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2522                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
2524  029e 9e            	ld	a,xh
2525  029f 4d            	tnz	a
2526  02a0 2610          	jrne	L3621
2527                     ; 754     if (NewState != DISABLE)
2529  02a2 9f            	ld	a,xl
2530  02a3 4d            	tnz	a
2531  02a4 2706          	jreq	L5621
2532                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2534  02a6 7210530a      	bset	21258,#0
2536  02aa 202a          	jra	L1721
2537  02ac               L5621:
2538                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2540  02ac 7211530a      	bres	21258,#0
2541  02b0 2024          	jra	L1721
2542  02b2               L3621:
2543                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
2545  02b2 7b01          	ld	a,(OFST+1,sp)
2546  02b4 a101          	cp	a,#1
2547  02b6 2610          	jrne	L3721
2548                     ; 767     if (NewState != DISABLE)
2550  02b8 0d02          	tnz	(OFST+2,sp)
2551  02ba 2706          	jreq	L5721
2552                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2554  02bc 7218530a      	bset	21258,#4
2556  02c0 2014          	jra	L1721
2557  02c2               L5721:
2558                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2560  02c2 7219530a      	bres	21258,#4
2561  02c6 200e          	jra	L1721
2562  02c8               L3721:
2563                     ; 779     if (NewState != DISABLE)
2565  02c8 0d02          	tnz	(OFST+2,sp)
2566  02ca 2706          	jreq	L3031
2567                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2569  02cc 7210530b      	bset	21259,#0
2571  02d0 2004          	jra	L1721
2572  02d2               L3031:
2573                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2575  02d2 7211530b      	bres	21259,#0
2576  02d6               L1721:
2577                     ; 788 }
2580  02d6 85            	popw	x
2581  02d7 81            	ret
2626                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2626                     ; 811 {
2627                     	switch	.text
2628  02d8               _TIM2_SelectOCxM:
2630  02d8 89            	pushw	x
2631       00000000      OFST:	set	0
2634                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2636                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2638                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
2640  02d9 9e            	ld	a,xh
2641  02da 4d            	tnz	a
2642  02db 2610          	jrne	L1331
2643                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2645  02dd 7211530a      	bres	21258,#0
2646                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2646                     ; 823                             | (uint8_t)TIM2_OCMode);
2648  02e1 c65307        	ld	a,21255
2649  02e4 a48f          	and	a,#143
2650  02e6 1a02          	or	a,(OFST+2,sp)
2651  02e8 c75307        	ld	21255,a
2653  02eb 2024          	jra	L3331
2654  02ed               L1331:
2655                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
2657  02ed 7b01          	ld	a,(OFST+1,sp)
2658  02ef a101          	cp	a,#1
2659  02f1 2610          	jrne	L5331
2660                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2662  02f3 7219530a      	bres	21258,#4
2663                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2663                     ; 832                             | (uint8_t)TIM2_OCMode);
2665  02f7 c65308        	ld	a,21256
2666  02fa a48f          	and	a,#143
2667  02fc 1a02          	or	a,(OFST+2,sp)
2668  02fe c75308        	ld	21256,a
2670  0301 200e          	jra	L3331
2671  0303               L5331:
2672                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2674  0303 7211530b      	bres	21259,#0
2675                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2675                     ; 841                             | (uint8_t)TIM2_OCMode);
2677  0307 c65309        	ld	a,21257
2678  030a a48f          	and	a,#143
2679  030c 1a02          	or	a,(OFST+2,sp)
2680  030e c75309        	ld	21257,a
2681  0311               L3331:
2682                     ; 843 }
2685  0311 85            	popw	x
2686  0312 81            	ret
2720                     ; 851 void TIM2_SetCounter(uint16_t Counter)
2720                     ; 852 {
2721                     	switch	.text
2722  0313               _TIM2_SetCounter:
2726                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
2728  0313 9e            	ld	a,xh
2729  0314 c7530c        	ld	21260,a
2730                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
2732  0317 9f            	ld	a,xl
2733  0318 c7530d        	ld	21261,a
2734                     ; 856 }
2737  031b 81            	ret
2771                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
2771                     ; 865 {
2772                     	switch	.text
2773  031c               _TIM2_SetAutoreload:
2777                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2779  031c 9e            	ld	a,xh
2780  031d c7530f        	ld	21263,a
2781                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
2783  0320 9f            	ld	a,xl
2784  0321 c75310        	ld	21264,a
2785                     ; 869 }
2788  0324 81            	ret
2822                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
2822                     ; 878 {
2823                     	switch	.text
2824  0325               _TIM2_SetCompare1:
2828                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2830  0325 9e            	ld	a,xh
2831  0326 c75311        	ld	21265,a
2832                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
2834  0329 9f            	ld	a,xl
2835  032a c75312        	ld	21266,a
2836                     ; 882 }
2839  032d 81            	ret
2873                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
2873                     ; 891 {
2874                     	switch	.text
2875  032e               _TIM2_SetCompare2:
2879                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2881  032e 9e            	ld	a,xh
2882  032f c75313        	ld	21267,a
2883                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
2885  0332 9f            	ld	a,xl
2886  0333 c75314        	ld	21268,a
2887                     ; 895 }
2890  0336 81            	ret
2924                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
2924                     ; 904 {
2925                     	switch	.text
2926  0337               _TIM2_SetCompare3:
2930                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2932  0337 9e            	ld	a,xh
2933  0338 c75315        	ld	21269,a
2934                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
2936  033b 9f            	ld	a,xl
2937  033c c75316        	ld	21270,a
2938                     ; 908 }
2941  033f 81            	ret
2977                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2977                     ; 921 {
2978                     	switch	.text
2979  0340               _TIM2_SetIC1Prescaler:
2981  0340 88            	push	a
2982       00000000      OFST:	set	0
2985                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2987                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2987                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
2989  0341 c65307        	ld	a,21255
2990  0344 a4f3          	and	a,#243
2991  0346 1a01          	or	a,(OFST+1,sp)
2992  0348 c75307        	ld	21255,a
2993                     ; 928 }
2996  034b 84            	pop	a
2997  034c 81            	ret
3033                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3033                     ; 941 {
3034                     	switch	.text
3035  034d               _TIM2_SetIC2Prescaler:
3037  034d 88            	push	a
3038       00000000      OFST:	set	0
3041                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3043                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3043                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3045  034e c65308        	ld	a,21256
3046  0351 a4f3          	and	a,#243
3047  0353 1a01          	or	a,(OFST+1,sp)
3048  0355 c75308        	ld	21256,a
3049                     ; 948 }
3052  0358 84            	pop	a
3053  0359 81            	ret
3089                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3089                     ; 961 {
3090                     	switch	.text
3091  035a               _TIM2_SetIC3Prescaler:
3093  035a 88            	push	a
3094       00000000      OFST:	set	0
3097                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3099                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3099                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3101  035b c65309        	ld	a,21257
3102  035e a4f3          	and	a,#243
3103  0360 1a01          	or	a,(OFST+1,sp)
3104  0362 c75309        	ld	21257,a
3105                     ; 968 }
3108  0365 84            	pop	a
3109  0366 81            	ret
3161                     ; 975 uint16_t TIM2_GetCapture1(void)
3161                     ; 976 {
3162                     	switch	.text
3163  0367               _TIM2_GetCapture1:
3165  0367 5204          	subw	sp,#4
3166       00000004      OFST:	set	4
3169                     ; 978   uint16_t tmpccr1 = 0;
3171                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3175                     ; 981   tmpccr1h = TIM2->CCR1H;
3177  0369 c65311        	ld	a,21265
3178  036c 6b02          	ld	(OFST-2,sp),a
3180                     ; 982   tmpccr1l = TIM2->CCR1L;
3182  036e c65312        	ld	a,21266
3183  0371 6b01          	ld	(OFST-3,sp),a
3185                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3187  0373 7b01          	ld	a,(OFST-3,sp)
3188  0375 5f            	clrw	x
3189  0376 97            	ld	xl,a
3190  0377 1f03          	ldw	(OFST-1,sp),x
3192                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3194  0379 7b02          	ld	a,(OFST-2,sp)
3195  037b 5f            	clrw	x
3196  037c 97            	ld	xl,a
3197  037d 4f            	clr	a
3198  037e 02            	rlwa	x,a
3199  037f 01            	rrwa	x,a
3200  0380 1a04          	or	a,(OFST+0,sp)
3201  0382 01            	rrwa	x,a
3202  0383 1a03          	or	a,(OFST-1,sp)
3203  0385 01            	rrwa	x,a
3204  0386 1f03          	ldw	(OFST-1,sp),x
3206                     ; 987   return (uint16_t)tmpccr1;
3208  0388 1e03          	ldw	x,(OFST-1,sp)
3211  038a 5b04          	addw	sp,#4
3212  038c 81            	ret
3264                     ; 995 uint16_t TIM2_GetCapture2(void)
3264                     ; 996 {
3265                     	switch	.text
3266  038d               _TIM2_GetCapture2:
3268  038d 5204          	subw	sp,#4
3269       00000004      OFST:	set	4
3272                     ; 998   uint16_t tmpccr2 = 0;
3274                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3278                     ; 1001   tmpccr2h = TIM2->CCR2H;
3280  038f c65313        	ld	a,21267
3281  0392 6b02          	ld	(OFST-2,sp),a
3283                     ; 1002   tmpccr2l = TIM2->CCR2L;
3285  0394 c65314        	ld	a,21268
3286  0397 6b01          	ld	(OFST-3,sp),a
3288                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3290  0399 7b01          	ld	a,(OFST-3,sp)
3291  039b 5f            	clrw	x
3292  039c 97            	ld	xl,a
3293  039d 1f03          	ldw	(OFST-1,sp),x
3295                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3297  039f 7b02          	ld	a,(OFST-2,sp)
3298  03a1 5f            	clrw	x
3299  03a2 97            	ld	xl,a
3300  03a3 4f            	clr	a
3301  03a4 02            	rlwa	x,a
3302  03a5 01            	rrwa	x,a
3303  03a6 1a04          	or	a,(OFST+0,sp)
3304  03a8 01            	rrwa	x,a
3305  03a9 1a03          	or	a,(OFST-1,sp)
3306  03ab 01            	rrwa	x,a
3307  03ac 1f03          	ldw	(OFST-1,sp),x
3309                     ; 1007   return (uint16_t)tmpccr2;
3311  03ae 1e03          	ldw	x,(OFST-1,sp)
3314  03b0 5b04          	addw	sp,#4
3315  03b2 81            	ret
3367                     ; 1015 uint16_t TIM2_GetCapture3(void)
3367                     ; 1016 {
3368                     	switch	.text
3369  03b3               _TIM2_GetCapture3:
3371  03b3 5204          	subw	sp,#4
3372       00000004      OFST:	set	4
3375                     ; 1018   uint16_t tmpccr3 = 0;
3377                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
3381                     ; 1021   tmpccr3h = TIM2->CCR3H;
3383  03b5 c65315        	ld	a,21269
3384  03b8 6b02          	ld	(OFST-2,sp),a
3386                     ; 1022   tmpccr3l = TIM2->CCR3L;
3388  03ba c65316        	ld	a,21270
3389  03bd 6b01          	ld	(OFST-3,sp),a
3391                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
3393  03bf 7b01          	ld	a,(OFST-3,sp)
3394  03c1 5f            	clrw	x
3395  03c2 97            	ld	xl,a
3396  03c3 1f03          	ldw	(OFST-1,sp),x
3398                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3400  03c5 7b02          	ld	a,(OFST-2,sp)
3401  03c7 5f            	clrw	x
3402  03c8 97            	ld	xl,a
3403  03c9 4f            	clr	a
3404  03ca 02            	rlwa	x,a
3405  03cb 01            	rrwa	x,a
3406  03cc 1a04          	or	a,(OFST+0,sp)
3407  03ce 01            	rrwa	x,a
3408  03cf 1a03          	or	a,(OFST-1,sp)
3409  03d1 01            	rrwa	x,a
3410  03d2 1f03          	ldw	(OFST-1,sp),x
3412                     ; 1027   return (uint16_t)tmpccr3;
3414  03d4 1e03          	ldw	x,(OFST-1,sp)
3417  03d6 5b04          	addw	sp,#4
3418  03d8 81            	ret
3452                     ; 1035 uint16_t TIM2_GetCounter(void)
3452                     ; 1036 {
3453                     	switch	.text
3454  03d9               _TIM2_GetCounter:
3456  03d9 89            	pushw	x
3457       00000002      OFST:	set	2
3460                     ; 1037   uint16_t tmpcntr = 0;
3462                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3464  03da c6530c        	ld	a,21260
3465  03dd 5f            	clrw	x
3466  03de 97            	ld	xl,a
3467  03df 4f            	clr	a
3468  03e0 02            	rlwa	x,a
3469  03e1 1f01          	ldw	(OFST-1,sp),x
3471                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3473  03e3 c6530d        	ld	a,21261
3474  03e6 5f            	clrw	x
3475  03e7 97            	ld	xl,a
3476  03e8 01            	rrwa	x,a
3477  03e9 1a02          	or	a,(OFST+0,sp)
3478  03eb 01            	rrwa	x,a
3479  03ec 1a01          	or	a,(OFST-1,sp)
3480  03ee 01            	rrwa	x,a
3483  03ef 5b02          	addw	sp,#2
3484  03f1 81            	ret
3508                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3508                     ; 1050 {
3509                     	switch	.text
3510  03f2               _TIM2_GetPrescaler:
3514                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3516  03f2 c6530e        	ld	a,21262
3519  03f5 81            	ret
3658                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3658                     ; 1069 {
3659                     	switch	.text
3660  03f6               _TIM2_GetFlagStatus:
3662  03f6 89            	pushw	x
3663  03f7 89            	pushw	x
3664       00000002      OFST:	set	2
3667                     ; 1070   FlagStatus bitstatus = RESET;
3669                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3673                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3675                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3677  03f8 9f            	ld	a,xl
3678  03f9 c45304        	and	a,21252
3679  03fc 6b01          	ld	(OFST-1,sp),a
3681                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3683  03fe 7b03          	ld	a,(OFST+1,sp)
3684  0400 6b02          	ld	(OFST+0,sp),a
3686                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3688  0402 c65305        	ld	a,21253
3689  0405 1402          	and	a,(OFST+0,sp)
3690  0407 1a01          	or	a,(OFST-1,sp)
3691  0409 2706          	jreq	L5371
3692                     ; 1081     bitstatus = SET;
3694  040b a601          	ld	a,#1
3695  040d 6b02          	ld	(OFST+0,sp),a
3698  040f 2002          	jra	L7371
3699  0411               L5371:
3700                     ; 1085     bitstatus = RESET;
3702  0411 0f02          	clr	(OFST+0,sp)
3704  0413               L7371:
3705                     ; 1087   return (FlagStatus)bitstatus;
3707  0413 7b02          	ld	a,(OFST+0,sp)
3710  0415 5b04          	addw	sp,#4
3711  0417 81            	ret
3746                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3746                     ; 1104 {
3747                     	switch	.text
3748  0418               _TIM2_ClearFlag:
3752                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3754                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3756  0418 9f            	ld	a,xl
3757  0419 43            	cpl	a
3758  041a c75304        	ld	21252,a
3759                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3761  041d 35ff5305      	mov	21253,#255
3762                     ; 1111 }
3765  0421 81            	ret
3829                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3829                     ; 1124 {
3830                     	switch	.text
3831  0422               _TIM2_GetITStatus:
3833  0422 88            	push	a
3834  0423 89            	pushw	x
3835       00000002      OFST:	set	2
3838                     ; 1125   ITStatus bitstatus = RESET;
3840                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3844                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3846                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3848  0424 c45304        	and	a,21252
3849  0427 6b01          	ld	(OFST-1,sp),a
3851                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3853  0429 c65303        	ld	a,21251
3854  042c 1403          	and	a,(OFST+1,sp)
3855  042e 6b02          	ld	(OFST+0,sp),a
3857                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3859  0430 0d01          	tnz	(OFST-1,sp)
3860  0432 270a          	jreq	L1102
3862  0434 0d02          	tnz	(OFST+0,sp)
3863  0436 2706          	jreq	L1102
3864                     ; 1137     bitstatus = SET;
3866  0438 a601          	ld	a,#1
3867  043a 6b02          	ld	(OFST+0,sp),a
3870  043c 2002          	jra	L3102
3871  043e               L1102:
3872                     ; 1141     bitstatus = RESET;
3874  043e 0f02          	clr	(OFST+0,sp)
3876  0440               L3102:
3877                     ; 1143   return (ITStatus)(bitstatus);
3879  0440 7b02          	ld	a,(OFST+0,sp)
3882  0442 5b03          	addw	sp,#3
3883  0444 81            	ret
3919                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3919                     ; 1157 {
3920                     	switch	.text
3921  0445               _TIM2_ClearITPendingBit:
3925                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
3927                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
3929  0445 43            	cpl	a
3930  0446 c75304        	ld	21252,a
3931                     ; 1163 }
3934  0449 81            	ret
3986                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
3986                     ; 1182                        uint8_t TIM2_ICSelection,
3986                     ; 1183                        uint8_t TIM2_ICFilter)
3986                     ; 1184 {
3987                     	switch	.text
3988  044a               L3_TI1_Config:
3990  044a 89            	pushw	x
3991  044b 88            	push	a
3992       00000001      OFST:	set	1
3995                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3997  044c 7211530a      	bres	21258,#0
3998                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
3998                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4000  0450 7b06          	ld	a,(OFST+5,sp)
4001  0452 97            	ld	xl,a
4002  0453 a610          	ld	a,#16
4003  0455 42            	mul	x,a
4004  0456 9f            	ld	a,xl
4005  0457 1a03          	or	a,(OFST+2,sp)
4006  0459 6b01          	ld	(OFST+0,sp),a
4008  045b c65307        	ld	a,21255
4009  045e a40c          	and	a,#12
4010  0460 1a01          	or	a,(OFST+0,sp)
4011  0462 c75307        	ld	21255,a
4012                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4014  0465 0d02          	tnz	(OFST+1,sp)
4015  0467 2706          	jreq	L1602
4016                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4018  0469 7212530a      	bset	21258,#1
4020  046d 2004          	jra	L3602
4021  046f               L1602:
4022                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4024  046f 7213530a      	bres	21258,#1
4025  0473               L3602:
4026                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4028  0473 7210530a      	bset	21258,#0
4029                     ; 1203 }
4032  0477 5b03          	addw	sp,#3
4033  0479 81            	ret
4085                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4085                     ; 1222                        uint8_t TIM2_ICSelection,
4085                     ; 1223                        uint8_t TIM2_ICFilter)
4085                     ; 1224 {
4086                     	switch	.text
4087  047a               L5_TI2_Config:
4089  047a 89            	pushw	x
4090  047b 88            	push	a
4091       00000001      OFST:	set	1
4094                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4096  047c 7219530a      	bres	21258,#4
4097                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4097                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4099  0480 7b06          	ld	a,(OFST+5,sp)
4100  0482 97            	ld	xl,a
4101  0483 a610          	ld	a,#16
4102  0485 42            	mul	x,a
4103  0486 9f            	ld	a,xl
4104  0487 1a03          	or	a,(OFST+2,sp)
4105  0489 6b01          	ld	(OFST+0,sp),a
4107  048b c65308        	ld	a,21256
4108  048e a40c          	and	a,#12
4109  0490 1a01          	or	a,(OFST+0,sp)
4110  0492 c75308        	ld	21256,a
4111                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4113  0495 0d02          	tnz	(OFST+1,sp)
4114  0497 2706          	jreq	L3112
4115                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4117  0499 721a530a      	bset	21258,#5
4119  049d 2004          	jra	L5112
4120  049f               L3112:
4121                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4123  049f 721b530a      	bres	21258,#5
4124  04a3               L5112:
4125                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4127  04a3 7218530a      	bset	21258,#4
4128                     ; 1245 }
4131  04a7 5b03          	addw	sp,#3
4132  04a9 81            	ret
4184                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4184                     ; 1262                        uint8_t TIM2_ICFilter)
4184                     ; 1263 {
4185                     	switch	.text
4186  04aa               L7_TI3_Config:
4188  04aa 89            	pushw	x
4189  04ab 88            	push	a
4190       00000001      OFST:	set	1
4193                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4195  04ac 7211530b      	bres	21259,#0
4196                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4196                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4198  04b0 7b06          	ld	a,(OFST+5,sp)
4199  04b2 97            	ld	xl,a
4200  04b3 a610          	ld	a,#16
4201  04b5 42            	mul	x,a
4202  04b6 9f            	ld	a,xl
4203  04b7 1a03          	or	a,(OFST+2,sp)
4204  04b9 6b01          	ld	(OFST+0,sp),a
4206  04bb c65309        	ld	a,21257
4207  04be a40c          	and	a,#12
4208  04c0 1a01          	or	a,(OFST+0,sp)
4209  04c2 c75309        	ld	21257,a
4210                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4212  04c5 0d02          	tnz	(OFST+1,sp)
4213  04c7 2706          	jreq	L5412
4214                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4216  04c9 7212530b      	bset	21259,#1
4218  04cd 2004          	jra	L7412
4219  04cf               L5412:
4220                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4222  04cf 7213530b      	bres	21259,#1
4223  04d3               L7412:
4224                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4226  04d3 7210530b      	bset	21259,#0
4227                     ; 1283 }
4230  04d7 5b03          	addw	sp,#3
4231  04d9 81            	ret
4244                     	xdef	_TIM2_ClearITPendingBit
4245                     	xdef	_TIM2_GetITStatus
4246                     	xdef	_TIM2_ClearFlag
4247                     	xdef	_TIM2_GetFlagStatus
4248                     	xdef	_TIM2_GetPrescaler
4249                     	xdef	_TIM2_GetCounter
4250                     	xdef	_TIM2_GetCapture3
4251                     	xdef	_TIM2_GetCapture2
4252                     	xdef	_TIM2_GetCapture1
4253                     	xdef	_TIM2_SetIC3Prescaler
4254                     	xdef	_TIM2_SetIC2Prescaler
4255                     	xdef	_TIM2_SetIC1Prescaler
4256                     	xdef	_TIM2_SetCompare3
4257                     	xdef	_TIM2_SetCompare2
4258                     	xdef	_TIM2_SetCompare1
4259                     	xdef	_TIM2_SetAutoreload
4260                     	xdef	_TIM2_SetCounter
4261                     	xdef	_TIM2_SelectOCxM
4262                     	xdef	_TIM2_CCxCmd
4263                     	xdef	_TIM2_OC3PolarityConfig
4264                     	xdef	_TIM2_OC2PolarityConfig
4265                     	xdef	_TIM2_OC1PolarityConfig
4266                     	xdef	_TIM2_GenerateEvent
4267                     	xdef	_TIM2_OC3PreloadConfig
4268                     	xdef	_TIM2_OC2PreloadConfig
4269                     	xdef	_TIM2_OC1PreloadConfig
4270                     	xdef	_TIM2_ARRPreloadConfig
4271                     	xdef	_TIM2_ForcedOC3Config
4272                     	xdef	_TIM2_ForcedOC2Config
4273                     	xdef	_TIM2_ForcedOC1Config
4274                     	xdef	_TIM2_PrescalerConfig
4275                     	xdef	_TIM2_SelectOnePulseMode
4276                     	xdef	_TIM2_UpdateRequestConfig
4277                     	xdef	_TIM2_UpdateDisableConfig
4278                     	xdef	_TIM2_ITConfig
4279                     	xdef	_TIM2_Cmd
4280                     	xdef	_TIM2_PWMIConfig
4281                     	xdef	_TIM2_ICInit
4282                     	xdef	_TIM2_OC3Init
4283                     	xdef	_TIM2_OC2Init
4284                     	xdef	_TIM2_OC1Init
4285                     	xdef	_TIM2_TimeBaseInit
4286                     	xdef	_TIM2_DeInit
4305                     	end
