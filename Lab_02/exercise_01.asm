.data
    msgNum1: .asciiz "Enter the first number: \n"
    msgNum2: .asciiz "Enter the second number: \n"
    msgRes: .asciiz "The result is: "

.text
    main:
        li $v0, 4
        la $a0, msgNum1
        syscall
        li $v0, 5
        syscall
        move $t1, $v0

        li $v0, 4
        la $a0, msgNum2
        syscall
        li $v0, 5
        syscall
        move $t2, $v0

        add $t0, $t1, $t2

        li $v0, 4
        la $a0, msgRes
        syscall
        li $v0, 1
        move $a0, $t0
        syscall

    exit:
        li $v0, 10
        syscall