#include "nu32dip.h" // constants, functions for startup and UART
#include "i2c_master_noint.h"
#include "C:\Users\12037\OneDrive - Northwestern University\Documents\GitHub\ME433\HW8\ssd1306.h"
#include <stdio.h>
#include "C:\Users\12037\OneDrive - Northwestern University\Documents\GitHub\ME433\HW8\font.h"
#include "mpu6050.h"

#define SYS_CLK_FREQ 800000000UL
void blink(int, int); // blink the LEDs function
void heartbeat(int); 
//void drawString(char*char, char, char);

int main(void) {
    NU32DIP_Startup(); // cache on, interrupts on, LED/button init, UART init
    
    TRISBbits.TRISB9 = 1;
    CNPUBbits.CNPUB9 = 1;
    
    TRISBbits.TRISB8 = 1; 
    CNPUBbits.CNPUB8 = 1;
    char m[100];
    
    I2C1CONbits.ON = 0;
    
    i2c_master_setup();
    
    I2C1CONbits.ON = 1;
    
    write_byte_I2C1(IMU_ADDR,PWR_MGMT_1,0x00);
    write_byte_I2C1(IMU_ADDR,ACCEL_CONFIG,0x00);
    write_byte_I2C1(IMU_ADDR,GYRO_CONFIG,0x0C);
    
    unsigned char d[14];
    float az;
    
    
    ssd1306_setup();
    
    ssd1306_clear();

    while (1) {
		heartbeat(10); 
        // use core timer for exactly 100Hz loop
        _CP0_SET_COUNT(0);
        //blink(1, 5);
        int i = 0;
        
        while (_CP0_GET_COUNT() < 48000000 / 2 / 100) {
            
            burst_read_mpu6050(d);
            az = conv_zXL(d);
            sprintf(m, "ACC: %.2f", az);
            drawString(m, 10, 10);
            sprintf(m, "FPS: %.8f", i * _CP0_GET_COUNT() / (float)SYS_CLK_FREQ);
            drawString(m, 10, 20);
            i++;
        }
        
    }
}


// making a heatbeat 
void heartbeat(int time_ms)
{
    ssd1306_drawPixel(2,2,0);
    ssd1306_update();
    
    unsigned int t = _CP0_GET_COUNT();
    while(_CP0_GET_COUNT() < t + 12000 * time_ms)
    {
        
    }
    
    ssd1306_drawPixel(2,2,1);
    
    ssd1306_update();
    while(_CP0_GET_COUNT() < t + 12000 * time_ms)
    {
        
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


void drawChar(char letter, char x, char y)
{
    for(int j = 0; j < 5; j++)
    {
        char col = ASCII[letter-0x20][j];
        for(int i = 0; i < 8; i++)
        {
            ssd1306_drawPixel(x+j,y+i, (col>>i)&0b1);
        }
    }
}


void drawString(char*m, char x, char y)
{
    int k = 0;
    while(m[k]!='\0')
    {
        drawChar(m[k], x+5*k, y);
        k++;
    }
}
