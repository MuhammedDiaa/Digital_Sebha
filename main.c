#include <stdio.h>
#include <stdlib.h>
#include <pic16f877a.h>
#include "SSD.h"
#include "utilities.h"



unsigned int  __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;

int main()
{
     GPIO_Init_Port_pin(PORT_B,0,IN);
    /*initializing the seven segments */
     SSD_Init(SSD_L ,OFF,SSD_NULL);
     SSD_Init(SSD_ML ,OFF,SSD_NULL);
     SSD_Init(SSD_MR ,OFF,SSD_NULL);
     SSD_Init(SSD_R,OFF,SSD_NULL);

    while(1)
    {
        SSD_update();
    }
    return 0;
}
