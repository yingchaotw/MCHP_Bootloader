@ECHO OFF

FOR %%A IN ("%~dp0.") DO SET PARENTDIR=%%~dpA

SET CURRENTDIR=%cd%
SET BUILD_DIR=cmake_build
SET OUTPUTFILE=%CURRENTDIR%/toolchain/flash.jlink


SET NXPMCU_DEVICE=S32K144
SET ATMELx_DEVICE=ATSAMC21N17A

SET MCU_DEVICE=%ATMELx_DEVICE%
SET HEXNAME=C21N18A_TimerIO_Config.unified
@REM SET LOADHEX=%PARENTDIR%%HEXNAME%.hex
@REM SET BINNAME=ECG
SET LOADBIN=%PARENTDIR%cmake_build\%HEXNAME%.bin

echo %LOADBIN%

@REM auto generate jlink script file
@echo si 1 >> %OUTPUTFILE%
@echo r >> %OUTPUTFILE%
@echo device %MCU_DEVICE% >> %OUTPUTFILE%
@echo speed 4000 >> %OUTPUTFILE%
@echo h >> %OUTPUTFILE%
@echo loadbin %LOADBIN%, 0x00000000 >> %OUTPUTFILE%
@echo verifybin %LOADBIN%, 0x00000000 >> %OUTPUTFILE%
@echo g >> %OUTPUTFILE%
@echo qc >> %OUTPUTFILE%


