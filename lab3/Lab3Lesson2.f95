!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 3 Lesson 2
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A
!  DATE WRITTEN: 1/30/12
!  LAST REVISION: 1/30/12
!  DESCRIPTION: This program demonstrates the Fortran's basic math operations.
!  VARIABLES USED:
!       NAME: p1_turn           TYPE: CHARACTER           COMMENT: Variable used to store the input from player 1's turn
!       NAME: p2_turn           TYPE: CHARACTER           COMMENT: Variable used to store the input from player 2's turn
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab3Lesson2

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
CHARACTER(LEN=1):: p1_turn
CHARACTER(LEN=1):: p2_turn

! Begin your code on the next line

WRITE(*,*) "Player 1, make your turn. (P, R, S)"
READ(*,*) p1_turn

WRITE(*,*) "Player 2, make your turn. (P, R, S)"
READ(*,*) p2_turn

IF ((p1_turn == 'P' .OR. p1_turn == 'p') .AND. (p2_turn == 'R' .OR. p2_turn == 'r')) THEN
  WRITE(*,*) "Player 1 wins. Paper covers rock"

ELSE IF ((p1_turn == 'P' .OR. p1_turn == 'p') .AND. (p2_turn == 'S' .OR. p2_turn == 's')) THEN
  WRITE(*,*) "Player 2 wins. Scissors cut paper"

ELSE IF ((p1_turn == 'R' .OR. p1_turn == 'r') .AND. (p2_turn == 'S' .OR. p2_turn == 's')) THEN
  WRITE(*,*) "Player 1 wins. Rock breaks scissors"

ELSE IF ((p1_turn == 'R' .OR. p1_turn == 'r') .AND. (p2_turn == 'P' .OR. p2_turn == 'p')) THEN
  WRITE(*,*) "Player 2 wins. Paper covers rock"

ELSE IF ((p1_turn == 'S' .OR. p1_turn == 's') .AND. (p2_turn == 'P' .OR. p2_turn == 'p')) THEN
  WRITE(*,*) "Player 1 wins. Scissors cut paper"

ELSE IF ((p1_turn == 'S' .OR. p1_turn == 's') .AND. (p2_turn == 'R' .OR. p2_turn == 'r')) THEN
  WRITE(*,*) "Player 2 wins. Rock breaks scissors"

ELSE IF (p1_turn == p2_turn) THEN
  WRITE(*,*) "Tie. Nobody wins"

ELSE
  WRITE(*,*) "Not a valid move"

END IF


! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab3Lesson2
