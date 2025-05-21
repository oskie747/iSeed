#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/seeds.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/seeds.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="../../OneDrive/Desktop/ECE 118/ece118_base/AD.c" "../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c" "../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c" "../../OneDrive/Desktop/ECE 118/ece118_base/LED.c" "../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c" "../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c" "../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c" "../../OneDrive/Desktop/ECE 118/ece118_base/serial.c" "../../OneDrive/Desktop/ECE 118/ece118_base/timers.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedES_Main.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c" "../../OneDrive/Desktop/ECE 118/ece118_base/iSeed.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/244109137/AD.o ${OBJECTDIR}/_ext/244109137/BOARD.o ${OBJECTDIR}/_ext/244109137/IO_Ports.o ${OBJECTDIR}/_ext/244109137/LED.o ${OBJECTDIR}/_ext/244109137/RC_Servo.o ${OBJECTDIR}/_ext/244109137/Stepper.o ${OBJECTDIR}/_ext/244109137/pwm.o ${OBJECTDIR}/_ext/244109137/serial.o ${OBJECTDIR}/_ext/244109137/timers.o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o ${OBJECTDIR}/_ext/1246916263/SeedService.o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o ${OBJECTDIR}/_ext/244109137/iSeed.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/244109137/AD.o.d ${OBJECTDIR}/_ext/244109137/BOARD.o.d ${OBJECTDIR}/_ext/244109137/IO_Ports.o.d ${OBJECTDIR}/_ext/244109137/LED.o.d ${OBJECTDIR}/_ext/244109137/RC_Servo.o.d ${OBJECTDIR}/_ext/244109137/Stepper.o.d ${OBJECTDIR}/_ext/244109137/pwm.o.d ${OBJECTDIR}/_ext/244109137/serial.o.d ${OBJECTDIR}/_ext/244109137/timers.o.d ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d ${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o.d ${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d ${OBJECTDIR}/_ext/1246916263/SeedService.o.d ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d ${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d ${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d ${OBJECTDIR}/_ext/244109137/iSeed.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/244109137/AD.o ${OBJECTDIR}/_ext/244109137/BOARD.o ${OBJECTDIR}/_ext/244109137/IO_Ports.o ${OBJECTDIR}/_ext/244109137/LED.o ${OBJECTDIR}/_ext/244109137/RC_Servo.o ${OBJECTDIR}/_ext/244109137/Stepper.o ${OBJECTDIR}/_ext/244109137/pwm.o ${OBJECTDIR}/_ext/244109137/serial.o ${OBJECTDIR}/_ext/244109137/timers.o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o ${OBJECTDIR}/_ext/1246916263/SeedService.o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o ${OBJECTDIR}/_ext/244109137/iSeed.o

