.data
    prompt: .asciiz "Enter number: "
    zero: .asciiz "This number is equal to 0\n"
    positive: .asciiz "This number is positive\n"
    negative: .asciiz "This number is negative\n"

.text
    main:
        li $v0, 4
        la $a0, prompt
        syscall
        li $v0, 5
        syscall
        move $t0, $v0

    if:
        bne $t0, $zero, elsif
        li $v0, 4
        la $a0, zero
        syscall
        j exit

    elsif:
        bltz $t0, else
        li $v0, 4
        la $a0, positive
        syscall
        j exit

    else:
        li $v0, 4
        la $a0, negative
        syscall    

    exit:
        li $v0, 10
        syscall