    .section .rodata
    
    .global unkdata_80000
unkdata_80000:
.incbin "data/unkdata_80000.bin"

.space 0x100000 - 0x92c00, 0

    .global unkdata_100000
unkdata_100000:
.incbin "data/unkdata_100000.bin"

.space 0x200000 - 0x1004a0, 0
