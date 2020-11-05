program kadai
    implicit none
    character(len=32) :: c
    do while (.true.)
        write(*,*) 'START PROGRAM'
        read(*,*) c
        select case(c)
        case('apple','orange','banana')
            write(*,*) 'food'
            cycle
        case('dog','cat','lion')
            write(*,*) 'animal'
            cycle
        case('car','airplane','motorcycle')
            write(*,*) 'vehicle'
            cycle
        case('exit')
            write(*,*) 'END PROGRAM'
            exit
        case default
            write(*,*) 'other'
            cycle
        end select
    end do
    stop
end program kadai