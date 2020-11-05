program kadai
    real(8) :: x_1
    real(8) :: x_2, x_3, x_4
    read(*,*) x_1
    x_2 = (x_1 ** 3.0) / (3.0 * 2.0)
    x_3 = (x_1 ** 5.0) / (5.0 * 4.0 * 3.0 * 2.0)
    x_4 = (x_1 ** 7.0) / (7.0 * 6.0 * 5.0 * 4.0 * 3.0 * 2.0)
    write(*,*) x_1
    write(*,*) x_1 - x_2
    write(*,*) x_1 - x_2 + x_3
    write(*,*) x_1 - x_2 + x_3 - x_4
    write(*,*) sin(x_1)
    stop
end program kadai