#include "nu32dip.h" // constants, functions for startup and UART
// PIC UART2 code
#include "uart2.h" // include the library


void blink(int, int); // blink the LEDs function

int main(void) {
    char message1[100];
    char message2[100];
  
    NU32DIP_Startup(); // cache on, interrupts on, LED/button init, UART init
    
    
    // after NU32DIP_startup()
    // UART2_Startup();

    // VM should be connected to 3.3 V (or 5V)
    // MD should be high
    // MD is connected to RB6
    // PH1 is connected to RB8
    // IN2 is connected to OC1 (Pin 26)

    // SET UP OC1 FOR FIRST MOTOR
    TRISBbits.TRISB15 = 0;
    RPB15Rbits.RPB15R = 0b0101; 
  
    OC1CONbits.ON = 0;
  
    // SET UP OC2 FOR SECOND MOTOR 
    // RB11 is OC2
    TRISBbits.TRISB11 = 0;
    RPB11Rbits.RPB11R = 0b101;
    
    OC2CONbits.ON = 0; 
    
    T2CONbits.TCKPS = 4;     // Timer2 prescaler N=4 (1:4)
    PR2 = 1999;             //50Hz
    TMR2 = 0;                // initial TMR2 count is 0
    OC1CONbits.OCM = 0b110;  // PWM mode without fault pin; other OC1CON bits are defaults
    OC1CONbits.OCTSEL = 0;   // Use timer2
    
    OC2CONbits.OCM = 0b110;
    OC2CONbits.OCTSEL = 0;
    
    OC1RS = 1000;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
    OC1R = 1000;              // initialize before turning OC1 on; afterward it is read-only
    
    OC2RS = 1000; 
    OC2R = 1000;
   
    
    T2CONbits.ON = 1;        // turn on Timer2
    
    
    OC1CONbits.ON = 1;       // turn on OC1
    OC2CONbits.ON = 1;       // turn on OC2 
    

    
    
    
    TRISBbits.TRISB6 = 0;
    LATBbits.LATB6 = 1;
    
    TRISBbits.TRISB8 = 0;
    LATBbits.LATB8 = 1;
    
    
  while (1) {

    // READ UART2
    // in while(1)
    int com = 0;
    // uart2_flag() is 1 when uart2 has rx a message and sprintf'd it into a value
    if(get_uart2_flag()){
        set_uart2_flag(0); // set the flag to 0 to be ready for the next message
        com = get_uart2_value();
        
        if(com > 32) 
        {
            OC1CONbits.ON = 0;
            OC1CONbits.ON = 0;
            OC1RS = 1500;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
            OC1R = 1500;              // initialize before turning OC1 on; afterward it is read-only
    
            OC2RS = 1000;
            OC2R = 1000; 
            OC1CONbits.ON = 1;
            OC2CONbits.ON = 1;
        }
        
        if(com < 28)
        {
            OC1CONbits.ON = 0;
            OC1CONbits.ON = 0;
            
            OC2RS = 1500;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
            OC2R = 1500;              // initialize before turning OC1 on; afterward it is read-only
    
            OC2RS = 1000;
            OC2R = 1000; 
            
            OC1CONbits.ON = 1;
            OC2CONbits.ON = 1;
        }
        
        else 
        {
            OC1CONbits.ON = 0;
            OC1CONbits.ON = 0;
            
            OC2RS = 1000;            //duty cycle =   // duty cycle = OC1RS/(PR2+1) = 25%
            OC2R = 1000;              // initialize before turning OC1 on; afterward it is read-only
    
            OC2RS = 1000;
            OC2R = 1000; 
            
            OC1CONbits.ON = 1;
            OC2CONbits.ON = 1;
        }
        sprintf(message2,"%d\r\n",com);
        NU32DIP_WriteUART1(message2);
    }
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
		
