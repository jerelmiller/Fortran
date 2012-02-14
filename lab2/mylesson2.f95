!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 2 Lesson 2
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A
!  DATE WRITTEN: 1/20/12
!  LAST REVISION: 1/20/12
!  DESCRIPTION: This program demonstrates the Fortran's basic math operations.
!  VARIABLES USED:
!       NAME: speed          TYPE: REAL          COMMENT: The calculated speed from what is entered
!       NAME: c              TYPE: REAL          COMMENT: The celestial constant that is entered by the user
!       NAME: d              TYPE: REAL          COMMENT: The distance that is entered by the user
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab2Lesson1

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
REAL:: speed
REAL:: c
REAL:: d

! Begin your code on the next line
WRITE(*,*) 'Enter the celestial constant'
READ(*,*) c

WRITE(*,*) 'Enter the distance'
READ(*,*) d

speed = SQRT(c / d)
WRITE(*,*) 'The speed of the satellite is ', speed



! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab2Lesson1
