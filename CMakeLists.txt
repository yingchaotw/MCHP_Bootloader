#------------------------------------------------------------------------------
#   
#   for SAMC21N<XX>A using CMake
#
#------------------------------------------------------------------------------

cmake_minimum_required(VERSION 3.24.2)

# Set Project name
set(PROJECT_NAME "sam_c21n_xpro")


#Cmake debug
set(CMAKE_VERBOSE_MAKEFILE off)


string(REPLACE "\\" "/"                 ENV_PROGRAMFILES $ENV{PROGRAMFILES})
string(REPLACE "\\" "/"                 ENV_PROGRAMFILES_86 $ENV{ProgramFiles\(x86\)})



# the current build is not native but cross compiled
set(CMAKE_SYSTEM_NAME                   Generic)
set(CMAKE_SYSTEM_PROCESSOR              ARM)
set(CMAKE_CROSSCOMPILING                "TRUE")
set(ARM_TOOLCHAIN_DIR                   "${ENV_PROGRAMFILES}/Microchip/xc32/v4.20/bin" CACHE STRING "ARM Compiler tool directory") # Set Environment Variable
set(SEGGER_FLASHER_PATH                 "${ENV_PROGRAMFILES}/SEGGER/JLink" CACHE STRING "Segger J-Link tool directory") # Set Environment Variable
set(TOOLCHAIN_PREFIX ${ARM_TOOLCHAIN_DIR}/xc32-)


# About MPLAB IDE DIRECTORY 
set(MPLABX_INSTALL_DIRECTORY            "${ENV_PROGRAMFILES_86}/Microchip/MPLABX/v5.35" CACHE STRING "MPLAB X IDE install directory")  # Set Environment Variable
set(MPLABX_JAVA_EXECUTABLE              "${MPLABX_INSTALL_DIRECTORY}/sys/java/jre1.8.0_181/bin/java.exe" CACHE STRING "MPLAB X java execute")
set(MPLABX_IPE_CMD_COMMAND              "${MPLABX_INSTALL_DIRECTORY}/mplab_platform/mplab_ipe/ipecmd.jar" CACHE STRING "MPLAB IPE programmer command line")
set(SEGGER_JLINK_COMMAND                "${SEGGER_FLASHER_PATH}/jlink.exe" CACHE STRING "Segger flasher command line interface")


#Hexmate
# set(HEXMATE_DIR "${MPLABX_INSTALL_DIRECTORY}/mplab_platform/bin")
# set(HEXMATE ${HEXMATE_DIR}/hexmate.exe)


#Compile flag
set(HEAP                512)
set(OPTIMIZATION        2)
set(MCU_DEVICE          "ATSAMC21N18A") #MP_PROCESSOR_OPTION
set(ROMORIGIN           0x000)
set(ROMLENGTH           0x800)


#Flash Command
set(BOOTMODE            "unified")
set(FLASH_START         "0x00000000")
set(JLinkExe            ${SEGGER_JLINK_COMMAND})
include(./toolchain/flash.cmake)

#Device Family Pack
set(DFP_DIR "$ENV{USERPROFILE}/.mchp_packs/Microchip/SAMC21_DFP/3.3.72")
set(DFP "${DFP_DIR}/samc21n")


if((NOT EXISTS ${MPLABX_IPE_CMD_COMMAND}) OR (NOT EXISTS ${MPLABX_JAVA_EXECUTABLE}))

    message("MPLABX_IPE_CMD_COMMAND: " ${MPLABX_IPE_CMD_COMMAND})
    message("MPLABX_JAVA_EXECUTABLE: " ${MPLABX_JAVA_EXECUTABLE})
    # one or more elements needed by the burn target command was not found, print a warning message
    message(WARNING "MPLAB IPE Programmer environment not found, \"make burn\" command will not work")
else()
    # tool selection could be done by 
    # P : programmer name
    # S : serial number
    set(PIC_PROGRAMMER_TOOL_SELECTION "P")

    # use programmer name or serial number
    # PK4 : PICKIT4
    # PK3 : PICKIT3
    # BURxxxxxxxxx : serial number
    set(PIC_PROGRAMMER_IDENTIFICATION "PK4")
endif()

##### forcing cmake to use the next compilers
set(CMAKE_C_COMPILER            ${TOOLCHAIN_PREFIX}gcc.exe      CACHE STRING "C compiler" FORCE)
set(CMAKE_CXX_COMPILER          ${TOOLCHAIN_PREFIX}g++.exe      CACHE STRING "C++ compiler" FORCE)
set(CMAKE_OBJCOPY               ${TOOLCHAIN_PREFIX}objcopy.exe  CACHE STRING "objcopy tool" FORCE)
set(CMAKE_SIZE_UTIL             ${TOOLCHAIN_PREFIX}size.exe     CACHE STRING "size tool" FORCE)
set(CMAKE_ASM_NASM_COMPILER     ${TOOLCHAIN_PREFIX}as.exe       CACHE STRING "assembler" FORCE)
set(CMAKE_BINTOHEX_COMPILER     ${TOOLCHAIN_PREFIX}bin2hex.exe  CACHE STRING "bin to hex" FORCE)
if((NOT EXISTS ${CMAKE_C_COMPILER}) OR (NOT EXISTS ${CMAKE_CXX_COMPILER}))
    # suitable compiler for project not fount, leave with fatal error
    message(FATAL_ERROR "Microchip XC32 Compiler not found")
else()
    # prevent cmake from testing the compiler
    set(CMAKE_C_COMPILER_WORKS TRUE)
    set(CMAKE_CXX_COMPILER_WORKS TRUE)
    message(STATUS "Microchip XC32 Compiler found, skipping cmake test")
endif()


# target device
string(TOLOWER ${MCU_DEVICE} LOWER_CASE_MCU_DEVICE )
message(STATUS "Microchip 32-bits ARM target set to ${MCU_DEVICE}")
set(MP_LINKER_FILE_OPTION "${CMAKE_CURRENT_SOURCE_DIR}/firmware/src/config/${PROJECT_NAME}/btl.ld") #MP_LINKER_FILE_OPTION


project (${PROJECT_NAME} C)

set(CMAKE_C_STANDARD                    99)
set(CMAKE_C_STANDARD_REQUIRED           OFF)
set(CMAKE_C_EXTENSIONS                  OFF)
set(CMAKE_USER_MAKE_RULES_OVERRIDE_C    TRUE)
set(CMAKE_USER_MAKE_RULES_OVERRIDE_CXX  TRUE)
add_compile_options(-std=gnu99)

# important note : this file name definition is not used, the compiler produces the elf file on its own
# specify the elf file for this build to be generated at the end of the link stage
set(LINK_TARGET_ELF_FILE    "${CMAKE_PROJECT_NAME}.elf")
set(PRODUCTION_BIN_FILE     "${CMAKE_PROJECT_NAME}.bin")
set(PRODUCTION_HEX_FILE     "${CMAKE_PROJECT_NAME}.hex")
# set(UNIFIED_HEX_FILE "${CMAKE_PROJECT_NAME}.unified.hex")

# specify the xml file for this build to be generated during the link stage
set(LINK_TARGET_XML_FILE    "${CMAKE_PROJECT_NAME}.xml")

# specify the map file for this build to be generated during the link stage
set(LINK_TARGET_MAP_FILE    "${CMAKE_PROJECT_NAME}.map")


# find all source files, needed for the executable definition
# important note : xc32 compiler doesn't compile cpp files, or at least the passed parameters on the compile options
# doesn't allow it do so
file (GLOB_RECURSE MY_SRCS "firmware/src/*.c")

foreach(SRC_FILE_PATH IN LISTS MY_SRCS)
    # we are able of reading source files one by one, this will be usefull for compilation command line
    STRING(REGEX REPLACE "(.+\/)(.*)" "\\2" SRC_FILE_NAME ${SRC_FILE_PATH})
    # object file names are extracted here
    list(APPEND SOURCE_FILES_LIST ${SRC_FILE_PATH})
endforeach()

# find all header files, needed for the include paths definition
file (GLOB_RECURSE MY_INCLUDE_DIRS "*.h" ||"*.hpp")

