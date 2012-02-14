!---------------------------------------------------------------------------
!  TITLE: CS260 Lab5 lesson 1
!  AUTHOR: Jerel Miller
!  CLASS: CSCI260A
!  DATE WRITTEN: 2/13/12
!  LAST REVISION: 2/13/12
!  DESCRIPTION: A simple application to demonstrate DO statements
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!
!
!
!---------------------------------------------------------------------------

Program guessGame

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.

REAL:: x
INTEGER:: ans, guess

! Code the Problem Here

CALL_RANDOM_SEED()
x = CALL_RANDOM_NUMBER(x)

ans = 1+INT(x*10)

WRITE(*,*) ans


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program
