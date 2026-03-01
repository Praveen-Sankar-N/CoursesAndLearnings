_start:
    # Loading a custom memory to the stack pointer to check whether it is valid memory to point to by SP. 
    li sp, 0x80002000
    jal praveen
j .