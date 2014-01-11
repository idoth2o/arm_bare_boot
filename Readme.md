#Hello world for bare metal ARM using QEMU

This code run qemu(arm:VersatilePB) and print "Hello World!" with sleeping cpu.

## Prerequisites

install qemu-system & g++-arm-gcc

## Getting Started

-   make `output.bin`:

        $ make

-   run `output.bin` on qemu:

        $ qemu-system-arm -M versatilepb -nographic -kernel output.bin
Hello World!

-   run `output.bin` on qemu with debug:
   
        $ qemu-system-arm -M versatilepb -nographic -S -gdb tcp::1234 -kernel output.bin

        other window:
        $ arm-none-eabi-gdb output.elf
        (gdb)target remote localhost:1234
        (gdb)c

## Reference

reference : http://balau82.wordpress.com/2010/02/28/hello-world-for-bare-metal-arm-using-qemu/

original code : http://atelier-orchard.blogspot.jp/2013/02/arm-qemu.html

enter DOZE and Sleep on ARM chip : http://stackoverflow.com/questions/8555545/how-do-i-enter-doze-and-sleep-mode-on-the-imx27-arm926
