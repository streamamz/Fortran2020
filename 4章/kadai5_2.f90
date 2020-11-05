program name
    implicit none
    real(8) :: epsilon, sum, divider 
    real(8), parameter :: e = 2.7182818284590451_8
    integer :: N, count
    divider = 1
    sum = 1
    count = 1
    read(*,*) N
    read(*,*) epsilon
    if (N<=1) then
        write(*,*) 'Errer : N should be larger than 1'
    else if (epsilon<=0 .or. epsilon>=1.0) then
        write(*,*) 'Errer : epsilon should be larger than 0 and smaller than 1'
    else
        do while (.true.)
            divider = divider * count
            sum = sum + 1 / divider
            if (abs(sum - e)/e<=epsilon) then
                write(*,*) 'Converge!'
                exit
            else if (count == N) then
                write(*,*) 'Did not converge!'
                exit
            end if
            count = count + 1
        end do
        write(*,*) 'N',':',N
        write(*,*) 'Exact value',':',e
        write(*,*) 'Approximated value',':',sum
        write(*,*) 'Errer',':',abs(sum - e) / e
    end if
    stop
end program name