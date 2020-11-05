program kadai
    implicit none
    integer :: n, i
    logical, allocatable :: numbers(:)
    read(*,*) n
    allocate(numbers(n))
    do i = 1, n
        numbers(i) = .true.
    end do
    numbers(1) = .false.
    do i = 2, n
        if (numbers(i) .eqv. .true.) then
            numbers(i+i:n:i) = .false.
        end if
    end do
    do i=1, n
        if (numbers(i) .eqv. .true.) then
            write(*,*) 'prime number :',':',i
        end if
    end do
    stop
end program kadai