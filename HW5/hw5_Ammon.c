//Homework 5
//Lucy Ammon

void initSPI();
unsigned char spi_io(unsigned char o);

int main(){

    __builtin_disable_interrupts();

    __builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583);

    BMXCONbits.BMXWSDRM = 0x0;

    INTCONbits.MVEC = 0x1;

    DDPCONbits.JTAGEN = 0;

    TRISAbits.TRISA4 = 0;

    LATAbits.LATA4 = 0;

    // call all init
    // pre calc all the vs

    while(1){

        LATAbits.LATA0 = 0;
        spi_io(i);
        LATAbits.LATA0 = 1;

        i++;
        if (i == 100)
        {
            i = 0;
        }

        _CP0_SET_COUNT(0);
        while (_CP0_GET_COUNT() < 48000000 / 2) // 1Hz
        {

        }
        
        float Amplitude = 1022;
        float Frequency = 2.3; //Hz
        float B = Amplidute/2;
        //figure out the voltage for the sine wave, v = A*sine(2*pi*t/sample_rate)+B
        float voltage_sine = Amplitude * sint(2*pi*Frequency*i) + B;
        // math to make sinewave 0 to 1023 

 

        //figure out the voltage for the triangle wave
        //send the voltage with the spi
        float period = 6;
        float voltage_triangle = abs((i % period) - Amplitude);

        //delay
    }
}

fn(float v, char a_or_b)
       // [a_or_b 1 1 1 [10 bit voltage] 0 0]
        // ^ need to assemble bits
        unsigned short t = 0;
        t = 0b111<<12;
        //need 12 0s behind 1s 
        unsigned char a_or_b; // this is 0b0 or 0b1 
        t = t|(a_or_b<<15);
        // stick in v<<
        t = t|(v<<2);
        //send the voltage with the spi
        CS = 0;
        spi_io(t>>8);  //want first 8 bits
        spi_io(t); // can leave alone to delete first 8 bits, leaving only last 8
        CS = 1;


void initSPI()
{
    // PIN B14 HAS to be SCR 1
    // Turn off analog pins

    ANSELA = 0;

    // Make A0 an output pin for CS

    TRISAbits.TRISA0 = 0;
    LATAbits.LATA0 = 1;

    // Make A1 SD01
    RPA1Rbits.RPA1R = 0b0011;

    // Make B5 SDI1
    SDI1Rbits.SDI1R = 0b0001;

    // setup SPI1
    SPI1CON = 0; // turn off the spi module and reset it
    SPI1BUF; // clear the rx buffer by reading from it
    SPI1BRG = 1000; // 1000 for 24kHz, 1 for 12MHz; // baud rate to 10 MHz [SPI1BRG = (48000000/(2*desired))-1]
    SPI1STATbits.SPIROV = 0; // clear the overflow bit
    SPI1CONbits.CKE = 1; // data changes when clock goes from hi to lo (since CKP is 0)
    SPI1CONbits.MSTEN = 1; // master operation
    SPI1CONbits.ON = 1; // turn on spi 
}

unsigned char spi_io(unsigned char o) {
  SPI1BUF = o;
  while(!SPI1STATbits.SPIRBF) { // wait to receive the byte
    ;
  }
  return SPI1BUF;
}