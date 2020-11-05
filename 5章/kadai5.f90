program kadai
    implicit none
    integer ::mat_len, i, j
    real(8), allocatable :: vector_a(:)
    real(8), allocatable :: matrix_a(:,:)
    real(8), allocatable :: result_matmul(:)
    real(8), allocatable :: result_do_loop(:)

    read(*,*) mat_len
    allocate(vector_a(mat_len))
    allocate(matrix_a(mat_len, mat_len))
    allocate(result_do_loop(mat_len))
    allocate(result_matmul(mat_len))
    read(*,*) vector_a
    read(*,*) matrix_a

    do i = 1, mat_len
        do j = 1, mat_len
            result_do_loop(i) = result_do_loop(i) + matrix_a(j,i) * vector_a(j) 
        end do
    end do
    result_matmul = matmul(vector_a, matrix_a)
    write(*,*) 'Matrix-vector product with do loop'
    do i = 1, mat_len
        write(*,*) result_do_loop(i)
    end do
    write(*,*) 'Matrix-vector product with matmul'
    do i = 1, mat_len
        write(*,*) result_matmul(i)
    end do
    stop
end program kadai