# Source Files
SOURCEFILES=../../OneDrive/Desktop/ECE 118/ece118_base/AD.c ../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c ../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c ../../OneDrive/Desktop/ECE 118/ece118_base/LED.c ../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c ../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c ../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c ../../OneDrive/Desktop/ECE 118/ece118_base/serial.c ../../OneDrive/Desktop/ECE 118/ece118_base/timers.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedES_Main.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c ../../OneDrive/Desktop/ECE 118/ece118_base/iSeed.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/seeds.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/244109137/AD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/AD.c  .generated_files/flags/default/444e2cc121f6e6d70ce25f2f7a998dfe91463973 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/AD.o.d" -o ${OBJECTDIR}/_ext/244109137/AD.o "../../OneDrive/Desktop/ECE 118/ece118_base/AD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/BOARD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/BOARD.c  .generated_files/flags/default/e0c4f06eca874e2d23ee532271639f6007a6b58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/BOARD.o.d" -o ${OBJECTDIR}/_ext/244109137/BOARD.o "../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/IO_Ports.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/IO_Ports.c  .generated_files/flags/default/b1d1ce62877d0dda7b07ebf478f1f2576828448c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/244109137/IO_Ports.o "../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/LED.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/LED.c  .generated_files/flags/default/ce5992199605db34671b0a21378b28c6c24080fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/LED.o.d" -o ${OBJECTDIR}/_ext/244109137/LED.o "../../OneDrive/Desktop/ECE 118/ece118_base/LED.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/RC_Servo.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/RC_Servo.c  .generated_files/flags/default/18cc439913731193ca20892834b7a88ae885bb76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/244109137/RC_Servo.o "../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/Stepper.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/Stepper.c  .generated_files/flags/default/360d227d0e1bd26e5e32300e7a2e5443f1ddc892 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/Stepper.o.d" -o ${OBJECTDIR}/_ext/244109137/Stepper.o "../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/pwm.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/pwm.c  .generated_files/flags/default/6ee8ea0024d067224c4d1d10715ecb874a1e5f60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/pwm.o.d" -o ${OBJECTDIR}/_ext/244109137/pwm.o "../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/serial.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/serial.c  .generated_files/flags/default/6c3eeb632dccda225a6727a4eb10c9158070318d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/serial.o.d" -o ${OBJECTDIR}/_ext/244109137/serial.o "../../OneDrive/Desktop/ECE 118/ece118_base/serial.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/timers.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/timers.c  .generated_files/flags/default/1df40b389df8432f9185cb68edfbae115a9ac0e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/timers.o.d" -o ${OBJECTDIR}/_ext/244109137/timers.o "../../OneDrive/Desktop/ECE 118/ece118_base/timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_CheckEvents.c  .generated_files/flags/default/7035f6da54c2483ed84e7a141befffc9aa6fe97e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Framework.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Framework.c  .generated_files/flags/default/714755211a9ac4edc9289f73ad668d644e8f1f47 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TimerService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TimerService.c  .generated_files/flags/default/3d7b7ae42d3b57080771968574c9656c9f738cef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Timers.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Timers.c  .generated_files/flags/default/9054a2ddb29e6eff665dff17270afef8b9c7fd6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedEventChecker.c  .generated_files/flags/default/9371aac85edcf19ec62fe13a8e0a6e907aeef771 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedES_Main.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedES_Main.c  .generated_files/flags/default/46552e8a2b5934a59f078d491743ab29994c52ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedES_Main.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedES_Main.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedHSM.c  .generated_files/flags/default/94d161d5bc060f80cf00bebb2d788c7ff2bb776d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedService.c  .generated_files/flags/default/258579f79e244eeae310fca6ead882c0f09657a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedService.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedSubHSM.c  .generated_files/flags/default/a09cf1f7801ce7e0b33843d8cbcc2461726d3430 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_KeyboardInput.c  .generated_files/flags/default/b570e5e2cdc6c355da3fff2c32a1fe4eb0ed2267 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_LookupTables.c  .generated_files/flags/default/2f0553c9e7686c41aaea4d822ea37535b1728bba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_PostList.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_PostList.c  .generated_files/flags/default/abfe8ed4dad0ffeed416c71efae8d551d268202f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Queue.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Queue.c  .generated_files/flags/default/6213aafe4272ad2fd4d6a986d90b80bde0cb9f25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TattleTale.c  .generated_files/flags/default/2cc3e8636ce60b188c62f5ccf0a0b5a48cb3c332 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/iSeed.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/iSeed.c  .generated_files/flags/default/4e5b8756695f104a7d7275343ccc48b6f7b53f09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/iSeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/iSeed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/iSeed.o.d" -o ${OBJECTDIR}/_ext/244109137/iSeed.o "../../OneDrive/Desktop/ECE 118/ece118_base/iSeed.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/244109137/AD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/AD.c  .generated_files/flags/default/96389b0bedc5f81e8d8776f909433e74c592363a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/AD.o.d" -o ${OBJECTDIR}/_ext/244109137/AD.o "../../OneDrive/Desktop/ECE 118/ece118_base/AD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/BOARD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/BOARD.c  .generated_files/flags/default/9bc12b238a3f3279ce46b438081f054bb58294c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/BOARD.o.d" -o ${OBJECTDIR}/_ext/244109137/BOARD.o "../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/IO_Ports.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/IO_Ports.c  .generated_files/flags/default/720dc8700a654b9a7d2de16c0ea0faf6951b25aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/244109137/IO_Ports.o "../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/LED.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/LED.c  .generated_files/flags/default/b97b3f4e9d3789d1631e1fb228ece3f8c174636c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/LED.o.d" -o ${OBJECTDIR}/_ext/244109137/LED.o "../../OneDrive/Desktop/ECE 118/ece118_base/LED.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/RC_Servo.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/RC_Servo.c  .generated_files/flags/default/47909f25783b42ab28cd0c19706972d7125a3e79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/244109137/RC_Servo.o "../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/Stepper.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/Stepper.c  .generated_files/flags/default/5743ee8e2ab650729b17f0a52cfccc9aac5f8da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/Stepper.o.d" -o ${OBJECTDIR}/_ext/244109137/Stepper.o "../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/pwm.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/pwm.c  .generated_files/flags/default/af735b028c44f53687fb600aff10e073b43032a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/pwm.o.d" -o ${OBJECTDIR}/_ext/244109137/pwm.o "../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/serial.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/serial.c  .generated_files/flags/default/e28975e41eb992f2dd173bd14237dce99d0bc552 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/serial.o.d" -o ${OBJECTDIR}/_ext/244109137/serial.o "../../OneDrive/Desktop/ECE 118/ece118_base/serial.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/timers.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/timers.c  .generated_files/flags/default/944487223fcc61cac38e5b323123f414b793c648 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/timers.o.d" -o ${OBJECTDIR}/_ext/244109137/timers.o "../../OneDrive/Desktop/ECE 118/ece118_base/timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_CheckEvents.c  .generated_files/flags/default/168ab5b142622dee6a18717822ab1bd732c26d73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Framework.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Framework.c  .generated_files/flags/default/a7b7e937941d5efe2af1070c9128520e6da41135 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TimerService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TimerService.c  .generated_files/flags/default/4074d58021422f69825afa861587f762642f538a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Timers.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Timers.c  .generated_files/flags/default/aebb6f0b3666f5c773bc9726d4256068d63feca0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedEventChecker.c  .generated_files/flags/default/48f292cbd211026bcbc981b0a5684ddc35aa14a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedES_Main.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedES_Main.c  .generated_files/flags/default/5037cc4bd708deccc81b372327bb692b75006e46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedES_Main.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedES_Main.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedES_Main.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedHSM.c  .generated_files/flags/default/1036d2add935a95831d9cb2e6480a0189190f529 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedService.c  .generated_files/flags/default/b2508b407726d14727be5049cf9a6f75d81bbbc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedService.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedSubHSM.c  .generated_files/flags/default/337e38d3a471ed8be6104c8cd7c4d1b49b6674ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_KeyboardInput.c  .generated_files/flags/default/e4a14763c23ddc9873558b43eb57b70a66096364 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_LookupTables.c  .generated_files/flags/default/d5481333782819bcd4f933c8055b88d01ed3518 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_PostList.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_PostList.c  .generated_files/flags/default/ee237ba5c153fd8fb7e6f1cd49f1e03998d2debe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Queue.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Queue.c  .generated_files/flags/default/275c5738a28dee166e13b394c90dbca23e41508e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TattleTale.c  .generated_files/flags/default/6463e43ed62c31f0ac63bceab33b65d9e3865863 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/iSeed.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/iSeed.c  .generated_files/flags/default/8152f5f6af360e3c91f7a8a76c9b40e616ec0f57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/iSeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/iSeed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/iSeed.o.d" -o ${OBJECTDIR}/_ext/244109137/iSeed.o "../../OneDrive/Desktop/ECE 118/ece118_base/iSeed.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/seeds.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/seeds.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/seeds.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/seeds.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/seeds.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
