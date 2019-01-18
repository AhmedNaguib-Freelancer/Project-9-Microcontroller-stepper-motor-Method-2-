
_main:

;STEPPERMETHOD2.c,1 :: 		void main() {
;STEPPERMETHOD2.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;STEPPERMETHOD2.c,3 :: 		for(;;)
L_main0:
;STEPPERMETHOD2.c,5 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;STEPPERMETHOD2.c,6 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;STEPPERMETHOD2.c,7 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;STEPPERMETHOD2.c,8 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;STEPPERMETHOD2.c,9 :: 		}
	GOTO       L_main0
;STEPPERMETHOD2.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
