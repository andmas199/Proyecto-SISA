.set USER_TEXT_START, 0x1000

; System mode code

    ; Define RGS
    movi r0, lo(rgs)
    movhi r0, hi(rgs)
    wrs s5, r0

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

    ; Define result vector base
    movi r5, 10

    ; Constant for failure detection
    movi r6, 0xFF
    movhi r6, 0xFF
    st 0(r5), r6

    ; Privileged CALLS execution
    calls r0

    ; Jump to user mode
    rds r0, s7
    movi r1, -2 ; Bitmask that disables PSW<0>
    and r0, r0, r1
    wrs s0, r0 ; We write to S0 so that the new PSW is loaded in RETI
    movi r0, lo(USER_TEXT_START)
    movhi r0, hi(USER_TEXT_START)
    wrs s1, r0 ; We write the entrypoint address to the return PC
    reti

rgs:
    rds r4, s2
    st 0(r5), r4
    rds r4, s3
    st 2(r5), r4
    reti

; User mode code (entrypoint should be at the start)

user_copy_start:

    ; Test that we arrived here
    addi r5, r5, 4
    st 0(r5), r6
    movi r0, 42
    st 0(r5), r0

    ; Unprivileged store test
    addi r5, r5, 4
    st 0(r5), r6
    movi r0, 69
    movi r1, lo(0x8000)
    movhi r1, hi(0x8000)
    st 0(r1), r0

    ; Unprivileged load test
    addi r5, r5, 4
    st 0(r5), r6
    ld r0, 0(r1)

    ; Unprivileged instruction execution test
    addi r5, r5, 4
    st 0(r5), r6
    reti

    ; System call
    addi r5, r5, 4
    st 0(r5), r6
    st 2(r5), r6
    movi r0, lo(0xABCD)
    movhi r0, hi(0xABCD)
    calls r0

    halt

user_copy_end: