# Program to add number "2" for 5 times and return the answer to a register

_start:
    addi x1, x0, 2   # Loading value 2 to x1 reg
    addi x2, x0, 5   # Loading value 5 to x2 reg as a counter
    addi x3, x0, 0   # Loading value 0 to x2 reg, which acts as the final value after addition

_Addition:
    add x3, x3, x1          # Adding the 2 subsequently for 5 times
    addi x2, x2, -1         # Decrementing the conuter value
    bne x2, x0, _Addition   # Loop to Addition Label, if x2 is not 0

j .                         # Jump to this line again and again.
