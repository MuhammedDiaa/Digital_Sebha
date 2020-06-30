;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Tue Jun 30 22:58:10 2020
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"SSD.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_GPIO_Init_Port_pin
	extern	_GPIO_Init_Port
	extern	_GPIO_Set_Port_pin
	extern	_GPIO_Set_Port
	extern	_GPIO_Get_Port_Pin
	extern	_GPIO_Get_Port
	extern	_UTIL_DelayMS
	extern	__divuint
	extern	__moduint
	extern	__gptrget1

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
	global	_SSD_update
	global	_SSD_GET_Symbol
	global	_SSD_GET_state
	global	_SSD_SET_Symbol
	global	_SSD_SET_state
	global	_SSD_Init
	global	_SSD_symbols

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_SSD_0	udata
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1010	res	1
r0x100D	res	1
r0x100E	res	1
r0x100A	res	1
r0x1009	res	1
r0x100B	res	1
r0x100C	res	1
_SSD_update_counter_1_27	res	2
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_SSD_0	idata
_SSD_symbols
	db	0x0a
	db	0x00
	db	0x00
	db	0x00


ID_SSD_1	code
_symbols
	retlw 0x3f
	retlw 0x06
	retlw 0x5b
	retlw 0x4f
	retlw 0x66
	retlw 0x6d
	retlw 0x7d
	retlw 0x07
	retlw 0x7f
	retlw 0x6f
	retlw 0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_SSD	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _SSD_update	;Function start
; 2 exit points
;has an exit
;functions called:
;   __divuint
;   _SSD_SET_Symbol
;   __moduint
;   __divuint
;   _SSD_SET_Symbol
;   __moduint
;   __moduint
;   __divuint
;   _SSD_SET_Symbol
;   __moduint
;   _SSD_SET_Symbol
;   __gptrget1
;   _GPIO_Set_Port
;   _SSD_SET_state
;   _UTIL_DelayMS
;   _GPIO_Get_Port_Pin
;   __divuint
;   _SSD_SET_Symbol
;   __moduint
;   __divuint
;   _SSD_SET_Symbol
;   __moduint
;   __moduint
;   __divuint
;   _SSD_SET_Symbol
;   __moduint
;   _SSD_SET_Symbol
;   __gptrget1
;   _GPIO_Set_Port
;   _SSD_SET_state
;   _UTIL_DelayMS
;   _GPIO_Get_Port_Pin
;7 compiler assigned registers:
;   STK02
;   STK01
;   STK00
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;; Starting pCode block
_SSD_update	;Function start
; 2 exit points
;	.line	122; "SSD.c"	SSD_SET_Symbol(SSD_L,(counter/1000));
	MOVLW	0xe8
	MOVWF	STK02
	MOVLW	0x03
	MOVWF	STK01
	BANKSEL	_SSD_update_counter_1_27
	MOVF	_SSD_update_counter_1_27,W
	MOVWF	STK00
	MOVF	(_SSD_update_counter_1_27 + 1),W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVWF	r0x100B
	MOVWF	STK00
	MOVLW	0x00
	CALL	_SSD_SET_Symbol
;	.line	123; "SSD.c"	SSD_SET_Symbol(SSD_ML,(counter%1000)/100);
	MOVLW	0xe8
	MOVWF	STK02
	MOVLW	0x03
	MOVWF	STK01
	BANKSEL	_SSD_update_counter_1_27
	MOVF	_SSD_update_counter_1_27,W
	MOVWF	STK00
	MOVF	(_SSD_update_counter_1_27 + 1),W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVLW	0x64
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVWF	r0x100B
	MOVWF	STK00
	MOVLW	0x01
	CALL	_SSD_SET_Symbol
;	.line	124; "SSD.c"	SSD_SET_Symbol(SSD_MR,((counter%1000)%100)/10);
	MOVLW	0xe8
	MOVWF	STK02
	MOVLW	0x03
	MOVWF	STK01
	BANKSEL	_SSD_update_counter_1_27
	MOVF	_SSD_update_counter_1_27,W
	MOVWF	STK00
	MOVF	(_SSD_update_counter_1_27 + 1),W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVLW	0x64
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVLW	0x0a
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVWF	r0x100B
	MOVWF	STK00
	MOVLW	0x02
	CALL	_SSD_SET_Symbol
;	.line	125; "SSD.c"	SSD_SET_Symbol(SSD_R,counter %10);
	MOVLW	0x0a
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	BANKSEL	_SSD_update_counter_1_27
	MOVF	_SSD_update_counter_1_27,W
	MOVWF	STK00
	MOVF	(_SSD_update_counter_1_27 + 1),W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVWF	r0x100B
	MOVWF	STK00
	MOVLW	0x03
	CALL	_SSD_SET_Symbol
