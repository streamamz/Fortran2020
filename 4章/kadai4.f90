program kadai
    implicit none
    integer :: n, m, r
    read(*,*) n
    read(*,*) m
    r = mod(m,n)
    do while (r /= 0)
        m = n
        n = r
        r = mod(m,n)
    end do
    write(*,*) n
end program