set(INCLUDE_DIRS_LIST "firmware/")
foreach(INCLUDE_FILE IN LISTS MY_INCLUDE_DIRS)
    # remove header files names from include path 
    STRING(REGEX REPLACE "(.+\/)(.*)" "\\1" INCLUDE_FILE_PATH ${INCLUDE_FILE})
    list(APPEND INCLUDE_DIRS_LIST ${INCLUDE_FILE_PATH})
endforeach()

# clean include directories by removing duplicates
list(REMOVE_DUPLICATES INCLUDE_DIRS_LIST)

# executable name is the same as project name
add_executable(${LINK_TARGET_ELF_FILE} ${SOURCE_FILES_LIST})
target_include_directories(${LINK_TARGET_ELF_FILE} PRIVATE ${INCLUDE_DIRS_LIST})


# Optional: Print executable size as part of the post build process
add_custom_command(TARGET ${LINK_TARGET_ELF_FILE}
       POST_BUILD
       COMMAND ${CMAKE_SIZE_UTIL} ${LINK_TARGET_ELF_FILE})

# use .hex file generated after compilation
add_custom_command(TARGET ${LINK_TARGET_ELF_FILE}
       POST_BUILD
       COMMAND ${CMAKE_BINTOHEX_COMPILER} ${LINK_TARGET_ELF_FILE}
       COMMAND ${CMAKE_OBJCOPY} -I ihex -O binary ${PRODUCTION_HEX_FILE} ${PRODUCTION_BIN_FILE})


# Merge bootloader.hex application.hex
# add_custom_command(TARGET ${LINK_TARGET_ELF_FILE}
#         POST_BUILD
#         COMMAND ${HEXMATE} -o${CMAKE_CURRENT_BINARY_DIR}/${UNIFIED_HEX_FILE} ${PRODUCTION_HEX_FILE} ${CMAKE_CURRENT_SOURCE_DIR}/firmware/BTL_mode.hex --edf=${CMAKE_CURRENT_SOURCE_DIR}/firmware/en_msgs.txt
#         DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/firmware/en_msgs.txt"
#         DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/firmware/BTL_mode.hex"
#         VERBATIM)

set(MOPTIMIZATION -O${OPTIMIZATION})
set(DEFINES ${USER_DEFINITIONS})
set(FDATA_SEC -fdata-sections)
set(USER_FLAGS -Werror -Wall -MMD -MF )

set(MPROCESSOR -mprocessor=${MCU_DEVICE})
set(SYM_BUILD --defsym=__MPLAB_BUILD=1,--script=${MP_LINKER_FILE_OPTION})
set(SYM_HEAP --defsym=_min_heap_size=${HEAP})
set(LINKER_OPTS --gc-sections)
set(LINKER_MAP -Map=${CMAKE_CURRENT_BINARY_DIR}/${LINK_TARGET_MAP_FILE})
set(ROM_ADDRESS -DROM_ORIGIN=${ROMORIGIN},-DROM_LENGTH=${ROMLENGTH})
set(MEMORY_FILE --memorysummary,${CMAKE_CURRENT_BINARY_DIR}/memoryfile.xml)

set(XC32_LINK_FLAGS
    ${MPROCESSOR},${SYM_BUILD},${SYM_HEAP},${LINKER_OPTS},${LINKER_MAP},--report-mem,${ROM_ADDRESS},${MEMORY_FILE}
        )

target_compile_options(${LINK_TARGET_ELF_FILE} PUBLIC ${USER_FLAGS} -g -x c -c ${MPROCESSOR} -ffunction-sections ${MOPTIMIZATION} -mdfp=${DFP} -fgnu89-inline -mafrlcsj)
target_compile_definitions(${LINK_TARGET_ELF_FILE} PUBLIC XPRJ_default=default ${DEFINES})
target_link_options(${LINK_TARGET_ELF_FILE} PUBLIC ${MPROCESSOR} ${MOPTIMIZATION} )
target_link_libraries(${LINK_TARGET_ELF_FILE} -mno-device-startup-code "-Wl,${XC32_LINK_FLAGS}")

