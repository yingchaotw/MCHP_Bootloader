@echo off

SET BUILD_DIR=build
SET CURRENTDIR="%cd%"

SET JLINKPATH=C:\Program Files\SEGGER\JLink
SET OUTPUTFILE=flash.jlink
SET CMDFILE=%cd%\toolchain\%OUTPUTFILE%


cls

@echo Compiler has Activated Successfully
"C:Program Files\Microchip\xc32\v4.20\bin\xclm.exe" -status

@echo remove builde folder and cache
rm -rf %BUILD_DIR%/CMakeCache.txt
rm -rf %BUILD_DIR%/CMakeFiles
rm -rf %BUILD_DIR%/*.hex  %BUILD_DIR%/*.bin  %BUILD_DIR%/*.elf  %BUILD_DIR%/*.map  %BUILD_DIR%/*.xml* %BUILD_DIR%/*.cmake %BUILD_DIR%/*log*

@echo cmake execute
cmake -S . -B %BUILD_DIR% -G "MinGW Makefiles"

@echo make build 
cd %BUILD_DIR%
make all -j8

cd %CURRENTDIR%



@REM DEL %CURRENTDIR%\toolchain\%OUTPUTFILE%
@REM Generate Jlink script
@REM call %CURRENTDIR%\toolchain\generate_jlink.bat

@REM ECHO Flash loader

du -h %BUILD_DIR%/*.hex %BUILD_DIR%/*.bin %BUILD_DIR%/*.elf %BUILD_DIR%/*.map %BUILD_DIR%/*.xml


