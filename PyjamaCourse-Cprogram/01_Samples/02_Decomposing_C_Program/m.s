_start:
    # Loading a custom memory to the stack pointer to check whether it is valid memory to point to by SP. 
    # But the below memory will not work. Okay why it will not work because in ld file RAM for code starts at 0x80 million,
    # Then while jumping to a function 16 byte shadow space will be allocated for local variable, that means
    # 0x80000000 - 16(decimal) so it will become out of range from what we mentioned in ld file. So it may crash.
    #li sp, 0x80000000  
    li sp, 0x80002000 

    #j praveen          # Jumping to the praveen function which is defined in c file. This will not work,
                        # Becas, j instruction will not store return address. jal does and strore it in ra register
    jal praveen
j .