.data
    prompt: .asciiz "Enter n: "
    result: .asciiz "The sum is: "

.text
    main:
        li $v0, 4
        la $a0, prompt
        syscall
        li $v0, 5
        syscall
        move $t0, $v0
        li $t1, 1
        li $t2, 0

    for:
        bgt $t1, $t0, endFor
        add $t2, $t2, $t1
        addi $t1, $t1, 1
        j for

    endFor:
        li $v0, 4
        la $a0, result
        syscall
        li $v0, 1
        move $a0, $t2
        syscall

    exit:
        li $v0, 10
        syscall