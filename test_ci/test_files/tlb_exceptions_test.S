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
    st 2(r5), r6

    ; Invalidate entry 2 (0x2XXX)
    movi r0, 0
    movi r1, 2
    wrpi r1, r0
    wrpd r1, r0

    ; Replace entry 7 with read-only identity mapping of (0x3XXX)
    movi r0, 3
    movi r1, 7
    wrvd r1, r0
    movi r0, 0x33 ; 11_0011
    wrpi r1, r0

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
    st 0(r5), r4 ; Save exception code
    rds r4, s3
    st 2(r5), r4 ; Save exception PC

    ; Load next test (in r7, we have to convert the address)
    movi r3, lo(user_copy_start)
    movhi r3, hi(user_copy_end)
    sub r7, r7, r3
    movi r3, lo(USER_TEXT_START)
    movhi r3, hi(USER_TEXT_START)
    add r7, r7, r3
    wrs s1, r7

    addi r5, r5, 4 ; Advance result vector pointer
    st 0(r5), r6
    st 2(r5), r6
    reti

; User mode code (entrypoint should be at the start)

user_copy_start:

    ; Instruction TLB miss
    movi r0, lo(0xA000)
    movhi r0, hi(0xA000)
    movi r7, lo(test_1)
    movhi r7, hi(test_1)
    jmp r0

test_1:

    ; Data TLB miss (load)
    movi r0, lo(0xA222)
    movhi r0, hi(0xA222)
    movi r7, lo(test_2)
    movhi r7, hi(test_2)
    ld r0, 0(r0)

test_2:

    ; Data TLB miss (store)
    movi r0, lo(0xA444)
    movhi r0, hi(0xA444)
    movi r7, lo(test_3)
    movhi r7, hi(test_3)
    st 0(r0), r0

test_3:

    ; Instruction TLB invalid
    movi r0, lo(0x2222)
    movhi r0, hi(0x2222)
    movi r7, lo(test_4)
    movhi r7, hi(test_4)
    jmp r0

test_4:

    ; Data TLB invalid (load)
    movi r0, lo(0x2444)
    movhi r0, hi(0x2444)
    movi r7, lo(test_5)
    movhi r7, hi(test_5)
    ld r0, 0(r0)

test_5:

    ; Data TLB invalid (store)
    movi r0, lo(0x2666)
    movhi r0, hi(0x2666)
    movi r7, lo(test_6)
    movhi r7, hi(test_6)
    st 0(r0), r0

test_6:

    ; Data TLB read-only (load, shouldn't fail)
    movi r0, lo(0x3222)
    movhi r0, hi(0x3222)
    movi r7, lo(test_7)
    movhi r7, hi(test_7)
    ld r0, 0(r0)

test_7:

    ; Data TLB miss (store)
    movi r0, lo(0x3444)
    movhi r0, hi(0x3444)
    movi r7, lo(test_8)
    movhi r7, hi(test_8)
    st 0(r0), r0

test_8:

    halt

user_copy_end: