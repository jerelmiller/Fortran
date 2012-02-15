!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 4 Lesson 1
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A
!  DATE WRITTEN: 2/7/2012
!  LAST REVISION: 2/7/2012
!  DESCRIPTION: This program demonstrates the use of the SELECT CASE statment.
!  VARIABLES USED:
!       NAME: cost            TYPE: REAL            COMMENT: variable to hold the total cost of the call
!       NAME: call_length     TYPE: INTEGER         COMMENT: variable to hold the length of the call input by the user
!       NAME: start_time      TYPE: CHARACTER       COMMENT: variable to hold the start time
!       NAME: day             TYPE: CHARACTER       COMMENT: variable to hold the day
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab4Lesson1

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
REAL:: cost = 0
INTEGER:: call_length
CHARACTER(LEN=5):: start_time
CHARACTER(LEN=2):: day


! Begin your code on the next line

WRITE(*,*) "Enter the day the call started (Mo, Tu, We, Th, Fr, Sa, Su): "
READ(*,*) day

WRITE(*,*) "Enter the time the call started in 24-hour time format (hh:mm): "
READ(*,*) start_time

WRITE(*,*) "Enter the length of the call in minutes: "
READ(*,*) call_length

SELECT CASE (day)
CASE ('Mo', 'mo', 'MO', 'Tu', 'tu', 'TU', 'We', 'we', 'WE', 'Th', 'th', 'TH', 'Fr', 'fr', 'FR')

  IF (start_time >= '08:00' .AND. start_time <= '18:00') THEN
    cost = call_length * 0.40
  ELSE 
    cost = call_length * 0.25
  END IF

CASE ('Sa', 'sa', 'SA', 'Su', 'su', 'SU')

  cost = call_length * 0.15

CASE DEFAULT
  WRITE(*,*) "Not a valid day"
END SELECT

WRITE(*,*)
WRITE(*,*) "The cost of the call is $", cost

! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab4Lesson1
