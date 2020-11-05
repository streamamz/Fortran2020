program kadai
    implicit none
    integer :: L, M, N
    integer, allocatable :: td_array(:,:,:)
    integer, allocatable :: od_array(:)
    
    write(*,*) 'Input three positive integers(L,M,N)'
    read(*,*) L,M,N
    allocate(td_array(L,M,N))
    allocate(od_array(L*M*N))
    write(*,*) '---3D array---'
    write(*,*) 'size (should be equal to L*M*N)',':',size(td_array)
    write(*,*) 'shape(shold be equal to 1D array(/L,M,N/))',':',shape(td_array)
    write(*,*) 'lbound(should be equal to 1D array(/1,1,1/))',':',lbound(td_array)
    write(*,*) 'ubound(should be equal to 1D array(/L,M,N/))',':',ubound(td_array)
    write(*,*) '---1D array---'
    write(*,*) 'size (should be equal to L*M*N)',':',size(od_array)
    write(*,*) 'shape(shold be equal to 1D array(/L*M*N/))',':',shape(od_array)
    write(*,*) 'lbound(should be equal to 1D array(/1/))',':',lbound(od_array)
    write(*,*) 'ubound(should be equal to 1D array(/L*M*N/))',':',ubound(od_array)
    stop
end program kadai