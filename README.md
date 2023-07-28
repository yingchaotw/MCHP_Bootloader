# UART Bootloader

Microchip SAMC21N Bootloader

Using microchip MCU must use MPLAB X IDE for development, add cmakelist for compilation in this repository, and do not need to use MPLAB X IDE software for MCU development.

**Bootloader Version 0.90**

submodule: [Microchip-MPLAB-Harmony/bootloader](https://github.com/Microchip-MPLAB-Harmony/bootloader)

In bat file set bin path and file name, then run `bootloader_script.bat`


## Protocol(HEX) test

- Read version: `4D,43,48,50,00,00,00,00,A6,00,00,00,00`
- Flash Unlock: `4D,43,48,50,08,00,00,00,A0,00,08,00,00,00,BE,00,00`
- MCU to Reset: `4D,43,48,50,10,00,00,00,A3,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00`


## Build bootload mode code size

```

Microchip PIC32 Memory-Usage Report

ROM Program-Memory Usage
section                    address  length [bytes]      (dec)  Description
-------                 ----------  -------------------------  -----------
.vectors                         0            0x8           8
.text                          0x8           0x68         104  App's exec code 
.data                         0x70          0x558        1368  Data-init template
.init                        0x7e0            0x4           4
.fini                        0x7e4            0x4           4
      Total ROM used  :       0x5d0        1488  72.7% of 0x800
        --------------------------------------------------------------------------
         Total Program Memory used  :       0x5d0        1488  72.7% of 0x800
        --------------------------------------------------------------------------


RAM Data-Memory Usage
section                    address  length [bytes]      (dec)  Description
-------                 ----------  -------------------------  -----------
.vectors                0x20000010            0x8           8
.data                   0x20000018          0x558        1368  Initialized data
.bss                    0x20000570          0x228         552  Uninitialized data 
         Total RAM used  :       0x788        1928  5.9% of 0x7ff0
        --------------------------------------------------------------------------
            Total Data Memory used  :       0x788        1928  5.9% of 0x7ff0
        --------------------------------------------------------------------------


Dynamic Data-Memory Reservation
section                    address  length [bytes]      (dec)  Description
-------                 ----------  -------------------------  -----------
heap                    0x200007a0          0x200         512  Reserved for heap
stack                   0x200009b8         0x7640       30272  Reserved for stack

        --------------------------------------------------------------------------

```

# Bootloader Script (Python)

command `git submodule update`
run bootloader_script.bat (windows)