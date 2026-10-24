.data
    newline: .asciiz "\n"
    end: .asciiz "End Program\n"

.text
    main:
        li $t1, 1
        li $t0, 10

    while:
        bgt $t1, $t0, endWhile
        li $v0, 1
        move $a0, $t1
        syscall
        li $v0, 4
        la $a0, newline
        syscall
        addi $t1, $t1, 1
        j while

    endWhile:
        li $v0, 4
        la $a0, end
        syscall

    exit:
        li $v0, 10
        syscall