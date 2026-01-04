The emulated 8086 processor has I/O pins which can be used to talk to hardware connected to the CPU.
I/O is performed through instructions that access these pins. The I/O data access is separate from memory.
Modern I/O is mostly done through memory access because devices map their I/O paths to memory and data is 
transferred through DMA.

## Printer example

For this example we're going to use a virtual printer.
To connect a printer start the emulator and in the emulator you'll access the virtual devices tab and
select "printer.exe".
When running the program you'll notice that the printer.exe window will show that the printer is connected to
port 130d (130 decimal). This is why we're using `out 130, al`

## Simple I/O device example

Same as before we can attach a "Simple" device to the emulator. Proceed and set the following parameters:
- write byte to port 110: 20
- read byte from port 110: 14h (this is automatically set by EMU8086)

When you single step you'll notice the al instruction is filled with the right data.
