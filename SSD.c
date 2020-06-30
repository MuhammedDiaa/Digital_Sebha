#include "SSD.h"


//Seven segment display lookup table
static const unsigned char symbols [11] = {
    0b00111111,
    0b00000110,
    0b01011011,
    0b01001111,
    0b01100110,
    0b01101101,
    0b01111101,
    0b00000111,
    0b01111111,
    0b01101111,
    0b00000000
};

unsigned char SSD_symbols[SSD_NUMBER]={SSD_NULL};

void SSD_Init(tSSD ssd ,SSD_STATE initial_state , SSD_symbol initial_symbol)
{

    /*initialize the port that the ssd will be connected on then set it to null in the beginning*/
    GPIO_Init_Port(PORT_D,OUT);
    GPIO_Set_Port(PORT_D,symbols[SSD_NULL]);

        switch(ssd)
        {
            /*init enable pin for the ssd that the user will choose */
            case SSD_L :
                GPIO_Init_Port_pin(PORT_B,7,OUT);
                break;
            case SSD_ML:
                GPIO_Init_Port_pin(PORT_B,6,OUT);
                break;
            case SSD_MR:
                GPIO_Init_Port_pin(PORT_B,5,OUT);
                break;
            case SSD_R :
                GPIO_Init_Port_pin(PORT_B,4,OUT);
                break;
            default :
                //shouldn't be here
                break;
        }

        SSD_SET_state(ssd,initial_state);
        SSD_SET_Symbol(ssd , initial_symbol);
}

void SSD_SET_state(tSSD ssd ,SSD_STATE state)
{
    switch(ssd)
        {
            /*init enable pin for the ssd that the user will choose */
            case SSD_L :
                GPIO_Set_Port_pin(PORT_B,7,state);
                break;
            case SSD_ML:
                GPIO_Set_Port_pin(PORT_B,6,state);
                break;
            case SSD_MR:
                GPIO_Set_Port_pin(PORT_B,5,state);
                break;
            case SSD_R :
                GPIO_Set_Port_pin(PORT_B,4,state);
                break;
            default :
                //shouldn't be here
                break;
        }

}

void SSD_SET_Symbol(tSSD ssd ,SSD_symbol symbol)
{
    SSD_symbols[ssd] = symbol ;
}


SSD_STATE SSD_GET_state(tSSD ssd)
{
    switch(ssd)
        {
            /*init enable pin for the ssd that the user will choose */
            case SSD_L:
                return GPIO_Get_Port_Pin(PORT_B,7);
                break;
            case SSD_ML:
                return GPIO_Get_Port_Pin(PORT_B,6);
                break;
            case SSD_MR:
                return GPIO_Get_Port_Pin(PORT_B,5);
                break;
            case SSD_R:
                return GPIO_Get_Port_Pin(PORT_B,4);
                break;
            default:
                //shouldn't be here
                break;
        }
}



SSD_symbol SSD_GET_Symbol(tSSD ssd){

    SSD_symbol ret = SSD_NULL;

    ret = SSD_symbols[ssd];

    return ret;
}


void SSD_update()
{
         static unsigned int counter = 0 ;
         unsigned char current_ssd = SSD_L ;

         SSD_SET_Symbol(SSD_L,(counter/1000));
         SSD_SET_Symbol(SSD_ML,(counter%1000)/100);
         SSD_SET_Symbol(SSD_MR,((counter%1000)%100)/10);
         SSD_SET_Symbol(SSD_R,counter %10);

        for(current_ssd=SSD_L ; current_ssd <= SSD_R ; current_ssd++)
        {
            GPIO_Set_Port(PORT_D ,symbols[SSD_symbols[current_ssd]]);
            SSD_SET_state(current_ssd,ON);
            UTIL_DelayMS(20);
        }
        if(counter < 9999){
            if(GPIO_Get_Port_Pin(PORT_B,1) == 0)
            {
            counter ++;
            }
        }else{
            counter = 0;
        }
}
