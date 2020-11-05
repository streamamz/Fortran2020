program kadai
    implicit none
    real(8), allocatable :: a(:)
    real(8), allocatable :: b(:)
    integer :: a_len, i
    real(8) :: result_dot_product, result_do_loop
    result_do_loop=0
    result_dot_product=0

    read(*,*) a_len
    allocate(a(a_len))
    read(*,*) a
    allocate(b(a_len))
    read(*,*) b
    do i=1,a_len
        result_do_loop = result_do_loop + a(i) * b(i)
    end do
    result_dot_product = dot_product(a,b)

    write(*,*) 'Inner product with do loop',':',result_do_loop
    write(*,*) 'Inner product with dot_product',':',result_dot_product
    stop
end program kadai