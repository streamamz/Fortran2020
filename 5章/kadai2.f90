program kadai
    !閏年まで拡張
    implicit none
    integer, parameter :: days_normal (12) =&
        & (/31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31/)
    integer, parameter :: days_leap (12) =&
        & (/31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31/)
    integer :: year, month, day, sum, i
    sum = 0
    read(*,*) year
    read(*,*) month
    read(*,*) day
    if (mod(year,400)==0) then
        do i=1, month - 1
            sum = sum + days_leap(i)
        end do
        sum = sum + day
    else if (mod(year, 100)==0) then
        do i=1, month - 1
            sum = sum + days_normal(i)
        end do
        sum = sum + day
    else if (mod(year,4)==0) then 
        do i=1, month - 1
            sum = sum + days_leap(i)
        end do
        sum = sum + day
    else
        do i=1, month - 1
            sum = sum + days_normal(i)
        end do
        sum = sum + day
    end if
    write(*,*) 'day of year :', sum
end program kadai
