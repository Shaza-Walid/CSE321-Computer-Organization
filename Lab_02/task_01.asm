.data
    msgNum1: .asciiz "Enter the first number: "
    msgNum2: .asciiz "Enter the second number: "
    msgNum3: .asciiz "Enter the third number: "
    msgNum4: .asciiz "Enter the forth number: "
    msgRes: .asciiz "The average is: "
    newline: .asciiz "\n"
    #dot: .asciiz "."

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

        li $v0, 4
        la $a0, msgNum3
        syscall
        li $v0, 5
        syscall
        move $t3, $v0

        li $v0, 4
        la $a0, msgNum4
        syscall
        li $v0, 5
        syscall
        move $t4, $v0

        add $t5, $t1, $t2
        add $t6, $t3, $t4
        add $t7, $t5, $t6
        li $t8, 4
        div $t7, $t8
        mflo $t9
        mfhi $t0

        li $v0, 4
        la $a0, msgRes
        syscall
        li $v0, 1
        move $a0, $t9
        syscall
        # li $v0, 4
        # la $a0, dot
        # syscall
        # li $v0, 1
        # move $a0, $t0
        # syscall
        li $v0, 4
        la $a0, newline
        syscall

    exit:
        li $v0, 10
        syscall