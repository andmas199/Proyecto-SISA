    ; Define RGS
    movi r0, lo(rgs)
    movhi r0, hi(rgs)
    wrs s5, r0

    ; Define result vector base
    movi r5, 10

    ; Constant for failure detection
    movi r6, 0xFF
    movhi r6, 0xFF

    ; Invalid instruction test
    st 0(r5), r6
    .word 0xf000

    ; Unaligned store test
    addi r5, r5, 2
    st 0(r5), r6
    movi r0, 69
    movi r1, 3
    st 0(r1), r0

    ; Unaligned load test
    addi r5, r5, 2
    st 0(r5), r6
    ld r0, 0(r1)

    ; Unaligned fetch test
    addi r5, r5, 2
    st 0(r5), r6
    movi r0, lo(cont)
    movhi r0, hi(cont)
    addi r0, r0, 1
    jmp r0
cont:
    and r0, r0, r0 ; This nop will "run" unaligned

    ; Division by zero test
    addi r5, r5, 2
    st 0(r5), r6
    movi r0, 0
    movi r1, 2
    div r3, r1, r0

    halt


rgs:
    ; Save the exception code
    rds r4, s2
    st 0(r5), r4

    ; Realign the program counter if needed
    movi r7, 1
    not r7, r7
    rds r4, s1
    and r4, r4, r7
    wrs s1, r4

    ; Return from exception
    reti