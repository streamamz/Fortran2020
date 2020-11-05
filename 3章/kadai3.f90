program kadai
    real(16) :: a = atan(1.0_4) * 4.0_4
    real(16) :: b = atan(1.0_8) * 4.0_8
    real(16) :: c = atan(1.0_16) * 4.0_16
    write(*,*) a, abs(1.0_4-a/c)
    write(*,*) b, abs(1.0_8-b/c)
    write(*,*) c
    stop
end program kadai