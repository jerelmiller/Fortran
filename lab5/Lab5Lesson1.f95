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

! Generate a random number
CALL random_seed()         
CALL RANDOM_NUMBER(x)

ans = 1 + INT(x * 10)

! Generate a second random number so that ans is between 1 and 20
CALL random_seed()         
CALL RANDOM_NUMBER(x)

ans = ans + 1 + INT(x * 10)

! Prompt the user for input
WRITE(*,*) "Welcome to the super duper number guessing game!"
WRITE(*,*) "The computer has randomly chosen a number between 1 and 20. Please make your guess as to what it is: "

!Loop until the number is guessed
DO
  
  READ(*,*) guess
  IF (guess > ans) THEN
    WRITE(*,*) "Too high! Please guess again"
  ELSE IF (guess < ans) THEN
    WRITE(*,*) "Too low! Please guess again" 
  END IF

  IF (guess == ans) EXIT

END DO

WRITE(*,*) "You guessed it! It was", ans


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program
