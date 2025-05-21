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


int main(void) {
    BOARD_Init();
//    AD_Init();
//    PWM_Init();
//    LED_Init();
    
    PORTX03_TRIS = 1; //SDA pin
    PORTX06_TRIS = 1; //SCL PIN
    
    while(1){
        
    }
    return 0;
}
