This program demonstrates the ability to modify an interrupt vector table.
The interrupt vector table is a contiguous space of addresses at the beginning of the program
which can be seen by inspecting the memory in the EMU8086 emulator view.
Steps:
- type in/paste the code in interrupt.asm in emu8086 after starting it with the COM template
- press emulate
- select view->memory from the emulator menu
- put in the address 0000:0000 to observe the changes the assembly program makes to memory
- start single stepping and observe the changes that happen and where the IP goes to