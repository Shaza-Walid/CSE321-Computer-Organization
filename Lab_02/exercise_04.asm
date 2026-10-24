.data
    prompt: .asciiz "Enter a number: "
    result: .asciiz "The sum of these numbers is: "

.text
    main:
        li $t0, 0
        do:
            li $v0, 4
            la $a0, prompt
            syscall
            li $v0, 5
            syscall
            move $t1, $v0
            beq $t1, 0, endWhile
            j while

        while:
            add $t0, $t0, $t1
            j do

        endWhile:
            li $v0, 1
            move $a0, $t0
            syscall

    exit:
        li $v0, 10
        syscall