   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  42                     ; 58 void TIM1_DeInit(void)
  42                     ; 59 {
  44                     	switch	.text
  45  0000               _TIM1_DeInit:
  49                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  51  0000 725f5250      	clr	21072
  52                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  54  0004 725f5251      	clr	21073
  55                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  57  0008 725f5252      	clr	21074
  58                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  60  000c 725f5253      	clr	21075
  61                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  63  0010 725f5254      	clr	21076
  64                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  66  0014 725f5256      	clr	21078
  67                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  69  0018 725f525c      	clr	21084
  70                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  72  001c 725f525d      	clr	21085
  73                     ; 70   TIM1->CCMR1 = 0x01;
  75  0020 35015258      	mov	21080,#1
  76                     ; 71   TIM1->CCMR2 = 0x01;
  78  0024 35015259      	mov	21081,#1
  79                     ; 72   TIM1->CCMR3 = 0x01;
  81  0028 3501525a      	mov	21082,#1
  82                     ; 73   TIM1->CCMR4 = 0x01;
  84  002c 3501525b      	mov	21083,#1
  85                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  87  0030 725f525c      	clr	21084
  88                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  90  0034 725f525d      	clr	21085
  91                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  93  0038 725f5258      	clr	21080
  94                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  96  003c 725f5259      	clr	21081
  97                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  99  0040 725f525a      	clr	21082
 100                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 102  0044 725f525b      	clr	21083
 103                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 105  0048 725f525e      	clr	21086
 106                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 108  004c 725f525f      	clr	21087
 109                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 111  0050 725f5260      	clr	21088
 112                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 114  0054 725f5261      	clr	21089
 115                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 117  0058 35ff5262      	mov	21090,#255
 118                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 120  005c 35ff5263      	mov	21091,#255
 121                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 123  0060 725f5265      	clr	21093
 124                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 126  0064 725f5266      	clr	21094
 127                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 129  0068 725f5267      	clr	21095
 130                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 132  006c 725f5268      	clr	21096
 133                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 135  0070 725f5269      	clr	21097
 136                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 138  0074 725f526a      	clr	21098
 139                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 141  0078 725f526b      	clr	21099
 142                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 144  007c 725f526c      	clr	21100
 145                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 147  0080 725f526f      	clr	21103
 148                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 150  0084 35015257      	mov	21079,#1
 151                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 153  0088 725f526e      	clr	21102
 154                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 156  008c 725f526d      	clr	21101
 157                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 159  0090 725f5264      	clr	21092
 160                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 162  0094 725f5255      	clr	21077
 163                     ; 101 }
 166  0098 81            	ret
 275                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 275                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 275                     ; 113                        uint16_t TIM1_Period,
 275                     ; 114                        uint8_t TIM1_RepetitionCounter)
 275                     ; 115 {
 276                     	switch	.text
 277  0099               _TIM1_TimeBaseInit:
 279  0099 89            	pushw	x
 280       00000000      OFST:	set	0
 283                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 285                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 287  009a 7b06          	ld	a,(OFST+6,sp)
 288  009c c75262        	ld	21090,a
 289                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 291  009f 7b07          	ld	a,(OFST+7,sp)
 292  00a1 c75263        	ld	21091,a
 293                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 295  00a4 9e            	ld	a,xh
 296  00a5 c75260        	ld	21088,a
 297                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 299  00a8 9f            	ld	a,xl
 300  00a9 c75261        	ld	21089,a
 301                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 301                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 303  00ac c65250        	ld	a,21072
 304  00af a48f          	and	a,#143
 305  00b1 1a05          	or	a,(OFST+5,sp)
 306  00b3 c75250        	ld	21072,a
 307                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 309  00b6 7b08          	ld	a,(OFST+8,sp)
 310  00b8 c75264        	ld	21092,a
 311                     ; 133 }
 314  00bb 85            	popw	x
 315  00bc 81            	ret
 600                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 600                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 600                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 600                     ; 157                   uint16_t TIM1_Pulse,
 600                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 600                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 600                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 600                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 600                     ; 162 {
 601                     	switch	.text
 602  00bd               _TIM1_OC1Init:
 604  00bd 89            	pushw	x
 605  00be 5203          	subw	sp,#3
 606       00000003      OFST:	set	3
 609                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 611                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 613                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 615                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 617                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 619                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 621                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 623                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 623                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 625  00c0 c6525c        	ld	a,21084
 626  00c3 a4f0          	and	a,#240
 627  00c5 c7525c        	ld	21084,a
 628                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 628                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 628                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 628                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 630  00c8 7b0c          	ld	a,(OFST+9,sp)
 631  00ca a408          	and	a,#8
 632  00cc 6b03          	ld	(OFST+0,sp),a
 634  00ce 7b0b          	ld	a,(OFST+8,sp)
 635  00d0 a402          	and	a,#2
 636  00d2 1a03          	or	a,(OFST+0,sp)
 637  00d4 6b02          	ld	(OFST-1,sp),a
 639  00d6 7b08          	ld	a,(OFST+5,sp)
 640  00d8 a404          	and	a,#4
 641  00da 6b01          	ld	(OFST-2,sp),a
 643  00dc 9f            	ld	a,xl
 644  00dd a401          	and	a,#1
 645  00df 1a01          	or	a,(OFST-2,sp)
 646  00e1 1a02          	or	a,(OFST-1,sp)
 647  00e3 ca525c        	or	a,21084
 648  00e6 c7525c        	ld	21084,a
 649                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 649                     ; 185                           (uint8_t)TIM1_OCMode);
 651  00e9 c65258        	ld	a,21080
 652  00ec a48f          	and	a,#143
 653  00ee 1a04          	or	a,(OFST+1,sp)
 654  00f0 c75258        	ld	21080,a
 655                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 657  00f3 c6526f        	ld	a,21103
 658  00f6 a4fc          	and	a,#252
 659  00f8 c7526f        	ld	21103,a
 660                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 660                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 662  00fb 7b0e          	ld	a,(OFST+11,sp)
 663  00fd a402          	and	a,#2
 664  00ff 6b03          	ld	(OFST+0,sp),a
 666  0101 7b0d          	ld	a,(OFST+10,sp)
 667  0103 a401          	and	a,#1
 668  0105 1a03          	or	a,(OFST+0,sp)
 669  0107 ca526f        	or	a,21103
 670  010a c7526f        	ld	21103,a
 671                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 673  010d 7b09          	ld	a,(OFST+6,sp)
 674  010f c75265        	ld	21093,a
 675                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 677  0112 7b0a          	ld	a,(OFST+7,sp)
 678  0114 c75266        	ld	21094,a
 679                     ; 196 }
 682  0117 5b05          	addw	sp,#5
 683  0119 81            	ret
 787                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 787                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 787                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 787                     ; 220                   uint16_t TIM1_Pulse,
 787                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 787                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 787                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 787                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 787                     ; 225 {
 788                     	switch	.text
 789  011a               _TIM1_OC2Init:
 791  011a 89            	pushw	x
 792  011b 5203          	subw	sp,#3
 793       00000003      OFST:	set	3
 796                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 798                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 800                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 802                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 804                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 806                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 808                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 810                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 810                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 812  011d c6525c        	ld	a,21084
 813  0120 a40f          	and	a,#15
 814  0122 c7525c        	ld	21084,a
 815                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 815                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 815                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 815                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 817  0125 7b0c          	ld	a,(OFST+9,sp)
 818  0127 a480          	and	a,#128
 819  0129 6b03          	ld	(OFST+0,sp),a
 821  012b 7b0b          	ld	a,(OFST+8,sp)
 822  012d a420          	and	a,#32
 823  012f 1a03          	or	a,(OFST+0,sp)
 824  0131 6b02          	ld	(OFST-1,sp),a
 826  0133 7b08          	ld	a,(OFST+5,sp)
 827  0135 a440          	and	a,#64
 828  0137 6b01          	ld	(OFST-2,sp),a
 830  0139 9f            	ld	a,xl
 831  013a a410          	and	a,#16
 832  013c 1a01          	or	a,(OFST-2,sp)
 833  013e 1a02          	or	a,(OFST-1,sp)
 834  0140 ca525c        	or	a,21084
 835  0143 c7525c        	ld	21084,a
 836                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 836                     ; 249                           (uint8_t)TIM1_OCMode);
 838  0146 c65259        	ld	a,21081
 839  0149 a48f          	and	a,#143
 840  014b 1a04          	or	a,(OFST+1,sp)
 841  014d c75259        	ld	21081,a
 842                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 844  0150 c6526f        	ld	a,21103
 845  0153 a4f3          	and	a,#243
 846  0155 c7526f        	ld	21103,a
 847                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 847                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 849  0158 7b0e          	ld	a,(OFST+11,sp)
 850  015a a408          	and	a,#8
 851  015c 6b03          	ld	(OFST+0,sp),a
 853  015e 7b0d          	ld	a,(OFST+10,sp)
 854  0160 a404          	and	a,#4
 855  0162 1a03          	or	a,(OFST+0,sp)
 856  0164 ca526f        	or	a,21103
 857  0167 c7526f        	ld	21103,a
 858                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 860  016a 7b09          	ld	a,(OFST+6,sp)
 861  016c c75267        	ld	21095,a
 862                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 864  016f 7b0a          	ld	a,(OFST+7,sp)
 865  0171 c75268        	ld	21096,a
 866                     ; 260 }
 869  0174 5b05          	addw	sp,#5
 870  0176 81            	ret
 974                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 974                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
 974                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 974                     ; 284                   uint16_t TIM1_Pulse,
 974                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 974                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 974                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 974                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 974                     ; 289 {
 975                     	switch	.text
 976  0177               _TIM1_OC3Init:
 978  0177 89            	pushw	x
 979  0178 5203          	subw	sp,#3
 980       00000003      OFST:	set	3
 983                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 985                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 987                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 989                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 991                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 993                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 995                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 997                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
 997                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 999  017a c6525d        	ld	a,21085
1000  017d a4f0          	and	a,#240
1001  017f c7525d        	ld	21085,a
1002                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1002                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1002                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1002                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1004  0182 7b0c          	ld	a,(OFST+9,sp)
1005  0184 a408          	and	a,#8
1006  0186 6b03          	ld	(OFST+0,sp),a
1008  0188 7b0b          	ld	a,(OFST+8,sp)
1009  018a a402          	and	a,#2
1010  018c 1a03          	or	a,(OFST+0,sp)
1011  018e 6b02          	ld	(OFST-1,sp),a
1013  0190 7b08          	ld	a,(OFST+5,sp)
1014  0192 a404          	and	a,#4
1015  0194 6b01          	ld	(OFST-2,sp),a
1017  0196 9f            	ld	a,xl
1018  0197 a401          	and	a,#1
1019  0199 1a01          	or	a,(OFST-2,sp)
1020  019b 1a02          	or	a,(OFST-1,sp)
1021  019d ca525d        	or	a,21085
1022  01a0 c7525d        	ld	21085,a
1023                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1023                     ; 312                           (uint8_t)TIM1_OCMode);
1025  01a3 c6525a        	ld	a,21082
1026  01a6 a48f          	and	a,#143
1027  01a8 1a04          	or	a,(OFST+1,sp)
1028  01aa c7525a        	ld	21082,a
1029                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1031  01ad c6526f        	ld	a,21103
1032  01b0 a4cf          	and	a,#207
1033  01b2 c7526f        	ld	21103,a
1034                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1034                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1036  01b5 7b0e          	ld	a,(OFST+11,sp)
1037  01b7 a420          	and	a,#32
1038  01b9 6b03          	ld	(OFST+0,sp),a
1040  01bb 7b0d          	ld	a,(OFST+10,sp)
1041  01bd a410          	and	a,#16
1042  01bf 1a03          	or	a,(OFST+0,sp)
1043  01c1 ca526f        	or	a,21103
1044  01c4 c7526f        	ld	21103,a
1045                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1047  01c7 7b09          	ld	a,(OFST+6,sp)
1048  01c9 c75269        	ld	21097,a
1049                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1051  01cc 7b0a          	ld	a,(OFST+7,sp)
1052  01ce c7526a        	ld	21098,a
1053                     ; 323 }
1056  01d1 5b05          	addw	sp,#5
1057  01d3 81            	ret
1131                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1131                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1131                     ; 340                   uint16_t TIM1_Pulse,
1131                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1131                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1131                     ; 343 {
1132                     	switch	.text
1133  01d4               _TIM1_OC4Init:
1135  01d4 89            	pushw	x
1136  01d5 88            	push	a
1137       00000001      OFST:	set	1
1140                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1142                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1144                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1146                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1148                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1150  01d6 c6525d        	ld	a,21085
1151  01d9 a4cf          	and	a,#207
1152  01db c7525d        	ld	21085,a
1153                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1153                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1155  01de 7b08          	ld	a,(OFST+7,sp)
1156  01e0 a420          	and	a,#32
1157  01e2 6b01          	ld	(OFST+0,sp),a
1159  01e4 9f            	ld	a,xl
1160  01e5 a410          	and	a,#16
1161  01e7 1a01          	or	a,(OFST+0,sp)
1162  01e9 ca525d        	or	a,21085
1163  01ec c7525d        	ld	21085,a
1164                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1164                     ; 358                           TIM1_OCMode);
1166  01ef c6525b        	ld	a,21083
1167  01f2 a48f          	and	a,#143
1168  01f4 1a02          	or	a,(OFST+1,sp)
1169  01f6 c7525b        	ld	21083,a
1170                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1172  01f9 0d09          	tnz	(OFST+8,sp)
1173  01fb 270a          	jreq	L534
1174                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1176  01fd c6526f        	ld	a,21103
1177  0200 aadf          	or	a,#223
1178  0202 c7526f        	ld	21103,a
1180  0205 2004          	jra	L734
1181  0207               L534:
1182                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1184  0207 721d526f      	bres	21103,#6
1185  020b               L734:
1186                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1188  020b 7b06          	ld	a,(OFST+5,sp)
1189  020d c7526b        	ld	21099,a
1190                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1192  0210 7b07          	ld	a,(OFST+6,sp)
1193  0212 c7526c        	ld	21100,a
1194                     ; 373 }
1197  0215 5b03          	addw	sp,#3
1198  0217 81            	ret
1403                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1403                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1403                     ; 390                      uint8_t TIM1_DeadTime,
1403                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1403                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1403                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1403                     ; 394 {
1404                     	switch	.text
1405  0218               _TIM1_BDTRConfig:
1407  0218 89            	pushw	x
1408  0219 88            	push	a
1409       00000001      OFST:	set	1
1412                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1414                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1416                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1418                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1420                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1422                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1424  021a 7b06          	ld	a,(OFST+5,sp)
1425  021c c7526e        	ld	21102,a
1426                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1426                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1426                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1428  021f 7b07          	ld	a,(OFST+6,sp)
1429  0221 1a08          	or	a,(OFST+7,sp)
1430  0223 1a09          	or	a,(OFST+8,sp)
1431  0225 6b01          	ld	(OFST+0,sp),a
1433  0227 9f            	ld	a,xl
1434  0228 1a02          	or	a,(OFST+1,sp)
1435  022a 1a01          	or	a,(OFST+0,sp)
1436  022c c7526d        	ld	21101,a
1437                     ; 409 }
1440  022f 5b03          	addw	sp,#3
1441  0231 81            	ret
1643                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1643                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1643                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1643                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1643                     ; 427                  uint8_t TIM1_ICFilter)
1643                     ; 428 {
1644                     	switch	.text
1645  0232               _TIM1_ICInit:
1647  0232 89            	pushw	x
1648       00000000      OFST:	set	0
1651                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1653                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1655                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1657                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1659                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1661                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
1663  0233 9e            	ld	a,xh
1664  0234 4d            	tnz	a
1665  0235 2614          	jrne	L766
1666                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
1666                     ; 440                (uint8_t)TIM1_ICSelection,
1666                     ; 441                (uint8_t)TIM1_ICFilter);
1668  0237 7b07          	ld	a,(OFST+7,sp)
1669  0239 88            	push	a
1670  023a 7b06          	ld	a,(OFST+6,sp)
1671  023c 97            	ld	xl,a
1672  023d 7b03          	ld	a,(OFST+3,sp)
1673  023f 95            	ld	xh,a
1674  0240 cd080e        	call	L3_TI1_Config
1676  0243 84            	pop	a
1677                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1679  0244 7b06          	ld	a,(OFST+6,sp)
1680  0246 cd06b6        	call	_TIM1_SetIC1Prescaler
1683  0249 2046          	jra	L176
1684  024b               L766:
1685                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
1687  024b 7b01          	ld	a,(OFST+1,sp)
1688  024d a101          	cp	a,#1
1689  024f 2614          	jrne	L376
1690                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
1690                     ; 449                (uint8_t)TIM1_ICSelection,
1690                     ; 450                (uint8_t)TIM1_ICFilter);
1692  0251 7b07          	ld	a,(OFST+7,sp)
1693  0253 88            	push	a
1694  0254 7b06          	ld	a,(OFST+6,sp)
1695  0256 97            	ld	xl,a
1696  0257 7b03          	ld	a,(OFST+3,sp)
1697  0259 95            	ld	xh,a
1698  025a cd083e        	call	L5_TI2_Config
1700  025d 84            	pop	a
1701                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1703  025e 7b06          	ld	a,(OFST+6,sp)
1704  0260 cd06c3        	call	_TIM1_SetIC2Prescaler
1707  0263 202c          	jra	L176
1708  0265               L376:
1709                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
1711  0265 7b01          	ld	a,(OFST+1,sp)
1712  0267 a102          	cp	a,#2
1713  0269 2614          	jrne	L776
1714                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
1714                     ; 458                (uint8_t)TIM1_ICSelection,
1714                     ; 459                (uint8_t)TIM1_ICFilter);
1716  026b 7b07          	ld	a,(OFST+7,sp)
1717  026d 88            	push	a
1718  026e 7b06          	ld	a,(OFST+6,sp)
1719  0270 97            	ld	xl,a
1720  0271 7b03          	ld	a,(OFST+3,sp)
1721  0273 95            	ld	xh,a
1722  0274 cd086e        	call	L7_TI3_Config
1724  0277 84            	pop	a
1725                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1727  0278 7b06          	ld	a,(OFST+6,sp)
1728  027a cd06d0        	call	_TIM1_SetIC3Prescaler
1731  027d 2012          	jra	L176
1732  027f               L776:
1733                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
1733                     ; 467                (uint8_t)TIM1_ICSelection,
1733                     ; 468                (uint8_t)TIM1_ICFilter);
1735  027f 7b07          	ld	a,(OFST+7,sp)
1736  0281 88            	push	a
1737  0282 7b06          	ld	a,(OFST+6,sp)
1738  0284 97            	ld	xl,a
1739  0285 7b03          	ld	a,(OFST+3,sp)
1740  0287 95            	ld	xh,a
1741  0288 cd089e        	call	L11_TI4_Config
1743  028b 84            	pop	a
1744                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1746  028c 7b06          	ld	a,(OFST+6,sp)
1747  028e cd06dd        	call	_TIM1_SetIC4Prescaler
1749  0291               L176:
1750                     ; 472 }
1753  0291 85            	popw	x
1754  0292 81            	ret
1850                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1850                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1850                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1850                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1850                     ; 492                      uint8_t TIM1_ICFilter)
1850                     ; 493 {
1851                     	switch	.text
1852  0293               _TIM1_PWMIConfig:
1854  0293 89            	pushw	x
1855  0294 89            	pushw	x
1856       00000002      OFST:	set	2
1859                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1861                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1863                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1865                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1867                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1869                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1871                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1873  0295 9f            	ld	a,xl
1874  0296 a101          	cp	a,#1
1875  0298 2706          	jreq	L157
1876                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
1878  029a a601          	ld	a,#1
1879  029c 6b01          	ld	(OFST-1,sp),a
1882  029e 2002          	jra	L357
1883  02a0               L157:
1884                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
1886  02a0 0f01          	clr	(OFST-1,sp)
1888  02a2               L357:
1889                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1891  02a2 7b07          	ld	a,(OFST+5,sp)
1892  02a4 a101          	cp	a,#1
1893  02a6 2606          	jrne	L557
1894                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
1896  02a8 a602          	ld	a,#2
1897  02aa 6b02          	ld	(OFST+0,sp),a
1900  02ac 2004          	jra	L757
1901  02ae               L557:
1902                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
1904  02ae a601          	ld	a,#1
1905  02b0 6b02          	ld	(OFST+0,sp),a
1907  02b2               L757:
1908                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
1910  02b2 0d03          	tnz	(OFST+1,sp)
1911  02b4 2626          	jrne	L167
1912                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1912                     ; 527                (uint8_t)TIM1_ICFilter);
1914  02b6 7b09          	ld	a,(OFST+7,sp)
1915  02b8 88            	push	a
1916  02b9 7b08          	ld	a,(OFST+6,sp)
1917  02bb 97            	ld	xl,a
1918  02bc 7b05          	ld	a,(OFST+3,sp)
1919  02be 95            	ld	xh,a
1920  02bf cd080e        	call	L3_TI1_Config
1922  02c2 84            	pop	a
1923                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1925  02c3 7b08          	ld	a,(OFST+6,sp)
1926  02c5 cd06b6        	call	_TIM1_SetIC1Prescaler
1928                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1930  02c8 7b09          	ld	a,(OFST+7,sp)
1931  02ca 88            	push	a
1932  02cb 7b03          	ld	a,(OFST+1,sp)
1933  02cd 97            	ld	xl,a
1934  02ce 7b02          	ld	a,(OFST+0,sp)
1935  02d0 95            	ld	xh,a
1936  02d1 cd083e        	call	L5_TI2_Config
1938  02d4 84            	pop	a
1939                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1941  02d5 7b08          	ld	a,(OFST+6,sp)
1942  02d7 cd06c3        	call	_TIM1_SetIC2Prescaler
1945  02da 2024          	jra	L367
1946  02dc               L167:
1947                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1947                     ; 542                (uint8_t)TIM1_ICFilter);
1949  02dc 7b09          	ld	a,(OFST+7,sp)
1950  02de 88            	push	a
1951  02df 7b08          	ld	a,(OFST+6,sp)
1952  02e1 97            	ld	xl,a
1953  02e2 7b05          	ld	a,(OFST+3,sp)
1954  02e4 95            	ld	xh,a
1955  02e5 cd083e        	call	L5_TI2_Config
1957  02e8 84            	pop	a
1958                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1960  02e9 7b08          	ld	a,(OFST+6,sp)
1961  02eb cd06c3        	call	_TIM1_SetIC2Prescaler
1963                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1965  02ee 7b09          	ld	a,(OFST+7,sp)
1966  02f0 88            	push	a
1967  02f1 7b03          	ld	a,(OFST+1,sp)
1968  02f3 97            	ld	xl,a
1969  02f4 7b02          	ld	a,(OFST+0,sp)
1970  02f6 95            	ld	xh,a
1971  02f7 cd080e        	call	L3_TI1_Config
1973  02fa 84            	pop	a
1974                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1976  02fb 7b08          	ld	a,(OFST+6,sp)
1977  02fd cd06b6        	call	_TIM1_SetIC1Prescaler
1979  0300               L367:
1980                     ; 553 }
1983  0300 5b04          	addw	sp,#4
1984  0302 81            	ret
2039                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2039                     ; 562 {
2040                     	switch	.text
2041  0303               _TIM1_Cmd:
2045                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2047                     ; 567   if (NewState != DISABLE)
2049  0303 4d            	tnz	a
2050  0304 2706          	jreq	L3101
2051                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2053  0306 72105250      	bset	21072,#0
2055  030a 2004          	jra	L5101
2056  030c               L3101:
2057                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2059  030c 72115250      	bres	21072,#0
2060  0310               L5101:
2061                     ; 575 }
2064  0310 81            	ret
2100                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2100                     ; 584 {
2101                     	switch	.text
2102  0311               _TIM1_CtrlPWMOutputs:
2106                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2108                     ; 590   if (NewState != DISABLE)
2110  0311 4d            	tnz	a
2111  0312 2706          	jreq	L5301
2112                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2114  0314 721e526d      	bset	21101,#7
2116  0318 2004          	jra	L7301
2117  031a               L5301:
2118                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2120  031a 721f526d      	bres	21101,#7
2121  031e               L7301:
2122                     ; 598 }
2125  031e 81            	ret
2232                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2232                     ; 618 {
2233                     	switch	.text
2234  031f               _TIM1_ITConfig:
2236  031f 89            	pushw	x
2237       00000000      OFST:	set	0
2240                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2242                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2244                     ; 623   if (NewState != DISABLE)
2246  0320 9f            	ld	a,xl
2247  0321 4d            	tnz	a
2248  0322 2709          	jreq	L7011
2249                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2251  0324 9e            	ld	a,xh
2252  0325 ca5254        	or	a,21076
2253  0328 c75254        	ld	21076,a
2255  032b 2009          	jra	L1111
2256  032d               L7011:
2257                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2259  032d 7b01          	ld	a,(OFST+1,sp)
2260  032f 43            	cpl	a
2261  0330 c45254        	and	a,21076
2262  0333 c75254        	ld	21076,a
2263  0336               L1111:
2264                     ; 633 }
2267  0336 85            	popw	x
2268  0337 81            	ret
2292                     ; 640 void TIM1_InternalClockConfig(void)
2292                     ; 641 {
2293                     	switch	.text
2294  0338               _TIM1_InternalClockConfig:
2298                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2300  0338 c65252        	ld	a,21074
2301  033b a4f8          	and	a,#248
2302  033d c75252        	ld	21074,a
2303                     ; 644 }
2306  0340 81            	ret
2423                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2423                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2423                     ; 664                               uint8_t ExtTRGFilter)
2423                     ; 665 {
2424                     	switch	.text
2425  0341               _TIM1_ETRClockMode1Config:
2427  0341 89            	pushw	x
2428       00000000      OFST:	set	0
2431                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2433                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2435                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2437  0342 7b05          	ld	a,(OFST+5,sp)
2438  0344 88            	push	a
2439  0345 9f            	ld	a,xl
2440  0346 97            	ld	xl,a
2441  0347 7b02          	ld	a,(OFST+2,sp)
2442  0349 95            	ld	xh,a
2443  034a ad1f          	call	_TIM1_ETRConfig
2445  034c 84            	pop	a
2446                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2446                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2448  034d c65252        	ld	a,21074
2449  0350 a488          	and	a,#136
2450  0352 aa77          	or	a,#119
2451  0354 c75252        	ld	21074,a
2452                     ; 676 }
2455  0357 85            	popw	x
2456  0358 81            	ret
2514                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2514                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2514                     ; 696                               uint8_t ExtTRGFilter)
2514                     ; 697 {
2515                     	switch	.text
2516  0359               _TIM1_ETRClockMode2Config:
2518  0359 89            	pushw	x
2519       00000000      OFST:	set	0
2522                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2524                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2526                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2528  035a 7b05          	ld	a,(OFST+5,sp)
2529  035c 88            	push	a
2530  035d 9f            	ld	a,xl
2531  035e 97            	ld	xl,a
2532  035f 7b02          	ld	a,(OFST+2,sp)
2533  0361 95            	ld	xh,a
2534  0362 ad07          	call	_TIM1_ETRConfig
2536  0364 84            	pop	a
2537                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
2539  0365 721c5253      	bset	21075,#6
2540                     ; 707 }
2543  0369 85            	popw	x
2544  036a 81            	ret
2600                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2600                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2600                     ; 727                     uint8_t ExtTRGFilter)
2600                     ; 728 {
2601                     	switch	.text
2602  036b               _TIM1_ETRConfig:
2604  036b 89            	pushw	x
2605       00000000      OFST:	set	0
2608                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2610                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2610                     ; 733                          (uint8_t)ExtTRGFilter );
2612  036c 9f            	ld	a,xl
2613  036d 1a01          	or	a,(OFST+1,sp)
2614  036f 1a05          	or	a,(OFST+5,sp)
2615  0371 ca5253        	or	a,21075
2616  0374 c75253        	ld	21075,a
2617                     ; 734 }
2620  0377 85            	popw	x
2621  0378 81            	ret
2710                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2710                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2710                     ; 753                                  uint8_t ICFilter)
2710                     ; 754 {
2711                     	switch	.text
2712  0379               _TIM1_TIxExternalClockConfig:
2714  0379 89            	pushw	x
2715       00000000      OFST:	set	0
2718                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2720                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2722                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2724                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2726  037a 9e            	ld	a,xh
2727  037b a160          	cp	a,#96
2728  037d 260e          	jrne	L1131
2729                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2731  037f 7b05          	ld	a,(OFST+5,sp)
2732  0381 88            	push	a
2733  0382 9f            	ld	a,xl
2734  0383 ae0001        	ldw	x,#1
2735  0386 95            	ld	xh,a
2736  0387 cd083e        	call	L5_TI2_Config
2738  038a 84            	pop	a
2740  038b 200d          	jra	L3131
2741  038d               L1131:
2742                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2744  038d 7b05          	ld	a,(OFST+5,sp)
2745  038f 88            	push	a
2746  0390 7b03          	ld	a,(OFST+3,sp)
2747  0392 ae0001        	ldw	x,#1
2748  0395 95            	ld	xh,a
2749  0396 cd080e        	call	L3_TI1_Config
2751  0399 84            	pop	a
2752  039a               L3131:
2753                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2755  039a 7b01          	ld	a,(OFST+1,sp)
2756  039c ad0a          	call	_TIM1_SelectInputTrigger
2758                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2760  039e c65252        	ld	a,21074
2761  03a1 aa07          	or	a,#7
2762  03a3 c75252        	ld	21074,a
2763                     ; 775 }
2766  03a6 85            	popw	x
2767  03a7 81            	ret
2852                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2852                     ; 788 {
2853                     	switch	.text
2854  03a8               _TIM1_SelectInputTrigger:
2856  03a8 88            	push	a
2857       00000000      OFST:	set	0
2860                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2862                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2864  03a9 c65252        	ld	a,21074
2865  03ac a48f          	and	a,#143
2866  03ae 1a01          	or	a,(OFST+1,sp)
2867  03b0 c75252        	ld	21074,a
2868                     ; 794 }
2871  03b3 84            	pop	a
2872  03b4 81            	ret
2908                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2908                     ; 804 {
2909                     	switch	.text
2910  03b5               _TIM1_UpdateDisableConfig:
2914                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2916                     ; 809   if (NewState != DISABLE)
2918  03b5 4d            	tnz	a
2919  03b6 2706          	jreq	L1731
2920                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
2922  03b8 72125250      	bset	21072,#1
2924  03bc 2004          	jra	L3731
2925  03be               L1731:
2926                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2928  03be 72135250      	bres	21072,#1
2929  03c2               L3731:
2930                     ; 817 }
2933  03c2 81            	ret
2991                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2991                     ; 828 {
2992                     	switch	.text
2993  03c3               _TIM1_UpdateRequestConfig:
2997                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2999                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3001  03c3 4d            	tnz	a
3002  03c4 2706          	jreq	L3241
3003                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3005  03c6 72145250      	bset	21072,#2
3007  03ca 2004          	jra	L5241
3008  03cc               L3241:
3009                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3011  03cc 72155250      	bres	21072,#2
3012  03d0               L5241:
3013                     ; 841 }
3016  03d0 81            	ret
3052                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3052                     ; 850 {
3053                     	switch	.text
3054  03d1               _TIM1_SelectHallSensor:
3058                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3060                     ; 855   if (NewState != DISABLE)
3062  03d1 4d            	tnz	a
3063  03d2 2706          	jreq	L5441
3064                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3066  03d4 721e5251      	bset	21073,#7
3068  03d8 2004          	jra	L7441
3069  03da               L5441:
3070                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3072  03da 721f5251      	bres	21073,#7
3073  03de               L7441:
3074                     ; 863 }
3077  03de 81            	ret
3134                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3134                     ; 874 {
3135                     	switch	.text
3136  03df               _TIM1_SelectOnePulseMode:
3140                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3142                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3144  03df 4d            	tnz	a
3145  03e0 2706          	jreq	L7741
3146                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3148  03e2 72165250      	bset	21072,#3
3150  03e6 2004          	jra	L1051
3151  03e8               L7741:
3152                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3154  03e8 72175250      	bres	21072,#3
3155  03ec               L1051:
3156                     ; 888 }
3159  03ec 81            	ret
3257                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3257                     ; 904 {
3258                     	switch	.text
3259  03ed               _TIM1_SelectOutputTrigger:
3261  03ed 88            	push	a
3262       00000000      OFST:	set	0
3265                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3267                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3267                     ; 910                         (uint8_t) TIM1_TRGOSource);
3269  03ee c65251        	ld	a,21073
3270  03f1 a48f          	and	a,#143
3271  03f3 1a01          	or	a,(OFST+1,sp)
3272  03f5 c75251        	ld	21073,a
3273                     ; 911 }
3276  03f8 84            	pop	a
3277  03f9 81            	ret
3351                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3351                     ; 924 {
3352                     	switch	.text
3353  03fa               _TIM1_SelectSlaveMode:
3355  03fa 88            	push	a
3356       00000000      OFST:	set	0
3359                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3361                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3361                     ; 930                          (uint8_t)TIM1_SlaveMode);
3363  03fb c65252        	ld	a,21074
3364  03fe a4f8          	and	a,#248
3365  0400 1a01          	or	a,(OFST+1,sp)
3366  0402 c75252        	ld	21074,a
3367                     ; 931 }
3370  0405 84            	pop	a
3371  0406 81            	ret
3407                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3407                     ; 940 {
3408                     	switch	.text
3409  0407               _TIM1_SelectMasterSlaveMode:
3413                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3415                     ; 945   if (NewState != DISABLE)
3417  0407 4d            	tnz	a
3418  0408 2706          	jreq	L3161
3419                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
3421  040a 721e5252      	bset	21074,#7
3423  040e 2004          	jra	L5161
3424  0410               L3161:
3425                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3427  0410 721f5252      	bres	21074,#7
3428  0414               L5161:
3429                     ; 953 }
3432  0414 81            	ret
3518                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3518                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3518                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3518                     ; 978 {
3519                     	switch	.text
3520  0415               _TIM1_EncoderInterfaceConfig:
3522  0415 89            	pushw	x
3523       00000000      OFST:	set	0
3526                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3528                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3530                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3532                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3534  0416 9f            	ld	a,xl
3535  0417 4d            	tnz	a
3536  0418 2706          	jreq	L7561
3537                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
3539  041a 7212525c      	bset	21084,#1
3541  041e 2004          	jra	L1661
3542  0420               L7561:
3543                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3545  0420 7213525c      	bres	21084,#1
3546  0424               L1661:
3547                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3549  0424 0d05          	tnz	(OFST+5,sp)
3550  0426 2706          	jreq	L3661
3551                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
3553  0428 721a525c      	bset	21084,#5
3555  042c 2004          	jra	L5661
3556  042e               L3661:
3557                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3559  042e 721b525c      	bres	21084,#5
3560  0432               L5661:
3561                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3561                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
3563  0432 c65252        	ld	a,21074
3564  0435 a4f0          	and	a,#240
3565  0437 1a01          	or	a,(OFST+1,sp)
3566  0439 c75252        	ld	21074,a
3567                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3567                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
3569  043c c65258        	ld	a,21080
3570  043f a4fc          	and	a,#252
3571  0441 aa01          	or	a,#1
3572  0443 c75258        	ld	21080,a
3573                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3573                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
3575  0446 c65259        	ld	a,21081
3576  0449 a4fc          	and	a,#252
3577  044b aa01          	or	a,#1
3578  044d c75259        	ld	21081,a
3579                     ; 1011 }
3582  0450 85            	popw	x
3583  0451 81            	ret
3650                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
3650                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3650                     ; 1025 {
3651                     	switch	.text
3652  0452               _TIM1_PrescalerConfig:
3654  0452 89            	pushw	x
3655       00000000      OFST:	set	0
3658                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3660                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3662  0453 9e            	ld	a,xh
3663  0454 c75260        	ld	21088,a
3664                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
3666  0457 9f            	ld	a,xl
3667  0458 c75261        	ld	21089,a
3668                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3670  045b 7b05          	ld	a,(OFST+5,sp)
3671  045d c75257        	ld	21079,a
3672                     ; 1035 }
3675  0460 85            	popw	x
3676  0461 81            	ret
3712                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3712                     ; 1049 {
3713                     	switch	.text
3714  0462               _TIM1_CounterModeConfig:
3716  0462 88            	push	a
3717       00000000      OFST:	set	0
3720                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3722                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3722                     ; 1056                         | (uint8_t)TIM1_CounterMode);
3724  0463 c65250        	ld	a,21072
3725  0466 a48f          	and	a,#143
3726  0468 1a01          	or	a,(OFST+1,sp)
3727  046a c75250        	ld	21072,a
3728                     ; 1057 }
3731  046d 84            	pop	a
3732  046e 81            	ret
3790                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3790                     ; 1068 {
3791                     	switch	.text
3792  046f               _TIM1_ForcedOC1Config:
3794  046f 88            	push	a
3795       00000000      OFST:	set	0
3798                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3800                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3800                     ; 1074                            (uint8_t)TIM1_ForcedAction);
3802  0470 c65258        	ld	a,21080
3803  0473 a48f          	and	a,#143
3804  0475 1a01          	or	a,(OFST+1,sp)
3805  0477 c75258        	ld	21080,a
3806                     ; 1075 }
3809  047a 84            	pop	a
3810  047b 81            	ret
3846                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3846                     ; 1086 {
3847                     	switch	.text
3848  047c               _TIM1_ForcedOC2Config:
3850  047c 88            	push	a
3851       00000000      OFST:	set	0
3854                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3856                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3856                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
3858  047d c65259        	ld	a,21081
3859  0480 a48f          	and	a,#143
3860  0482 1a01          	or	a,(OFST+1,sp)
3861  0484 c75259        	ld	21081,a
3862                     ; 1093 }
3865  0487 84            	pop	a
3866  0488 81            	ret
3902                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3902                     ; 1105 {
3903                     	switch	.text
3904  0489               _TIM1_ForcedOC3Config:
3906  0489 88            	push	a
3907       00000000      OFST:	set	0
3910                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3912                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3912                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
3914  048a c6525a        	ld	a,21082
3915  048d a48f          	and	a,#143
3916  048f 1a01          	or	a,(OFST+1,sp)
3917  0491 c7525a        	ld	21082,a
3918                     ; 1112 }
3921  0494 84            	pop	a
3922  0495 81            	ret
3958                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3958                     ; 1124 {
3959                     	switch	.text
3960  0496               _TIM1_ForcedOC4Config:
3962  0496 88            	push	a
3963       00000000      OFST:	set	0
3966                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3968                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3968                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
3970  0497 c6525b        	ld	a,21083
3971  049a a48f          	and	a,#143
3972  049c 1a01          	or	a,(OFST+1,sp)
3973  049e c7525b        	ld	21083,a
3974                     ; 1131 }
3977  04a1 84            	pop	a
3978  04a2 81            	ret
4014                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4014                     ; 1140 {
4015                     	switch	.text
4016  04a3               _TIM1_ARRPreloadConfig:
4020                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4022                     ; 1145   if (NewState != DISABLE)
4024  04a3 4d            	tnz	a
4025  04a4 2706          	jreq	L5502
4026                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4028  04a6 721e5250      	bset	21072,#7
4030  04aa 2004          	jra	L7502
4031  04ac               L5502:
4032                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4034  04ac 721f5250      	bres	21072,#7
4035  04b0               L7502:
4036                     ; 1153 }
4039  04b0 81            	ret
4074                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4074                     ; 1162 {
4075                     	switch	.text
4076  04b1               _TIM1_SelectCOM:
4080                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4082                     ; 1167   if (NewState != DISABLE)
4084  04b1 4d            	tnz	a
4085  04b2 2706          	jreq	L7702
4086                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4088  04b4 72145251      	bset	21073,#2
4090  04b8 2004          	jra	L1012
4091  04ba               L7702:
4092                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4094  04ba 72155251      	bres	21073,#2
4095  04be               L1012:
4096                     ; 1175 }
4099  04be 81            	ret
4135                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
4135                     ; 1184 {
4136                     	switch	.text
4137  04bf               _TIM1_CCPreloadControl:
4141                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4143                     ; 1189   if (NewState != DISABLE)
4145  04bf 4d            	tnz	a
4146  04c0 2706          	jreq	L1212
4147                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
4149  04c2 72105251      	bset	21073,#0
4151  04c6 2004          	jra	L3212
4152  04c8               L1212:
4153                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4155  04c8 72115251      	bres	21073,#0
4156  04cc               L3212:
4157                     ; 1197 }
4160  04cc 81            	ret
4196                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4196                     ; 1206 {
4197                     	switch	.text
4198  04cd               _TIM1_OC1PreloadConfig:
4202                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4204                     ; 1211   if (NewState != DISABLE)
4206  04cd 4d            	tnz	a
4207  04ce 2706          	jreq	L3412
4208                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4210  04d0 72165258      	bset	21080,#3
4212  04d4 2004          	jra	L5412
4213  04d6               L3412:
4214                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4216  04d6 72175258      	bres	21080,#3
4217  04da               L5412:
4218                     ; 1219 }
4221  04da 81            	ret
4257                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4257                     ; 1228 {
4258                     	switch	.text
4259  04db               _TIM1_OC2PreloadConfig:
4263                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4265                     ; 1233   if (NewState != DISABLE)
4267  04db 4d            	tnz	a
4268  04dc 2706          	jreq	L5612
4269                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4271  04de 72165259      	bset	21081,#3
4273  04e2 2004          	jra	L7612
4274  04e4               L5612:
4275                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4277  04e4 72175259      	bres	21081,#3
4278  04e8               L7612:
4279                     ; 1241 }
4282  04e8 81            	ret
4318                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4318                     ; 1250 {
4319                     	switch	.text
4320  04e9               _TIM1_OC3PreloadConfig:
4324                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4326                     ; 1255   if (NewState != DISABLE)
4328  04e9 4d            	tnz	a
4329  04ea 2706          	jreq	L7022
4330                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4332  04ec 7216525a      	bset	21082,#3
4334  04f0 2004          	jra	L1122
4335  04f2               L7022:
4336                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4338  04f2 7217525a      	bres	21082,#3
4339  04f6               L1122:
4340                     ; 1263 }
4343  04f6 81            	ret
4379                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4379                     ; 1272 {
4380                     	switch	.text
4381  04f7               _TIM1_OC4PreloadConfig:
4385                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4387                     ; 1277   if (NewState != DISABLE)
4389  04f7 4d            	tnz	a
4390  04f8 2706          	jreq	L1322
4391                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4393  04fa 7216525b      	bset	21083,#3
4395  04fe 2004          	jra	L3322
4396  0500               L1322:
4397                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4399  0500 7217525b      	bres	21083,#3
4400  0504               L3322:
4401                     ; 1285 }
4404  0504 81            	ret
4439                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
4439                     ; 1294 {
4440                     	switch	.text
4441  0505               _TIM1_OC1FastConfig:
4445                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4447                     ; 1299   if (NewState != DISABLE)
4449  0505 4d            	tnz	a
4450  0506 2706          	jreq	L3522
4451                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4453  0508 72145258      	bset	21080,#2
4455  050c 2004          	jra	L5522
4456  050e               L3522:
4457                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4459  050e 72155258      	bres	21080,#2
4460  0512               L5522:
4461                     ; 1307 }
4464  0512 81            	ret
4499                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
4499                     ; 1316 {
4500                     	switch	.text
4501  0513               _TIM1_OC2FastConfig:
4505                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4507                     ; 1321   if (NewState != DISABLE)
4509  0513 4d            	tnz	a
4510  0514 2706          	jreq	L5722
4511                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4513  0516 72145259      	bset	21081,#2
4515  051a 2004          	jra	L7722
4516  051c               L5722:
4517                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4519  051c 72155259      	bres	21081,#2
4520  0520               L7722:
4521                     ; 1329 }
4524  0520 81            	ret
4559                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
4559                     ; 1338 {
4560                     	switch	.text
4561  0521               _TIM1_OC3FastConfig:
4565                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4567                     ; 1343   if (NewState != DISABLE)
4569  0521 4d            	tnz	a
4570  0522 2706          	jreq	L7132
4571                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4573  0524 7214525a      	bset	21082,#2
4575  0528 2004          	jra	L1232
4576  052a               L7132:
4577                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4579  052a 7215525a      	bres	21082,#2
4580  052e               L1232:
4581                     ; 1351 }
4584  052e 81            	ret
4619                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
4619                     ; 1360 {
4620                     	switch	.text
4621  052f               _TIM1_OC4FastConfig:
4625                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4627                     ; 1365   if (NewState != DISABLE)
4629  052f 4d            	tnz	a
4630  0530 2706          	jreq	L1432
4631                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4633  0532 7214525b      	bset	21083,#2
4635  0536 2004          	jra	L3432
4636  0538               L1432:
4637                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4639  0538 7215525b      	bres	21083,#2
4640  053c               L3432:
4641                     ; 1373 }
4644  053c 81            	ret
4749                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4749                     ; 1390 {
4750                     	switch	.text
4751  053d               _TIM1_GenerateEvent:
4755                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4757                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
4759  053d c75257        	ld	21079,a
4760                     ; 1396 }
4763  0540 81            	ret
4799                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4799                     ; 1407 {
4800                     	switch	.text
4801  0541               _TIM1_OC1PolarityConfig:
4805                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4807                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4809  0541 4d            	tnz	a
4810  0542 2706          	jreq	L5242
4811                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4813  0544 7212525c      	bset	21084,#1
4815  0548 2004          	jra	L7242
4816  054a               L5242:
4817                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4819  054a 7213525c      	bres	21084,#1
4820  054e               L7242:
4821                     ; 1420 }
4824  054e 81            	ret
4860                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4860                     ; 1431 {
4861                     	switch	.text
4862  054f               _TIM1_OC1NPolarityConfig:
4866                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4868                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4870  054f 4d            	tnz	a
4871  0550 2706          	jreq	L7442
4872                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4874  0552 7216525c      	bset	21084,#3
4876  0556 2004          	jra	L1542
4877  0558               L7442:
4878                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4880  0558 7217525c      	bres	21084,#3
4881  055c               L1542:
4882                     ; 1444 }
4885  055c 81            	ret
4921                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4921                     ; 1455 {
4922                     	switch	.text
4923  055d               _TIM1_OC2PolarityConfig:
4927                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4929                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4931  055d 4d            	tnz	a
4932  055e 2706          	jreq	L1742
4933                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4935  0560 721a525c      	bset	21084,#5
4937  0564 2004          	jra	L3742
4938  0566               L1742:
4939                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4941  0566 721b525c      	bres	21084,#5
4942  056a               L3742:
4943                     ; 1468 }
4946  056a 81            	ret
4982                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4982                     ; 1479 {
4983                     	switch	.text
4984  056b               _TIM1_OC2NPolarityConfig:
4988                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4990                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4992  056b 4d            	tnz	a
4993  056c 2706          	jreq	L3152
4994                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4996  056e 721e525c      	bset	21084,#7
4998  0572 2004          	jra	L5152
4999  0574               L3152:
5000                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
5002  0574 721f525c      	bres	21084,#7
5003  0578               L5152:
5004                     ; 1492 }
5007  0578 81            	ret
5043                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5043                     ; 1503 {
5044                     	switch	.text
5045  0579               _TIM1_OC3PolarityConfig:
5049                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5051                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5053  0579 4d            	tnz	a
5054  057a 2706          	jreq	L5352
5055                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
5057  057c 7212525d      	bset	21085,#1
5059  0580 2004          	jra	L7352
5060  0582               L5352:
5061                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5063  0582 7213525d      	bres	21085,#1
5064  0586               L7352:
5065                     ; 1516 }
5068  0586 81            	ret
5104                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5104                     ; 1528 {
5105                     	switch	.text
5106  0587               _TIM1_OC3NPolarityConfig:
5110                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5112                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5114  0587 4d            	tnz	a
5115  0588 2706          	jreq	L7552
5116                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5118  058a 7216525d      	bset	21085,#3
5120  058e 2004          	jra	L1652
5121  0590               L7552:
5122                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5124  0590 7217525d      	bres	21085,#3
5125  0594               L1652:
5126                     ; 1541 }
5129  0594 81            	ret
5165                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5165                     ; 1552 {
5166                     	switch	.text
5167  0595               _TIM1_OC4PolarityConfig:
5171                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5173                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5175  0595 4d            	tnz	a
5176  0596 2706          	jreq	L1062
5177                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
5179  0598 721a525d      	bset	21085,#5
5181  059c 2004          	jra	L3062
5182  059e               L1062:
5183                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5185  059e 721b525d      	bres	21085,#5
5186  05a2               L3062:
5187                     ; 1565 }
5190  05a2 81            	ret
5235                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5235                     ; 1580 {
5236                     	switch	.text
5237  05a3               _TIM1_CCxCmd:
5239  05a3 89            	pushw	x
5240       00000000      OFST:	set	0
5243                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5245                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5247                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
5249  05a4 9e            	ld	a,xh
5250  05a5 4d            	tnz	a
5251  05a6 2610          	jrne	L7262
5252                     ; 1588     if (NewState != DISABLE)
5254  05a8 9f            	ld	a,xl
5255  05a9 4d            	tnz	a
5256  05aa 2706          	jreq	L1362
5257                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
5259  05ac 7210525c      	bset	21084,#0
5261  05b0 2040          	jra	L5362
5262  05b2               L1362:
5263                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5265  05b2 7211525c      	bres	21084,#0
5266  05b6 203a          	jra	L5362
5267  05b8               L7262:
5268                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
5270  05b8 7b01          	ld	a,(OFST+1,sp)
5271  05ba a101          	cp	a,#1
5272  05bc 2610          	jrne	L7362
5273                     ; 1601     if (NewState != DISABLE)
5275  05be 0d02          	tnz	(OFST+2,sp)
5276  05c0 2706          	jreq	L1462
5277                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
5279  05c2 7218525c      	bset	21084,#4
5281  05c6 202a          	jra	L5362
5282  05c8               L1462:
5283                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5285  05c8 7219525c      	bres	21084,#4
5286  05cc 2024          	jra	L5362
5287  05ce               L7362:
5288                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
5290  05ce 7b01          	ld	a,(OFST+1,sp)
5291  05d0 a102          	cp	a,#2
5292  05d2 2610          	jrne	L7462
5293                     ; 1613     if (NewState != DISABLE)
5295  05d4 0d02          	tnz	(OFST+2,sp)
5296  05d6 2706          	jreq	L1562
5297                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
5299  05d8 7210525d      	bset	21085,#0
5301  05dc 2014          	jra	L5362
5302  05de               L1562:
5303                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5305  05de 7211525d      	bres	21085,#0
5306  05e2 200e          	jra	L5362
5307  05e4               L7462:
5308                     ; 1625     if (NewState != DISABLE)
5310  05e4 0d02          	tnz	(OFST+2,sp)
5311  05e6 2706          	jreq	L7562
5312                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
5314  05e8 7218525d      	bset	21085,#4
5316  05ec 2004          	jra	L5362
5317  05ee               L7562:
5318                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5320  05ee 7219525d      	bres	21085,#4
5321  05f2               L5362:
5322                     ; 1634 }
5325  05f2 85            	popw	x
5326  05f3 81            	ret
5371                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5371                     ; 1648 {
5372                     	switch	.text
5373  05f4               _TIM1_CCxNCmd:
5375  05f4 89            	pushw	x
5376       00000000      OFST:	set	0
5379                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5381                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5383                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
5385  05f5 9e            	ld	a,xh
5386  05f6 4d            	tnz	a
5387  05f7 2610          	jrne	L5072
5388                     ; 1656     if (NewState != DISABLE)
5390  05f9 9f            	ld	a,xl
5391  05fa 4d            	tnz	a
5392  05fb 2706          	jreq	L7072
5393                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5395  05fd 7214525c      	bset	21084,#2
5397  0601 202a          	jra	L3172
5398  0603               L7072:
5399                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5401  0603 7215525c      	bres	21084,#2
5402  0607 2024          	jra	L3172
5403  0609               L5072:
5404                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
5406  0609 7b01          	ld	a,(OFST+1,sp)
5407  060b a101          	cp	a,#1
5408  060d 2610          	jrne	L5172
5409                     ; 1668     if (NewState != DISABLE)
5411  060f 0d02          	tnz	(OFST+2,sp)
5412  0611 2706          	jreq	L7172
5413                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5415  0613 721c525c      	bset	21084,#6
5417  0617 2014          	jra	L3172
5418  0619               L7172:
5419                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5421  0619 721d525c      	bres	21084,#6
5422  061d 200e          	jra	L3172
5423  061f               L5172:
5424                     ; 1680     if (NewState != DISABLE)
5426  061f 0d02          	tnz	(OFST+2,sp)
5427  0621 2706          	jreq	L5272
5428                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5430  0623 7214525d      	bset	21085,#2
5432  0627 2004          	jra	L3172
5433  0629               L5272:
5434                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5436  0629 7215525d      	bres	21085,#2
5437  062d               L3172:
5438                     ; 1689 }
5441  062d 85            	popw	x
5442  062e 81            	ret
5487                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5487                     ; 1713 {
5488                     	switch	.text
5489  062f               _TIM1_SelectOCxM:
5491  062f 89            	pushw	x
5492       00000000      OFST:	set	0
5495                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5497                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5499                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
5501  0630 9e            	ld	a,xh
5502  0631 4d            	tnz	a
5503  0632 2610          	jrne	L3572
5504                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5506  0634 7211525c      	bres	21084,#0
5507                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5507                     ; 1725                             | (uint8_t)TIM1_OCMode);
5509  0638 c65258        	ld	a,21080
5510  063b a48f          	and	a,#143
5511  063d 1a02          	or	a,(OFST+2,sp)
5512  063f c75258        	ld	21080,a
5514  0642 203a          	jra	L5572
5515  0644               L3572:
5516                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
5518  0644 7b01          	ld	a,(OFST+1,sp)
5519  0646 a101          	cp	a,#1
5520  0648 2610          	jrne	L7572
5521                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5523  064a 7219525c      	bres	21084,#4
5524                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5524                     ; 1734                             | (uint8_t)TIM1_OCMode);
5526  064e c65259        	ld	a,21081
5527  0651 a48f          	and	a,#143
5528  0653 1a02          	or	a,(OFST+2,sp)
5529  0655 c75259        	ld	21081,a
5531  0658 2024          	jra	L5572
5532  065a               L7572:
5533                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
5535  065a 7b01          	ld	a,(OFST+1,sp)
5536  065c a102          	cp	a,#2
5537  065e 2610          	jrne	L3672
5538                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5540  0660 7211525d      	bres	21085,#0
5541                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5541                     ; 1743                             | (uint8_t)TIM1_OCMode);
5543  0664 c6525a        	ld	a,21082
5544  0667 a48f          	and	a,#143
5545  0669 1a02          	or	a,(OFST+2,sp)
5546  066b c7525a        	ld	21082,a
5548  066e 200e          	jra	L5572
5549  0670               L3672:
5550                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5552  0670 7219525d      	bres	21085,#4
5553                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5553                     ; 1752                             | (uint8_t)TIM1_OCMode);
5555  0674 c6525b        	ld	a,21083
5556  0677 a48f          	and	a,#143
5557  0679 1a02          	or	a,(OFST+2,sp)
5558  067b c7525b        	ld	21083,a
5559  067e               L5572:
5560                     ; 1754 }
5563  067e 85            	popw	x
5564  067f 81            	ret
5598                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
5598                     ; 1763 {
5599                     	switch	.text
5600  0680               _TIM1_SetCounter:
5604                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
5606  0680 9e            	ld	a,xh
5607  0681 c7525e        	ld	21086,a
5608                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
5610  0684 9f            	ld	a,xl
5611  0685 c7525f        	ld	21087,a
5612                     ; 1767 }
5615  0688 81            	ret
5649                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
5649                     ; 1776 {
5650                     	switch	.text
5651  0689               _TIM1_SetAutoreload:
5655                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5657  0689 9e            	ld	a,xh
5658  068a c75262        	ld	21090,a
5659                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
5661  068d 9f            	ld	a,xl
5662  068e c75263        	ld	21091,a
5663                     ; 1780  }
5666  0691 81            	ret
5700                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
5700                     ; 1789 {
5701                     	switch	.text
5702  0692               _TIM1_SetCompare1:
5706                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5708  0692 9e            	ld	a,xh
5709  0693 c75265        	ld	21093,a
5710                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
5712  0696 9f            	ld	a,xl
5713  0697 c75266        	ld	21094,a
5714                     ; 1793 }
5717  069a 81            	ret
5751                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
5751                     ; 1802 {
5752                     	switch	.text
5753  069b               _TIM1_SetCompare2:
5757                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5759  069b 9e            	ld	a,xh
5760  069c c75267        	ld	21095,a
5761                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
5763  069f 9f            	ld	a,xl
5764  06a0 c75268        	ld	21096,a
5765                     ; 1806 }
5768  06a3 81            	ret
5802                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
5802                     ; 1815 {
5803                     	switch	.text
5804  06a4               _TIM1_SetCompare3:
5808                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5810  06a4 9e            	ld	a,xh
5811  06a5 c75269        	ld	21097,a
5812                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
5814  06a8 9f            	ld	a,xl
5815  06a9 c7526a        	ld	21098,a
5816                     ; 1819 }
5819  06ac 81            	ret
5853                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
5853                     ; 1828 {
5854                     	switch	.text
5855  06ad               _TIM1_SetCompare4:
5859                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5861  06ad 9e            	ld	a,xh
5862  06ae c7526b        	ld	21099,a
5863                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
5865  06b1 9f            	ld	a,xl
5866  06b2 c7526c        	ld	21100,a
5867                     ; 1832 }
5870  06b5 81            	ret
5906                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5906                     ; 1845 {
5907                     	switch	.text
5908  06b6               _TIM1_SetIC1Prescaler:
5910  06b6 88            	push	a
5911       00000000      OFST:	set	0
5914                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5916                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5916                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
5918  06b7 c65258        	ld	a,21080
5919  06ba a4f3          	and	a,#243
5920  06bc 1a01          	or	a,(OFST+1,sp)
5921  06be c75258        	ld	21080,a
5922                     ; 1852 }
5925  06c1 84            	pop	a
5926  06c2 81            	ret
5962                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5962                     ; 1865 {
5963                     	switch	.text
5964  06c3               _TIM1_SetIC2Prescaler:
5966  06c3 88            	push	a
5967       00000000      OFST:	set	0
5970                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5972                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5972                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
5974  06c4 c65259        	ld	a,21081
5975  06c7 a4f3          	and	a,#243
5976  06c9 1a01          	or	a,(OFST+1,sp)
5977  06cb c75259        	ld	21081,a
5978                     ; 1873 }
5981  06ce 84            	pop	a
5982  06cf 81            	ret
6018                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6018                     ; 1886 {
6019                     	switch	.text
6020  06d0               _TIM1_SetIC3Prescaler:
6022  06d0 88            	push	a
6023       00000000      OFST:	set	0
6026                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6028                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
6028                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
6030  06d1 c6525a        	ld	a,21082
6031  06d4 a4f3          	and	a,#243
6032  06d6 1a01          	or	a,(OFST+1,sp)
6033  06d8 c7525a        	ld	21082,a
6034                     ; 1894 }
6037  06db 84            	pop	a
6038  06dc 81            	ret
6074                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6074                     ; 1907 {
6075                     	switch	.text
6076  06dd               _TIM1_SetIC4Prescaler:
6078  06dd 88            	push	a
6079       00000000      OFST:	set	0
6082                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6084                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
6084                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
6086  06de c6525b        	ld	a,21083
6087  06e1 a4f3          	and	a,#243
6088  06e3 1a01          	or	a,(OFST+1,sp)
6089  06e5 c7525b        	ld	21083,a
6090                     ; 1915 }
6093  06e8 84            	pop	a
6094  06e9 81            	ret
6146                     ; 1922 uint16_t TIM1_GetCapture1(void)
6146                     ; 1923 {
6147                     	switch	.text
6148  06ea               _TIM1_GetCapture1:
6150  06ea 5204          	subw	sp,#4
6151       00000004      OFST:	set	4
6154                     ; 1926   uint16_t tmpccr1 = 0;
6156                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
6160                     ; 1929   tmpccr1h = TIM1->CCR1H;
6162  06ec c65265        	ld	a,21093
6163  06ef 6b02          	ld	(OFST-2,sp),a
6165                     ; 1930   tmpccr1l = TIM1->CCR1L;
6167  06f1 c65266        	ld	a,21094
6168  06f4 6b01          	ld	(OFST-3,sp),a
6170                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
6172  06f6 7b01          	ld	a,(OFST-3,sp)
6173  06f8 5f            	clrw	x
6174  06f9 97            	ld	xl,a
6175  06fa 1f03          	ldw	(OFST-1,sp),x
6177                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6179  06fc 7b02          	ld	a,(OFST-2,sp)
6180  06fe 5f            	clrw	x
6181  06ff 97            	ld	xl,a
6182  0700 4f            	clr	a
6183  0701 02            	rlwa	x,a
6184  0702 01            	rrwa	x,a
6185  0703 1a04          	or	a,(OFST+0,sp)
6186  0705 01            	rrwa	x,a
6187  0706 1a03          	or	a,(OFST-1,sp)
6188  0708 01            	rrwa	x,a
6189  0709 1f03          	ldw	(OFST-1,sp),x
6191                     ; 1935   return (uint16_t)tmpccr1;
6193  070b 1e03          	ldw	x,(OFST-1,sp)
6196  070d 5b04          	addw	sp,#4
6197  070f 81            	ret
6249                     ; 1943 uint16_t TIM1_GetCapture2(void)
6249                     ; 1944 {
6250                     	switch	.text
6251  0710               _TIM1_GetCapture2:
6253  0710 5204          	subw	sp,#4
6254       00000004      OFST:	set	4
6257                     ; 1947   uint16_t tmpccr2 = 0;
6259                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
6263                     ; 1950   tmpccr2h = TIM1->CCR2H;
6265  0712 c65267        	ld	a,21095
6266  0715 6b02          	ld	(OFST-2,sp),a
6268                     ; 1951   tmpccr2l = TIM1->CCR2L;
6270  0717 c65268        	ld	a,21096
6271  071a 6b01          	ld	(OFST-3,sp),a
6273                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
6275  071c 7b01          	ld	a,(OFST-3,sp)
6276  071e 5f            	clrw	x
6277  071f 97            	ld	xl,a
6278  0720 1f03          	ldw	(OFST-1,sp),x
6280                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6282  0722 7b02          	ld	a,(OFST-2,sp)
6283  0724 5f            	clrw	x
6284  0725 97            	ld	xl,a
6285  0726 4f            	clr	a
6286  0727 02            	rlwa	x,a
6287  0728 01            	rrwa	x,a
6288  0729 1a04          	or	a,(OFST+0,sp)
6289  072b 01            	rrwa	x,a
6290  072c 1a03          	or	a,(OFST-1,sp)
6291  072e 01            	rrwa	x,a
6292  072f 1f03          	ldw	(OFST-1,sp),x
6294                     ; 1956   return (uint16_t)tmpccr2;
6296  0731 1e03          	ldw	x,(OFST-1,sp)
6299  0733 5b04          	addw	sp,#4
6300  0735 81            	ret
6352                     ; 1964 uint16_t TIM1_GetCapture3(void)
6352                     ; 1965 {
6353                     	switch	.text
6354  0736               _TIM1_GetCapture3:
6356  0736 5204          	subw	sp,#4
6357       00000004      OFST:	set	4
6360                     ; 1967   uint16_t tmpccr3 = 0;
6362                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
6366                     ; 1970   tmpccr3h = TIM1->CCR3H;
6368  0738 c65269        	ld	a,21097
6369  073b 6b02          	ld	(OFST-2,sp),a
6371                     ; 1971   tmpccr3l = TIM1->CCR3L;
6373  073d c6526a        	ld	a,21098
6374  0740 6b01          	ld	(OFST-3,sp),a
6376                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
6378  0742 7b01          	ld	a,(OFST-3,sp)
6379  0744 5f            	clrw	x
6380  0745 97            	ld	xl,a
6381  0746 1f03          	ldw	(OFST-1,sp),x
6383                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6385  0748 7b02          	ld	a,(OFST-2,sp)
6386  074a 5f            	clrw	x
6387  074b 97            	ld	xl,a
6388  074c 4f            	clr	a
6389  074d 02            	rlwa	x,a
6390  074e 01            	rrwa	x,a
6391  074f 1a04          	or	a,(OFST+0,sp)
6392  0751 01            	rrwa	x,a
6393  0752 1a03          	or	a,(OFST-1,sp)
6394  0754 01            	rrwa	x,a
6395  0755 1f03          	ldw	(OFST-1,sp),x
6397                     ; 1976   return (uint16_t)tmpccr3;
6399  0757 1e03          	ldw	x,(OFST-1,sp)
6402  0759 5b04          	addw	sp,#4
6403  075b 81            	ret
6455                     ; 1984 uint16_t TIM1_GetCapture4(void)
6455                     ; 1985 {
6456                     	switch	.text
6457  075c               _TIM1_GetCapture4:
6459  075c 5204          	subw	sp,#4
6460       00000004      OFST:	set	4
6463                     ; 1987   uint16_t tmpccr4 = 0;
6465                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
6469                     ; 1990   tmpccr4h = TIM1->CCR4H;
6471  075e c6526b        	ld	a,21099
6472  0761 6b02          	ld	(OFST-2,sp),a
6474                     ; 1991   tmpccr4l = TIM1->CCR4L;
6476  0763 c6526c        	ld	a,21100
6477  0766 6b01          	ld	(OFST-3,sp),a
6479                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
6481  0768 7b01          	ld	a,(OFST-3,sp)
6482  076a 5f            	clrw	x
6483  076b 97            	ld	xl,a
6484  076c 1f03          	ldw	(OFST-1,sp),x
6486                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6488  076e 7b02          	ld	a,(OFST-2,sp)
6489  0770 5f            	clrw	x
6490  0771 97            	ld	xl,a
6491  0772 4f            	clr	a
6492  0773 02            	rlwa	x,a
6493  0774 01            	rrwa	x,a
6494  0775 1a04          	or	a,(OFST+0,sp)
6495  0777 01            	rrwa	x,a
6496  0778 1a03          	or	a,(OFST-1,sp)
6497  077a 01            	rrwa	x,a
6498  077b 1f03          	ldw	(OFST-1,sp),x
6500                     ; 1996   return (uint16_t)tmpccr4;
6502  077d 1e03          	ldw	x,(OFST-1,sp)
6505  077f 5b04          	addw	sp,#4
6506  0781 81            	ret
6540                     ; 2004 uint16_t TIM1_GetCounter(void)
6540                     ; 2005 {
6541                     	switch	.text
6542  0782               _TIM1_GetCounter:
6544  0782 89            	pushw	x
6545       00000002      OFST:	set	2
6548                     ; 2006   uint16_t tmpcntr = 0;
6550                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6552  0783 c6525e        	ld	a,21086
6553  0786 5f            	clrw	x
6554  0787 97            	ld	xl,a
6555  0788 4f            	clr	a
6556  0789 02            	rlwa	x,a
6557  078a 1f01          	ldw	(OFST-1,sp),x
6559                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6561  078c c6525f        	ld	a,21087
6562  078f 5f            	clrw	x
6563  0790 97            	ld	xl,a
6564  0791 01            	rrwa	x,a
6565  0792 1a02          	or	a,(OFST+0,sp)
6566  0794 01            	rrwa	x,a
6567  0795 1a01          	or	a,(OFST-1,sp)
6568  0797 01            	rrwa	x,a
6571  0798 5b02          	addw	sp,#2
6572  079a 81            	ret
6606                     ; 2019 uint16_t TIM1_GetPrescaler(void)
6606                     ; 2020 {
6607                     	switch	.text
6608  079b               _TIM1_GetPrescaler:
6610  079b 89            	pushw	x
6611       00000002      OFST:	set	2
6614                     ; 2021   uint16_t temp = 0;
6616                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
6618  079c c65260        	ld	a,21088
6619  079f 5f            	clrw	x
6620  07a0 97            	ld	xl,a
6621  07a1 4f            	clr	a
6622  07a2 02            	rlwa	x,a
6623  07a3 1f01          	ldw	(OFST-1,sp),x
6625                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6627  07a5 c65261        	ld	a,21089
6628  07a8 5f            	clrw	x
6629  07a9 97            	ld	xl,a
6630  07aa 01            	rrwa	x,a
6631  07ab 1a02          	or	a,(OFST+0,sp)
6632  07ad 01            	rrwa	x,a
6633  07ae 1a01          	or	a,(OFST-1,sp)
6634  07b0 01            	rrwa	x,a
6637  07b1 5b02          	addw	sp,#2
6638  07b3 81            	ret
6812                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6812                     ; 2048 {
6813                     	switch	.text
6814  07b4               _TIM1_GetFlagStatus:
6816  07b4 89            	pushw	x
6817  07b5 89            	pushw	x
6818       00000002      OFST:	set	2
6821                     ; 2049   FlagStatus bitstatus = RESET;
6823                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6827                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6829                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6831  07b6 9f            	ld	a,xl
6832  07b7 c45255        	and	a,21077
6833  07ba 6b01          	ld	(OFST-1,sp),a
6835                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6837  07bc 7b03          	ld	a,(OFST+1,sp)
6838  07be 6b02          	ld	(OFST+0,sp),a
6840                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6842  07c0 c65256        	ld	a,21078
6843  07c3 1402          	and	a,(OFST+0,sp)
6844  07c5 1a01          	or	a,(OFST-1,sp)
6845  07c7 2706          	jreq	L5643
6846                     ; 2060     bitstatus = SET;
6848  07c9 a601          	ld	a,#1
6849  07cb 6b02          	ld	(OFST+0,sp),a
6852  07cd 2002          	jra	L7643
6853  07cf               L5643:
6854                     ; 2064     bitstatus = RESET;
6856  07cf 0f02          	clr	(OFST+0,sp)
6858  07d1               L7643:
6859                     ; 2066   return (FlagStatus)(bitstatus);
6861  07d1 7b02          	ld	a,(OFST+0,sp)
6864  07d3 5b04          	addw	sp,#4
6865  07d5 81            	ret
6900                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6900                     ; 2088 {
6901                     	switch	.text
6902  07d6               _TIM1_ClearFlag:
6904  07d6 89            	pushw	x
6905       00000000      OFST:	set	0
6908                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6910                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6912  07d7 9f            	ld	a,xl
6913  07d8 43            	cpl	a
6914  07d9 c75255        	ld	21077,a
6915                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6915                     ; 2095                         (uint8_t)0x1E);
6917  07dc 7b01          	ld	a,(OFST+1,sp)
6918  07de 43            	cpl	a
6919  07df a41e          	and	a,#30
6920  07e1 c75256        	ld	21078,a
6921                     ; 2096 }
6924  07e4 85            	popw	x
6925  07e5 81            	ret
6989                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6989                     ; 2113 {
6990                     	switch	.text
6991  07e6               _TIM1_GetITStatus:
6993  07e6 88            	push	a
6994  07e7 89            	pushw	x
6995       00000002      OFST:	set	2
6998                     ; 2114   ITStatus bitstatus = RESET;
7000                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
7004                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
7006                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
7008  07e8 c45255        	and	a,21077
7009  07eb 6b01          	ld	(OFST-1,sp),a
7011                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
7013  07ed c65254        	ld	a,21076
7014  07f0 1403          	and	a,(OFST+1,sp)
7015  07f2 6b02          	ld	(OFST+0,sp),a
7017                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
7019  07f4 0d01          	tnz	(OFST-1,sp)
7020  07f6 270a          	jreq	L1453
7022  07f8 0d02          	tnz	(OFST+0,sp)
7023  07fa 2706          	jreq	L1453
7024                     ; 2126     bitstatus = SET;
7026  07fc a601          	ld	a,#1
7027  07fe 6b02          	ld	(OFST+0,sp),a
7030  0800 2002          	jra	L3453
7031  0802               L1453:
7032                     ; 2130     bitstatus = RESET;
7034  0802 0f02          	clr	(OFST+0,sp)
7036  0804               L3453:
7037                     ; 2132   return (ITStatus)(bitstatus);
7039  0804 7b02          	ld	a,(OFST+0,sp)
7042  0806 5b03          	addw	sp,#3
7043  0808 81            	ret
7079                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7079                     ; 2150 {
7080                     	switch	.text
7081  0809               _TIM1_ClearITPendingBit:
7085                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
7087                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
7089  0809 43            	cpl	a
7090  080a c75255        	ld	21077,a
7091                     ; 2156 }
7094  080d 81            	ret
7146                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
7146                     ; 2175                        uint8_t TIM1_ICSelection,
7146                     ; 2176                        uint8_t TIM1_ICFilter)
7146                     ; 2177 {
7147                     	switch	.text
7148  080e               L3_TI1_Config:
7150  080e 89            	pushw	x
7151  080f 88            	push	a
7152       00000001      OFST:	set	1
7155                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7157  0810 7211525c      	bres	21084,#0
7158                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
7158                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7160  0814 7b06          	ld	a,(OFST+5,sp)
7161  0816 97            	ld	xl,a
7162  0817 a610          	ld	a,#16
7163  0819 42            	mul	x,a
7164  081a 9f            	ld	a,xl
7165  081b 1a03          	or	a,(OFST+2,sp)
7166  081d 6b01          	ld	(OFST+0,sp),a
7168  081f c65258        	ld	a,21080
7169  0822 a40c          	and	a,#12
7170  0824 1a01          	or	a,(OFST+0,sp)
7171  0826 c75258        	ld	21080,a
7172                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7174  0829 0d02          	tnz	(OFST+1,sp)
7175  082b 2706          	jreq	L1163
7176                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
7178  082d 7212525c      	bset	21084,#1
7180  0831 2004          	jra	L3163
7181  0833               L1163:
7182                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7184  0833 7213525c      	bres	21084,#1
7185  0837               L3163:
7186                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7188  0837 7210525c      	bset	21084,#0
7189                     ; 2197 }
7192  083b 5b03          	addw	sp,#3
7193  083d 81            	ret
7245                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
7245                     ; 2216                        uint8_t TIM1_ICSelection,
7245                     ; 2217                        uint8_t TIM1_ICFilter)
7245                     ; 2218 {
7246                     	switch	.text
7247  083e               L5_TI2_Config:
7249  083e 89            	pushw	x
7250  083f 88            	push	a
7251       00000001      OFST:	set	1
7254                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7256  0840 7219525c      	bres	21084,#4
7257                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7257                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7259  0844 7b06          	ld	a,(OFST+5,sp)
7260  0846 97            	ld	xl,a
7261  0847 a610          	ld	a,#16
7262  0849 42            	mul	x,a
7263  084a 9f            	ld	a,xl
7264  084b 1a03          	or	a,(OFST+2,sp)
7265  084d 6b01          	ld	(OFST+0,sp),a
7267  084f c65259        	ld	a,21081
7268  0852 a40c          	and	a,#12
7269  0854 1a01          	or	a,(OFST+0,sp)
7270  0856 c75259        	ld	21081,a
7271                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7273  0859 0d02          	tnz	(OFST+1,sp)
7274  085b 2706          	jreq	L3463
7275                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
7277  085d 721a525c      	bset	21084,#5
7279  0861 2004          	jra	L5463
7280  0863               L3463:
7281                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7283  0863 721b525c      	bres	21084,#5
7284  0867               L5463:
7285                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7287  0867 7218525c      	bset	21084,#4
7288                     ; 2236 }
7291  086b 5b03          	addw	sp,#3
7292  086d 81            	ret
7344                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
7344                     ; 2255                        uint8_t TIM1_ICSelection,
7344                     ; 2256                        uint8_t TIM1_ICFilter)
7344                     ; 2257 {
7345                     	switch	.text
7346  086e               L7_TI3_Config:
7348  086e 89            	pushw	x
7349  086f 88            	push	a
7350       00000001      OFST:	set	1
7353                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7355  0870 7211525d      	bres	21085,#0
7356                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7356                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7358  0874 7b06          	ld	a,(OFST+5,sp)
7359  0876 97            	ld	xl,a
7360  0877 a610          	ld	a,#16
7361  0879 42            	mul	x,a
7362  087a 9f            	ld	a,xl
7363  087b 1a03          	or	a,(OFST+2,sp)
7364  087d 6b01          	ld	(OFST+0,sp),a
7366  087f c6525a        	ld	a,21082
7367  0882 a40c          	and	a,#12
7368  0884 1a01          	or	a,(OFST+0,sp)
7369  0886 c7525a        	ld	21082,a
7370                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7372  0889 0d02          	tnz	(OFST+1,sp)
7373  088b 2706          	jreq	L5763
7374                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
7376  088d 7212525d      	bset	21085,#1
7378  0891 2004          	jra	L7763
7379  0893               L5763:
7380                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7382  0893 7213525d      	bres	21085,#1
7383  0897               L7763:
7384                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7386  0897 7210525d      	bset	21085,#0
7387                     ; 2276 }
7390  089b 5b03          	addw	sp,#3
7391  089d 81            	ret
7443                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
7443                     ; 2295                        uint8_t TIM1_ICSelection,
7443                     ; 2296                        uint8_t TIM1_ICFilter)
7443                     ; 2297 {
7444                     	switch	.text
7445  089e               L11_TI4_Config:
7447  089e 89            	pushw	x
7448  089f 88            	push	a
7449       00000001      OFST:	set	1
7452                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7454  08a0 7219525d      	bres	21085,#4
7455                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7455                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7457  08a4 7b06          	ld	a,(OFST+5,sp)
7458  08a6 97            	ld	xl,a
7459  08a7 a610          	ld	a,#16
7460  08a9 42            	mul	x,a
7461  08aa 9f            	ld	a,xl
7462  08ab 1a03          	or	a,(OFST+2,sp)
7463  08ad 6b01          	ld	(OFST+0,sp),a
7465  08af c6525b        	ld	a,21083
7466  08b2 a40c          	and	a,#12
7467  08b4 1a01          	or	a,(OFST+0,sp)
7468  08b6 c7525b        	ld	21083,a
7469                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7471  08b9 0d02          	tnz	(OFST+1,sp)
7472  08bb 2706          	jreq	L7273
7473                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
7475  08bd 721a525d      	bset	21085,#5
7477  08c1 2004          	jra	L1373
7478  08c3               L7273:
7479                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7481  08c3 721b525d      	bres	21085,#5
7482  08c7               L1373:
7483                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7485  08c7 7218525d      	bset	21085,#4
7486                     ; 2317 }
7489  08cb 5b03          	addw	sp,#3
7490  08cd 81            	ret
7503                     	xdef	_TIM1_ClearITPendingBit
7504                     	xdef	_TIM1_GetITStatus
7505                     	xdef	_TIM1_ClearFlag
7506                     	xdef	_TIM1_GetFlagStatus
7507                     	xdef	_TIM1_GetPrescaler
7508                     	xdef	_TIM1_GetCounter
7509                     	xdef	_TIM1_GetCapture4
7510                     	xdef	_TIM1_GetCapture3
7511                     	xdef	_TIM1_GetCapture2
7512                     	xdef	_TIM1_GetCapture1
7513                     	xdef	_TIM1_SetIC4Prescaler
7514                     	xdef	_TIM1_SetIC3Prescaler
7515                     	xdef	_TIM1_SetIC2Prescaler
7516                     	xdef	_TIM1_SetIC1Prescaler
7517                     	xdef	_TIM1_SetCompare4
7518                     	xdef	_TIM1_SetCompare3
7519                     	xdef	_TIM1_SetCompare2
7520                     	xdef	_TIM1_SetCompare1
7521                     	xdef	_TIM1_SetAutoreload
7522                     	xdef	_TIM1_SetCounter
7523                     	xdef	_TIM1_SelectOCxM
7524                     	xdef	_TIM1_CCxNCmd
7525                     	xdef	_TIM1_CCxCmd
7526                     	xdef	_TIM1_OC4PolarityConfig
7527                     	xdef	_TIM1_OC3NPolarityConfig
7528                     	xdef	_TIM1_OC3PolarityConfig
7529                     	xdef	_TIM1_OC2NPolarityConfig
7530                     	xdef	_TIM1_OC2PolarityConfig
7531                     	xdef	_TIM1_OC1NPolarityConfig
7532                     	xdef	_TIM1_OC1PolarityConfig
7533                     	xdef	_TIM1_GenerateEvent
7534                     	xdef	_TIM1_OC4FastConfig
7535                     	xdef	_TIM1_OC3FastConfig
7536                     	xdef	_TIM1_OC2FastConfig
7537                     	xdef	_TIM1_OC1FastConfig
7538                     	xdef	_TIM1_OC4PreloadConfig
7539                     	xdef	_TIM1_OC3PreloadConfig
7540                     	xdef	_TIM1_OC2PreloadConfig
7541                     	xdef	_TIM1_OC1PreloadConfig
7542                     	xdef	_TIM1_CCPreloadControl
7543                     	xdef	_TIM1_SelectCOM
7544                     	xdef	_TIM1_ARRPreloadConfig
7545                     	xdef	_TIM1_ForcedOC4Config
7546                     	xdef	_TIM1_ForcedOC3Config
7547                     	xdef	_TIM1_ForcedOC2Config
7548                     	xdef	_TIM1_ForcedOC1Config
7549                     	xdef	_TIM1_CounterModeConfig
7550                     	xdef	_TIM1_PrescalerConfig
7551                     	xdef	_TIM1_EncoderInterfaceConfig
7552                     	xdef	_TIM1_SelectMasterSlaveMode
7553                     	xdef	_TIM1_SelectSlaveMode
7554                     	xdef	_TIM1_SelectOutputTrigger
7555                     	xdef	_TIM1_SelectOnePulseMode
7556                     	xdef	_TIM1_SelectHallSensor
7557                     	xdef	_TIM1_UpdateRequestConfig
7558                     	xdef	_TIM1_UpdateDisableConfig
7559                     	xdef	_TIM1_SelectInputTrigger
7560                     	xdef	_TIM1_TIxExternalClockConfig
7561                     	xdef	_TIM1_ETRConfig
7562                     	xdef	_TIM1_ETRClockMode2Config
7563                     	xdef	_TIM1_ETRClockMode1Config
7564                     	xdef	_TIM1_InternalClockConfig
7565                     	xdef	_TIM1_ITConfig
7566                     	xdef	_TIM1_CtrlPWMOutputs
7567                     	xdef	_TIM1_Cmd
7568                     	xdef	_TIM1_PWMIConfig
7569                     	xdef	_TIM1_ICInit
7570                     	xdef	_TIM1_BDTRConfig
7571                     	xdef	_TIM1_OC4Init
7572                     	xdef	_TIM1_OC3Init
7573                     	xdef	_TIM1_OC2Init
7574                     	xdef	_TIM1_OC1Init
7575                     	xdef	_TIM1_TimeBaseInit
7576                     	xdef	_TIM1_DeInit
7595                     	end
