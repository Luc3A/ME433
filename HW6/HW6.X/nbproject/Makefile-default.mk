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
FINAL_IMAGE=${DISTDIR}/HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../Documents/GitHub/ME433_2023/template/nu32dip.c "../../../../../../OneDrive - Northwestern University/Documents/GitHub/ME433/HW6/i2c_master_noint.c" ../../../../../../Documents/GitHub/ME433_2023/template/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/126488558/nu32dip.o ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o ${OBJECTDIR}/_ext/126488558/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/126488558/nu32dip.o.d ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o.d ${OBJECTDIR}/_ext/126488558/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/126488558/nu32dip.o ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o ${OBJECTDIR}/_ext/126488558/main.o

# Source Files
SOURCEFILES=../../../../../../Documents/GitHub/ME433_2023/template/nu32dip.c ../../../../../../OneDrive - Northwestern University/Documents/GitHub/ME433/HW6/i2c_master_noint.c ../../../../../../Documents/GitHub/ME433_2023/template/main.c



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
ProjectDir="C:\Users\12037\OneDrive - Northwestern University\Documents\GitHub\ME433\HW6\HW6.X"
ProjectName=HW6
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/_ext/126488558/nu32dip.o: ../../../../../../Documents/GitHub/ME433_2023/template/nu32dip.c  .generated_files/flags/default/e2a7c96abadd2291561905aaa2519f7005a6b0dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/126488558" 
	@${RM} ${OBJECTDIR}/_ext/126488558/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/126488558/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/126488558/nu32dip.o.d" -o ${OBJECTDIR}/_ext/126488558/nu32dip.o ../../../../../../Documents/GitHub/ME433_2023/template/nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o: ../../../../../../OneDrive\ -\ Northwestern\ University/Documents/GitHub/ME433/HW6/i2c_master_noint.c  .generated_files/flags/default/4520e351c8604c78d61cdcb69c2e2cdb26c8ad4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1022611836" 
	@${RM} ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o "../../../../../../OneDrive - Northwestern University/Documents/GitHub/ME433/HW6/i2c_master_noint.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/126488558/main.o: ../../../../../../Documents/GitHub/ME433_2023/template/main.c  .generated_files/flags/default/779433cf63a0589dad1ee4ddda1cbc49f3c9b28e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/126488558" 
	@${RM} ${OBJECTDIR}/_ext/126488558/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/126488558/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/126488558/main.o.d" -o ${OBJECTDIR}/_ext/126488558/main.o ../../../../../../Documents/GitHub/ME433_2023/template/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/126488558/nu32dip.o: ../../../../../../Documents/GitHub/ME433_2023/template/nu32dip.c  .generated_files/flags/default/af3230a340decf759fc72b4d07c848b9fcfe9f40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/126488558" 
	@${RM} ${OBJECTDIR}/_ext/126488558/nu32dip.o.d 
	@${RM} ${OBJECTDIR}/_ext/126488558/nu32dip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/126488558/nu32dip.o.d" -o ${OBJECTDIR}/_ext/126488558/nu32dip.o ../../../../../../Documents/GitHub/ME433_2023/template/nu32dip.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o: ../../../../../../OneDrive\ -\ Northwestern\ University/Documents/GitHub/ME433/HW6/i2c_master_noint.c  .generated_files/flags/default/5240b9c8fda569124a773236fc8b62dee2b7621b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1022611836" 
	@${RM} ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1022611836/i2c_master_noint.o "../../../../../../OneDrive - Northwestern University/Documents/GitHub/ME433/HW6/i2c_master_noint.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/126488558/main.o: ../../../../../../Documents/GitHub/ME433_2023/template/main.c  .generated_files/flags/default/cfc3ea0b0818615f0d31eb0a0399fea8f28e31c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/126488558" 
	@${RM} ${OBJECTDIR}/_ext/126488558/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/126488558/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/126488558/main.o.d" -o ${OBJECTDIR}/_ext/126488558/main.o ../../../../../../Documents/GitHub/ME433_2023/template/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HW6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../Documents/GitHub/ME433_2023/template/NU32DIPbootloaded.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW6.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HW6.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
