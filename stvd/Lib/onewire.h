// id:
// low,low:		sensor
// low,high:	rotator
// high,low:	pump

#include "delay.h"

#define OWInNoIt GPIO_Init(OWPort,OWPin, GPIO_MODE_IN_FL_NO_IT)
#define OWInIt GPIO_Init(OWPort,OWPin, GPIO_MODE_IN_FL_IT)
#define OWOut GPIO_Init(OWPort,OWPin, GPIO_MODE_OUT_PP_HIGH_FAST)
#define OWRead GPIO_ReadInputPin(OWPort, OWPin)
#define OWL GPIO_WriteLow(OWPort, OWPin)
#define OWH GPIO_WriteHigh(OWPort, OWPin)

// interupt response cost: 12us
// wakeup cost: 65-12=53us

static @inline void Delay_OW_Response(void) {
	_delay_cycl( (unsigned short)( T_COUNT(40));
}
static @inline void Delay_OW_Data(void) { 
	_delay_cycl( (unsigned short)( T_COUNT(200));
}
static @inline void Delay_OW_Sample(void) { // 1/2 data
	_delay_cycl( (unsigned short)( T_COUNT(100));
}
static @inline void Delay_OW_Silence(void) { 
	_delay_ms(800);
}
static @inline void Delay_ADC_Slave(void) { 
	_delay_ms(500);
}

void OWMasterWakeUpSlaves(void){	
	OWOut;
	OWL;
	Delay_OW_Response();
	Delay_OW_Data();	
	Delay_OW_Response();	
	Delay_OW_Data();		
	OWH;
	Delay_OW_Response();
}

void OWMasterTriggerSlaves(void){	
	bool b;
	OWOut;
	OWL;
	Delay_OW_Response();
	OWH;
	Delay_OW_Response();
}

void OWMasterWrite2Bit (bool l, bool r) {
	// device id: LL-sensor,LH-rotator,HL-preserved,HH-extender	
	OWOut;
	OWL;
	Delay_OW_Response();
	OWH;
	Delay_OW_Response();
	if (l) {
		OWH;
	} else {
		OWL;
	}
	Delay_OW_Response();
	Delay_OW_Data();	
	if (r) {
		OWH;
	} else {
		OWL;
	}
	Delay_OW_Response();
	Delay_OW_Data();		
	OWH;
	Delay_OW_Response();
}

bool OWMasterReadBit(void)
{
	bool b;
	OWOut;
	OWL;
	Delay_OW_Response();
	OWH;
	Delay_OW_Response();
	OWInNoIt;
	Delay_OW_Response();
	Delay_OW_Sample();
	b=OWRead;			
	Delay_OW_Sample();
	OWH;
	Delay_OW_Response();
	return b;
} 

void OWSlaveWriteBitH(void)
{
	OWOut;
	OWH;
	Delay_OW_Response();
	Delay_OW_Data();		
	Delay_OW_Response();		
}

void OWSlaveWriteBitL(void)
{
	OWOut;
	OWL;
	Delay_OW_Response();
	Delay_OW_Data();	
	OWH;
	Delay_OW_Response();		
}


unsigned int OWMasterReadBitN(char n)
{
	unsigned char s = 0;
	unsigned int value = 0;
	while(s < n)
	{		
		if(OWMasterReadBit())
		{
		value |= (1 << s);
		}	
		s++;
	}
		return value;
}

/*
unsigned int OWMasterReadInt(void)
{
	unsigned char msb = 0x00;
	unsigned char lsb = 0x00;
	unsigned int temp = 0; 
	
	lsb = OWMasterReadByte();
	msb = OWMasterReadByte();
	temp = msb;
	temp *= 256;
	temp += lsb;
	return temp;
}


unsigned char OWMasterReadByte(void)
{
	unsigned char s = 0x00;
	unsigned char value = 0x00;
	while(s < 8)
	{		
		if(OWMasterReadBit())
		{
		value |= (1 << s);
		}	
		s++;
	}
		return value;
} 

*/