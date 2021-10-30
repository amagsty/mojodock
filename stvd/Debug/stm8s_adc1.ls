   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  42                     ; 52 void ADC1_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _ADC1_DeInit:
  49                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  51  0000 725f5400      	clr	21504
  52                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  54  0004 725f5401      	clr	21505
  55                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  57  0008 725f5402      	clr	21506
  58                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  60  000c 725f5403      	clr	21507
  61                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  63  0010 725f5406      	clr	21510
  64                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  66  0014 725f5407      	clr	21511
  67                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  69  0018 35ff5408      	mov	21512,#255
  70                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  72  001c 35035409      	mov	21513,#3
  73                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  75  0020 725f540a      	clr	21514
  76                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  78  0024 725f540b      	clr	21515
  79                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  81  0028 725f540e      	clr	21518
  82                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  84  002c 725f540f      	clr	21519
  85                     ; 66 }
  88  0030 81            	ret
 539                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 539                     ; 89 {
 540                     	switch	.text
 541  0031               _ADC1_Init:
 543  0031 89            	pushw	x
 544       00000000      OFST:	set	0
 547                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 549                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 551                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 553                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 555                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 557                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 559                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 561                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 563                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 565  0032 7b08          	ld	a,(OFST+8,sp)
 566  0034 88            	push	a
 567  0035 9f            	ld	a,xl
 568  0036 97            	ld	xl,a
 569  0037 7b02          	ld	a,(OFST+2,sp)
 570  0039 95            	ld	xh,a
 571  003a cd013d        	call	_ADC1_ConversionConfig
 573  003d 84            	pop	a
 574                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 576  003e 7b05          	ld	a,(OFST+5,sp)
 577  0040 ad5a          	call	_ADC1_PrescalerConfig
 579                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 581  0042 7b07          	ld	a,(OFST+7,sp)
 582  0044 97            	ld	xl,a
 583  0045 7b06          	ld	a,(OFST+6,sp)
 584  0047 95            	ld	xh,a
 585  0048 cd016b        	call	_ADC1_ExternalTriggerConfig
 587                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 589  004b 7b0a          	ld	a,(OFST+10,sp)
 590  004d 97            	ld	xl,a
 591  004e 7b09          	ld	a,(OFST+9,sp)
 592  0050 95            	ld	xh,a
 593  0051 ad5c          	call	_ADC1_SchmittTriggerConfig
 595                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 597  0053 72105401      	bset	21505,#0
 598                     ; 119 }
 601  0057 85            	popw	x
 602  0058 81            	ret
 637                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 637                     ; 127 {
 638                     	switch	.text
 639  0059               _ADC1_Cmd:
 643                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 645                     ; 131   if (NewState != DISABLE)
 647  0059 4d            	tnz	a
 648  005a 2706          	jreq	L362
 649                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 651  005c 72105401      	bset	21505,#0
 653  0060 2004          	jra	L562
 654  0062               L362:
 655                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 657  0062 72115401      	bres	21505,#0
 658  0066               L562:
 659                     ; 139 }
 662  0066 81            	ret
 697                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 697                     ; 147 {
 698                     	switch	.text
 699  0067               _ADC1_ScanModeCmd:
 703                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 705                     ; 151   if (NewState != DISABLE)
 707  0067 4d            	tnz	a
 708  0068 2706          	jreq	L503
 709                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 711  006a 72125402      	bset	21506,#1
 713  006e 2004          	jra	L703
 714  0070               L503:
 715                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 717  0070 72135402      	bres	21506,#1
 718  0074               L703:
 719                     ; 159 }
 722  0074 81            	ret
 757                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 757                     ; 167 {
 758                     	switch	.text
 759  0075               _ADC1_DataBufferCmd:
 763                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 765                     ; 171   if (NewState != DISABLE)
 767  0075 4d            	tnz	a
 768  0076 2706          	jreq	L723
 769                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 771  0078 721e5403      	bset	21507,#7
 773  007c 2004          	jra	L133
 774  007e               L723:
 775                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 777  007e 721f5403      	bres	21507,#7
 778  0082               L133:
 779                     ; 179 }
 782  0082 81            	ret
 938                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
 938                     ; 191 {
 939                     	switch	.text
 940  0083               _ADC1_ITConfig:
 942  0083 89            	pushw	x
 943       00000000      OFST:	set	0
 946                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
 948                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 950                     ; 196   if (NewState != DISABLE)
 952  0084 0d05          	tnz	(OFST+5,sp)
 953  0086 2709          	jreq	L714
 954                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
 956  0088 9f            	ld	a,xl
 957  0089 ca5400        	or	a,21504
 958  008c c75400        	ld	21504,a
 960  008f 2009          	jra	L124
 961  0091               L714:
 962                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
 964  0091 7b02          	ld	a,(OFST+2,sp)
 965  0093 43            	cpl	a
 966  0094 c45400        	and	a,21504
 967  0097 c75400        	ld	21504,a
 968  009a               L124:
 969                     ; 206 }
 972  009a 85            	popw	x
 973  009b 81            	ret
