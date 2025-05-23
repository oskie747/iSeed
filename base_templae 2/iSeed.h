#include <BOARD.h>


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/


/**
 * @function Seed_Init(void)
 * @param None
 * @return nothing
 * @brief initializes all necessary things for the iSeed */
void Seed_Init(void);


// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_MotorSpeed(void);

// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_MotorStop(void);

unsigned int Seed_Soil(void);

unsigned int Seed_IR_ONE(void);

unsigned int Seed_IR_TWO(void);

void Seed_ExtendArm(void);

void Seed_ReturnArm(void);

void Seed_RaiseArm(void);

void Seed_LowerArm(void);

void Seed_PushSeed(void);

void Seed_PullSeed(void);

void Seed_LineFollow(void);
