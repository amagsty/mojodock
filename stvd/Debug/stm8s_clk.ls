   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  14                     .const:	section	.text
  15  0000               _HSIDivFactor:
  16  0000 01            	dc.b	1
  17  0001 02            	dc.b	2
  18  0002 04            	dc.b	4
  19  0003 08            	dc.b	8
  20  0004               _CLKPrescTable:
  21  0004 01            	dc.b	1
  22  0005 02            	dc.b	2
  23  0006 04            	dc.b	4
  24  0007 08            	dc.b	8
  25  0008 0a            	dc.b	10
  26  0009 10            	dc.b	16
  27  000a 14            	dc.b	20
  28  000b 28            	dc.b	40
  57                     ; 72 void CLK_DeInit(void)
  57                     ; 73 {
  59                     	switch	.text
  60  0000               _CLK_DeInit:
  64                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  66  0000 350150c0      	mov	20672,#1
  67                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  69  0004 725f50c1      	clr	20673
  70                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  72  0008 35e150c4      	mov	20676,#225
  73                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  75  000c 725f50c5      	clr	20677
  76                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  78  0010 351850c6      	mov	20678,#24
  79                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  81  0014 35ff50c7      	mov	20679,#255
  82                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  84  0018 35ff50ca      	mov	20682,#255
  85                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  87  001c 725f50c8      	clr	20680
  88                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  90  0020 725f50c9      	clr	20681
  92  0024               L52:
  93                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  95  0024 c650c9        	ld	a,20681
  96  0027 a501          	bcp	a,#1
  97  0029 26f9          	jrne	L52
  98                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 100  002b 725f50c9      	clr	20681
 101                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 103  002f 725f50cc      	clr	20684
 104                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 106  0033 725f50cd      	clr	20685
 107                     ; 88 }
 110  0037 81            	ret
 166                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 166                     ; 100 {
 167                     	switch	.text
 168  0038               _CLK_FastHaltWakeUpCmd:
 172                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 174                     ; 104   if (NewState != DISABLE)
 176  0038 4d            	tnz	a
 177  0039 2706          	jreq	L75
 178                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 180  003b 721450c0      	bset	20672,#2
 182  003f 2004          	jra	L16
 183  0041               L75:
 184                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 186  0041 721550c0      	bres	20672,#2
 187  0045               L16:
 188                     ; 114 }
 191  0045 81            	ret
 226                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 226                     ; 122 {
 227                     	switch	.text
 228  0046               _CLK_HSECmd:
 232                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 234                     ; 126   if (NewState != DISABLE)
 236  0046 4d            	tnz	a
 237  0047 2706          	jreq	L101
 238                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 240  0049 721050c1      	bset	20673,#0
 242  004d 2004          	jra	L301
 243  004f               L101:
 244                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 246  004f 721150c1      	bres	20673,#0
 247  0053               L301:
 248                     ; 136 }
 251  0053 81            	ret
 286                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 286                     ; 144 {
 287                     	switch	.text
 288  0054               _CLK_HSICmd:
 292                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 294                     ; 148   if (NewState != DISABLE)
 296  0054 4d            	tnz	a
 297  0055 2706          	jreq	L321
 298                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 300  0057 721050c0      	bset	20672,#0
 302  005b 2004          	jra	L521
 303  005d               L321:
 304                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 306  005d 721150c0      	bres	20672,#0
 307  0061               L521:
 308                     ; 158 }
 311  0061 81            	ret
 346                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 346                     ; 167 {
 347                     	switch	.text
 348  0062               _CLK_LSICmd:
 352                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 354                     ; 171   if (NewState != DISABLE)
 356  0062 4d            	tnz	a
 357  0063 2706          	jreq	L541
 358                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 360  0065 721650c0      	bset	20672,#3
 362  0069 2004          	jra	L741
 363  006b               L541:
 364                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 366  006b 721750c0      	bres	20672,#3
 367  006f               L741:
 368                     ; 181 }
 371  006f 81            	ret
 406                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 406                     ; 190 {
 407                     	switch	.text
 408  0070               _CLK_CCOCmd:
 412                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414                     ; 194   if (NewState != DISABLE)
 416  0070 4d            	tnz	a
 417  0071 2706          	jreq	L761
 418                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 420  0073 721050c9      	bset	20681,#0
 422  0077 2004          	jra	L171
 423  0079               L761:
 424                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 426  0079 721150c9      	bres	20681,#0
 427  007d               L171:
 428                     ; 204 }
 431  007d 81            	ret
 466                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 466                     ; 214 {
 467                     	switch	.text
 468  007e               _CLK_ClockSwitchCmd:
 472                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 474                     ; 218   if (NewState != DISABLE )
 476  007e 4d            	tnz	a
 477  007f 2706          	jreq	L112
 478                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 480  0081 721250c5      	bset	20677,#1
 482  0085 2004          	jra	L312
 483  0087               L112:
 484                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 486  0087 721350c5      	bres	20677,#1
 487  008b               L312:
 488                     ; 228 }
 491  008b 81            	ret
 527                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 527                     ; 239 {
 528                     	switch	.text
 529  008c               _CLK_SlowActiveHaltWakeUpCmd:
 533                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 535                     ; 243   if (NewState != DISABLE)
 537  008c 4d            	tnz	a
 538  008d 2706          	jreq	L332
 539                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 541  008f 721a50c0      	bset	20672,#5
 543  0093 2004          	jra	L532
 544  0095               L332:
 545                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 547  0095 721b50c0      	bres	20672,#5
 548  0099               L532:
 549                     ; 253 }
 552  0099 81            	ret
 711                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 711                     ; 264 {
 712                     	switch	.text
 713  009a               _CLK_PeripheralClockConfig:
 715  009a 89            	pushw	x
 716       00000000      OFST:	set	0
 719                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 721                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 723                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 725  009b 9e            	ld	a,xh
 726  009c a510          	bcp	a,#16
 727  009e 2633          	jrne	L123
 728                     ; 271     if (NewState != DISABLE)
 730  00a0 0d02          	tnz	(OFST+2,sp)
 731  00a2 2717          	jreq	L323
 732                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 734  00a4 7b01          	ld	a,(OFST+1,sp)
 735  00a6 a40f          	and	a,#15
 736  00a8 5f            	clrw	x
 737  00a9 97            	ld	xl,a
 738  00aa a601          	ld	a,#1
 739  00ac 5d            	tnzw	x
 740  00ad 2704          	jreq	L62
 741  00af               L03:
 742  00af 48            	sll	a
 743  00b0 5a            	decw	x
 744  00b1 26fc          	jrne	L03
 745  00b3               L62:
 746  00b3 ca50c7        	or	a,20679
 747  00b6 c750c7        	ld	20679,a
 749  00b9 2049          	jra	L723
 750  00bb               L323:
 751                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 753  00bb 7b01          	ld	a,(OFST+1,sp)
 754  00bd a40f          	and	a,#15
 755  00bf 5f            	clrw	x
 756  00c0 97            	ld	xl,a
 757  00c1 a601          	ld	a,#1
 758  00c3 5d            	tnzw	x
 759  00c4 2704          	jreq	L23
 760  00c6               L43:
 761  00c6 48            	sll	a
 762  00c7 5a            	decw	x
 763  00c8 26fc          	jrne	L43
 764  00ca               L23:
 765  00ca 43            	cpl	a
 766  00cb c450c7        	and	a,20679
 767  00ce c750c7        	ld	20679,a
 768  00d1 2031          	jra	L723
 769  00d3               L123:
 770                     ; 284     if (NewState != DISABLE)
 772  00d3 0d02          	tnz	(OFST+2,sp)
 773  00d5 2717          	jreq	L133
 774                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 776  00d7 7b01          	ld	a,(OFST+1,sp)
 777  00d9 a40f          	and	a,#15
 778  00db 5f            	clrw	x
 779  00dc 97            	ld	xl,a
 780  00dd a601          	ld	a,#1
 781  00df 5d            	tnzw	x
 782  00e0 2704          	jreq	L63
 783  00e2               L04:
 784  00e2 48            	sll	a
 785  00e3 5a            	decw	x
 786  00e4 26fc          	jrne	L04
 787  00e6               L63:
 788  00e6 ca50ca        	or	a,20682
 789  00e9 c750ca        	ld	20682,a
 791  00ec 2016          	jra	L723
 792  00ee               L133:
 793                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 795  00ee 7b01          	ld	a,(OFST+1,sp)
 796  00f0 a40f          	and	a,#15
 797  00f2 5f            	clrw	x
 798  00f3 97            	ld	xl,a
 799  00f4 a601          	ld	a,#1
 800  00f6 5d            	tnzw	x
 801  00f7 2704          	jreq	L24
 802  00f9               L44:
 803  00f9 48            	sll	a
 804  00fa 5a            	decw	x
 805  00fb 26fc          	jrne	L44
 806  00fd               L24:
 807  00fd 43            	cpl	a
 808  00fe c450ca        	and	a,20682
 809  0101 c750ca        	ld	20682,a
 810  0104               L723:
 811                     ; 295 }
 814  0104 85            	popw	x
 815  0105 81            	ret
