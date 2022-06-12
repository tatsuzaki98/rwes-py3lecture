program main

    implicit none
    integer :: i, j
    real :: matrix(5, 5)
    real :: mask(3, 3)

    matrix = reshape([            &
        12.0, 8.5, 2.1, 0.0, 4.9, &
        10.2, 7.9, 6.2, 0.7, 0.0, &
         9.8, 8.5, 5.4, 1.1, 2.8, &
         8.9, 4.5, 2.1, 0.0, 0.0, &
         6.0, 8.5, 0.8, 0.5, 0.0  &
    ], [5, 5])

    open( &
        11, file='prec.bin', form='unformatted', &
        recl=5*5, access='direct', status='replace' &
    )
        write(11, rec=1) ((matrix(i, j), i=1, 5), j=1, 5)
    close(11)

end program main
