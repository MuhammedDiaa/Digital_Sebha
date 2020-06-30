#include "GPIO.h"



void GPIO_Init_Port_pin(tPort Port , unsigned char pin , tPortDir direction )
{
    REG_SET_BIT( (Port + Direction_REG_OFFSIT),pin , direction) ;
}


void GPIO_Set_Port_pin(tPort Port , unsigned char pin , unsigned char data)
{
    REG_SET_BIT(Port, pin ,data);
}


void GPIO_Init_Port(tPort Port , tPortDir direction )
{
    volatile unsigned char * temp = (unsigned char*)(Port + Direction_REG_OFFSIT);
    if(direction == OUT){
            *temp = 0b00000000 ;

    }else if(direction == IN ){
            *temp = 0b11111111 ;
    }
}


void GPIO_Set_Port(tPort Port , unsigned char data)
{
    volatile unsigned char * temp = (unsigned char*)(Port);
    *temp = data ;
}

unsigned char GPIO_Get_Port_Pin(tPort Port , unsigned char pin )
{
    return REG_GET_BIT(Port,pin) ;
}

unsigned char GPIO_Get_Port(tPort Port)
{
    volatile unsigned char * temp = (unsigned char*)(Port);

    return *temp ;
}
