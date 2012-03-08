!--------------------------------------------------------------------------
!  TITLE: CS260 Lab 5 Lesson 2 Fibonacci
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A
!  DATE WRITTEN: 2/15/2012
!  LAST REVISION: 2/15/2012
!  DESCRIPTION: A program used to calculate the Fibonacci Sequence
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!     x1              INTEGER   The "left" number in the sum that is added in the Fibonnaci Sequence
!     x2              INTEGER   The "right" number in the sum that is added in the Fibonnaci Sequence
!     sum             INTEGER   The sum of x1 and x2
!     max             INTEGER   The user inputted max that the sequence goes up to
!
!---------------------------------------------------------------------------

Program Fibonacci

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
INTEGER:: x1 = 0, x2 = 1, sum = 0, max

! Code the Problem Here
WRITE(*,*) "Please enter the max number that the Fibonnaci Sequence goes up to: "
READ(*,*) max

WRITE(*,*)
WRITE(*,*) x1
WRITE(*,*) x2

DO

  ! Calculate the Fibonnaci Sequence and print
  sum = x1 + x2

  ! Exit when the sequence is greater than the max
  IF (sum > max) EXIT

  ! x1 becomes "left" number and x2 becomes "right" number, which was just calculated
  x1 = x2
  x2 = sum

  WRITE(*,*) sum

END DO


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program
