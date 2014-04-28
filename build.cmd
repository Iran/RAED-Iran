copy raed.dat raed-iran.exe
tools\petool.exe raed-iran.exe add .patch rwxci 65536
tools\linker.exe src\main.asm src\main.inc raed-iran.exe tools\nasm.exe
