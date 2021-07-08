    .section .rodata
    
    .global start
start:
.incbin "baserom.gba", 0x0003f0, 0x200000 - 0x0003f0
