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
SOURCEFILES_QUOTED_IF_SPACED="../../OneDrive/Desktop/ECE 118/ece118_base/AD.c" "../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c" "../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c" "../../OneDrive/Desktop/ECE 118/ece118_base/LED.c" "../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c" "../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c" "../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c" "../../OneDrive/Desktop/ECE 118/ece118_base/serial.c" "../../OneDrive/Desktop/ECE 118/ece118_base/timers.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c" "../../OneDrive/Desktop/ECE 118/base_templae 2/iSeed.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/244109137/AD.o ${OBJECTDIR}/_ext/244109137/BOARD.o ${OBJECTDIR}/_ext/244109137/IO_Ports.o ${OBJECTDIR}/_ext/244109137/LED.o ${OBJECTDIR}/_ext/244109137/RC_Servo.o ${OBJECTDIR}/_ext/244109137/Stepper.o ${OBJECTDIR}/_ext/244109137/pwm.o ${OBJECTDIR}/_ext/244109137/serial.o ${OBJECTDIR}/_ext/244109137/timers.o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o ${OBJECTDIR}/_ext/1246916263/SeedService.o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o ${OBJECTDIR}/_ext/816103698/iSeed.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/244109137/AD.o.d ${OBJECTDIR}/_ext/244109137/BOARD.o.d ${OBJECTDIR}/_ext/244109137/IO_Ports.o.d ${OBJECTDIR}/_ext/244109137/LED.o.d ${OBJECTDIR}/_ext/244109137/RC_Servo.o.d ${OBJECTDIR}/_ext/244109137/Stepper.o.d ${OBJECTDIR}/_ext/244109137/pwm.o.d ${OBJECTDIR}/_ext/244109137/serial.o.d ${OBJECTDIR}/_ext/244109137/timers.o.d ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d ${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d ${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d ${OBJECTDIR}/_ext/1246916263/SeedService.o.d ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d ${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d ${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d ${OBJECTDIR}/_ext/816103698/iSeed.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/244109137/AD.o ${OBJECTDIR}/_ext/244109137/BOARD.o ${OBJECTDIR}/_ext/244109137/IO_Ports.o ${OBJECTDIR}/_ext/244109137/LED.o ${OBJECTDIR}/_ext/244109137/RC_Servo.o ${OBJECTDIR}/_ext/244109137/Stepper.o ${OBJECTDIR}/_ext/244109137/pwm.o ${OBJECTDIR}/_ext/244109137/serial.o ${OBJECTDIR}/_ext/244109137/timers.o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o ${OBJECTDIR}/_ext/1246916263/SeedService.o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o ${OBJECTDIR}/_ext/816103698/iSeed.o

