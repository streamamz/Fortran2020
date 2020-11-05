program kadai
    implicit none
    integer :: n, m
    read(*,*) n
    read(*,*) m
    if (n>m) then
        write(*,*) m,'is smaller than', n
    else if (n < m) then
        write(*,*) n,'is smaller than', m
    else
        write(*,*) n,'is equal to', m 
    end if
    stop
end program kadai
