# UART Bootloader

**Bootloader Version 1.01**

submodule: [Microchip-MPLAB-Harmony/bootloader](https://github.com/Microchip-MPLAB-Harmony/bootloader)

In bat file set bin path and file name, then run `bootloader_script.bat`
- modify linker script ROM_SIZE to 0x7e0
- update and verify use command invoke bootload mode

Modify linker script file, to apply ATSAMC21N17A & ATSAMC21N18A. But, it don't check RAM_SIZE and ROM_SIZE.


## Protocol(HEX) test

- Read version: `4D,43,48,50,00,00,00,00,A6,00,00,00,00`
- Flash Unlock: `4D,43,48,50,08,00,00,00,A0,00,08,00,00,00,BE,00,00`
- MCU to Reset: `4D,43,48,50,10,00,00,00,A3,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00`

```

Microchip PIC32 Memory-Usage Report

ROM Program-Memory Usage
section                    address  length [bytes]      (dec)  Description
-------                 ----------  -------------------------  -----------
.vectors                         0            0x8           8
.text                          0x8           0x68         104  App's exec code 
.data                         0x70          0x554        1364  Data-init template
.init                        0x7dc            0x4           4   
.fini                        0x7e0            0x4           4
      Total ROM used  :       0x5cc        1484  72.5% of 0x800
        --------------------------------------------------------------------------
         Total Program Memory used  :       0x5cc        1484  72.5% of 0x800
        --------------------------------------------------------------------------


RAM Data-Memory Usage
section                    address  length [bytes]      (dec)  Description
-------                 ----------  -------------------------  -----------
.vectors                0x20000010            0x8           8   
.data                   0x20000018          0x554        1364  Initialized data
.bss                    0x2000056c          0x228         552  Uninitialized data
         Total RAM used  :       0x784        1924  11.8% of 0x3ff0
        --------------------------------------------------------------------------
            Total Data Memory used  :       0x784        1924  11.8% of 0x3ff0
        --------------------------------------------------------------------------


Dynamic Data-Memory Reservation
section                    address  length [bytes]      (dec)  Description
-------                 ----------  -------------------------  -----------
heap                    0x20000798          0x200         512  Reserved for heap 
stack                   0x200009b0         0x3640       13888  Reserved for stack

        --------------------------------------------------------------------------

```

# Bootloader Script (Python)

command `git submodule update`
run bootloader_script.bat