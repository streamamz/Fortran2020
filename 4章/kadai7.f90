program kadai
    implicit none
    real(8) :: alpha = 1.0_8
    real(8) :: p = 0.9_8
    integer :: n
    do while (alpha < 3.0_8)
        do n = 1, 200
            p = p + alpha * p * (1 - p)
            if (n >=100) then
                write(*,*) alpha, p
            end if
        end do
        p = 0.9_8
        alpha = alpha + 1.0e-3_8
    end do
    stop
end program kadai