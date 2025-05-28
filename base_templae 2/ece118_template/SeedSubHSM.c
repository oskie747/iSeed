/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "SeedES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "SeedHSM.h"
#include "ExtendSubHSM.h"
#include "SeedSubHSM.h"
#include "iSeed.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    ARM_REST,
    ARM_DOWN,
    SEED
} TemplateSubHSMState_t;

static const char *StateNames[] = {
    "InitPSubState",
    "ARM_REST",
    "ARM_DOWN",
    "SEED"
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TemplateSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitSeedSubHSM(void)
{
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunSeedSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunTemplateSubHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunSeedSubHSM(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    TemplateSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state
            ES_Timer_InitTimer(lowerTimer, 600);
            // now put the machine into the actual initial state
            nextState = ARM_REST;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case ARM_REST: 
        if (ThisEvent.EventType == ES_ENTRY){
            //we are preparing to check for soil, so set the servos to these positions
            printf("\n 3-----SERVO POSITION SETTING");
            Seed_RaiseArm();
            Seed_PullSeed();
        }
        else if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == lowerTimer){
            //entry condition timer is done and we can lower the arm now
            nextState = ARM_DOWN;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
    
    case ARM_DOWN: 
        if (ThisEvent.EventType == ES_ENTRY){
            //time to lower the arm
            printf("\n 3-----ARM LOWERING");
            Seed_LowerArm();
        }
        else if (ThisEvent.EventType == no_dirt){
            //no dirt has been detected so we move on to the next row via a short timer
            printf("\n 3-----NO DIRT");
            //we want to exit to above SubHSM in this case
            ES_Timer_InitTimer(nextTimer, 400);
            nextState = ARM_REST;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        else if (ThisEvent.EventType == yo_dirt){
            //dirt was detected and we want to dispense a seed now
            printf("\n 3-----YO DIRT");
            nextState = SEED;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
      
    case SEED: 
        if (ThisEvent.EventType == ES_ENTRY){
            //we found dirt so start a short timer longer than it takes to dispense the seed
            printf("\n 3-----TIME TO SEED");
            ES_Timer_InitTimer(seedTimer, 1000);
            Seed_PushSeed();
        }
        else if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == seedTimer){
            //seed was pushed and timer is done so we move on to next row
            printf("\n 3-----SEEDING DONE TIME TO GO HOME");

//            Seed_PullSeed();
//            Seed_RaiseArm();
            
            //we want to exit to above SubHSM in this case
            ES_Timer_InitTimer(nextTimer, 600);
            nextState = ARM_REST;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
        
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunSeedSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunSeedSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

