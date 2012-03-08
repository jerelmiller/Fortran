!--------------------------------------------------------------------------
!  TITLE: CS260 Lab7 Lesson 1
!  AUTHOR: Jerel Miller
!  CLASS: CSCI260A
!  DATE WRITTEN: 3/7/2012
!  LAST REVISION: 3/7/2012
!  DESCRIPTION: Some output formatting for calculations.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!     i              INTEGER   Variable to hold the loop counter
!     rad            REAL      The radians of the current loop iteration
!     PI             REAL      Constant to hold the value PI
!
!---------------------------------------------------------------------------
PROGRAM A_Format_Of_Things
IMPLICIT NONE  !Must explicitly declare all variables
! Declare the variables and initialize.
! Code here

INTEGER:: i
REAL:: rad, PI = 3.141593

! Calculate radians from 0 to 3.2
WRITE(*,*) "Theta  Sin(Theta)  Cos(Theta)  Tan(Theta)"
WRITE(*,*) "-----------------------------------------"
DO i = 0, 32
  rad = REAL(i) / 10.
  WRITE(*,"(F4.1, F10.4, F12.4, F12.4)") rad, SIN(rad), COS(rad), TAN(rad)
END DO 

WRITE(*,*)

! Calculate Degrees from 0 to 180
WRITE(*,*) "DEG    Sin(DEG)    Cos(DEG)    Tan(DEG)"
WRITE(*,*) "---------------------------------------"
DO i =  0, 180, 5
  rad = i * (PI / 180)
  WRITE(*,"(I3, F11.4, F12.4, F12.4)") i, SIN(rad), COS(rad), TAN(rad)
END DO



! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)
END PROGRAM
