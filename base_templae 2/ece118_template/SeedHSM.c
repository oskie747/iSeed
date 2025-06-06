/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
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

#include "SeedES_Configure.h"
#include "ES_Framework.h"
#include <BOARD.h>

#include "SeedHSM.h"
#include "SeedSubHSM.h" //#include all sub state machines called
#include "ExtendSubHSM.h"

#include "iSeed.h"
#include "stdio.h"
#include "stdlib.h"
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do


/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    InitPState,
    ORIENT,
    LINE_FOLLOW,
    PLANTER,
    IDLE
} TemplateHSMState_t;

static const char *StateNames[] = {
	"InitPState",
    "ORIENT",
	"LINE_FOLLOW",
    "PLANTER",
    "IDLE"
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
void Seed_MotorSpeed(void);
void Seed_MotorStop(void);

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TemplateHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitSeedHSM(uint8_t Priority)
{
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostSeedHSM(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateHSM(ES_Event ThisEvent)
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
ES_Event RunSeedHSM(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    TemplateHSMState_t nextState; // <- change type to correct enum

//    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPState: // If current state is initial Pseudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state
            // Initialize all sub-state machines
            Seed_RaiseArm();
            Seed_PullSeed();
//            InitExtendSubHSM();
            
            // now put the machine into the actual initial state
            nextState = LINE_FOLLOW;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            ;
        }
        break;

    case ORIENT:
        //while in this state MOVE until the end of the line, then we start planting
        Seed_MotorRev();
        if (ThisEvent.EventType == ES_ENTRY){
            printf("\n 1-ORIENTATION");
        }

        else if (ThisEvent.EventType == ir1_off){
            //THIS OCCURS WHEN WE ARE READY TO FOLLOW LINE AND PLANT
            Seed_MotorStop();
//            ES_Timer_InitTimer(tempTimer, 1000);
            nextState = IDLE;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
   
    case LINE_FOLLOW:
        //while in this state MOVE until a planter is reached, or the line is gone
        Seed_MotorSpeed();
        if (ThisEvent.EventType == ES_ENTRY){
            printf("\n 1-LINE FOLLOW");
        }
        
        else if (ThisEvent.EventType == ir1_off){
            //THIS OCCURS WHEN THE LINE IS NO MORE
//            Seed_MotorStop();
            ES_Timer_InitTimer(tempTimer, 1000);
            nextState = IDLE;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        else if (ThisEvent.EventType == ir2_off){
            //THIS OCCURS WHEN A PLANTER IS REACHED
            InitExtendSubHSM();             //initialize ExtendSubHSM
            Seed_MotorStop();
            nextState = PLANTER;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
    
    case PLANTER:
        //while in this state, STOP and go into ExtendSubHSM
        Seed_MotorStop();
        if (ThisEvent.EventType == ES_ENTRY){
            printf("\n 1-PLANTER");
        }

        ThisEvent = RunExtendSubHSM(ThisEvent);
        
        //entire column is finished, time to move on to next one
        if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == ColumnDone){
            nextState = LINE_FOLLOW;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
    
    case IDLE:
        //checked every planter, and reached the end of the environment
        if (ThisEvent.EventType == ES_ENTRY){
            Seed_MotorStop();
            printf("\n 1-END OF LINE");
//            printf("\n           ^");
//            printf("\n         (  >)");
//            printf("\n     ---(  .  )---");
//            printf("\n    <__(___.___)__>");  
//            printf("\n     O           O");
        }
        else if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == tempTimer){
            printf("\n 1-DONE ORIENTATION STAGE OF ENVIRONMENT TIME TO PLANT");
            Seed_MotorSpeed();
//            ES_Timer_InitTimer(afterTimer, 1000);
            nextState = ORIENT;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }

        break;
    
        
        
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunSeedHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunSeedHSM(ENTRY_EVENT); // <- rename to your own Run function
    }
    
    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
void Seed_MotorSpeed(void){
    Seed_Motor1Speed();
    Seed_Motor2Speed();
//    printf("\nbruh");
}

void Seed_MotorRev(void){
    Seed_Motor1Rev();
    Seed_Motor2Rev();
//    printf("\nmoment");
}

void Seed_MotorStop(void){
    Seed_Motor1Stop();
    Seed_Motor2Stop();
}