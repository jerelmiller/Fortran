!--------------------------------------------------------------------------
!  TITLE: CSCI260 Lab10 Lesson 1
!  AUTHOR: Jerel Miller
!  CLASS: CSCI260A
!  DATE WRITTEN: 4/11/2012
!  LAST REVISION: 4/11/2012
!  DESCRIPTION: 2D arrays
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!     i, j, k         INTEGER   variables used for counting loops
!     iounit, ios     INTEGER   variables used for file opening
!     temp_int        INTEGER   temporary storage for swapping of integers in grades array
!     sum             INTEGER   variable used during averages
!     grades          INTEGER   2D array used to hold all of the students grades
!     avg             REAL      array to hold the averages of the students grades
!     names           CHARACTER array that holds all of the names read from the file
!     temp            CHARACTER temporary storage used for swapping when sorting the array
!
!---------------------------------------------------------------------------
program student_grades

! Formatters
100 FORMAT (A19, I6, I4, I4)
200 FORMAT (A20, I5, I5, I5, F7.2)
300 FORMAT (A15, A10, A5, A5, 1X, A7)

! Declare variables
CHARACTER(len=19), DIMENSION(17):: names
CHARACTER(len=19):: temp
INTEGER, DIMENSION(17,3):: grades
INTEGER:: i, j, k, iounit=8, ios, temp_int, sum
REAL, DIMENSION(17):: avg = 0

! Open the file for reading
open(unit=iounit, file='students.dat', iostat=ios, status="old", action="read")

if ( ios /= 0 ) stop "Error opening file name"

! Read the values into the appropriate arrays
do i = 1, 17
  read(iounit,100) names(i), grades(i,1), grades(i,2), grades(i,3)
end do

! Sort the arrays by last name
do i = 1, 16
  do j = i, 17
    ! Check to see if the next value is alphabetically before the current one
    if (names(j) .lt. names(i)) then
      ! Swap values
      temp = names(i)
      names(i) = names(j)
      names(j) = temp

      ! Make sure to swap the columns of the grades array that correspond to the current student
      do k = 1, 3
        temp_int = grades(i, k)
        grades(i, k) = grades(j, k)
        grades(j, k) = temp_int
      end do
    end if 
  end do
end do

! Calculate the averages for each student
do i = 1, 17
  sum = 0 ! Reset the sum
  do j = 1, 3
    ! Calculate the average
    sum = sum + grades(i, j)
    avg(i) = REAL(sum) / 3.
  end do
end do

! Print out the results
write(*,300) 'Name', 'Q1', 'Q2', 'Q3', 'Average'
write(*,*) '------------------------------------------'
do i = 1, 17
  write(*,200) names(i), grades(i,1), grades(i,2), grades(i,3), avg(i)
end do


end program