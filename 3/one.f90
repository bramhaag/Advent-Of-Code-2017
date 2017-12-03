function distance(i) result(j)
    REAL, intent(in) :: i ! input
    integer :: j ! output

    INTEGER :: num
    INTEGER :: offset

    num = FLOOR(REAL(CEILING(SQRT(i))) / 2)
    offset = MOD(INT(i - ((2 * num - 1) ** 2)), 2 * num)

    j = num + ABS(offset - num)
 end function distance
   
 program one
    integer :: distance
    REAL :: n = 23
    print *, "distance of ", n, " is: ", distance(n) 
 end program one