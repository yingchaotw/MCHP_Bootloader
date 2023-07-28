# JLink functions
# Adds targets for JLink programmers and emulators

set(TARGET ${PROJECT_NAME})
set(TARGETIF JTAG)

# Configure flasher script for the project
set(BINARY ${TARGET}.bin)
set(HEXADECIMAL ${TARGET}.${BOOTMODE}.hex)
configure_file(${CMAKE_CURRENT_LIST_DIR}/flash.in ${CMAKE_CURRENT_BINARY_DIR}/flash.jlink)

# Add PicKit4 command
add_custom_target(burn
                    DEPENDS ${MPLABX_IPE_CMD_COMMAND}
                    DEPENDS ${MPLABX_JAVA_EXECUTABLE}
                    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${UNIFIED_HEX_FILE}
                    COMMAND ${MPLABX_JAVA_EXECUTABLE} -jar ${MPLABX_IPE_CMD_COMMAND} -T${PIC_PROGRAMMER_TOOL_SELECTION}${PIC_PROGRAMMER_IDENTIFICATION} -P${MCU_DEVICE} -F\"${UNIFIED_HEX_FILE}\" -M -OL)


#Add JLink commands
add_custom_target(flash 
	COMMAND ${JLinkExe} -device ${MCU_DEVICE} -speed 4000 -if ${TARGETIF} -autoconnect 1 -CommandFile ${CMAKE_CURRENT_BINARY_DIR}/flash.jlink 
	DEPENDS ${TARGET}.elf
	)

# add_custom_target(debug 
# 	COMMAND ${DEBUGGER} -tui -command ${CMAKE_CURRENT_LIST_DIR}/remote.gdbconf ${CMAKE_CURRENT_BINARY_DIR}/${TARGET}.elf 
# 	DEPENDS ${TARGET}.elf
# 	)

# add_custom_target(debug-server 
# 	COMMAND JLinkGDBServer -device ${MCU_DEVICE} -speed 4000 -if ${TARGETIF}
# 	DEPENDS ${TARGET}.elf
# 	)

# add_custom_target(erase 
# 	COMMAND ${JLinkExe} -device ${MCU_DEVICE} -speed 4000 -if ${TARGETIF} -autoconnect 1 -CommandFile ${CMAKE_CURRENT_LIST_DIR}/erase.jlink 
# 	)

# add_custom_target(reset 
# 	COMMAND ${JLinkExe} -device ${MCU_DEVICE} -speed 4000 -if ${TARGETIF} -autoconnect 1 -CommandFile ${CMAKE_CURRENT_LIST_DIR}/reset.jlink 
# 	)

