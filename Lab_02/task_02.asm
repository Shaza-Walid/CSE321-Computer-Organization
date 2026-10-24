.data
    promptN: .asciiz "Enter the number of integers: "
    promptNum: .asciiz "Enter number: "
    result: .asciiz "The average is: "
    error: .asciiz "Please enter a positive number for n.\n"

.text
    main:
        li $v0, 4
        la $a0, promptN
        syscall
        li $v0, 5
        syscall
        move $t0, $v0
        blez $t0, invalid
        li $t1, 0
        li $t2, 0

    for:
        bge $t1, $t0, endFor
        li $v0, 4
        la $a0, promptNum
        syscall
        li $v0, 5
        syscall
        add $t2, $t2, $v0
        addi $t1, $t1, 1
        j for

    endFor:
        div $t2, $t0
        mflo $t3
        li $v0, 4
        la $a0, result
        syscall
        li $v0, 1
        move $a0, $t3
        syscall
        j exit

    invalid:
        li $v0, 4
        la $a0, error
        syscall

    exit:
        li $v0, 10
        syscall