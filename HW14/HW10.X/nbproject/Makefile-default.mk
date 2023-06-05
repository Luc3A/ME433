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
FINAL_IMAGE=${DISTDIR}/HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../HW7/nu32dip.c ../../HW7/main_HW_10.c ../../ws2812b.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1445232488/nu32dip.o ${OBJECTDIR}/_ext/1445232488/main_HW_10.o ${OBJECTDIR}/_ext/43898991/ws2812b.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1445232488/nu32dip.o.d ${OBJECTDIR}/_ext/1445232488/main_HW_10.o.d ${OBJECTDIR}/_ext/43898991/ws2812b.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1445232488/nu32dip.o ${OBJECTDIR}/_ext/1445232488/main_HW_10.o ${OBJECTDIR}/_ext/43898991/ws2812b.o

# Source Files
SOURCEFILES=../../HW7/nu32dip.c ../../HW7/main_HW_10.c ../../ws2812b.c



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
ProjectDir="C:\Users\12037\OneDrive - Northwestern University\Documents\GitHub\ME433\HW14\HW10.X"
ProjectName=HW10
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/_ext/1445232488/nu32dip.o: ../../HW7/nu32dip.c  .generated_files/flags/default/4bb8a86a1be7338bda718e80c30ee407bc60ee62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/nu32dip.o.d" -o ${OBJECTDIR}/_ext/1445232488/nu32dip.o ../../HW7/nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1445232488/main_HW_10.o: ../../HW7/main_HW_10.c  .generated_files/flags/default/4c33aadcbbf447085eee5ad5cdb57c03c8037e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main_HW_10.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main_HW_10.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/main_HW_10.o.d" -o ${OBJECTDIR}/_ext/1445232488/main_HW_10.o ../../HW7/main_HW_10.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/ws2812b.o: ../../ws2812b.c  .generated_files/flags/default/948bd0d95aebfdb237b0257a7e59da36a47de8f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/ws2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/ws2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/ws2812b.o.d" -o ${OBJECTDIR}/_ext/43898991/ws2812b.o ../../ws2812b.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1445232488/nu32dip.o: ../../HW7/nu32dip.c  .generated_files/flags/default/f6513746a4082bdfc8968dfbb845a978229404dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/nu32dip.o.d" -o ${OBJECTDIR}/_ext/1445232488/nu32dip.o ../../HW7/nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1445232488/main_HW_10.o: ../../HW7/main_HW_10.c  .generated_files/flags/default/8522649c0107416e7d0955224d4880966c1ea228 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1445232488" 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main_HW_10.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445232488/main_HW_10.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1445232488/main_HW_10.o.d" -o ${OBJECTDIR}/_ext/1445232488/main_HW_10.o ../../HW7/main_HW_10.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/43898991/ws2812b.o: ../../ws2812b.c  .generated_files/flags/default/d7605c4d0fce68b19bb48f1c023308d6ca682541 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/ws2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/ws2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/43898991/ws2812b.o.d" -o ${OBJECTDIR}/_ext/43898991/ws2812b.o ../../ws2812b.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HW10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW10.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HW10.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
