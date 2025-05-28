#include <BOARD.h>
#include <xc.h>
#include <stdio.h>
#include "SeedES_Configure.h"
#include "ES_Framework.h"
#include "iSeed.h"

void main(void)
{
    ES_Return_t ErrorType;

    BOARD_Init();
    
    printf("Starting iSeed - The Seed Planting Robot Hierarchical State Machine\r\n");
    
    // Your hardware initialization function calls go here
    Seed_Init();
    
    // now initialize the Events and Services Framework and start it running
    ErrorType = ES_Initialize();
    if (ErrorType == Success) {
        ErrorType = ES_Run();

    }
    //if we got to here, there was an error
    switch (ErrorType) {
    case FailedPointer:
        printf("Failed on NULL pointer");
        break;
    case FailedInit:
        printf("Failed Initialization");
        break;
    default:
        printf("Other Failure: %d", ErrorType);
        break;
    }
    for (;;)
        ;

};

/*------------------------------- Footnotes -------------------------------*/
/*------------------------------ End of file ------------------------------*/
