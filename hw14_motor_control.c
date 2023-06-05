#include "nu32dip.h" // constants, functions for startup and UART

void blink(int, int); // blink the LEDs function

int main(void) {
    char message[100];
  
    NU32DIP_Startup(); // cache on, interrupts on, LED/button init, UART init
  
    TRISBbits.TRISB15 = 0;
    RPB15Rbits.RPB15R = 0b0101; 
  
    OC1CONbits.ON = 0;
  
    T2CONbits.TCKPS = 4;     // Timer2 prescaler N=4 (1:4)
    PR2 = 59999;             //50Hz
    TMR2 = 0;                // initial TMR2 count is 0
    OC1CONbits.OCM = 0b110;  // PWM mode without fault pin; other OC1CON bits are defaults
    OC1CONbits.OCTSEL = 0;   // Use timer2
    //OC1RS = 2500 for 45 Degrees 
    OC1RS = 5000;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
    OC1R = 5000;              // initialize before turning OC1 on; afterward it is read-only
    T2CONbits.ON = 1;        // turn on Timer2
    //OC1CONbits.ON = 1;       // turn on OC1

    TRISBbits.TRISB6 = 0;
    LATBbits.LATB6 = 1;
    
    TRISBbits.TRISB8 = 0;
    LATBbits.LATB8 = 1;
    
    
  while (1) {
    /*NU32DIP_ReadUART1(message, 100); // wait here until get message from computer
    NU32DIP_WriteUART1(message); // send message back
    NU32DIP_WriteUART1("\r\n"); // carriage return and newline*/
    
    OC1CONbits.ON = 0;
    OC1RS = 5000;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
    OC1R = 5000;              // initialize before turning OC1 on; afterward it is read-only
    
    OC1CONbits.ON = 1;
    //blink in between motor sweeps :D   
	blink(4, 1000); // 5 times, 500ms each time
    
    OC1CONbits.ON = 0;
    OC1RS = 2500;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
    OC1R = 2500;              // initialize before turning OC1 on; afterward it is read-only
    
    OC1CONbits.ON = 1;
    //blink in between motor sweeps :D   
	blink(4, 1000); // 5 times, 500ms each time
	
  }
}

// blink the LEDs
void blink(int iterations, int time_ms){
	int i;
	unsigned int t;
	for (i=0; i< iterations; i++){
		NU32DIP_GREEN = 0; // on
		NU32DIP_YELLOW = 1; // off
		t = _CP0_GET_COUNT(); // should really check for overflow here
		// the core timer ticks at half the SYSCLK, so 24000000 times per second
		// so each millisecond is 24000 ticks
		// wait half in each delay
		while(_CP0_GET_COUNT() < t + 12000*time_ms){}
		
		NU32DIP_GREEN = 1; // off
		NU32DIP_YELLOW = 0; // on
		t = _CP0_GET_COUNT(); // should really check for overflow here
		while(_CP0_GET_COUNT() < t + 12000*time_ms){}
	}
}
		
