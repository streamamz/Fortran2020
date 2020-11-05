program kadai
    implicit none
    real(8) :: theta = 0.0
    real(8), parameter :: pi = 3.14259265358979_8
    integer :: i
    do i = 0, 18
        write(*,*) theta, sin(pi*theta/180), cos(pi*theta/180)
        theta = theta + 10
    end do
    stop
end program kadai