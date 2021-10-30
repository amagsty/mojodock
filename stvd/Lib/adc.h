
// usage: 
// T=ADC(5);

unsigned int ADC(ADC1_Channel_TypeDef ADC_Channel){	
		unsigned int sum=0;
		int tmp;
		int max=0;
		int min=1024;
		char i;	
	
		ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
			ADC_Channel,
			ADC1_PRESSEL_FCPU_D2,
			ADC1_EXTTRIG_GPIO,
			DISABLE,
			ADC1_ALIGN_RIGHT,
			ADC1_SCHMITTTRIG_ALL,
			DISABLE);
			
		// drop first 3 value
		for(i=0;i<3;i++) {
			ADC1_StartConversion();
			while(ADC1_GetFlagStatus(ADC1_FLAG_EOC) == FALSE);
			ADC1_ClearFlag(ADC1_FLAG_EOC);
		}
		
		// sample 10 times
		for(i=0;i<10;i++) {
			ADC1_StartConversion();
			while(ADC1_GetFlagStatus(ADC1_FLAG_EOC) == FALSE);
			tmp= ADC1_GetConversionValue();
			ADC1_ClearFlag(ADC1_FLAG_EOC);
	
			if(tmp>max) max=tmp; 
			if(tmp<min) min=tmp; 
			sum+=tmp; 
		}
		// remove max and min
		sum=sum-(max+min); 
		// div by 8
		sum>>=3; 
		return sum; 
}

