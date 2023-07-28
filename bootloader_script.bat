@echo off
@REM Need check com port to set variable marco "COMPort"
set COMPort=COM6

set harmony3_path=script

@REM Set BIN path want to load at MCU 
set BIN_PATH=D:\1.20\firmware\SGM_ATSMAC21N18A_TXB.X\dist\C21N18A_TimerIO_Config\production
set BIN_FILE=SGM_ATSMAC21N18A_TXB.X.production.bin

@REM python command 
python %harmony3_path%/tools/btl_host.py -v -i %COMPort% -r 115200 --device=samc2x -a 0x0800 -f %BIN_PATH%/%BIN_FILE%
