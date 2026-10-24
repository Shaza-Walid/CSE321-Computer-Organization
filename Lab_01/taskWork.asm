.data
    name: .asciiz "Name: Shaza Waleed Fareed\n"
    id: .asciiz "ID: 20812023200520\n"
    course: .asciiz "CSE321-Computer-Organization\n"

.text
    main:
        li $v0, 4
        la $a0, name
        syscall

        li $v0, 4
        la $a0, id
        syscall

        li $v0, 4
        la $a0, course
        syscall

    exit:
        li $v0, 10
        syscall