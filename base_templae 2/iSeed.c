/*
 * File:   iSeed.c
 * Author: oskie
 *
 * Created on May 20, 2025, 7:30 PM
 */

// various includes, might need adjustment idk yet
#include "iSeed.h"
#include "RC_Servo.h"
#include "Stepper.h"
#include "AD.h"
#include "pwm.h"
#include "BOARD.h"
#include "serial.h"
#include "IO_Ports.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <xc.h>
#include <sys/attribs.h>


// [color] is added next to each port/pin to organize

/* ---SERVO MOTOR START--- */
#define SeedServo RC_PORTV03    //seed dispensing servo (SMALLER ONE) [red]
#define PULL 650
#define PUSH 1000
#define ArmServo RC_PORTV04     //servo to bring arm down to soil  (BIGGER ONE) [orange]
#define RAISE 650
#define LOWER 2000

/* ---SERVO MOTOR END--- */


/* ---SOIL SENSOR START--- */
#define SoilSensor AD_PORTV5    //soil sensor Port [blue]
#define AirValue 777            //value of sensor exposed to air (adjusted based on calibration)
#define WaterValue 386          //value of sensor submerged in water (adjusted based on calibration)
/* ---SOIL SENSOR END--- */


/* ---IR SENSOR START--- */
#define IR_ONE AD_PORTV6        //infrared sensor 1 port [yellow]
#define IR_TWO AD_PORTV7        //infrared sensor 2 port [purple]
/* ---IR SENSOR END--- */


/* ---DC MOTOR START--- */
//Motor 1
#define Motor1 PWM_PORTX11      //Port that DC motor 1 is controlled through
#define DCin1 PORTX04_TRIS      //IN1 on H-bridge
#define DCin2 PORTX03_TRIS      //IN2 on H-bridge
#define DC_DIR1 PORTX04_LAT     
#define DC_DIR2 PORTX03_LAT     

//Motor 2
#define Motor2 PWM_PORTY04      //Port that DC motor 2 is controlled through
#define DCin3 PORTX05_TRIS      //IN3 on H-bridge
#define DCin4 PORTX06_TRIS      //IN4 on H-bridge
#define DC_DIR3 PORTY08_LAT     
#define DC_DIR4 PORTY07_LAT     

#define MOVE 900               //speed at which DC motor moves
#define STOP 0                  //stop the bot
/* ---DC MOTOR END--- */


/* ---STEPPER MOTOR START--- */
/* note:
 * stepper motor uses predefined pins/ports from Stepper.h
 * these are PORTZ 03-05 & 07-09
 */
#define extention_steps 80      //amount of steps to reach each planter
#define return_steps 160        //amount of steps to reach each origin from farthest planter
#define extend_arm REVERSE      //ignore the naming convention I am sorry :(
#define reduce_arm FORWARD      //ignore the naming convention I am sorry :(
#define rate 100                //rate at which stepper motor moves
/* ---STEPPER MOTOR END--- */


/* ---EXTRA DEFINES START--- */
//bruh moment
/* ---EXTRA DEFINES END--- */


/*
 * Helper functions list for organiztion, and implementation
 *  X initialize robot and various aspects 
 *  X seed dropping mechanism, turns servo just enough to drop a seed
 *  X turn both DC motors ON
 *  X turn both DC motors OFF
 *  X extend arm (stepper) by one stage
 *  X return arm (stepper) to origin position
 *  X read soil sensor value
 *  X read IR one value
 *  X read IR two value
 *  X bring drill arm (servo) DOWN
 *  X bring drill arm (servo) UP
 *  - 
 */


/**
 * @Function Seed_Init(void)
 * @param None.
 * @return None.
 * @brief  Performs all the initialization necessary. this includes initializing 
 * the PWM module, the A/D converter, the data directions on some pins, and 
 * setting the initial motor directions.
 * @note  None. */
