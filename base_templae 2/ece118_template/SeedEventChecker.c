/*
 * File:   TemplateEventChecker.c
 * Author: Gabriel Hugh Elkaim
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "SeedES_Configure.h"
#include "SeedEventChecker.h"
#include "ES_Events.h"
#include "serial.h"
#include "AD.h"
#include "Stepper.h"
#include "pwm.h"
#include "iSeed.h"
#include "SeedService.h"
#include "ES_Timers.h"
#include "SeedHSM.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define BATTERY_DISCONNECT_THRESHOLD 175

/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                             *
 ******************************************************************************/

//#define EVENTCHECKER_TEST
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x) do {eventName=__func__; storedEvent=x;} while (0)

static const char *eventName;
static ES_Event storedEvent;
#endif

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this EventChecker. They should be functions
   relevant to the behavior of this particular event checker */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function TemplateCheckBattery(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function is a prototype event checker that checks the battery voltage
 *        against a fixed threshold (#defined in the .c file). Note that you need to
 *        keep track of previous history, and that the actual battery voltage is checked
 *        only once at the beginning of the function. The function will post an event
 *        of either BATTERY_CONNECTED or BATTERY_DISCONNECTED if the power switch is turned
 *        on or off with the USB cord plugged into the Uno32. Returns TRUE if there was an 
 *        event, FALSE otherwise.
 * @note Use this code as a template for your other event checkers, and modify as necessary.
 * @author Gabriel H Elkaim, 2013.09.27 09:18
 * @modified Gabriel H Elkaim/Max Dunne, 2016.09.12 20:08 */
//uint8_t TemplateCheckBattery(void) {
//    static ES_EventTyp_t lastEvent = BATTERY_DISCONNECTED;
//    ES_EventTyp_t curEvent;
//    ES_Event thisEvent;
//    uint8_t returnVal = FALSE;
//    uint16_t batVoltage = AD_ReadADPin(BAT_VOLTAGE); // read the battery voltage
//
//    if (batVoltage > BATTERY_DISCONNECT_THRESHOLD) { // is battery connected?
//        curEvent = BATTERY_CONNECTED;
//    } else {
//        curEvent = BATTERY_DISCONNECTED;
//    }
//    if (curEvent != lastEvent) { // check for change from last time
//        thisEvent.EventType = curEvent;
//        thisEvent.EventParam = batVoltage;
//        returnVal = TRUE;
//        lastEvent = curEvent; // update history
//#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
//        PostSeedService(thisEvent); // Change it to your target service's post function
//#else
//        SaveEvent(thisEvent);
//#endif   
//    }
//    return (returnVal);
//}

uint8_t SeedSoilCheck(void) {
    static ES_EventTyp_t lastEvent = no_dirt;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t soilVal = Seed_Soil();  // read soil sensor data

    if (soilVal > 720) { // is it in dirt?
//        printf("\nhello?");
        curEvent = no_dirt;
    } else {
//        printf("\ngoodbye?");
        curEvent = yo_dirt;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = soilVal;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostSeedHSM(thisEvent); //CRITICALLY IMPORTANT TO HAVE THIS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

uint8_t SeedCheckIR1(void) {
    static ES_EventTyp_t lastEvent = ir1_off;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t ir1Val = Seed_IR_ONE(); // read IR sensor input

    if (ir1Val > 500) { // is it off
//        printf("\nhewwo?");
        curEvent = ir1_off;
    } else {
//        printf("\ngowodbye?");
        curEvent = ir1_on;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = ir1Val;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostSeedHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

uint8_t SeedCheckIR2(void) {
    static ES_EventTyp_t lastEvent = ir2_off;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t ir2Val = Seed_IR_TWO();  // read IR sensor input

    if (ir2Val > 500) { // is it off
//        printf("\nholla?");
        curEvent = ir2_off;
    } else {
//        printf("\ngadbuy?");
//        printf("\n      bruh: %d", ir2Val);
        curEvent = ir2_on;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = ir2Val;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostSeedHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

uint8_t SeedStepsRemaining(void) {
    static ES_EventTyp_t lastEvent = stepping;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t steps = Stepper_GetRemainingSteps();  // check steps left on steppa motor

    if (steps != 0) { // is it still going?
        curEvent = stepping;
    } else {
        curEvent = still;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = steps;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostSeedHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}



/* 
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 * 
 * It requires a valid ES_Configure.h file in the project with the correct events in 
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 * 
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 * 
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 * 
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */
#ifdef EVENTCHECKER_TEST
#include <stdio.h>

#define SoilSensor AD_PORTV5
#define IR_ONE AD_PORTV6
#define IR_TWO AD_PORTV7

static uint8_t(*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);

void main(void) {
    BOARD_Init();
    ES_Initialize();
    printf("\nes iniitialize");
    /* user initialization code goes here */
    Seed_Init();
    
    Seed_ExtendArm();
    
    Seed_RaiseArm();
    
    Seed_PushSeed();
    
    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);
    
    while (1) {
        if (IsTransmitEmpty()) {
            for (i = 0; i< sizeof (EventList) >> 2; i++) {
                if (EventList[i]() == TRUE) {
                    PrintEvent();
                    break;
                }

            }
        }
//        Seed_Motor1Speed();
//        Seed_Motor2Speed();
        
    }
}

void PrintEvent(void) {
    printf("\r\nFunc: %s\tEvent: %s\tParam: 0x%X", eventName,
            EventNames[storedEvent.EventType], storedEvent.EventParam);
}
#endif