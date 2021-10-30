
static char *itoa(int value, char *string, int radix) {
    int     i, d;
    int     flag = 0;
    char    *ptr = string;

    /* This implementation only works for decimal numbers. */
    if (radix != 10)
    {
        *ptr = 0;
        return string;
    }

    if (!value)
    {
        *ptr++ = 0x30;
        *ptr = 0;
        return string;
    }

    /* if this is a negative value insert the minus sign. */
    if (value < 0)
    {
        *ptr++ = '-';

        /* Make the value positive. */
        value *= -1;
    }

    for (i = 10000; i > 0; i /= 10)
    {
        d = value / i;

        if (d || flag)
        {
            *ptr++ = (char)(d + 0x30);
            value -= (d * i);
            flag = 1;
        }
    }

    /* Null terminate the string. */
    *ptr = 0;

    return string;

} 
void UART1_SendWord(uint8_t *Data){
  while(*Data)
  {
      UART1_SendData8(*Data++);
      while(!UART1_GetFlagStatus(UART1_FLAG_TXE));
  }
}
void UART1_SendNumber(int n){
	const char *s;
		char buf[16];
					itoa(n, buf, 10);
				for (s = buf; *s; s++) 
				{
					UART1_SendData8(*s);
					while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
				}
				
}