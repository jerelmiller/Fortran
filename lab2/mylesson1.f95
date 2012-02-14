!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 2 Lesson 1
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A
!  DATE WRITTEN: 1/20/12
!  LAST REVISION: 1/20/12
!  DESCRIPTION: This program demonstrates the Fortran's basic math operations.
!  VARIABLES USED:
!       NAME: int1         TYPE: INTEGER         COMMENT: value of 4
!       NAME: int2         TYPE: INTEGER         COMMENT: value of 18
!       NAME: int3         TYPE: INTEGER         COMMENT: value of -42
!       NAME: int4         TYPE: INTEGER         COMMENT: value of 24
!       NAME: intAns       TYPE: INTEGER         COMMENT: value of the result of the math operations
!       NAME: r1           TYPE: REAL            COMMENT: value of 1.1
!       NAME: r2           TYPE: REAL            COMMENT: value of 13.5
!       NAME: r3           TYPE: REAL            COMMENT: value of -9.999
!       NAME: rAns         TYPE: REAL            COMMENT: value of the result of math operations
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab2Lesson1

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
INTEGER:: int1
INTEGER:: int2
INTEGER:: int3
INTEGER:: int4
INTEGER:: intAns
REAL:: r1
REAL:: r2
REAL:: r3
REAL:: rAns

! Begin your code on the next line

int1 = 4
int2 = 18
int3 = -42
int4 = 24

intAns = int1+int2+int3+int4
WRITE(*,*) int1, '+',int2,'+',int3,'+',int4,'=',intAns

intAns = int2 - int1
WRITE(*,*) int2,'-',int1,'=',intAns

intAns = int3*int4
WRITE(*,*) int3, '*', int4,'=',intAns

intAns = int1 / int2
WRITE(*,*)int1,'/',int2,'=',intAns

r1 = 1.1
r2 = 13.5
r3 = -9.999

rAns = r1+r2

WRITE(*,*) r1,'+',r2,'=',rAns

rAns = r2 - r3
WRITE(*,*) r2,'-',r3,'=',rAns

rAns = r1*r2
WRITE(*,*) r1,'*',r2,'=',rAns

rAns = r2 / r3
WRITE(*,*) r2,'/',r3,'=',rAns

! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab2Lesson1
