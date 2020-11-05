program kadai
    complex(8) :: z
    real(8) :: x, y
    complex(8) :: i = (0.0, 1.0)
    read(*,*) z
    x = real(z)
    y = aimag(z)
    write(*,*) exp(z)
    write(*,*) exp(x)*(cos(y)+i*sin(y))
    stop
end program kadai