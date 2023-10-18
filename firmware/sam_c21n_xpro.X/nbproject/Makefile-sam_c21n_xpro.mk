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
ifeq "$(wildcard nbproject/Makefile-local-sam_c21n_xpro.mk)" "nbproject/Makefile-local-sam_c21n_xpro.mk"
include nbproject/Makefile-local-sam_c21n_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_c21n_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom7_usart.c ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c ../src/config/sam_c21n_xpro/startup_xc32.c ../src/config/sam_c21n_xpro/initialization.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ${OBJECTDIR}/_ext/166077579/plib_clock.o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ${OBJECTDIR}/_ext/1390440390/plib_port.o ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ${OBJECTDIR}/_ext/1758384875/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d ${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d ${OBJECTDIR}/_ext/166077579/plib_clock.o.d ${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d ${OBJECTDIR}/_ext/163928093/plib_evsys.o.d ${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1617714617/plib_pac.o.d ${OBJECTDIR}/_ext/1390440390/plib_port.o.d ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o.d ${OBJECTDIR}/_ext/1004774289/plib_systick.o.d ${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d ${OBJECTDIR}/_ext/1758384875/initialization.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ${OBJECTDIR}/_ext/166077579/plib_clock.o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ${OBJECTDIR}/_ext/1390440390/plib_port.o ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ${OBJECTDIR}/_ext/1758384875/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom7_usart.c ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c ../src/config/sam_c21n_xpro/startup_xc32.c ../src/config/sam_c21n_xpro/initialization.c ../src/main.c



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
	${MAKE}  -f nbproject/Makefile-sam_c21n_xpro.mk ${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMC21N18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_c21n_xpro\btl.ld"
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
${OBJECTDIR}/_ext/1898185407/bootloader_uart.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c  .generated_files/flags/sam_c21n_xpro/3c6df0a05443490e7b088e3e54222664a9917f96 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898185407/bootloader_common.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c  .generated_files/flags/sam_c21n_xpro/bfb180c7f11abad34c3a17a2c882ce33cdc200c4 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/166077579/plib_clock.o: ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_c21n_xpro/2b068d22fa3715569ec2ce22179a0048cc6df93c .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/166077579" 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/166077579/plib_clock.o.d" -o ${OBJECTDIR}/_ext/166077579/plib_clock.o ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617703661/plib_dsu.o: ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c  .generated_files/flags/sam_c21n_xpro/cad314c2545ed4e77676b382991b71196a767f5b .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1617703661" 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163928093/plib_evsys.o: ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_c21n_xpro/3db35e88f3834c9218a9d4d2e545630fd1843dab .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163928093" 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163928093/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390493541/plib_nvic.o: ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_c21n_xpro/863087f4a49c93f9593e77998fb2dcd98111801f .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1390493541" 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o: ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_c21n_xpro/dc1414da6515d4e5815740d2c62c643e957e1f1c .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/770299191" 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617714617/plib_pac.o: ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c  .generated_files/flags/sam_c21n_xpro/b7dd227ef1eddade331903a31228c7e5cdbb02a7 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1617714617" 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1617714617/plib_pac.o.d" -o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390440390/plib_port.o: ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_c21n_xpro/ff2c9a9b9aecff45945f7dc53a370951d49b04f4 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1390440390" 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390440390/plib_port.o.d" -o ${OBJECTDIR}/_ext/1390440390/plib_port.o ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o: ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom7_usart.c  .generated_files/flags/sam_c21n_xpro/2a8bcda8ce6a47b4c7ff7dfdca2fdf02fc4f1315 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993392304" 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o.d" -o ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom7_usart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1004774289/plib_systick.o: ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c  .generated_files/flags/sam_c21n_xpro/d3a51e2a363c5bfb77c36407092d747067836f00 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004774289" 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1004774289/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/startup_xc32.o: ../src/config/sam_c21n_xpro/startup_xc32.c  .generated_files/flags/sam_c21n_xpro/4ea724d2d986daaee708c84693ce12beb4f22cca .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ../src/config/sam_c21n_xpro/startup_xc32.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/initialization.o: ../src/config/sam_c21n_xpro/initialization.c  .generated_files/flags/sam_c21n_xpro/dc72ac5779a427978f5f254c1e71104c67c144f6 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1758384875/initialization.o.d" -o ${OBJECTDIR}/_ext/1758384875/initialization.o ../src/config/sam_c21n_xpro/initialization.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_c21n_xpro/21b5bcd7bc6187beaf57f2877acb3393221aa58c .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1898185407/bootloader_uart.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c  .generated_files/flags/sam_c21n_xpro/b36d415608dd4893162905b7f1f96ce421beb3a3 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898185407/bootloader_common.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c  .generated_files/flags/sam_c21n_xpro/dc028f18f2bd69be46153a57009bdc9858add4eb .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/166077579/plib_clock.o: ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_c21n_xpro/e9df5267487c98e51cd7251d67d8f70ff1e64c36 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/166077579" 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/166077579/plib_clock.o.d" -o ${OBJECTDIR}/_ext/166077579/plib_clock.o ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617703661/plib_dsu.o: ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c  .generated_files/flags/sam_c21n_xpro/2bc2ad59fd260ec07149330e7a27b64b36dc2616 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1617703661" 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163928093/plib_evsys.o: ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_c21n_xpro/4a82c914b7dfb3edf00bf685cb2e496c2fa0a4a4 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163928093" 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163928093/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390493541/plib_nvic.o: ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_c21n_xpro/5eb51530dc58d846cf4943ed8816398c32b8eeda .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1390493541" 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o: ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_c21n_xpro/d20ceb2f7e7be2e553d12d5b65a96d8d9b3ef509 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/770299191" 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617714617/plib_pac.o: ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c  .generated_files/flags/sam_c21n_xpro/b57183cf12e59bbc5daeca9c73424c35def40a20 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1617714617" 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1617714617/plib_pac.o.d" -o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390440390/plib_port.o: ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_c21n_xpro/a78b9c425f1912ea81fe92da5ce1bd7d193f90bf .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1390440390" 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390440390/plib_port.o.d" -o ${OBJECTDIR}/_ext/1390440390/plib_port.o ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o: ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom7_usart.c  .generated_files/flags/sam_c21n_xpro/1296a03a43c515c0578211352cc739446f5d50ec .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993392304" 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o.d" -o ${OBJECTDIR}/_ext/1993392304/plib_sercom7_usart.o ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom7_usart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1004774289/plib_systick.o: ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c  .generated_files/flags/sam_c21n_xpro/a8c4b7c1f99a84cfea38486ef2e4a598411f6850 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004774289" 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1004774289/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/startup_xc32.o: ../src/config/sam_c21n_xpro/startup_xc32.c  .generated_files/flags/sam_c21n_xpro/d0516e35cff04084836e80c3aa3fe39616334aca .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ../src/config/sam_c21n_xpro/startup_xc32.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/initialization.o: ../src/config/sam_c21n_xpro/initialization.c  .generated_files/flags/sam_c21n_xpro/df99266cffd6e723a64c627cfc556a7dac177db7 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1758384875/initialization.o.d" -o ${OBJECTDIR}/_ext/1758384875/initialization.o ../src/config/sam_c21n_xpro/initialization.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_c21n_xpro/69ffc2ff52ca13f41099a85973e21436aa9b6381 .generated_files/flags/sam_c21n_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -fno-common -I"../src" -I"../src/config" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_c21n_xpro/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -nostartfiles -mno-device-startup-code -o ${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_c21n_xpro/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -nostartfiles -mno-device-startup-code -o ${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.hex -o${DISTDIR}/sam_c21n_xpro.X.${IMAGE_TYPE}.hex

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
