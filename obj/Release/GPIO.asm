;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Tue Jun 30 22:58:10 2020
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"GPIO.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_GPIO_Get_Port
	global	_GPIO_Get_Port_Pin
	global	_GPIO_Set_Port
	global	_GPIO_Init_Port
	global	_GPIO_Set_Port_pin
	global	_GPIO_Init_Port_pin

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_GPIO_0	udata
r0x101E	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1025	res	1
r0x1017	res	1
r0x1018	res	1
r0x1019	res	1
r0x101A	res	1
r0x101C	res	1
r0x101B	res	1
r0x101D	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x100E	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x1000	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_GPIO	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _GPIO_Get_Port	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   STK01
;   r0x1003
;   STK00
;; Starting pCode block
_GPIO_Get_Port	;Function start
; 2 exit points
;	.line	40; "GPIO.c"	unsigned char GPIO_Get_Port(tPort Port)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;;1	MOVWF	r0x1001
;	.line	44; "GPIO.c"	return *temp ;
	MOVWF	STK01
;;1	MOVF	r0x1003,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	RETURN	
; exit point of _GPIO_Get_Port

;***
;  pBlock Stats: dbName = C
;***
;entry:  _GPIO_Get_Port_Pin	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;10 compiler assigned registers:
;   r0x1004
;   STK00
;   r0x1005
;   r0x1006
;   r0x1007
;   STK01
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;; Starting pCode block
_GPIO_Get_Port_Pin	;Function start
; 2 exit points
;	.line	35; "GPIO.c"	unsigned char GPIO_Get_Port_Pin(tPort Port , unsigned char pin )
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
;;107	MOVF	r0x1004,W
;;1	CLRF	r0x1007
;;106	MOVF	r0x1006,W
;	.line	37; "GPIO.c"	return REG_GET_BIT(Port,pin) ;
	MOVF	r0x1004,W
	MOVWF	r0x1006
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVLW	0x00
	MOVWF	r0x1008
	MOVLW	0x01
	MOVWF	r0x1006
	MOVF	r0x1005,W
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00142_DS_
_00141_DS_
	BANKSEL	r0x1006
	RLF	r0x1006,F
	RLF	r0x1008,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00141_DS_
_00142_DS_
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	MOVWF	r0x1009
	CLRF	r0x100A
	MOVF	r0x1006,W
	ANDWF	r0x1009,W
	MOVWF	r0x1006
	MOVWF	r0x1004
	MOVF	r0x1008,W
	ANDWF	r0x100A,W
;;1	MOVWF	r0x100B
	MOVWF	r0x1008
;;105	MOVF	r0x1004,W
	MOVF	r0x1005,W
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00144_DS_
_00143_DS_
	BCF	STATUS,0
	BANKSEL	r0x1008
	BTFSC	r0x1008,7
	BSF	STATUS,0
	RRF	r0x1008,F
	RRF	r0x1006,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00143_DS_
_00144_DS_
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	MOVWF	r0x1005
	RETURN	
; exit point of _GPIO_Get_Port_Pin

;***
;  pBlock Stats: dbName = C
;***
;entry:  _GPIO_Set_Port	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrput1
;   __gptrput1
;8 compiler assigned registers:
;   r0x100C
;   STK00
;   r0x100D
;   r0x100E
;   r0x100F
;   STK02
;   STK01
;   r0x1010
;; Starting pCode block
_GPIO_Set_Port	;Function start
; 2 exit points
	BANKSEL	r0x100E
	MOVWF	r0x100E
;;1	MOVWF	r0x100C
;	.line	29; "GPIO.c"	void GPIO_Set_Port(tPort Port , unsigned char data)
	MOVF	STK00,W
;;1	MOVWF	r0x100D
;	.line	32; "GPIO.c"	*temp = data ;
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
;;1	MOVF	r0x1010,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__gptrput1
	CALL	__gptrput1
	PAGESEL	$
	RETURN	
; exit point of _GPIO_Set_Port

;***
;  pBlock Stats: dbName = C
;***
;entry:  _GPIO_Init_Port	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrput1
;   __gptrput1
;   __gptrput1
;   __gptrput1
;9 compiler assigned registers:
;   r0x1011
;   STK00
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   STK02
;   STK01
;; Starting pCode block
_GPIO_Init_Port	;Function start
; 2 exit points
	BANKSEL	r0x1013
	MOVWF	r0x1013
;	.line	17; "GPIO.c"	void GPIO_Init_Port(tPort Port , tPortDir direction )
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
;;109	MOVF	r0x1011,W
;	.line	19; "GPIO.c"	volatile unsigned char * temp = (unsigned char*)(Port + Direction_REG_OFFSIT);
	CLRF	r0x1014
	MOVLW	0x80
	ADDWF	r0x1013,W
	MOVWF	r0x1013
	MOVWF	r0x1011
	CLRF	r0x1015
	RLF	r0x1015,F
	MOVLW	0x00
	ADDWF	r0x1015,F
	MOVF	r0x1015,W
	MOVWF	r0x1014
;;104	MOVF	r0x1011,W
	CLRF	r0x1016
