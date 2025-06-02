/*
 * File:   ultra_test.c
 * Author: oskie
 *
 * test for ULTRA SONIC SENSOR
 * 
 * Created on May 8, 2025, 10:31 AM
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <xc.h>
#include <sys/attribs.h>

#include "AD.h"
#include "BOARD.h"
#include "IO_PORTS.h"
#include "LED.h"
#include "pwm.h"
#include "RC_Servo.h"
#include "Stepper.h"
#include "serial.h"
#include "timers.h"
#include "iSeed.h"

#define DELAY(x)    for (int wait = 0; wait <= x; wait++) {asm("nop");}

//#define IR_TEST
//#define IR_TEST2
//#define SS_TEST
//#define SERVO_TEST
//#define SERVO_TEST2
//#define COMBO_TEST_IR_motor
//#define steppa_TEST
#define bruh
//#define moment

#define Servo1 RC_PORTV03   //
#define Servo2 RC_PORTV04   //


#define servoCenter 1500
#define servoMax    2000
#define servoMin    1000

#ifdef IR_TEST
int main(void) {
    //test if one IR sensor works enough to do stuff with
    BOARD_Init();
    AD_Init();

    AD_AddPins(AD_PORTV6);
    
    while(1){
        int val = AD_ReadADPin(AD_PORTV6);
        printf("\nval: %d", val);
    }
    return 0;
}
#endif

#ifdef IR_TEST2
int main(void) {
    //test if two IR sensor works enough to do stuff with
    BOARD_Init();
    PORTY06_TRIS = 1;
    PORTY08_TRIS = 1;
    while(1){
        if (!PORTY06_BIT){
            printf("\nPLANTER");
            break;
        }
        else if (PORTY08_BIT){
            printf("\n  DRIVING");
        }
        else if (!PORTY08_BIT){
            printf("\n      DONE DRIVING");
        }
    }
    return 0;
}
#endif


#ifdef SS_TEST

const int AirValue = 777;    //you need to replace this value with Value_1
const int WaterValue = 386;  //you need to replace this value with Value_2
int intervals = (AirValue - WaterValue)/3;
int soilMoistureValue = 0; 

#define SoilSensor AD_PORTV5

int main(void) {
    BOARD_Init();
    AD_Init();
    AD_AddPins(SoilSensor);
    
    while(1){
        soilMoistureValue = AD_ReadADPin(SoilSensor);
        printf("\nVALUE: %d", soilMoistureValue);
        if (soilMoistureValue < 776){
            printf("\n          DIRT BABY");
        }
//        if(soilMoistureValue > WaterValue && soilMoistureValue < (WaterValue + intervals)) {
//          printf("\n Very Wet");
//        }
//        else if(soilMoistureValue > (WaterValue + intervals) && soilMoistureValue < (AirValue - intervals)){
//          printf("\n    Wet");
//        }
//        else if(soilMoistureValue < AirValue && soilMoistureValue > (AirValue - intervals)){
//          printf("\n        Dry");
//        }    
    }
    return 0;
}
#endif

#ifdef SERVO_TEST 
//big ol sweeping test form one to the other
#define SWEEP_STEP_MS      10    // how often (ms) we move to the next pulse
#define SWEEP_INCREMENT    10    // how many ?s to change each step

volatile uint32_t msTicks = 0;  // 1 ms tick counter

// Timer1 ISR: fires every 1 ms
void __ISR(_TIMER_1_VECTOR, IPL4AUTO) Timer1Handler(void) {
    IFS0bits.T1IF = 0;
    msTicks++;
}

// non-blocking ?has delay elapsed?? helper
static inline int elapsed(uint32_t *last, uint32_t delay) {
    if ((msTicks - *last) >= delay) {
        *last = msTicks;
        return 1;
    }
    return 0;
}

int main(void) {
    uint32_t lastSweep = 0;
    int      dir       = 1;                 // 1 ? up, ?1 ? down
    int      pulse     = MINPULSE;          // current pulse width (?s)

    BOARD_Init();
    RC_Init();

    // enable *all* servos you want to sweep?here: every pin in the header
    RC_AddPins(0x3FF);

    // ??? Setup Timer1 for 1 ms ticks ?????????????????????????????????????????
    T1CON = 0;
    T1CONbits.TCKPS = 0b11;               // 1:256 prescale
    PR1 = (BOARD_GetPBClock() / 1000 / 256) - 1; // PBCLK/1000/256 gives ~1 ms
    TMR1 = 0;
    IPC1bits.T1IP = 4;
    IFS0bits.T1IF = 0;
    IEC0bits.T1IE = 1;
    T1CONbits.ON  = 1;

    // prime the first position
    RC_SetPulseTime(Servo1, pulse);
    //RC_SetPulseTime(Servo2, pulse);
    // ? repeat for each pin OR loop through bits ?

    while (1) {
        // every SWEEP_STEP_MS ms, update all servos
        if (elapsed(&lastSweep, SWEEP_STEP_MS)) {
            // advance pulse
            pulse += dir * SWEEP_INCREMENT;

            // reverse at endpoints
            if (pulse >= MAXPULSE) {
                pulse = MAXPULSE;
                dir   = -1;
            } else if (pulse <= MINPULSE) {
                pulse = MINPULSE;
                dir   = 1;
            }

            RC_SetPulseTime(Servo1, pulse);
            //RC_SetPulseTime(Servo2, pulse);
        }
    }

    return 0;
}
#endif


#ifdef SERVO_TEST2
int main(void) {
    //test if two IR sensor works enough to do stuff with
    BOARD_Init();
    RC_Init();
    AD_Init();
    
    RC_AddPins(0x3FF);
    
    RC_SetPulseTime(Servo1, 650);
    
    return 0;
}
#endif

#ifdef COMBO_TEST_IR_motor
#include "iSeed.h"

int main(void) {
    //tests turning the servo if the IR goes high/low
    BOARD_Init();
    Seed_Init();    
    
    while(1){
        if(Seed_IR_ONE() > 500){ // IR 2 FOLLOWS THE LINE BASED ON THIS CODE
            Seed_MotorSpeed();
            printf("\ni am moving I hope");
            PORTX04_TRIS = 0; // direction controls
            PORTX03_TRIS = 0;
        }
        else if (Seed_IR_TWO() > 500 && Seed_IR_ONE() > 500){ // either IR sensor is hi, meaning that we can move
            Seed_MotorStop();
            printf("\n      Im @ tha planta");
            PORTX04_TRIS = 0; // direction controls
            PORTX03_TRIS = 1;
        }
        else{
            Seed_MotorStop();
            printf("\n              i am stop");
            PORTX04_TRIS = 0; // direction controls
            PORTX03_TRIS = 0;
        }
    }
    return 0;
}
#endif

#ifdef steppa_TEST

#define extention 87  //amount of steps to reach each planter

#define extend_arm REVERSE
#define reduce_arm FORWARD

#define rate 100

int main(void) {
    BOARD_Init();
    AD_Init();
    Stepper_Init();
    
    Stepper_SetRate(rate);
    Stepper_SetSteps(extend_arm, extention);
    Stepper_StartSteps();
    
    
    return 0;
}
#endif

#ifdef bruh

void main(void){
    printf("\n lets get this test party started");
    BOARD_Init();
    Seed_Init();
    int i = 0;
    int j = 0;
    
    while(1){
        printf("\n %d", Seed_Soil());
    }
}
#endif

#ifdef moment

void main(void){
    printf("\n lets get this test party started");
    BOARD_Init();
    Seed_Init();
    
    while(1){
        printf("\nIR ONE VAL: %d", Seed_IR_ONE());
        printf("\n      IR TWO VAL: %d", Seed_IR_TWO());
    }
}
#endif
