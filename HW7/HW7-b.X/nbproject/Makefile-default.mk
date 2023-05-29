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
FINAL_IMAGE=${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../template_hw_7.c ../../i2c_master_noint.c ../../i2c_master_noint.h ../../mpu6050.c ../../mpu6050.h ../../nu32dip.c ../../nu32dip.h

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/template_hw_7.o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ${OBJECTDIR}/_ext/43898991/mpu6050.o ${OBJECTDIR}/_ext/43898991/mpu6050.o ${OBJECTDIR}/_ext/43898991/nu32dip.o ${OBJECTDIR}/_ext/43898991/nu32dip.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/template_hw_7.o.d ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d ${OBJECTDIR}/_ext/43898991/mpu6050.o.d ${OBJECTDIR}/_ext/43898991/mpu6050.o.d ${OBJECTDIR}/_ext/43898991/nu32dip.o.d ${OBJECTDIR}/_ext/43898991/nu32dip.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/template_hw_7.o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ${OBJECTDIR}/_ext/43898991/mpu6050.o ${OBJECTDIR}/_ext/43898991/mpu6050.o ${OBJECTDIR}/_ext/43898991/nu32dip.o ${OBJECTDIR}/_ext/43898991/nu32dip.o

# Source Files
SOURCEFILES=../template_hw_7.c ../../i2c_master_noint.c ../../i2c_master_noint.h ../../mpu6050.c ../../mpu6050.h ../../nu32dip.c ../../nu32dip.h



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
ProjectDir="C:\Users\12037\OneDrive - Northwestern University\Documents\GitHub\ME433\HW7\HW7-b.X"
ProjectName=HW7
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/_ext/1472/template_hw_7.o: ../template_hw_7.c  .generated_files/flags/default/e05e234a8d6ccc182899d5a1e6746cdb5da34bc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/template_hw_7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/template_hw_7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1472/template_hw_7.o.d" -o ${OBJECTDIR}/_ext/1472/template_hw_7.o ../template_hw_7.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/i2c_master_noint.o: ../../i2c_master_noint.c  .generated_files/flags/default/913f3bc0301d0c9482f07dfd0d3cf8a11f573e53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ../../i2c_master_noint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/i2c_master_noint.o: ../../i2c_master_noint.h  .generated_files/flags/default/e6142cb1abf97a4a4508db8b31a125fb5e88ad8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ../../i2c_master_noint.h    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/mpu6050.o: ../../mpu6050.c  .generated_files/flags/default/c4888a102f30cdbbe917404e61c059614c03a3d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/mpu6050.o.d" -o ${OBJECTDIR}/_ext/43898991/mpu6050.o ../../mpu6050.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/mpu6050.o: ../../mpu6050.h  .generated_files/flags/default/7838df0289f5761daec9ae0c3ed5bc35f29c2c79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/mpu6050.o.d" -o ${OBJECTDIR}/_ext/43898991/mpu6050.o ../../mpu6050.h    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/nu32dip.o: ../../nu32dip.c  .generated_files/flags/default/ccff7a980f91c8f420eca0415989f07cc78d05ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/nu32dip.o.d" -o ${OBJECTDIR}/_ext/43898991/nu32dip.o ../../nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/nu32dip.o: ../../nu32dip.h  .generated_files/flags/default/4bb7afd0f23e9e6a956e335fc7fc47fe25d49b45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/nu32dip.o.d" -o ${OBJECTDIR}/_ext/43898991/nu32dip.o ../../nu32dip.h    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1472/template_hw_7.o: ../template_hw_7.c  .generated_files/flags/default/6aa51e043b2a89d8373fd91a39b143d3aa80156d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/template_hw_7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/template_hw_7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1472/template_hw_7.o.d" -o ${OBJECTDIR}/_ext/1472/template_hw_7.o ../template_hw_7.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/i2c_master_noint.o: ../../i2c_master_noint.c  .generated_files/flags/default/31311a6e064c6d1bf73d4a5afdf41c8e34d55c92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ../../i2c_master_noint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/i2c_master_noint.o: ../../i2c_master_noint.h  .generated_files/flags/default/c2e05a6efa6bcdce06a689fd486357044abb70ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/43898991/i2c_master_noint.o ../../i2c_master_noint.h    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/mpu6050.o: ../../mpu6050.c  .generated_files/flags/default/dc4b945fd346cc6e0d71b168d1eb06ae3c0b1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/mpu6050.o.d" -o ${OBJECTDIR}/_ext/43898991/mpu6050.o ../../mpu6050.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/mpu6050.o: ../../mpu6050.h  .generated_files/flags/default/f4dce1e0056a2c82eacc11e49914b331ab8fe93b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/mpu6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/mpu6050.o.d" -o ${OBJECTDIR}/_ext/43898991/mpu6050.o ../../mpu6050.h    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/nu32dip.o: ../../nu32dip.c  .generated_files/flags/default/49373a4e387e9add406c51952a2312ca28e30a1f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/nu32dip.o.d" -o ${OBJECTDIR}/_ext/43898991/nu32dip.o ../../nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/nu32dip.o: ../../nu32dip.h  .generated_files/flags/default/f01558c87cdb05a07e29084a4b3cfe513b285c18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/nu32dip.o.d" -o ${OBJECTDIR}/_ext/43898991/nu32dip.o ../../nu32dip.h    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HW7-b.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