void Seed_Init(void) {
    //motor initializations
    printf("\nI AM INITIALIZED YAY");
    PWM_Init();
    PWM_SetFrequency(1000);
    PWM_AddPins(Motor1 | Motor2);
    
    DCin1 = 0; //ensure that the IN1-4 pins on DC motor H-bridge are outputs from Uno32
    DCin2 = 0;
    DCin3 = 0;
    DCin4 = 0;
    
    //servo initializations
    RC_Init();
    RC_AddPins(0x3FF);
    
    //sensor initializations
    AD_Init();
    AD_AddPins(SoilSensor | IR_ONE | IR_TWO);
    
    //stepper motor initializations
    Stepper_Init();
}

/**
 * @Function Seed_MotorSpeed(char newSpeed)
 * @param newSpeed - A value between 0 and 100 which is the new speed
 * @param of the motor. 0 stops the motor.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the robot.
 * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
 * @author Max Dunne, 2012.01.06 */
void Seed_Motor1Speed(void)
{
    DC_DIR1 = 0; //ensure that the IN1-4 pins on DC motor H-bridge are outputs from Uno32
    DC_DIR2 = 1;
    PWM_SetDutyCycle(Motor1, MOVE);
}
// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_Motor1Stop(void)
{
    DC_DIR1 = 0; //ensure that the IN1-4 pins on DC motor H-bridge are outputs from Uno32
    DC_DIR2 = 0;
    PWM_SetDutyCycle(Motor1, STOP);
}
void Seed_Motor2Speed(void)
{
    DC_DIR3 = 1;
    DC_DIR4 = 0;
    PWM_SetDutyCycle(Motor2, MOVE);
}
// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_Motor2Stop(void)
{
    DC_DIR3 = 0;
    DC_DIR4 = 0;
    PWM_SetDutyCycle(Motor2, STOP);

}

unsigned int Seed_Soil(void)
{
    return AD_ReadADPin(SoilSensor);
}

unsigned int Seed_IR_ONE(void)
{
    return AD_ReadADPin(IR_ONE);
}

unsigned int Seed_IR_TWO(void)
{
    return AD_ReadADPin(IR_TWO);
}

void Seed_ExtendArm(void)
{   
    Stepper_SetRate(rate);
    Stepper_SetSteps(extend_arm, extention_steps); //move 80 steps
    Stepper_StartSteps();
}

void Seed_ReturnArm(void)
{   
    Stepper_SetRate(rate);
    Stepper_SetSteps(reduce_arm, extention_steps * 2); //move 160 steps
    Stepper_StartSteps();
}

void Seed_RaiseArm(void)
{   
    RC_SetPulseTime(ArmServo, RAISE); //position 650
}

void Seed_LowerArm(void)
{   
    RC_SetPulseTime(ArmServo, LOWER); //position 2000
}

void Seed_PushSeed(void)
{   
    RC_SetPulseTime(SeedServo, PUSH); //position 1000
}

void Seed_PullSeed(void)
{   
    RC_SetPulseTime(SeedServo, PULL); //position 650
}

//unsure if going to be used in final HSM
//def useful in test case
//doesnt work?
//void Seed_LineFollow(void)
//{   
//    printf("\n2");
//    int LINE = Seed_IR_ONE();
//    int POT = Seed_IR_TWO();
//    int test_soil = Seed_Soil();
//    
//    printf("\n3");
//    while(test_soil >= 700){
//        printf("\n4");
//        if (LINE > 500 && POT > 500){
//            Seed_MotorStop();
//            printf("\nI AM @ A PLANTER POT");
//            Seed_RaiseArm();
//            Seed_PushSeed();
//        }
//        else if (LINE > 500 && POT < 500){
//            Seed_MotorSpeed();
//            printf("\n    I AM ON A LINE");
//            Seed_LowerArm();
//            Seed_PullSeed();
//        }
//        else{
//            Seed_MotorStop();
//            printf("\n            I AM IDLING");
//            Seed_LowerArm();
//            Seed_PushSeed();
//        }
//    }
//    printf("\n5");
//    Seed_ReturnArm();
//}

//#define SEED_TEST
#ifdef SEED_TEST
void main(void){
    
    Seed_Init();
    while(1){
        printf("\n1");
        Seed_LineFollow();
    }
}
#endif