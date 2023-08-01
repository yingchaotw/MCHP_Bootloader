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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom1_usart.c ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c ../src/config/sam_c21n_xpro/startup_xc32.c ../src/config/sam_c21n_xpro/initialization.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ${OBJECTDIR}/_ext/166077579/plib_clock.o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ${OBJECTDIR}/_ext/1390440390/plib_port.o ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ${OBJECTDIR}/_ext/1758384875/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d ${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d ${OBJECTDIR}/_ext/166077579/plib_clock.o.d ${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d ${OBJECTDIR}/_ext/163928093/plib_evsys.o.d ${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1617714617/plib_pac.o.d ${OBJECTDIR}/_ext/1390440390/plib_port.o.d ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d ${OBJECTDIR}/_ext/1004774289/plib_systick.o.d ${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d ${OBJECTDIR}/_ext/1758384875/initialization.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ${OBJECTDIR}/_ext/166077579/plib_clock.o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ${OBJECTDIR}/_ext/1390440390/plib_port.o ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ${OBJECTDIR}/_ext/1758384875/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom1_usart.c ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c ../src/config/sam_c21n_xpro/startup_xc32.c ../src/config/sam_c21n_xpro/initialization.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I ${CMSIS_DIR}\CMSIS\Core\Include



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
	${MAKE}  -f nbproject/Makefile-sam_c21n_xpro.mk dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1898185407/bootloader_uart.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898185407/bootloader_common.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/166077579/plib_clock.o: ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/166077579" 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/166077579/plib_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/166077579/plib_clock.o.d" -o ${OBJECTDIR}/_ext/166077579/plib_clock.o ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617703661/plib_dsu.o: ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1617703661" 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163928093/plib_evsys.o: ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/163928093" 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/163928093/plib_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/163928093/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390493541/plib_nvic.o: ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1390493541" 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o: ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/770299191" 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617714617/plib_pac.o: ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1617714617" 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1617714617/plib_pac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1617714617/plib_pac.o.d" -o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390440390/plib_port.o: ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1390440390" 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1390440390/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1390440390/plib_port.o.d" -o ${OBJECTDIR}/_ext/1390440390/plib_port.o ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o: ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom1_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993392304" 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d" -o ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom1_usart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1004774289/plib_systick.o: ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1004774289" 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1004774289/plib_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1004774289/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/startup_xc32.o: ../src/config/sam_c21n_xpro/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ../src/config/sam_c21n_xpro/startup_xc32.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/initialization.o: ../src/config/sam_c21n_xpro/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758384875/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1758384875/initialization.o.d" -o ${OBJECTDIR}/_ext/1758384875/initialization.o ../src/config/sam_c21n_xpro/initialization.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1898185407/bootloader_uart.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_uart.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_uart.o ../src/config/sam_c21n_xpro/bootloader/bootloader_uart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898185407/bootloader_common.o: ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1898185407" 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898185407/bootloader_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1898185407/bootloader_common.o.d" -o ${OBJECTDIR}/_ext/1898185407/bootloader_common.o ../src/config/sam_c21n_xpro/bootloader/bootloader_common.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/166077579/plib_clock.o: ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/166077579" 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/166077579/plib_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/166077579/plib_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/166077579/plib_clock.o.d" -o ${OBJECTDIR}/_ext/166077579/plib_clock.o ../src/config/sam_c21n_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617703661/plib_dsu.o: ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1617703661" 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617703661/plib_dsu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1617703661/plib_dsu.o.d" -o ${OBJECTDIR}/_ext/1617703661/plib_dsu.o ../src/config/sam_c21n_xpro/peripheral/dsu/plib_dsu.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163928093/plib_evsys.o: ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/163928093" 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/163928093/plib_evsys.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/163928093/plib_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/163928093/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/163928093/plib_evsys.o ../src/config/sam_c21n_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390493541/plib_nvic.o: ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1390493541" 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390493541/plib_nvic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1390493541/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1390493541/plib_nvic.o ../src/config/sam_c21n_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o: ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/770299191" 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/770299191/plib_nvmctrl.o ../src/config/sam_c21n_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1617714617/plib_pac.o: ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1617714617" 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1617714617/plib_pac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1617714617/plib_pac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1617714617/plib_pac.o.d" -o ${OBJECTDIR}/_ext/1617714617/plib_pac.o ../src/config/sam_c21n_xpro/peripheral/pac/plib_pac.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390440390/plib_port.o: ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1390440390" 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390440390/plib_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1390440390/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1390440390/plib_port.o.d" -o ${OBJECTDIR}/_ext/1390440390/plib_port.o ../src/config/sam_c21n_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o: ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom1_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993392304" 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o.d" -o ${OBJECTDIR}/_ext/1993392304/plib_sercom1_usart.o ../src/config/sam_c21n_xpro/peripheral/sercom/usart/plib_sercom1_usart.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1004774289/plib_systick.o: ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1004774289" 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004774289/plib_systick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1004774289/plib_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1004774289/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1004774289/plib_systick.o ../src/config/sam_c21n_xpro/peripheral/systick/plib_systick.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/startup_xc32.o: ../src/config/sam_c21n_xpro/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/startup_xc32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1758384875/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1758384875/startup_xc32.o ../src/config/sam_c21n_xpro/startup_xc32.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1758384875/initialization.o: ../src/config/sam_c21n_xpro/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758384875" 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758384875/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758384875/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1758384875/initialization.o.d" -o ${OBJECTDIR}/_ext/1758384875/initialization.o ../src/config/sam_c21n_xpro/initialization.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/sam_c21n_xpro" -I"../src/packs/ATSAMC21N18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/config" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}/samc21n ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_c21n_xpro/btl.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}/samc21n
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_c21n_xpro/btl.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_c21n_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}/samc21n
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files (x86)/Microchip/MPLABX/v5.35/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files (x86)/Microchip/MPLABX/v5.35/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/sam_c21n_xpro.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sam_c21n_xpro
	${RM} -r dist/sam_c21n_xpro

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
