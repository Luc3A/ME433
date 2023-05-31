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
FINAL_IMAGE=${DISTDIR}/HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../HW7/nu32dip.c ../i2c_master_noint.c ../ssd1306.c ../../HW7/main.c ../../HW7/mpu6050.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1445232488/nu32dip.o ${OBJECTDIR}/_ext/1472/i2c_master_noint.o ${OBJECTDIR}/_ext/1472/ssd1306.o ${OBJECTDIR}/_ext/1445232488/main.o ${OBJECTDIR}/_ext/1445232488/mpu6050.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1445232488/nu32dip.o.d ${OBJECTDIR}/_ext/1472/i2c_master_noint.o.d ${OBJECTDIR}/_ext/1472/ssd1306.o.d ${OBJECTDIR}/_ext/1445232488/main.o.d ${OBJECTDIR}/_ext/1445232488/mpu6050.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1445232488/nu32dip.o ${OBJECTDIR}/_ext/1472/i2c_master_noint.o ${OBJECTDIR}/_ext/1472/ssd1306.o ${OBJECTDIR}/_ext/1445232488/main.o ${OBJECTDIR}/_ext/1445232488/mpu6050.o

# Source Files
SOURCEFILES=../../HW7/nu32dip.c ../i2c_master_noint.c ../ssd1306.c ../../HW7/main.c ../../HW7/mpu6050.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MX170F256B
ProjectDir="C:\Users\12037\OneDrive - Northwestern University\Documents\GitHub\ME433\HW8\HW8.X"
ProjectName=HW8
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [C:\Users\12037\Documents\School\ME433\nu32utility "COM5" ${ImagePath}]"
	@C:\Users\12037\Documents\School\ME433\nu32utility "COM5" ${ImagePath}
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MX170F256B
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\..\Documents\GitHub\ME433_2023\template\NU32DIPbootloaded.ld"
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
${OBJECTDIR}/_ext/1445232488/nu32dip.o: ../../HW7/nu32dip.c  .generated_files/flags/default/b028ae57e943b6d1dd6a805d2d064ae0fde4aac6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/nu32dip.o.d" -o ${OBJECTDIR}/_ext/1445232488/nu32dip.o ../../HW7/nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/i2c_master_noint.o: ../i2c_master_noint.c  .generated_files/flags/default/aa806c320020ce6ce74d7200c83cceaf1bee8d0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1472/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1472/i2c_master_noint.o ../i2c_master_noint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/ssd1306.o: ../ssd1306.c  .generated_files/flags/default/859e1c4f8266efad5560d893b7bd57c67eb749db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ssd1306.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ssd1306.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ssd1306.o.d" -o ${OBJECTDIR}/_ext/1472/ssd1306.o ../ssd1306.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1445232488/main.o: ../../HW7/main.c  .generated_files/flags/default/b04ab321ae775d2aba22edbdf334b6c6db15c4df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/main.o.d" -o ${OBJECTDIR}/_ext/1445232488/main.o ../../HW7/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1445232488/mpu6050.o: ../../HW7/mpu6050.c  .generated_files/flags/default/84c757ee83ef8b87a961e55c250b460c16a4047a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/mpu6050.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/mpu6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/mpu6050.o.d" -o ${OBJECTDIR}/_ext/1445232488/mpu6050.o ../../HW7/mpu6050.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1445232488/nu32dip.o: ../../HW7/nu32dip.c  .generated_files/flags/default/5133487524bc109ab30432a18775b9756c590c44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/nu32dip.o.d" -o ${OBJECTDIR}/_ext/1445232488/nu32dip.o ../../HW7/nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/i2c_master_noint.o: ../i2c_master_noint.c  .generated_files/flags/default/64614e8f37a278717dce79605029d8fc8439e4b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1472/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1472/i2c_master_noint.o ../i2c_master_noint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/ssd1306.o: ../ssd1306.c  .generated_files/flags/default/167cf6b890c547ae80956fc7d4e73e33829c3b85 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ssd1306.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ssd1306.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ssd1306.o.d" -o ${OBJECTDIR}/_ext/1472/ssd1306.o ../ssd1306.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1445232488/main.o: ../../HW7/main.c  .generated_files/flags/default/b892cdadd1a9eb80fb15846d63c8ae9d2cef4d19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/main.o.d" -o ${OBJECTDIR}/_ext/1445232488/main.o ../../HW7/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1445232488/mpu6050.o: ../../HW7/mpu6050.c  .generated_files/flags/default/c542b8436f0ef8dc4bcda58270a5b7322e3b3827 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/mpu6050.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/mpu6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/mpu6050.o.d" -o ${OBJECTDIR}/_ext/1445232488/mpu6050.o ../../HW7/mpu6050.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HW8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HW8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
