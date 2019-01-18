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