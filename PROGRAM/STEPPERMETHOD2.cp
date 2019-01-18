#line 1 "C:/Users/only try/Desktop/Project 9 Microcontroller (stepper-motor-Method 2 )/PROGRAM/STEPPERMETHOD2.c"
void main() {
 TRISB=0;
 for(;;)
 {
 PORTB.F0=1;
 delay_ms(100);
 PORTB.F0=0;
 delay_ms(100);
 }
}