;	.line	127; "SSD.c"	for(current_ssd=SSD_L ; current_ssd <= SSD_R ; current_ssd++)
	BANKSEL	r0x100A
	CLRF	r0x100A
_00170_DS_
;	.line	129; "SSD.c"	GPIO_Set_Port(PORT_D ,symbols[SSD_symbols[current_ssd]]);
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	ADDLW	(_SSD_symbols + 0)
	MOVWF	r0x1009
	MOVLW	high (_SSD_symbols + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x100B
	MOVF	r0x1009,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x100B
	BTFSC	r0x100B,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	ADDLW	(_symbols + 0)
	MOVWF	r0x1009
	MOVLW	high (_symbols + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x100B
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x100C
	MOVWF	r0x100C
	MOVWF	STK00
	MOVLW	0x08
	PAGESEL	_GPIO_Set_Port
	CALL	_GPIO_Set_Port
	PAGESEL	$
;	.line	130; "SSD.c"	SSD_SET_state(current_ssd,ON);
	MOVLW	0x01
	MOVWF	STK00
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	CALL	_SSD_SET_state
;	.line	131; "SSD.c"	UTIL_DelayMS(20);
	MOVLW	0x14
	PAGESEL	_UTIL_DelayMS
	CALL	_UTIL_DelayMS
	PAGESEL	$
;	.line	127; "SSD.c"	for(current_ssd=SSD_L ; current_ssd <= SSD_R ; current_ssd++)
	BANKSEL	r0x100A
	INCF	r0x100A,F
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
	MOVLW	0x04
	SUBWF	r0x100A,W
	BTFSS	STATUS,0
	GOTO	_00170_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;unsigned compare: left < lit(0x270F=9999), size=2
;	.line	133; "SSD.c"	if(counter < 9999){
	MOVLW	0x27
	BANKSEL	_SSD_update_counter_1_27
	SUBWF	(_SSD_update_counter_1_27 + 1),W
	BTFSS	STATUS,2
	GOTO	_00188_DS_
	MOVLW	0x0f
	SUBWF	_SSD_update_counter_1_27,W
_00188_DS_
	BTFSC	STATUS,0
	GOTO	_00168_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;	.line	134; "SSD.c"	if(GPIO_Get_Port_Pin(PORT_B,1) == 0)
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Get_Port_Pin
	CALL	_GPIO_Get_Port_Pin
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00172_DS_
;	.line	136; "SSD.c"	counter ++ ;
	BANKSEL	_SSD_update_counter_1_27
	INCF	_SSD_update_counter_1_27,F
	BTFSC	STATUS,2
	INCF	(_SSD_update_counter_1_27 + 1),F
	GOTO	_00172_DS_
_00168_DS_
;	.line	139; "SSD.c"	counter = 0 ;
	BANKSEL	_SSD_update_counter_1_27
	CLRF	_SSD_update_counter_1_27
	CLRF	(_SSD_update_counter_1_27 + 1)
_00172_DS_
	RETURN	
; exit point of _SSD_update

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SSD_GET_Symbol	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
_SSD_GET_Symbol	;Function start
; 2 exit points
;	.line	107; "SSD.c"	SSD_symbol SSD_GET_Symbol(tSSD ssd){
	BANKSEL	r0x100D
	MOVWF	r0x100D
;	.line	111; "SSD.c"	ret = SSD_symbols[ssd];
	ADDLW	(_SSD_symbols + 0)
	MOVWF	r0x100D
	MOVLW	high (_SSD_symbols + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x100E
	MOVF	r0x100D,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x100E
	BTFSC	r0x100E,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
;;1	MOVWF	r0x100F
;	.line	113; "SSD.c"	return ret;
	RETURN	
; exit point of _SSD_GET_Symbol

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SSD_GET_state	;Function start
; 2 exit points
;has an exit
;functions called:
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;   _GPIO_Get_Port_Pin
;2 compiler assigned registers:
;   r0x1010
;   STK00
;; Starting pCode block
_SSD_GET_state	;Function start
; 2 exit points
;	.line	82; "SSD.c"	SSD_STATE SSD_GET_state(tSSD ssd)
	BANKSEL	r0x1010
	MOVWF	r0x1010
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	84; "SSD.c"	switch(ssd)
	MOVLW	0x04
	SUBWF	r0x1010,W
	BTFSC	STATUS,0
	GOTO	_00149_DS_
;;genSkipc:3247: created from rifx:027A5DF4
	MOVLW	HIGH(_00155_DS_)
	BANKSEL	PCLATH
	MOVWF	PCLATH
	MOVLW	_00155_DS_
	BANKSEL	r0x1010
	ADDWF	r0x1010,W
	BTFSS	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	PCLATH
	INCF	PCLATH,F
_00001_DS_
	MOVWF	PCL
_00155_DS_
	GOTO	_00143_DS_
	GOTO	_00144_DS_
	GOTO	_00145_DS_
	GOTO	_00146_DS_
_00143_DS_
;	.line	88; "SSD.c"	return GPIO_Get_Port_Pin(PORT_B,7);
	MOVLW	0x07
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Get_Port_Pin
	CALL	_GPIO_Get_Port_Pin
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	GOTO	_00149_DS_
_00144_DS_
;	.line	91; "SSD.c"	return GPIO_Get_Port_Pin(PORT_B,6);
	MOVLW	0x06
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Get_Port_Pin
	CALL	_GPIO_Get_Port_Pin
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	GOTO	_00149_DS_
_00145_DS_
;	.line	94; "SSD.c"	return GPIO_Get_Port_Pin(PORT_B,5);
	MOVLW	0x05
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Get_Port_Pin
	CALL	_GPIO_Get_Port_Pin
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	GOTO	_00149_DS_
_00146_DS_
;	.line	97; "SSD.c"	return GPIO_Get_Port_Pin(PORT_B,4);
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Get_Port_Pin
	CALL	_GPIO_Get_Port_Pin
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
_00149_DS_
;	.line	102; "SSD.c"	}
	RETURN	
; exit point of _SSD_GET_state

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SSD_SET_Symbol	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1006
;   STK00
;   r0x1007
;   r0x1008
;; Starting pCode block
_SSD_SET_Symbol	;Function start
; 2 exit points
;	.line	76; "SSD.c"	void SSD_SET_Symbol(tSSD ssd ,SSD_symbol symbol)
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x1007
;	.line	78; "SSD.c"	SSD_symbols[ssd] = symbol ;
	MOVF	r0x1006,W
	ADDLW	(_SSD_symbols + 0)
	MOVWF	r0x1006
	MOVLW	high (_SSD_symbols + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1008
	MOVF	r0x1006,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1008
	BTFSC	r0x1008,0
	BSF	STATUS,7
	MOVF	r0x1007,W
	BANKSEL	INDF
	MOVWF	INDF
	RETURN	
; exit point of _SSD_SET_Symbol

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SSD_SET_state	;Function start
; 2 exit points
;has an exit
;functions called:
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;   _GPIO_Set_Port_pin
;4 compiler assigned registers:
;   r0x1006
;   STK00
;   r0x1007
;   STK01
;; Starting pCode block
_SSD_SET_state	;Function start
; 2 exit points
;	.line	52; "SSD.c"	void SSD_SET_state(tSSD ssd ,SSD_STATE state)
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x1007
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	54; "SSD.c"	switch(ssd)
	MOVLW	0x04
	SUBWF	r0x1006,W
	BTFSC	STATUS,0
	GOTO	_00128_DS_
;;genSkipc:3247: created from rifx:027A5DF4
	MOVLW	HIGH(_00134_DS_)
	BANKSEL	PCLATH
	MOVWF	PCLATH
	MOVLW	_00134_DS_
	BANKSEL	r0x1006
	ADDWF	r0x1006,W
	BTFSS	STATUS,0
	GOTO	_00002_DS_
	BANKSEL	PCLATH
	INCF	PCLATH,F
_00002_DS_
	MOVWF	PCL
_00134_DS_
	GOTO	_00122_DS_
	GOTO	_00123_DS_
	GOTO	_00124_DS_
	GOTO	_00125_DS_
_00122_DS_
;	.line	58; "SSD.c"	GPIO_Set_Port_pin(PORT_B,7,state);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVLW	0x07
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Set_Port_pin
	CALL	_GPIO_Set_Port_pin
	PAGESEL	$
;	.line	59; "SSD.c"	break;
	GOTO	_00128_DS_
_00123_DS_
;	.line	61; "SSD.c"	GPIO_Set_Port_pin(PORT_B,6,state);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVLW	0x06
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Set_Port_pin
	CALL	_GPIO_Set_Port_pin
	PAGESEL	$
;	.line	62; "SSD.c"	break;
	GOTO	_00128_DS_
_00124_DS_
;	.line	64; "SSD.c"	GPIO_Set_Port_pin(PORT_B,5,state);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVLW	0x05
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Set_Port_pin
	CALL	_GPIO_Set_Port_pin
	PAGESEL	$
;	.line	65; "SSD.c"	break;
	GOTO	_00128_DS_
_00125_DS_
;	.line	67; "SSD.c"	GPIO_Set_Port_pin(PORT_B,4,state);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Set_Port_pin
	CALL	_GPIO_Set_Port_pin
	PAGESEL	$
_00128_DS_
;	.line	72; "SSD.c"	}
	RETURN	
; exit point of _SSD_SET_state

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SSD_Init	;Function start
; 2 exit points
;has an exit
;functions called:
;   _GPIO_Init_Port
;   __gptrget1
;   _GPIO_Set_Port
;   _GPIO_Init_Port_pin
;   _GPIO_Init_Port_pin
;   _GPIO_Init_Port_pin
;   _GPIO_Init_Port_pin
;   _SSD_SET_state
;   _SSD_SET_Symbol
;   _GPIO_Init_Port
;   __gptrget1
;   _GPIO_Set_Port
;   _GPIO_Init_Port_pin
;   _GPIO_Init_Port_pin
;   _GPIO_Init_Port_pin
;   _GPIO_Init_Port_pin
;   _SSD_SET_state
;   _SSD_SET_Symbol
;6 compiler assigned registers:
;   r0x1011
;   STK00
;   r0x1012
;   STK01
;   r0x1013
;   r0x1014
;; Starting pCode block
_SSD_Init	;Function start
; 2 exit points
;	.line	21; "SSD.c"	void SSD_Init(tSSD ssd ,SSD_STATE initial_state , SSD_symbol initial_symbol)
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x1013
;	.line	25; "SSD.c"	GPIO_Init_Port(PORT_D,OUT);
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x08
	PAGESEL	_GPIO_Init_Port
	CALL	_GPIO_Init_Port
	PAGESEL	$
;	.line	26; "SSD.c"	GPIO_Set_Port(PORT_D,symbols[SSD_NULL]);
	MOVLW	(_symbols + 10)
	MOVWF	STK01
	MOVLW	high (_symbols + 10)
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
;;1	MOVWF	r0x1014
	MOVWF	STK00
	MOVLW	0x08
	PAGESEL	_GPIO_Set_Port
	CALL	_GPIO_Set_Port
	PAGESEL	$
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	28; "SSD.c"	switch(ssd)
	MOVLW	0x04
	BANKSEL	r0x1011
	SUBWF	r0x1011,W
	BTFSC	STATUS,0
	GOTO	_00110_DS_
;;genSkipc:3247: created from rifx:027A5DF4
	MOVLW	HIGH(_00117_DS_)
	BANKSEL	PCLATH
	MOVWF	PCLATH
	MOVLW	_00117_DS_
	BANKSEL	r0x1011
	ADDWF	r0x1011,W
	BTFSS	STATUS,0
	GOTO	_00003_DS_
	BANKSEL	PCLATH
	INCF	PCLATH,F
_00003_DS_
	MOVWF	PCL
_00117_DS_
	GOTO	_00105_DS_
	GOTO	_00106_DS_
	GOTO	_00107_DS_
	GOTO	_00108_DS_
_00105_DS_
;	.line	32; "SSD.c"	GPIO_Init_Port_pin(PORT_B,7,OUT);
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x07
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Init_Port_pin
	CALL	_GPIO_Init_Port_pin
	PAGESEL	$
;	.line	33; "SSD.c"	break;
	GOTO	_00110_DS_
_00106_DS_
;	.line	35; "SSD.c"	GPIO_Init_Port_pin(PORT_B,6,OUT);
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x06
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Init_Port_pin
	CALL	_GPIO_Init_Port_pin
	PAGESEL	$
;	.line	36; "SSD.c"	break;
	GOTO	_00110_DS_
_00107_DS_
;	.line	38; "SSD.c"	GPIO_Init_Port_pin(PORT_B,5,OUT);
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x05
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Init_Port_pin
	CALL	_GPIO_Init_Port_pin
	PAGESEL	$
;	.line	39; "SSD.c"	break;
	GOTO	_00110_DS_
_00108_DS_
;	.line	41; "SSD.c"	GPIO_Init_Port_pin(PORT_B,4,OUT);
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Init_Port_pin
	CALL	_GPIO_Init_Port_pin
	PAGESEL	$
_00110_DS_
;	.line	48; "SSD.c"	SSD_SET_state(ssd,initial_state);
	BANKSEL	r0x1012
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	_SSD_SET_state
	CALL	_SSD_SET_state
	PAGESEL	$
;	.line	49; "SSD.c"	SSD_SET_Symbol(ssd , initial_symbol);
	BANKSEL	r0x1013
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	_SSD_SET_Symbol
	CALL	_SSD_SET_Symbol
	PAGESEL	$
	RETURN	
; exit point of _SSD_Init


;	code size estimation:
;	  348+  111 =   459 instructions ( 1140 byte)

	end
