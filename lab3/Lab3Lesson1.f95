!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 3 Lesson 1
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A=
!  DATE WRITTEN: 1/30/12
!  LAST REVISION: 1/30/12
!  DESCRIPTION: This program demonstrates the Fortran's basic control structures.
!  VARIABLES USED:
!       NAME: input           TYPE: CHARACTER     COMMENT: used for input from user on initial choice
!       NAME: PI              TYPE: PI            COMMENT: PI constant for use in calculations
!       NAME: area            TYPE: REAL          COMMENT: The area calculated in each shape
!       NAME: circumference   TYPE: REAL          COMMENT: The circumference calculated in each shape
!       NAME: length          TYPE: REAL          COMMENT: The user inputted length of a side or radius of the circle
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab3Lesson1

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
  CHARACTER(LEN=1):: input
  REAL:: PI = 3.14159
  REAL:: area, circumference, length


! Begin your code on the next line

  WRITE(*,*) "Please enter your choice (C, S, T)"
  READ(*,*) input

  IF (input == 'C') THEN
    WRITE(*,*) "Please enter the radius of the circle"
    READ(*,*) length

    area = PI * length**2
    circumference = PI * length * 2

    WRITE(*,*) "The area of the circle is", area
    WRITE(*,*) "The circumference of the circle is", circumference

  ELSE IF (input == 'S') THEN
    WRITE(*,*) "Please enter the length for the side of the square"
    READ(*,*) length

    area = length**2
    circumference = length * 4

    WRITE(*,*) "The area of the square is", area
    WRITE(*,*) "The circumference of the square is", circumference

  ELSE IF (input == 'T') THEN
    WRITE(*,*) "Please enter the length for the side of the triangle"
    READ(*,*) length

    area = SQRT(length**2 - ((length / 2)**2)) * length
    circumference = length * 3

    WRITE(*,*) "The area of the triangle is", area
    WRITE(*,*) "The circumference of the triangle is", circumference

  ELSE
    WRITE(*,*) "An error occured. Not a valid input."
  END IF


! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab3Lesson1

