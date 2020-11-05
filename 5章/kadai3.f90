program array_intrinsics
    implicit none
    integer, allocatable :: x(:)
    integer :: N, i
    real(8) :: x_ave, S
    read(*,*) N
    allocate(x(N))
    read(*,*) x
    x_ave = sum(x) / N 
    do i =1, N
        S = S + (x(i) - x_ave) ** 2
    end do
    S = sqrt(S / N)
    write(*,*) 'Best',':',maxval(x)
    write(*,*) 'Worst',':',minval(x)
    write(*,*) 'Average',':',x_ave
    write(*,*) 'Standard deviation',':',S
  end program array_intrinsics