1003                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1003                     ; 310 {
1004                     	switch	.text
1005  0106               _CLK_ClockSwitchConfig:
1007  0106 89            	pushw	x
1008  0107 5204          	subw	sp,#4
1009       00000004      OFST:	set	4
1012                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1014  0109 aeffff        	ldw	x,#65535
1015  010c 1f03          	ldw	(OFST-1,sp),x
1017                     ; 313   ErrorStatus Swif = ERROR;
1019                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1021                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1023                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1025                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1027                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1029  010e c650c3        	ld	a,20675
1030  0111 6b01          	ld	(OFST-3,sp),a
1032                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1034  0113 7b05          	ld	a,(OFST+1,sp)
1035  0115 a101          	cp	a,#1
1036  0117 264b          	jrne	L544
1037                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1039  0119 721250c5      	bset	20677,#1
1040                     ; 331     if (ITState != DISABLE)
1042  011d 0d09          	tnz	(OFST+5,sp)
1043  011f 2706          	jreq	L744
1044                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1046  0121 721450c5      	bset	20677,#2
1048  0125 2004          	jra	L154
1049  0127               L744:
1050                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1052  0127 721550c5      	bres	20677,#2
1053  012b               L154:
1054                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1056  012b 7b06          	ld	a,(OFST+2,sp)
1057  012d c750c4        	ld	20676,a
1059  0130 2007          	jra	L754
1060  0132               L354:
1061                     ; 346       DownCounter--;
1063  0132 1e03          	ldw	x,(OFST-1,sp)
1064  0134 1d0001        	subw	x,#1
1065  0137 1f03          	ldw	(OFST-1,sp),x
1067  0139               L754:
1068                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1070  0139 c650c5        	ld	a,20677
1071  013c a501          	bcp	a,#1
1072  013e 2704          	jreq	L364
1074  0140 1e03          	ldw	x,(OFST-1,sp)
1075  0142 26ee          	jrne	L354
1076  0144               L364:
1077                     ; 349     if(DownCounter != 0)
1079  0144 1e03          	ldw	x,(OFST-1,sp)
1080  0146 2706          	jreq	L564
1081                     ; 351       Swif = SUCCESS;
1083  0148 a601          	ld	a,#1
1084  014a 6b02          	ld	(OFST-2,sp),a
1087  014c 2002          	jra	L174
1088  014e               L564:
1089                     ; 355       Swif = ERROR;
1091  014e 0f02          	clr	(OFST-2,sp)
1093  0150               L174:
1094                     ; 390   if(Swif != ERROR)
1096  0150 0d02          	tnz	(OFST-2,sp)
1097  0152 2767          	jreq	L515
1098                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1100  0154 0d0a          	tnz	(OFST+6,sp)
1101  0156 2645          	jrne	L715
1103  0158 7b01          	ld	a,(OFST-3,sp)
1104  015a a1e1          	cp	a,#225
1105  015c 263f          	jrne	L715
1106                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1108  015e 721150c0      	bres	20672,#0
1110  0162 2057          	jra	L515
1111  0164               L544:
1112                     ; 361     if (ITState != DISABLE)
1114  0164 0d09          	tnz	(OFST+5,sp)
1115  0166 2706          	jreq	L374
1116                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1118  0168 721450c5      	bset	20677,#2
1120  016c 2004          	jra	L574
1121  016e               L374:
1122                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1124  016e 721550c5      	bres	20677,#2
1125  0172               L574:
1126                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1128  0172 7b06          	ld	a,(OFST+2,sp)
1129  0174 c750c4        	ld	20676,a
1131  0177 2007          	jra	L305
1132  0179               L774:
1133                     ; 376       DownCounter--;
1135  0179 1e03          	ldw	x,(OFST-1,sp)
1136  017b 1d0001        	subw	x,#1
1137  017e 1f03          	ldw	(OFST-1,sp),x
1139  0180               L305:
1140                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1142  0180 c650c5        	ld	a,20677
1143  0183 a508          	bcp	a,#8
1144  0185 2704          	jreq	L705
1146  0187 1e03          	ldw	x,(OFST-1,sp)
1147  0189 26ee          	jrne	L774
1148  018b               L705:
1149                     ; 379     if(DownCounter != 0)
1151  018b 1e03          	ldw	x,(OFST-1,sp)
1152  018d 270a          	jreq	L115
1153                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1155  018f 721250c5      	bset	20677,#1
1156                     ; 383       Swif = SUCCESS;
1158  0193 a601          	ld	a,#1
1159  0195 6b02          	ld	(OFST-2,sp),a
1162  0197 20b7          	jra	L174
1163  0199               L115:
1164                     ; 387       Swif = ERROR;
1166  0199 0f02          	clr	(OFST-2,sp)
1168  019b 20b3          	jra	L174
1169  019d               L715:
1170                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1172  019d 0d0a          	tnz	(OFST+6,sp)
1173  019f 260c          	jrne	L325
1175  01a1 7b01          	ld	a,(OFST-3,sp)
1176  01a3 a1d2          	cp	a,#210
1177  01a5 2606          	jrne	L325
1178                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1180  01a7 721750c0      	bres	20672,#3
1182  01ab 200e          	jra	L515
1183  01ad               L325:
1184                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1186  01ad 0d0a          	tnz	(OFST+6,sp)
1187  01af 260a          	jrne	L515
1189  01b1 7b01          	ld	a,(OFST-3,sp)
1190  01b3 a1b4          	cp	a,#180
1191  01b5 2604          	jrne	L515
1192                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1194  01b7 721150c1      	bres	20673,#0
1195  01bb               L515:
1196                     ; 406   return(Swif);
1198  01bb 7b02          	ld	a,(OFST-2,sp)
1201  01bd 5b06          	addw	sp,#6
1202  01bf 81            	ret
1340                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1340                     ; 416 {
1341                     	switch	.text
1342  01c0               _CLK_HSIPrescalerConfig:
1344  01c0 88            	push	a
1345       00000000      OFST:	set	0
1348                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1350                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1352  01c1 c650c6        	ld	a,20678
1353  01c4 a4e7          	and	a,#231
1354  01c6 c750c6        	ld	20678,a
1355                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1357  01c9 c650c6        	ld	a,20678
1358  01cc 1a01          	or	a,(OFST+1,sp)
1359  01ce c750c6        	ld	20678,a
1360                     ; 425 }
1363  01d1 84            	pop	a
1364  01d2 81            	ret
1499                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1499                     ; 437 {
1500                     	switch	.text
1501  01d3               _CLK_CCOConfig:
1503  01d3 88            	push	a
1504       00000000      OFST:	set	0
1507                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1509                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1511  01d4 c650c9        	ld	a,20681
1512  01d7 a4e1          	and	a,#225
1513  01d9 c750c9        	ld	20681,a
1514                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1516  01dc c650c9        	ld	a,20681
1517  01df 1a01          	or	a,(OFST+1,sp)
1518  01e1 c750c9        	ld	20681,a
1519                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1521  01e4 721050c9      	bset	20681,#0
1522                     ; 449 }
1525  01e8 84            	pop	a
1526  01e9 81            	ret
1591                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1591                     ; 460 {
1592                     	switch	.text
1593  01ea               _CLK_ITConfig:
1595  01ea 89            	pushw	x
1596       00000000      OFST:	set	0
1599                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1601                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1603                     ; 465   if (NewState != DISABLE)
1605  01eb 9f            	ld	a,xl
1606  01ec 4d            	tnz	a
1607  01ed 2719          	jreq	L527
1608                     ; 467     switch (CLK_IT)
1610  01ef 9e            	ld	a,xh
1612                     ; 475     default:
1612                     ; 476       break;
1613  01f0 a00c          	sub	a,#12
1614  01f2 270a          	jreq	L166
1615  01f4 a010          	sub	a,#16
1616  01f6 2624          	jrne	L337
1617                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1617                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1619  01f8 721450c5      	bset	20677,#2
1620                     ; 471       break;
1622  01fc 201e          	jra	L337
1623  01fe               L166:
1624                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1624                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1626  01fe 721450c8      	bset	20680,#2
1627                     ; 474       break;
1629  0202 2018          	jra	L337
1630  0204               L366:
1631                     ; 475     default:
1631                     ; 476       break;
1633  0204 2016          	jra	L337
1634  0206               L137:
1636  0206 2014          	jra	L337
1637  0208               L527:
1638                     ; 481     switch (CLK_IT)
1640  0208 7b01          	ld	a,(OFST+1,sp)
1642                     ; 489     default:
1642                     ; 490       break;
1643  020a a00c          	sub	a,#12
1644  020c 270a          	jreq	L766
1645  020e a010          	sub	a,#16
1646  0210 260a          	jrne	L337
1647                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1647                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1649  0212 721550c5      	bres	20677,#2
1650                     ; 485       break;
1652  0216 2004          	jra	L337
1653  0218               L766:
1654                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1654                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1656  0218 721550c8      	bres	20680,#2
1657                     ; 488       break;
1658  021c               L337:
1659                     ; 493 }
1662  021c 85            	popw	x
1663  021d 81            	ret
1664  021e               L176:
1665                     ; 489     default:
1665                     ; 490       break;
1667  021e 20fc          	jra	L337
1668  0220               L737:
1669  0220 20fa          	jra	L337
1704                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1704                     ; 501 {
1705                     	switch	.text
1706  0222               _CLK_SYSCLKConfig:
1708  0222 88            	push	a
1709       00000000      OFST:	set	0
1712                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1714                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1716  0223 a580          	bcp	a,#128
1717  0225 2614          	jrne	L757
1718                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1720  0227 c650c6        	ld	a,20678
1721  022a a4e7          	and	a,#231
1722  022c c750c6        	ld	20678,a
1723                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1725  022f 7b01          	ld	a,(OFST+1,sp)
1726  0231 a418          	and	a,#24
1727  0233 ca50c6        	or	a,20678
1728  0236 c750c6        	ld	20678,a
1730  0239 2012          	jra	L167
1731  023b               L757:
1732                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1734  023b c650c6        	ld	a,20678
1735  023e a4f8          	and	a,#248
1736  0240 c750c6        	ld	20678,a
1737                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1739  0243 7b01          	ld	a,(OFST+1,sp)
1740  0245 a407          	and	a,#7
1741  0247 ca50c6        	or	a,20678
1742  024a c750c6        	ld	20678,a
1743  024d               L167:
1744                     ; 515 }
1747  024d 84            	pop	a
1748  024e 81            	ret
1804                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1804                     ; 524 {
1805                     	switch	.text
1806  024f               _CLK_SWIMConfig:
1810                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1812                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1814  024f 4d            	tnz	a
1815  0250 2706          	jreq	L1101
1816                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1818  0252 721050cd      	bset	20685,#0
1820  0256 2004          	jra	L3101
1821  0258               L1101:
1822                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1824  0258 721150cd      	bres	20685,#0
1825  025c               L3101:
1826                     ; 538 }
1829  025c 81            	ret
1853                     ; 547 void CLK_ClockSecuritySystemEnable(void)
1853                     ; 548 {
1854                     	switch	.text
1855  025d               _CLK_ClockSecuritySystemEnable:
1859                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
1861  025d 721050c8      	bset	20680,#0
1862                     ; 551 }
1865  0261 81            	ret
1890                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1890                     ; 560 {
1891                     	switch	.text
1892  0262               _CLK_GetSYSCLKSource:
1896                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
1898  0262 c650c3        	ld	a,20675
1901  0265 81            	ret
1964                     ; 569 uint32_t CLK_GetClockFreq(void)
1964                     ; 570 {
1965                     	switch	.text
1966  0266               _CLK_GetClockFreq:
1968  0266 5209          	subw	sp,#9
1969       00000009      OFST:	set	9
1972                     ; 571   uint32_t clockfrequency = 0;
1974                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1976                     ; 573   uint8_t tmp = 0, presc = 0;
1980                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1982  0268 c650c3        	ld	a,20675
1983  026b 6b09          	ld	(OFST+0,sp),a
1985                     ; 578   if (clocksource == CLK_SOURCE_HSI)
1987  026d 7b09          	ld	a,(OFST+0,sp)
1988  026f a1e1          	cp	a,#225
1989  0271 2641          	jrne	L7601
1990                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1992  0273 c650c6        	ld	a,20678
1993  0276 a418          	and	a,#24
1994  0278 6b09          	ld	(OFST+0,sp),a
1996                     ; 581     tmp = (uint8_t)(tmp >> 3);
1998  027a 0409          	srl	(OFST+0,sp)
1999  027c 0409          	srl	(OFST+0,sp)
2000  027e 0409          	srl	(OFST+0,sp)
2002                     ; 582     presc = HSIDivFactor[tmp];
2004  0280 7b09          	ld	a,(OFST+0,sp)
2005  0282 5f            	clrw	x
2006  0283 97            	ld	xl,a
2007  0284 d60000        	ld	a,(_HSIDivFactor,x)
2008  0287 6b09          	ld	(OFST+0,sp),a
2010                     ; 583     clockfrequency = HSI_VALUE / presc;
2012  0289 7b09          	ld	a,(OFST+0,sp)
2013  028b b703          	ld	c_lreg+3,a
2014  028d 3f02          	clr	c_lreg+2
2015  028f 3f01          	clr	c_lreg+1
2016  0291 3f00          	clr	c_lreg
2017  0293 96            	ldw	x,sp
2018  0294 1c0001        	addw	x,#OFST-8
2019  0297 cd0000        	call	c_rtol
2022  029a ae2400        	ldw	x,#9216
2023  029d bf02          	ldw	c_lreg+2,x
2024  029f ae00f4        	ldw	x,#244
2025  02a2 bf00          	ldw	c_lreg,x
2026  02a4 96            	ldw	x,sp
2027  02a5 1c0001        	addw	x,#OFST-8
2028  02a8 cd0000        	call	c_ludv
2030  02ab 96            	ldw	x,sp
2031  02ac 1c0005        	addw	x,#OFST-4
2032  02af cd0000        	call	c_rtol
2036  02b2 201c          	jra	L1701
2037  02b4               L7601:
2038                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2040  02b4 7b09          	ld	a,(OFST+0,sp)
2041  02b6 a1d2          	cp	a,#210
2042  02b8 260c          	jrne	L3701
2043                     ; 587     clockfrequency = LSI_VALUE;
2045  02ba aef400        	ldw	x,#62464
2046  02bd 1f07          	ldw	(OFST-2,sp),x
2047  02bf ae0001        	ldw	x,#1
2048  02c2 1f05          	ldw	(OFST-4,sp),x
2051  02c4 200a          	jra	L1701
2052  02c6               L3701:
2053                     ; 591     clockfrequency = HSE_VALUE;
2055  02c6 ae2400        	ldw	x,#9216
2056  02c9 1f07          	ldw	(OFST-2,sp),x
2057  02cb ae00f4        	ldw	x,#244
2058  02ce 1f05          	ldw	(OFST-4,sp),x
2060  02d0               L1701:
2061                     ; 594   return((uint32_t)clockfrequency);
2063  02d0 96            	ldw	x,sp
2064  02d1 1c0005        	addw	x,#OFST-4
2065  02d4 cd0000        	call	c_ltor
2069  02d7 5b09          	addw	sp,#9
2070  02d9 81            	ret
2169                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2169                     ; 605 {
2170                     	switch	.text
2171  02da               _CLK_AdjustHSICalibrationValue:
2173  02da 88            	push	a
2174       00000000      OFST:	set	0
2177                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2179                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2181  02db c650cc        	ld	a,20684
2182  02de a4f8          	and	a,#248
2183  02e0 1a01          	or	a,(OFST+1,sp)
2184  02e2 c750cc        	ld	20684,a
2185                     ; 611 }
2188  02e5 84            	pop	a
2189  02e6 81            	ret
2213                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2213                     ; 623 {
2214                     	switch	.text
2215  02e7               _CLK_SYSCLKEmergencyClear:
2219                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2221  02e7 721150c5      	bres	20677,#0
2222                     ; 625 }
2225  02eb 81            	ret
2378                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2378                     ; 635 {
2379                     	switch	.text
2380  02ec               _CLK_GetFlagStatus:
2382  02ec 89            	pushw	x
2383  02ed 5203          	subw	sp,#3
2384       00000003      OFST:	set	3
2387                     ; 636   uint16_t statusreg = 0;
2389                     ; 637   uint8_t tmpreg = 0;
2391                     ; 638   FlagStatus bitstatus = RESET;
2393                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2395                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2397  02ef 01            	rrwa	x,a
2398  02f0 9f            	ld	a,xl
2399  02f1 a4ff          	and	a,#255
2400  02f3 97            	ld	xl,a
2401  02f4 4f            	clr	a
2402  02f5 02            	rlwa	x,a
2403  02f6 1f01          	ldw	(OFST-2,sp),x
2404  02f8 01            	rrwa	x,a
2406                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2408  02f9 1e01          	ldw	x,(OFST-2,sp)
2409  02fb a30100        	cpw	x,#256
2410  02fe 2607          	jrne	L1421
2411                     ; 649     tmpreg = CLK->ICKR;
2413  0300 c650c0        	ld	a,20672
2414  0303 6b03          	ld	(OFST+0,sp),a
2417  0305 202f          	jra	L3421
2418  0307               L1421:
2419                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2421  0307 1e01          	ldw	x,(OFST-2,sp)
2422  0309 a30200        	cpw	x,#512
2423  030c 2607          	jrne	L5421
2424                     ; 653     tmpreg = CLK->ECKR;
2426  030e c650c1        	ld	a,20673
2427  0311 6b03          	ld	(OFST+0,sp),a
2430  0313 2021          	jra	L3421
2431  0315               L5421:
2432                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2434  0315 1e01          	ldw	x,(OFST-2,sp)
2435  0317 a30300        	cpw	x,#768
2436  031a 2607          	jrne	L1521
2437                     ; 657     tmpreg = CLK->SWCR;
2439  031c c650c5        	ld	a,20677
2440  031f 6b03          	ld	(OFST+0,sp),a
2443  0321 2013          	jra	L3421
2444  0323               L1521:
2445                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2447  0323 1e01          	ldw	x,(OFST-2,sp)
2448  0325 a30400        	cpw	x,#1024
2449  0328 2607          	jrne	L5521
2450                     ; 661     tmpreg = CLK->CSSR;
2452  032a c650c8        	ld	a,20680
2453  032d 6b03          	ld	(OFST+0,sp),a
2456  032f 2005          	jra	L3421
2457  0331               L5521:
2458                     ; 665     tmpreg = CLK->CCOR;
2460  0331 c650c9        	ld	a,20681
2461  0334 6b03          	ld	(OFST+0,sp),a
2463  0336               L3421:
2464                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2466  0336 7b05          	ld	a,(OFST+2,sp)
2467  0338 1503          	bcp	a,(OFST+0,sp)
2468  033a 2706          	jreq	L1621
2469                     ; 670     bitstatus = SET;
2471  033c a601          	ld	a,#1
2472  033e 6b03          	ld	(OFST+0,sp),a
2475  0340 2002          	jra	L3621
2476  0342               L1621:
2477                     ; 674     bitstatus = RESET;
2479  0342 0f03          	clr	(OFST+0,sp)
2481  0344               L3621:
2482                     ; 678   return((FlagStatus)bitstatus);
2484  0344 7b03          	ld	a,(OFST+0,sp)
2487  0346 5b05          	addw	sp,#5
2488  0348 81            	ret
2534                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2534                     ; 688 {
2535                     	switch	.text
2536  0349               _CLK_GetITStatus:
2538  0349 88            	push	a
2539  034a 88            	push	a
2540       00000001      OFST:	set	1
2543                     ; 689   ITStatus bitstatus = RESET;
2545                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2547                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2549  034b a11c          	cp	a,#28
2550  034d 2611          	jrne	L7031
2551                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2553  034f c450c5        	and	a,20677
2554  0352 a10c          	cp	a,#12
2555  0354 2606          	jrne	L1131
2556                     ; 699       bitstatus = SET;
2558  0356 a601          	ld	a,#1
2559  0358 6b01          	ld	(OFST+0,sp),a
2562  035a 2015          	jra	L5131
2563  035c               L1131:
2564                     ; 703       bitstatus = RESET;
2566  035c 0f01          	clr	(OFST+0,sp)
2568  035e 2011          	jra	L5131
2569  0360               L7031:
2570                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2572  0360 c650c8        	ld	a,20680
2573  0363 1402          	and	a,(OFST+1,sp)
2574  0365 a10c          	cp	a,#12
2575  0367 2606          	jrne	L7131
2576                     ; 711       bitstatus = SET;
2578  0369 a601          	ld	a,#1
2579  036b 6b01          	ld	(OFST+0,sp),a
2582  036d 2002          	jra	L5131
2583  036f               L7131:
2584                     ; 715       bitstatus = RESET;
2586  036f 0f01          	clr	(OFST+0,sp)
2588  0371               L5131:
2589                     ; 720   return bitstatus;
2591  0371 7b01          	ld	a,(OFST+0,sp)
2594  0373 85            	popw	x
2595  0374 81            	ret
2631                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2631                     ; 730 {
2632                     	switch	.text
2633  0375               _CLK_ClearITPendingBit:
2637                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2639                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2641  0375 a10c          	cp	a,#12
2642  0377 2606          	jrne	L1431
2643                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2645  0379 721750c8      	bres	20680,#3
2647  037d 2004          	jra	L3431
2648  037f               L1431:
2649                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2651  037f 721750c5      	bres	20677,#3
2652  0383               L3431:
2653                     ; 745 }
2656  0383 81            	ret
2691                     	xdef	_CLKPrescTable
2692                     	xdef	_HSIDivFactor
2693                     	xdef	_CLK_ClearITPendingBit
2694                     	xdef	_CLK_GetITStatus
2695                     	xdef	_CLK_GetFlagStatus
2696                     	xdef	_CLK_GetSYSCLKSource
2697                     	xdef	_CLK_GetClockFreq
2698                     	xdef	_CLK_AdjustHSICalibrationValue
2699                     	xdef	_CLK_SYSCLKEmergencyClear
2700                     	xdef	_CLK_ClockSecuritySystemEnable
2701                     	xdef	_CLK_SWIMConfig
2702                     	xdef	_CLK_SYSCLKConfig
2703                     	xdef	_CLK_ITConfig
2704                     	xdef	_CLK_CCOConfig
2705                     	xdef	_CLK_HSIPrescalerConfig
2706                     	xdef	_CLK_ClockSwitchConfig
2707                     	xdef	_CLK_PeripheralClockConfig
2708                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2709                     	xdef	_CLK_FastHaltWakeUpCmd
2710                     	xdef	_CLK_ClockSwitchCmd
2711                     	xdef	_CLK_CCOCmd
2712                     	xdef	_CLK_LSICmd
2713                     	xdef	_CLK_HSICmd
2714                     	xdef	_CLK_HSECmd
2715                     	xdef	_CLK_DeInit
2716                     	xref.b	c_lreg
2717                     	xref.b	c_x
2736                     	xref	c_ltor
2737                     	xref	c_ludv
2738                     	xref	c_rtol
2739                     	end