# Source Files
SOURCEFILES=../../OneDrive/Desktop/ECE 118/ece118_base/AD.c ../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c ../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c ../../OneDrive/Desktop/ECE 118/ece118_base/LED.c ../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c ../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c ../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c ../../OneDrive/Desktop/ECE 118/ece118_base/serial.c ../../OneDrive/Desktop/ECE 118/ece118_base/timers.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c ../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c ../../OneDrive/Desktop/ECE 118/base_templae 2/iSeed.c



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
${OBJECTDIR}/_ext/244109137/AD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/AD.c  .generated_files/flags/default/8a30908b2de6e5d01d39fc86121d138a62fa11c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/AD.o.d" -o ${OBJECTDIR}/_ext/244109137/AD.o "../../OneDrive/Desktop/ECE 118/ece118_base/AD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/BOARD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/BOARD.c  .generated_files/flags/default/e26bfb643d7626f4e62beaca0c6529c0a1cbb6da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/BOARD.o.d" -o ${OBJECTDIR}/_ext/244109137/BOARD.o "../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/IO_Ports.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/IO_Ports.c  .generated_files/flags/default/dc5ac913845177e8b2938f529c3cc96378628570 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/244109137/IO_Ports.o "../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/LED.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/LED.c  .generated_files/flags/default/a51d398f99a19d0249e1c22c31ec96567a7f449b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/LED.o.d" -o ${OBJECTDIR}/_ext/244109137/LED.o "../../OneDrive/Desktop/ECE 118/ece118_base/LED.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/RC_Servo.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/RC_Servo.c  .generated_files/flags/default/57b2380981f198578e00edf1836e5b24106a8412 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/244109137/RC_Servo.o "../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/Stepper.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/Stepper.c  .generated_files/flags/default/6d56ce9d2f163a0265e21359b862036fa76805d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/Stepper.o.d" -o ${OBJECTDIR}/_ext/244109137/Stepper.o "../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/pwm.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/pwm.c  .generated_files/flags/default/e50fefeecc98f0820efa41d7aeff6ac8e0cf4d2e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/pwm.o.d" -o ${OBJECTDIR}/_ext/244109137/pwm.o "../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/serial.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/serial.c  .generated_files/flags/default/c3aa4d8e6eeac9ec09f45db8cb669b0f6368689c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/serial.o.d" -o ${OBJECTDIR}/_ext/244109137/serial.o "../../OneDrive/Desktop/ECE 118/ece118_base/serial.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/timers.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/timers.c  .generated_files/flags/default/1aefa5bb8a2fcad64b8aa6f46c0025b61ea90ac6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/timers.o.d" -o ${OBJECTDIR}/_ext/244109137/timers.o "../../OneDrive/Desktop/ECE 118/ece118_base/timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_CheckEvents.c  .generated_files/flags/default/e6f409a274f522a9101a5431551af772897d861a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Framework.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Framework.c  .generated_files/flags/default/166b2333d1925671145d3a4a0176e894c24e80f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TimerService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TimerService.c  .generated_files/flags/default/45158d3984a0d717d0e122f7010c5fea812d1e67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Timers.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Timers.c  .generated_files/flags/default/c397a7bd71f1bc2ee863ad533435874e506906d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedEventChecker.c  .generated_files/flags/default/f26b98279e3fa156ea7def6bf917a15a35477522 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedHSM.c  .generated_files/flags/default/d44d2d5955770a81bce1a262b9e504a8aa009c78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedService.c  .generated_files/flags/default/c402c7640f606821aaa050cac397408af26bd4ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedService.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedSubHSM.c  .generated_files/flags/default/c1e7cd886d73318bd8e7661ac1acb974eef55c45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_KeyboardInput.c  .generated_files/flags/default/52ef428b501aeae37de3be2aeea56be72d70ea52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_LookupTables.c  .generated_files/flags/default/1b05e5c6c8e7863d3f577046dec59304215e973b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_PostList.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_PostList.c  .generated_files/flags/default/67dd10e7ac91509fcf0aac679c32a895b2ba94eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Queue.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Queue.c  .generated_files/flags/default/b6689288faf7168999eb1101cfcc0bab13fe061d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TattleTale.c  .generated_files/flags/default/786729660317c013b1142beb1cdbbbf3ae48344a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/816103698/iSeed.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/iSeed.c  .generated_files/flags/default/de50344e18fde16ebd07280badd84853c4dae982 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/816103698" 
	@${RM} ${OBJECTDIR}/_ext/816103698/iSeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/816103698/iSeed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/816103698/iSeed.o.d" -o ${OBJECTDIR}/_ext/816103698/iSeed.o "../../OneDrive/Desktop/ECE 118/base_templae 2/iSeed.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/244109137/AD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/AD.c  .generated_files/flags/default/cef33c9e4f69c2c8b71dd33cd629a5d72cdefe04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/AD.o.d" -o ${OBJECTDIR}/_ext/244109137/AD.o "../../OneDrive/Desktop/ECE 118/ece118_base/AD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/BOARD.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/BOARD.c  .generated_files/flags/default/893fe24fee57bd46960f9cfb631941190f51509f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/BOARD.o.d" -o ${OBJECTDIR}/_ext/244109137/BOARD.o "../../OneDrive/Desktop/ECE 118/ece118_base/BOARD.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/IO_Ports.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/IO_Ports.c  .generated_files/flags/default/46738d8bc6b915a4cf24d4ccb8c5aaadeb703e4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/244109137/IO_Ports.o "../../OneDrive/Desktop/ECE 118/ece118_base/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/LED.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/LED.c  .generated_files/flags/default/79140bc855dcfa4cea0f6f50f50c980ae875d373 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/LED.o.d" -o ${OBJECTDIR}/_ext/244109137/LED.o "../../OneDrive/Desktop/ECE 118/ece118_base/LED.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/RC_Servo.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/RC_Servo.c  .generated_files/flags/default/1c14da355dd9dc9565998c74da6a1cfa22e41e87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/244109137/RC_Servo.o "../../OneDrive/Desktop/ECE 118/ece118_base/RC_Servo.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/Stepper.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/Stepper.c  .generated_files/flags/default/1570908b7de3f335581526ad28389dc8031ecaf1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/Stepper.o.d" -o ${OBJECTDIR}/_ext/244109137/Stepper.o "../../OneDrive/Desktop/ECE 118/ece118_base/Stepper.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/pwm.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/pwm.c  .generated_files/flags/default/f2366194661dd4d940a80ea59fc58ee86e857d8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/pwm.o.d" -o ${OBJECTDIR}/_ext/244109137/pwm.o "../../OneDrive/Desktop/ECE 118/ece118_base/pwm.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/serial.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/serial.c  .generated_files/flags/default/5158c9d2b3f9bb4ab76aa5f567b815a10eea29a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/serial.o.d" -o ${OBJECTDIR}/_ext/244109137/serial.o "../../OneDrive/Desktop/ECE 118/ece118_base/serial.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/244109137/timers.o: ../../OneDrive/Desktop/ECE\ 118/ece118_base/timers.c  .generated_files/flags/default/4ad00acaf69c2dbe17e6d17c2f7eb092b3007fd2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/244109137" 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/244109137/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/244109137/timers.o.d" -o ${OBJECTDIR}/_ext/244109137/timers.o "../../OneDrive/Desktop/ECE 118/ece118_base/timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_CheckEvents.c  .generated_files/flags/default/1b7e93ff3372daf78bf5f7681307645f527da6f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_CheckEvents.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Framework.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Framework.c  .generated_files/flags/default/f39f43177c626e4623e3e27f1738e6ce524508d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Framework.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TimerService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TimerService.c  .generated_files/flags/default/7936002de617edbde1c36932f4c67d2586351e19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TimerService.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TimerService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TimerService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Timers.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Timers.c  .generated_files/flags/default/7849e8d06f76dd6ef08c8f8fb6ae30b5cd32f650 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Timers.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedEventChecker.c  .generated_files/flags/default/f80a92088967c4fa19deb976e00475e06d5ee2dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedEventChecker.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedEventChecker.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedHSM.c  .generated_files/flags/default/796f6041cf93ff806681eec98ce97624d01e755e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedService.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedService.c  .generated_files/flags/default/5824ff96a80a6d54555e411b6080bb5aba518dee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedService.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedService.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_template/SeedSubHSM.c  .generated_files/flags/default/48512ece30b1c70a7a7c58f12489ec9a76076821 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1246916263" 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o.d" -o ${OBJECTDIR}/_ext/1246916263/SeedSubHSM.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template/SeedSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_KeyboardInput.c  .generated_files/flags/default/94371c12fa4bf94aa4586f67128db4fca21d3630 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_KeyboardInput.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_LookupTables.c  .generated_files/flags/default/86b9d2325d4b411f324f5b301de701b83b192618 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_LookupTables.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_LookupTables.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_PostList.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_PostList.c  .generated_files/flags/default/bc695ab25d4b5cc3be0cf9635bab036c99ebd455 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_PostList.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_Queue.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_Queue.c  .generated_files/flags/default/47d9022d45dedfc0f12f223bbc69da4be40a3716 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_Queue.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/ece118_base/ES_TattleTale.c  .generated_files/flags/default/3572aedd38b898d202688f9aa2d26478d4a310fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1633695874" 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1633695874/ES_TattleTale.o "../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/816103698/iSeed.o: ../../OneDrive/Desktop/ECE\ 118/base_templae\ 2/iSeed.c  .generated_files/flags/default/4dc608f41c28f7b8b37ceb5a2360203405194bd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/816103698" 
	@${RM} ${OBJECTDIR}/_ext/816103698/iSeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/816103698/iSeed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_base" -I"../../OneDrive/Desktop/ECE 118/base_templae 2/ece118_template" -I"../../OneDrive/Desktop/ECE 118/base_templae 2" -MP -MMD -MF "${OBJECTDIR}/_ext/816103698/iSeed.o.d" -o ${OBJECTDIR}/_ext/816103698/iSeed.o "../../OneDrive/Desktop/ECE 118/base_templae 2/iSeed.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