1009                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1009                     ; 215 {
1010                     	switch	.text
1011  009c               _ADC1_PrescalerConfig:
1013  009c 88            	push	a
1014       00000000      OFST:	set	0
1017                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1019                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1021  009d c65401        	ld	a,21505
1022  00a0 a48f          	and	a,#143
1023  00a2 c75401        	ld	21505,a
1024                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1026  00a5 c65401        	ld	a,21505
1027  00a8 1a01          	or	a,(OFST+1,sp)
1028  00aa c75401        	ld	21505,a
1029                     ; 223 }
1032  00ad 84            	pop	a
1033  00ae 81            	ret
1080                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1080                     ; 234 {
1081                     	switch	.text
1082  00af               _ADC1_SchmittTriggerConfig:
1084  00af 89            	pushw	x
1085       00000000      OFST:	set	0
1088                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1090                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1092                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1094  00b0 9e            	ld	a,xh
1095  00b1 a1ff          	cp	a,#255
1096  00b3 2620          	jrne	L364
1097                     ; 241     if (NewState != DISABLE)
1099  00b5 9f            	ld	a,xl
1100  00b6 4d            	tnz	a
1101  00b7 270a          	jreq	L564
1102                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1104  00b9 725f5407      	clr	21511
1105                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1107  00bd 725f5406      	clr	21510
1109  00c1 2078          	jra	L174
1110  00c3               L564:
1111                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1113  00c3 c65407        	ld	a,21511
1114  00c6 aaff          	or	a,#255
1115  00c8 c75407        	ld	21511,a
1116                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1118  00cb c65406        	ld	a,21510
1119  00ce aaff          	or	a,#255
1120  00d0 c75406        	ld	21510,a
1121  00d3 2066          	jra	L174
1122  00d5               L364:
1123                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1125  00d5 7b01          	ld	a,(OFST+1,sp)
1126  00d7 a108          	cp	a,#8
1127  00d9 242f          	jruge	L374
1128                     ; 254     if (NewState != DISABLE)
1130  00db 0d02          	tnz	(OFST+2,sp)
1131  00dd 2716          	jreq	L574
1132                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1134  00df 7b01          	ld	a,(OFST+1,sp)
1135  00e1 5f            	clrw	x
1136  00e2 97            	ld	xl,a
1137  00e3 a601          	ld	a,#1
1138  00e5 5d            	tnzw	x
1139  00e6 2704          	jreq	L42
1140  00e8               L62:
1141  00e8 48            	sll	a
1142  00e9 5a            	decw	x
1143  00ea 26fc          	jrne	L62
1144  00ec               L42:
1145  00ec 43            	cpl	a
1146  00ed c45407        	and	a,21511
1147  00f0 c75407        	ld	21511,a
1149  00f3 2046          	jra	L174
1150  00f5               L574:
1151                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1153  00f5 7b01          	ld	a,(OFST+1,sp)
1154  00f7 5f            	clrw	x
1155  00f8 97            	ld	xl,a
1156  00f9 a601          	ld	a,#1
1157  00fb 5d            	tnzw	x
1158  00fc 2704          	jreq	L03
1159  00fe               L23:
1160  00fe 48            	sll	a
1161  00ff 5a            	decw	x
1162  0100 26fc          	jrne	L23
1163  0102               L03:
1164  0102 ca5407        	or	a,21511
1165  0105 c75407        	ld	21511,a
1166  0108 2031          	jra	L174
1167  010a               L374:
1168                     ; 265     if (NewState != DISABLE)
1170  010a 0d02          	tnz	(OFST+2,sp)
1171  010c 2718          	jreq	L305
1172                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1174  010e 7b01          	ld	a,(OFST+1,sp)
1175  0110 a008          	sub	a,#8
1176  0112 5f            	clrw	x
1177  0113 97            	ld	xl,a
1178  0114 a601          	ld	a,#1
1179  0116 5d            	tnzw	x
1180  0117 2704          	jreq	L43
1181  0119               L63:
1182  0119 48            	sll	a
1183  011a 5a            	decw	x
1184  011b 26fc          	jrne	L63
1185  011d               L43:
1186  011d 43            	cpl	a
1187  011e c45406        	and	a,21510
1188  0121 c75406        	ld	21510,a
1190  0124 2015          	jra	L174
1191  0126               L305:
1192                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1194  0126 7b01          	ld	a,(OFST+1,sp)
1195  0128 a008          	sub	a,#8
1196  012a 5f            	clrw	x
1197  012b 97            	ld	xl,a
1198  012c a601          	ld	a,#1
1199  012e 5d            	tnzw	x
1200  012f 2704          	jreq	L04
1201  0131               L24:
1202  0131 48            	sll	a
1203  0132 5a            	decw	x
1204  0133 26fc          	jrne	L24
1205  0135               L04:
1206  0135 ca5406        	or	a,21510
1207  0138 c75406        	ld	21510,a
1208  013b               L174:
1209                     ; 274 }
1212  013b 85            	popw	x
1213  013c 81            	ret
1270                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1270                     ; 287 {
1271                     	switch	.text
1272  013d               _ADC1_ConversionConfig:
1274  013d 89            	pushw	x
1275       00000000      OFST:	set	0
1278                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1280                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1282                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1284                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1286  013e 72175402      	bres	21506,#3
1287                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1289  0142 c65402        	ld	a,21506
1290  0145 1a05          	or	a,(OFST+5,sp)
1291  0147 c75402        	ld	21506,a
1292                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1294  014a 9e            	ld	a,xh
1295  014b a101          	cp	a,#1
1296  014d 2606          	jrne	L535
1297                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1299  014f 72125401      	bset	21505,#1
1301  0153 2004          	jra	L735
1302  0155               L535:
1303                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1305  0155 72135401      	bres	21505,#1
1306  0159               L735:
1307                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1309  0159 c65400        	ld	a,21504
1310  015c a4f0          	and	a,#240
1311  015e c75400        	ld	21504,a
1312                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1314  0161 c65400        	ld	a,21504
1315  0164 1a02          	or	a,(OFST+2,sp)
1316  0166 c75400        	ld	21504,a
1317                     ; 313 }
1320  0169 85            	popw	x
1321  016a 81            	ret
1367                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1367                     ; 326 {
1368                     	switch	.text
1369  016b               _ADC1_ExternalTriggerConfig:
1371  016b 89            	pushw	x
1372       00000000      OFST:	set	0
1375                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1377                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1379                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1381  016c c65402        	ld	a,21506
1382  016f a4cf          	and	a,#207
1383  0171 c75402        	ld	21506,a
1384                     ; 334   if (NewState != DISABLE)
1386  0174 9f            	ld	a,xl
1387  0175 4d            	tnz	a
1388  0176 2706          	jreq	L365
1389                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1391  0178 721c5402      	bset	21506,#6
1393  017c 2004          	jra	L565
1394  017e               L365:
1395                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1397  017e 721d5402      	bres	21506,#6
1398  0182               L565:
1399                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1401  0182 c65402        	ld	a,21506
1402  0185 1a01          	or	a,(OFST+1,sp)
1403  0187 c75402        	ld	21506,a
1404                     ; 347 }
1407  018a 85            	popw	x
1408  018b 81            	ret
1432                     ; 358 void ADC1_StartConversion(void)
1432                     ; 359 {
1433                     	switch	.text
1434  018c               _ADC1_StartConversion:
1438                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1440  018c 72105401      	bset	21505,#0
1441                     ; 361 }
1444  0190 81            	ret
1488                     ; 370 uint16_t ADC1_GetConversionValue(void)
1488                     ; 371 {
1489                     	switch	.text
1490  0191               _ADC1_GetConversionValue:
1492  0191 5205          	subw	sp,#5
1493       00000005      OFST:	set	5
1496                     ; 372   uint16_t temph = 0;
1498                     ; 373   uint8_t templ = 0;
1500                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1502  0193 c65402        	ld	a,21506
1503  0196 a508          	bcp	a,#8
1504  0198 2715          	jreq	L126
1505                     ; 378     templ = ADC1->DRL;
1507  019a c65405        	ld	a,21509
1508  019d 6b03          	ld	(OFST-2,sp),a
1510                     ; 380     temph = ADC1->DRH;
1512  019f c65404        	ld	a,21508
1513  01a2 5f            	clrw	x
1514  01a3 97            	ld	xl,a
1515  01a4 1f04          	ldw	(OFST-1,sp),x
1517                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1519  01a6 1e04          	ldw	x,(OFST-1,sp)
1520  01a8 7b03          	ld	a,(OFST-2,sp)
1521  01aa 02            	rlwa	x,a
1522  01ab 1f04          	ldw	(OFST-1,sp),x
1525  01ad 2021          	jra	L326
1526  01af               L126:
1527                     ; 387     temph = ADC1->DRH;
1529  01af c65404        	ld	a,21508
1530  01b2 5f            	clrw	x
1531  01b3 97            	ld	xl,a
1532  01b4 1f04          	ldw	(OFST-1,sp),x
1534                     ; 389     templ = ADC1->DRL;
1536  01b6 c65405        	ld	a,21509
1537  01b9 6b03          	ld	(OFST-2,sp),a
1539                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1541  01bb 1e04          	ldw	x,(OFST-1,sp)
1542  01bd 4f            	clr	a
1543  01be 02            	rlwa	x,a
1544  01bf 1f01          	ldw	(OFST-4,sp),x
1546  01c1 7b03          	ld	a,(OFST-2,sp)
1547  01c3 97            	ld	xl,a
1548  01c4 a640          	ld	a,#64
1549  01c6 42            	mul	x,a
1550  01c7 01            	rrwa	x,a
1551  01c8 1a02          	or	a,(OFST-3,sp)
1552  01ca 01            	rrwa	x,a
1553  01cb 1a01          	or	a,(OFST-4,sp)
1554  01cd 01            	rrwa	x,a
1555  01ce 1f04          	ldw	(OFST-1,sp),x
1557  01d0               L326:
1558                     ; 394   return ((uint16_t)temph);
1560  01d0 1e04          	ldw	x,(OFST-1,sp)
1563  01d2 5b05          	addw	sp,#5
1564  01d4 81            	ret
1610                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1610                     ; 406 {
1611                     	switch	.text
1612  01d5               _ADC1_AWDChannelConfig:
1614  01d5 89            	pushw	x
1615       00000000      OFST:	set	0
1618                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1620                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1622                     ; 411   if (Channel < (uint8_t)8)
1624  01d6 9e            	ld	a,xh
1625  01d7 a108          	cp	a,#8
1626  01d9 242e          	jruge	L746
1627                     ; 413     if (NewState != DISABLE)
1629  01db 9f            	ld	a,xl
1630  01dc 4d            	tnz	a
1631  01dd 2714          	jreq	L156
1632                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1634  01df 9e            	ld	a,xh
1635  01e0 5f            	clrw	x
1636  01e1 97            	ld	xl,a
1637  01e2 a601          	ld	a,#1
1638  01e4 5d            	tnzw	x
1639  01e5 2704          	jreq	L65
1640  01e7               L06:
1641  01e7 48            	sll	a
1642  01e8 5a            	decw	x
1643  01e9 26fc          	jrne	L06
1644  01eb               L65:
1645  01eb ca540f        	or	a,21519
1646  01ee c7540f        	ld	21519,a
1648  01f1 2047          	jra	L556
1649  01f3               L156:
1650                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
1652  01f3 7b01          	ld	a,(OFST+1,sp)
1653  01f5 5f            	clrw	x
1654  01f6 97            	ld	xl,a
1655  01f7 a601          	ld	a,#1
1656  01f9 5d            	tnzw	x
1657  01fa 2704          	jreq	L26
1658  01fc               L46:
1659  01fc 48            	sll	a
1660  01fd 5a            	decw	x
1661  01fe 26fc          	jrne	L46
1662  0200               L26:
1663  0200 43            	cpl	a
1664  0201 c4540f        	and	a,21519
1665  0204 c7540f        	ld	21519,a
1666  0207 2031          	jra	L556
1667  0209               L746:
1668                     ; 424     if (NewState != DISABLE)
1670  0209 0d02          	tnz	(OFST+2,sp)
1671  020b 2717          	jreq	L756
1672                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
1674  020d 7b01          	ld	a,(OFST+1,sp)
1675  020f a008          	sub	a,#8
1676  0211 5f            	clrw	x
1677  0212 97            	ld	xl,a
1678  0213 a601          	ld	a,#1
1679  0215 5d            	tnzw	x
1680  0216 2704          	jreq	L66
1681  0218               L07:
1682  0218 48            	sll	a
1683  0219 5a            	decw	x
1684  021a 26fc          	jrne	L07
1685  021c               L66:
1686  021c ca540e        	or	a,21518
1687  021f c7540e        	ld	21518,a
1689  0222 2016          	jra	L556
1690  0224               L756:
1691                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
1693  0224 7b01          	ld	a,(OFST+1,sp)
1694  0226 a008          	sub	a,#8
1695  0228 5f            	clrw	x
1696  0229 97            	ld	xl,a
1697  022a a601          	ld	a,#1
1698  022c 5d            	tnzw	x
1699  022d 2704          	jreq	L27
1700  022f               L47:
1701  022f 48            	sll	a
1702  0230 5a            	decw	x
1703  0231 26fc          	jrne	L47
1704  0233               L27:
1705  0233 43            	cpl	a
1706  0234 c4540e        	and	a,21518
1707  0237 c7540e        	ld	21518,a
1708  023a               L556:
1709                     ; 433 }
1712  023a 85            	popw	x
1713  023b 81            	ret
1748                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
1748                     ; 442 {
1749                     	switch	.text
1750  023c               _ADC1_SetHighThreshold:
1752  023c 89            	pushw	x
1753       00000000      OFST:	set	0
1756                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
1758  023d 54            	srlw	x
1759  023e 54            	srlw	x
1760  023f 9f            	ld	a,xl
1761  0240 c75408        	ld	21512,a
1762                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
1764  0243 7b02          	ld	a,(OFST+2,sp)
1765  0245 c75409        	ld	21513,a
1766                     ; 445 }
1769  0248 85            	popw	x
1770  0249 81            	ret
1805                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
1805                     ; 454 {
1806                     	switch	.text
1807  024a               _ADC1_SetLowThreshold:
1811                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
1813  024a 9f            	ld	a,xl
1814  024b c7540b        	ld	21515,a
1815                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
1817  024e 54            	srlw	x
1818  024f 54            	srlw	x
1819  0250 9f            	ld	a,xl
1820  0251 c7540a        	ld	21514,a
1821                     ; 457 }
1824  0254 81            	ret
1877                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
1877                     ; 467 {
1878                     	switch	.text
1879  0255               _ADC1_GetBufferValue:
1881  0255 88            	push	a
1882  0256 5205          	subw	sp,#5
1883       00000005      OFST:	set	5
1886                     ; 468   uint16_t temph = 0;
1888                     ; 469   uint8_t templ = 0;
1890                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
1892                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1894  0258 c65402        	ld	a,21506
1895  025b a508          	bcp	a,#8
1896  025d 271f          	jreq	L547
1897                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1899  025f 7b06          	ld	a,(OFST+1,sp)
1900  0261 48            	sll	a
1901  0262 5f            	clrw	x
1902  0263 97            	ld	xl,a
1903  0264 d653e1        	ld	a,(21473,x)
1904  0267 6b03          	ld	(OFST-2,sp),a
1906                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1908  0269 7b06          	ld	a,(OFST+1,sp)
1909  026b 48            	sll	a
1910  026c 5f            	clrw	x
1911  026d 97            	ld	xl,a
1912  026e d653e0        	ld	a,(21472,x)
1913  0271 5f            	clrw	x
1914  0272 97            	ld	xl,a
1915  0273 1f04          	ldw	(OFST-1,sp),x
1917                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1919  0275 1e04          	ldw	x,(OFST-1,sp)
1920  0277 7b03          	ld	a,(OFST-2,sp)
1921  0279 02            	rlwa	x,a
1922  027a 1f04          	ldw	(OFST-1,sp),x
1925  027c 202b          	jra	L747
1926  027e               L547:
1927                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1929  027e 7b06          	ld	a,(OFST+1,sp)
1930  0280 48            	sll	a
1931  0281 5f            	clrw	x
1932  0282 97            	ld	xl,a
1933  0283 d653e0        	ld	a,(21472,x)
1934  0286 5f            	clrw	x
1935  0287 97            	ld	xl,a
1936  0288 1f04          	ldw	(OFST-1,sp),x
1938                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1940  028a 7b06          	ld	a,(OFST+1,sp)
1941  028c 48            	sll	a
1942  028d 5f            	clrw	x
1943  028e 97            	ld	xl,a
1944  028f d653e1        	ld	a,(21473,x)
1945  0292 6b03          	ld	(OFST-2,sp),a
1947                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
1949  0294 1e04          	ldw	x,(OFST-1,sp)
1950  0296 4f            	clr	a
1951  0297 02            	rlwa	x,a
1952  0298 1f01          	ldw	(OFST-4,sp),x
1954  029a 7b03          	ld	a,(OFST-2,sp)
1955  029c 97            	ld	xl,a
1956  029d a640          	ld	a,#64
1957  029f 42            	mul	x,a
1958  02a0 01            	rrwa	x,a
1959  02a1 1a02          	or	a,(OFST-3,sp)
1960  02a3 01            	rrwa	x,a
1961  02a4 1a01          	or	a,(OFST-4,sp)
1962  02a6 01            	rrwa	x,a
1963  02a7 1f04          	ldw	(OFST-1,sp),x
1965  02a9               L747:
1966                     ; 493   return ((uint16_t)temph);
1968  02a9 1e04          	ldw	x,(OFST-1,sp)
1971  02ab 5b06          	addw	sp,#6
1972  02ad 81            	ret
2038                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2038                     ; 503 {
2039                     	switch	.text
2040  02ae               _ADC1_GetAWDChannelStatus:
2042  02ae 88            	push	a
2043  02af 88            	push	a
2044       00000001      OFST:	set	1
2047                     ; 504   uint8_t status = 0;
2049                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2051                     ; 509   if (Channel < (uint8_t)8)
2053  02b0 a108          	cp	a,#8
2054  02b2 2412          	jruge	L3001
2055                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2057  02b4 5f            	clrw	x
2058  02b5 97            	ld	xl,a
2059  02b6 a601          	ld	a,#1
2060  02b8 5d            	tnzw	x
2061  02b9 2704          	jreq	L601
2062  02bb               L011:
2063  02bb 48            	sll	a
2064  02bc 5a            	decw	x
2065  02bd 26fc          	jrne	L011
2066  02bf               L601:
2067  02bf c4540d        	and	a,21517
2068  02c2 6b01          	ld	(OFST+0,sp),a
2071  02c4 2014          	jra	L5001
2072  02c6               L3001:
2073                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2075  02c6 7b02          	ld	a,(OFST+1,sp)
2076  02c8 a008          	sub	a,#8
2077  02ca 5f            	clrw	x
2078  02cb 97            	ld	xl,a
2079  02cc a601          	ld	a,#1
2080  02ce 5d            	tnzw	x
2081  02cf 2704          	jreq	L211
2082  02d1               L411:
2083  02d1 48            	sll	a
2084  02d2 5a            	decw	x
2085  02d3 26fc          	jrne	L411
2086  02d5               L211:
2087  02d5 c4540c        	and	a,21516
2088  02d8 6b01          	ld	(OFST+0,sp),a
2090  02da               L5001:
2091                     ; 518   return ((FlagStatus)status);
2093  02da 7b01          	ld	a,(OFST+0,sp)
2096  02dc 85            	popw	x
2097  02dd 81            	ret
2255                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2255                     ; 528 {
2256                     	switch	.text
2257  02de               _ADC1_GetFlagStatus:
2259  02de 88            	push	a
2260  02df 88            	push	a
2261       00000001      OFST:	set	1
2264                     ; 529   uint8_t flagstatus = 0;
2266                     ; 530   uint8_t temp = 0;
2268                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2270                     ; 535   if ((Flag & 0x0F) == 0x01)
2272  02e0 a40f          	and	a,#15
2273  02e2 a101          	cp	a,#1
2274  02e4 2609          	jrne	L5701
2275                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2277  02e6 c65403        	ld	a,21507
2278  02e9 a440          	and	a,#64
2279  02eb 6b01          	ld	(OFST+0,sp),a
2282  02ed 2045          	jra	L7701
2283  02ef               L5701:
2284                     ; 540   else if ((Flag & 0xF0) == 0x10)
2286  02ef 7b02          	ld	a,(OFST+1,sp)
2287  02f1 a4f0          	and	a,#240
2288  02f3 a110          	cp	a,#16
2289  02f5 2636          	jrne	L1011
2290                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2292  02f7 7b02          	ld	a,(OFST+1,sp)
2293  02f9 a40f          	and	a,#15
2294  02fb 6b01          	ld	(OFST+0,sp),a
2296                     ; 544     if (temp < 8)
2298  02fd 7b01          	ld	a,(OFST+0,sp)
2299  02ff a108          	cp	a,#8
2300  0301 2414          	jruge	L3011
2301                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2303  0303 7b01          	ld	a,(OFST+0,sp)
2304  0305 5f            	clrw	x
2305  0306 97            	ld	xl,a
2306  0307 a601          	ld	a,#1
2307  0309 5d            	tnzw	x
2308  030a 2704          	jreq	L021
2309  030c               L221:
2310  030c 48            	sll	a
2311  030d 5a            	decw	x
2312  030e 26fc          	jrne	L221
2313  0310               L021:
2314  0310 c4540d        	and	a,21517
2315  0313 6b01          	ld	(OFST+0,sp),a
2318  0315 201d          	jra	L7701
2319  0317               L3011:
2320                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2322  0317 7b01          	ld	a,(OFST+0,sp)
2323  0319 a008          	sub	a,#8
2324  031b 5f            	clrw	x
2325  031c 97            	ld	xl,a
2326  031d a601          	ld	a,#1
2327  031f 5d            	tnzw	x
2328  0320 2704          	jreq	L421
2329  0322               L621:
2330  0322 48            	sll	a
2331  0323 5a            	decw	x
2332  0324 26fc          	jrne	L621
2333  0326               L421:
2334  0326 c4540c        	and	a,21516
2335  0329 6b01          	ld	(OFST+0,sp),a
2337  032b 2007          	jra	L7701
2338  032d               L1011:
2339                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2341  032d c65400        	ld	a,21504
2342  0330 1402          	and	a,(OFST+1,sp)
2343  0332 6b01          	ld	(OFST+0,sp),a
2345  0334               L7701:
2346                     ; 557   return ((FlagStatus)flagstatus);
2348  0334 7b01          	ld	a,(OFST+0,sp)
2351  0336 85            	popw	x
2352  0337 81            	ret
2396                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2396                     ; 568 {
2397                     	switch	.text
2398  0338               _ADC1_ClearFlag:
2400  0338 88            	push	a
2401  0339 88            	push	a
2402       00000001      OFST:	set	1
2405                     ; 569   uint8_t temp = 0;
2407                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2409                     ; 574   if ((Flag & 0x0F) == 0x01)
2411  033a a40f          	and	a,#15
2412  033c a101          	cp	a,#1
2413  033e 2606          	jrne	L3311
2414                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2416  0340 721d5403      	bres	21507,#6
2418  0344 204b          	jra	L5311
2419  0346               L3311:
2420                     ; 579   else if ((Flag & 0xF0) == 0x10)
2422  0346 7b02          	ld	a,(OFST+1,sp)
2423  0348 a4f0          	and	a,#240
2424  034a a110          	cp	a,#16
2425  034c 263a          	jrne	L7311
2426                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2428  034e 7b02          	ld	a,(OFST+1,sp)
2429  0350 a40f          	and	a,#15
2430  0352 6b01          	ld	(OFST+0,sp),a
2432                     ; 583     if (temp < 8)
2434  0354 7b01          	ld	a,(OFST+0,sp)
2435  0356 a108          	cp	a,#8
2436  0358 2416          	jruge	L1411
2437                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2439  035a 7b01          	ld	a,(OFST+0,sp)
2440  035c 5f            	clrw	x
2441  035d 97            	ld	xl,a
2442  035e a601          	ld	a,#1
2443  0360 5d            	tnzw	x
2444  0361 2704          	jreq	L231
2445  0363               L431:
2446  0363 48            	sll	a
2447  0364 5a            	decw	x
2448  0365 26fc          	jrne	L431
2449  0367               L231:
2450  0367 43            	cpl	a
2451  0368 c4540d        	and	a,21517
2452  036b c7540d        	ld	21517,a
2454  036e 2021          	jra	L5311
2455  0370               L1411:
2456                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2458  0370 7b01          	ld	a,(OFST+0,sp)
2459  0372 a008          	sub	a,#8
2460  0374 5f            	clrw	x
2461  0375 97            	ld	xl,a
2462  0376 a601          	ld	a,#1
2463  0378 5d            	tnzw	x
2464  0379 2704          	jreq	L631
2465  037b               L041:
2466  037b 48            	sll	a
2467  037c 5a            	decw	x
2468  037d 26fc          	jrne	L041
2469  037f               L631:
2470  037f 43            	cpl	a
2471  0380 c4540c        	and	a,21516
2472  0383 c7540c        	ld	21516,a
2473  0386 2009          	jra	L5311
2474  0388               L7311:
2475                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2477  0388 7b02          	ld	a,(OFST+1,sp)
2478  038a 43            	cpl	a
2479  038b c45400        	and	a,21504
2480  038e c75400        	ld	21504,a
2481  0391               L5311:
2482                     ; 596 }
2485  0391 85            	popw	x
2486  0392 81            	ret
2541                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2541                     ; 617 {
2542                     	switch	.text
2543  0393               _ADC1_GetITStatus:
2545  0393 89            	pushw	x
2546  0394 88            	push	a
2547       00000001      OFST:	set	1
2550                     ; 618   ITStatus itstatus = RESET;
2552                     ; 619   uint8_t temp = 0;
2554                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2556                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
2558  0395 01            	rrwa	x,a
2559  0396 a4f0          	and	a,#240
2560  0398 5f            	clrw	x
2561  0399 02            	rlwa	x,a
2562  039a a30010        	cpw	x,#16
2563  039d 2636          	jrne	L5711
2564                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
2566  039f 7b03          	ld	a,(OFST+2,sp)
2567  03a1 a40f          	and	a,#15
2568  03a3 6b01          	ld	(OFST+0,sp),a
2570                     ; 628     if (temp < 8)
2572  03a5 7b01          	ld	a,(OFST+0,sp)
2573  03a7 a108          	cp	a,#8
2574  03a9 2414          	jruge	L7711
2575                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2577  03ab 7b01          	ld	a,(OFST+0,sp)
2578  03ad 5f            	clrw	x
2579  03ae 97            	ld	xl,a
2580  03af a601          	ld	a,#1
2581  03b1 5d            	tnzw	x
2582  03b2 2704          	jreq	L441
2583  03b4               L641:
2584  03b4 48            	sll	a
2585  03b5 5a            	decw	x
2586  03b6 26fc          	jrne	L641
2587  03b8               L441:
2588  03b8 c4540d        	and	a,21517
2589  03bb 6b01          	ld	(OFST+0,sp),a
2592  03bd 201d          	jra	L3021
2593  03bf               L7711:
2594                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2596  03bf 7b01          	ld	a,(OFST+0,sp)
2597  03c1 a008          	sub	a,#8
2598  03c3 5f            	clrw	x
2599  03c4 97            	ld	xl,a
2600  03c5 a601          	ld	a,#1
2601  03c7 5d            	tnzw	x
2602  03c8 2704          	jreq	L051
2603  03ca               L251:
2604  03ca 48            	sll	a
2605  03cb 5a            	decw	x
2606  03cc 26fc          	jrne	L251
2607  03ce               L051:
2608  03ce c4540c        	and	a,21516
2609  03d1 6b01          	ld	(OFST+0,sp),a
2611  03d3 2007          	jra	L3021
2612  03d5               L5711:
2613                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
2615  03d5 c65400        	ld	a,21504
2616  03d8 1403          	and	a,(OFST+2,sp)
2617  03da 6b01          	ld	(OFST+0,sp),a
2619  03dc               L3021:
2620                     ; 641   return ((ITStatus)itstatus);
2622  03dc 7b01          	ld	a,(OFST+0,sp)
2625  03de 5b03          	addw	sp,#3
2626  03e0 81            	ret
2671                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
2671                     ; 663 {
2672                     	switch	.text
2673  03e1               _ADC1_ClearITPendingBit:
2675  03e1 89            	pushw	x
2676  03e2 88            	push	a
2677       00000001      OFST:	set	1
2680                     ; 664   uint8_t temp = 0;
2682                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2684                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
2686  03e3 01            	rrwa	x,a
2687  03e4 a4f0          	and	a,#240
2688  03e6 5f            	clrw	x
2689  03e7 02            	rlwa	x,a
2690  03e8 a30010        	cpw	x,#16
2691  03eb 263a          	jrne	L7221
2692                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
2694  03ed 7b03          	ld	a,(OFST+2,sp)
2695  03ef a40f          	and	a,#15
2696  03f1 6b01          	ld	(OFST+0,sp),a
2698                     ; 673     if (temp < 8)
2700  03f3 7b01          	ld	a,(OFST+0,sp)
2701  03f5 a108          	cp	a,#8
2702  03f7 2416          	jruge	L1321
2703                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2705  03f9 7b01          	ld	a,(OFST+0,sp)
2706  03fb 5f            	clrw	x
2707  03fc 97            	ld	xl,a
2708  03fd a601          	ld	a,#1
2709  03ff 5d            	tnzw	x
2710  0400 2704          	jreq	L651
2711  0402               L061:
2712  0402 48            	sll	a
2713  0403 5a            	decw	x
2714  0404 26fc          	jrne	L061
2715  0406               L651:
2716  0406 43            	cpl	a
2717  0407 c4540d        	and	a,21517
2718  040a c7540d        	ld	21517,a
2720  040d 2021          	jra	L5321
2721  040f               L1321:
2722                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2724  040f 7b01          	ld	a,(OFST+0,sp)
2725  0411 a008          	sub	a,#8
2726  0413 5f            	clrw	x
2727  0414 97            	ld	xl,a
2728  0415 a601          	ld	a,#1
2729  0417 5d            	tnzw	x
2730  0418 2704          	jreq	L261
2731  041a               L461:
2732  041a 48            	sll	a
2733  041b 5a            	decw	x
2734  041c 26fc          	jrne	L461
2735  041e               L261:
2736  041e 43            	cpl	a
2737  041f c4540c        	and	a,21516
2738  0422 c7540c        	ld	21516,a
2739  0425 2009          	jra	L5321
2740  0427               L7221:
2741                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
2743  0427 7b03          	ld	a,(OFST+2,sp)
2744  0429 43            	cpl	a
2745  042a c45400        	and	a,21504
2746  042d c75400        	ld	21504,a
2747  0430               L5321:
2748                     ; 686 }
2751  0430 5b03          	addw	sp,#3
2752  0432 81            	ret
2765                     	xdef	_ADC1_ClearITPendingBit
2766                     	xdef	_ADC1_GetITStatus
2767                     	xdef	_ADC1_ClearFlag
2768                     	xdef	_ADC1_GetFlagStatus
2769                     	xdef	_ADC1_GetAWDChannelStatus
2770                     	xdef	_ADC1_GetBufferValue
2771                     	xdef	_ADC1_SetLowThreshold
2772                     	xdef	_ADC1_SetHighThreshold
2773                     	xdef	_ADC1_GetConversionValue
2774                     	xdef	_ADC1_StartConversion
2775                     	xdef	_ADC1_AWDChannelConfig
2776                     	xdef	_ADC1_ExternalTriggerConfig
2777                     	xdef	_ADC1_ConversionConfig
2778                     	xdef	_ADC1_SchmittTriggerConfig
2779                     	xdef	_ADC1_PrescalerConfig
2780                     	xdef	_ADC1_ITConfig
2781                     	xdef	_ADC1_DataBufferCmd
2782                     	xdef	_ADC1_ScanModeCmd
2783                     	xdef	_ADC1_Cmd
2784                     	xdef	_ADC1_Init
2785                     	xdef	_ADC1_DeInit
2804                     	end
