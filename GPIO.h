#ifndef GPIO_H_INCLUDED
#define GPIO_H_INCLUDED



#define REG_SET_BIT(REG,BIT,DATA) (*((volatile unsigned char*)REG) = (*((volatile unsigned char*)REG) & (~(1<<BIT))) | (DATA<<BIT))
#define REG_GET_BIT(REG , BIT)    ((*((volatile unsigned char*)REG)& (1<<BIT)) >> BIT)

#define Direction_REG_OFFSIT 0x80
#define HIGH  1
#define LOW   0

typedef enum {
    PORT_A = 0x05 ,
    PORT_B = 0x06 ,
    PORT_C = 0x07 ,
    PORT_D = 0x08 ,
    PORT_E = 0x09
}tPort ;



typedef enum {
    IN  = 1 ,
    OUT = 0
}tPortDir ;



/*to initialize the port with specific direction*/
void GPIO_Init_Port_pin(tPort Port , unsigned char pin , tPortDir direction );
void GPIO_Init_Port(tPort Port , tPortDir direction );

/*to set the pins of the port with certain values*/
void GPIO_Set_Port_pin(tPort Port , unsigned char pin , unsigned char data);
void GPIO_Set_Port(tPort Port , unsigned char data);

/*to get the data on the port or the pin*/
unsigned char GPIO_Get_Port_Pin(tPort Port , unsigned char pin );
unsigned char GPIO_Get_Port(tPort Port);


#endif // GPIO_H_INCLUDED
