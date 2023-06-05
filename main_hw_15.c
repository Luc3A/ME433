#include "nu32dip.h" // constants, functions for startup and UART

#include <stdio.h>

void blink(int, int); // blink the LEDs function

int main(void) {
    NU32DIP_Startup(); // cache on, interrupts on, LED/button init, UART init
    
    char m[100];
    T2CONbits.TCKPS = 2;     // Timer2 prescaler N=4 (1:4)
    PR2 = 7499;              // period = (PR2+1) * N * (1/48000000) = 6 kHz
    TMR2 = 0;                // initial TMR2 count is 0
    OC1CONbits.OCM = 0b110;  // PWM mode without fault pin; other OC1CON bits are defaults
    OC1CONbits.OCTSEL = 0;   // Use timer2
    OC1RS = 3750;             // duty cycle = OC1RS/(PR2+1) = 25%
    OC1R = 3750;              // initialize before turning OC1 on; afterward it is read-only
    T2CONbits.ON = 1;        // turn on Timer2
    OC1CONbits.ON = 1;       // turn on OC1
	
    //LATBbits.LATB15 = 0;
    //RPB15Rbits.RPB15R = 0b0101; //pin 15 is output compare :D 
    
	// wait to print until you get a newline
    //NU32DIP_ReadUART1(m,100);

    while (1) {
		// use core timer for exactly 100Hz loop
        _CP0_SET_COUNT(0);
        blink(5,500);

        while (_CP0_GET_COUNT() < 48000000 / 2 / 100) {
        }
        
    }
}

// blink the LEDs
void blink(int iterations, int time_ms) {
    int i;
    unsigned int t;
    for (i = 0; i < iterations; i++) {
        NU32DIP_GREEN = 0; // on
        NU32DIP_YELLOW = 1; // off
        t = _CP0_GET_COUNT(); // should really check for overflow here
        // the core timer ticks at half the SYSCLK, so 24000000 times per second
        // so each millisecond is 24000 ticks
        // wait half in each delay
        while (_CP0_GET_COUNT() < t + 12000 * time_ms) {
        }

        NU32DIP_GREEN = 1; // off
        NU32DIP_YELLOW = 0; // on
        t = _CP0_GET_COUNT(); // should really check for overflow here
        while (_CP0_GET_COUNT() < t + 12000 * time_ms) {
        }
    }
}