;	.line	20; "GPIO.c"	if(direction == OUT){
	MOVF	r0x1012,W
	BTFSS	STATUS,2
	GOTO	_00128_DS_
;	.line	21; "GPIO.c"	*temp = 0b00000000 ;
	MOVLW	0x00
	MOVWF	STK02
	MOVF	r0x1013,W
	MOVWF	STK01
	MOVF	r0x1014,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	__gptrput1
	CALL	__gptrput1
	PAGESEL	$
	GOTO	_00130_DS_
_00128_DS_
;	.line	23; "GPIO.c"	}else if(direction == IN ){
	BANKSEL	r0x1012
	MOVF	r0x1012,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00130_DS_
;	.line	24; "GPIO.c"	*temp = 0b11111111 ;
	MOVLW	0xff
	MOVWF	STK02
	MOVF	r0x1013,W
	MOVWF	STK01
	MOVF	r0x1014,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	__gptrput1
	CALL	__gptrput1
	PAGESEL	$
_00130_DS_
	RETURN	
; exit point of _GPIO_Init_Port

;***
;  pBlock Stats: dbName = C
;***
;entry:  _GPIO_Set_Port_pin	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrput1
;   __gptrget1
;   __gptrput1
;10 compiler assigned registers:
;   r0x1017
;   STK00
;   r0x1018
;   STK01
;   r0x1019
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   STK02
;; Starting pCode block
_GPIO_Set_Port_pin	;Function start
; 2 exit points
	BANKSEL	r0x101A
	MOVWF	r0x101A
;	.line	11; "GPIO.c"	void GPIO_Set_Port_pin(tPort Port , unsigned char pin , unsigned char data)
	MOVWF	r0x1017
	MOVF	STK00,W
	MOVWF	r0x1018
	MOVF	STK01,W
	MOVWF	r0x1019
;;103	MOVF	r0x1017,W
;	.line	13; "GPIO.c"	REG_SET_BIT(Port, pin ,data);
	CLRF	r0x101B
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1017
	MOVWF	r0x1017
	MOVLW	0x01
	MOVWF	r0x101D
	MOVF	r0x1018,W
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00118_DS_
_00117_DS_
	BANKSEL	r0x101D
	RLF	r0x101D,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00117_DS_
_00118_DS_
	BANKSEL	r0x101D
	COMF	r0x101D,F
	ANDWF	r0x1017,F
	MOVF	r0x1019,W
	MOVWF	r0x101D
	MOVF	r0x1018,W
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00120_DS_
_00119_DS_
	BANKSEL	r0x101D
	RLF	r0x101D,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00119_DS_
_00120_DS_
	BANKSEL	r0x101D
	MOVF	r0x101D,W
	IORWF	r0x1017,W
	MOVWF	r0x1018
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	__gptrput1
	CALL	__gptrput1
	PAGESEL	$
	RETURN	
; exit point of _GPIO_Set_Port_pin

;***
;  pBlock Stats: dbName = C
;***
;entry:  _GPIO_Init_Port_pin	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrput1
;   __gptrget1
;   __gptrput1
;11 compiler assigned registers:
;   r0x101E
;   STK00
;   r0x101F
;   STK01
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   STK02
;; Starting pCode block
_GPIO_Init_Port_pin	;Function start
; 2 exit points
	BANKSEL	r0x1021
	MOVWF	r0x1021
;	.line	5; "GPIO.c"	void GPIO_Init_Port_pin(tPort Port , unsigned char pin , tPortDir direction )
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
;;108	MOVF	r0x101E,W
;	.line	7; "GPIO.c"	REG_SET_BIT( (Port + Direction_REG_OFFSIT),pin , direction) ;
	CLRF	r0x1022
	MOVLW	0x80
	ADDWF	r0x1021,W
	MOVWF	r0x1021
	MOVWF	r0x101E
	CLRF	r0x1023
	RLF	r0x1023,F
	MOVLW	0x00
	ADDWF	r0x1023,F
;;102	MOVF	r0x1023,W
;;100	MOVF	r0x101E,W
	CLRF	r0x1024
	MOVF	r0x1021,W
	MOVWF	STK01
;;101	MOVF	r0x1022,W
	MOVF	r0x1023,W
	MOVWF	r0x1022
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVLW	0x01
	MOVWF	r0x1025
	MOVF	r0x101F,W
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00108_DS_
_00107_DS_
	BANKSEL	r0x1025
	RLF	r0x1025,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00107_DS_
_00108_DS_
	BANKSEL	r0x1025
	COMF	r0x1025,F
	ANDWF	r0x101E,F
	MOVF	r0x1020,W
	MOVWF	r0x1025
	MOVF	r0x101F,W
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00110_DS_
_00109_DS_
	BANKSEL	r0x1025
	RLF	r0x1025,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00109_DS_
_00110_DS_
	BANKSEL	r0x1025
	MOVF	r0x1025,W
	IORWF	r0x101E,W
	MOVWF	r0x101F
	MOVWF	STK02
	MOVF	r0x1021,W
	MOVWF	STK01
	MOVF	r0x1022,W
	MOVWF	STK00
	MOVF	r0x1024,W
	PAGESEL	__gptrput1
	CALL	__gptrput1
	PAGESEL	$
	RETURN	
; exit point of _GPIO_Init_Port_pin


;	code size estimation:
;	  210+   41 =   251 instructions (  584 byte)

	end
