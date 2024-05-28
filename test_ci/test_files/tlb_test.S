.set USER_TEXT_START, 0xD000

    ; Copy the user mode code to the user code section
    movi r0, lo(USER_TEXT_START)
    movhi r0, hi(USER_TEXT_START)
    movi r1, lo(user_copy_start)
    movhi r1, hi(user_copy_start)
    movi r2, lo(user_copy_end)
    movhi r2, hi(user_copy_end)
for_1:
    ld r3, 0(r1)
    st 0(r0), r3
    addi r0, r0, 2
    addi r1, r1, 2
    cmpleu r3, r1, r2
    bnz r3, for_1

    ; 0x3d = 11_1101 (v=1,r=1,marco=13)
    movi r1, 0x3d
    movi r2, 4
    wrpi r2, r1
    halt
    
user_copy_start:
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    and r0, r0, r0
    movi r3, 7
    wrpi r3, r1 ; dejamos la pos 7 igual
    movi r4, 12
    movi r5, 15
    wrvi r3, r4 ; itlb.v[7] = 12
    wrvi r2, r5 ; itlb.v[6] = 15
    
    movi r1, 3
    addi r1, r1, -5
    out 6, r1 ; -2 a los LEDs rojos
    
    movi r0, 0
    movi r4, 0x20 ; (v=1, r=0, marco=0)
    movi r5, 0x3c ; (v=1, r=1, marco=12)
    movi r1, 1
    movi r2, 12
    
    wrpd r1, r5
    wrpd r0, r4
    wrvd r1, r0
    wrvd r0, r1
    
    movi r3, 12
    shl r3, r1, r3
    ld r2, 0(r0) ; @log: 0000, @fis: c000
    st 0(r3), r2 ; @log: 1000, @fis: 0000
    halt
user_copy_end:
