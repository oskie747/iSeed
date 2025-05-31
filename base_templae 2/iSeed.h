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
void Seed_Motor1Speed(void);

void Seed_Motor1Rev(void);

// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_Motor1Stop(void);

// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_Motor2Speed(void);

// * TO BE USED IN A WHILE LOOP TO FUNCTION PROPERLY AS OF 5/22
void Seed_Motor2Stop(void);

void Seed_Motor2Rev(void);

unsigned int Seed_Soil(void);

unsigned int Seed_IR_ONE(void);

unsigned int Seed_IR_TWO(void);

void Seed_ExtendArm(void);

void Seed_ReturnArm(void);

void Seed_RaiseArm(void);

void Seed_LowerArm(void);

void Seed_PushSeed(void);

void Seed_PullSeed(void);

