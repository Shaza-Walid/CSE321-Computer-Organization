.data
    prompt: .asciiz "Enter a number (1-3): "
    sunday: .asciiz "Sunday\n"
    monday: .asciiz "Monday\n"
    tuesday: .asciiz "Tuesday\n"
    invalid: .asciiz "Invalid choice\n"

.text
    main:
        li $v0, 4
        la $a0, prompt
        syscall
        li $v0, 5
        syscall
        move $t0, $v0

        beq $t0, 1, case1
        beq $t0, 2, case2
        beq $t0, 3, case3
        j default

    case1:
        li $v0, 4
        la $a0, sunday
        syscall
        j exit

    case2:
        li $v0, 4
        la $a0, monday
        syscall
        j exit

    case3:
        li $v0, 4
        la $a0, tuesday
        syscall
        j exit

    default:
        li $v0, 4
        la $a0, invalid
        syscall

    exit:
        li $v0, 10
        syscall