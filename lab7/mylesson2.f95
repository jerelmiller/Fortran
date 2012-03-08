!--------------------------------------------------------------------------
!  TITLE: CS260 Lab7 Lesson 2
!  AUTHOR: Jerel Miller
!  CLASS: CSCI260A
!  DATE WRITTEN: 5/7/2012
!  LAST REVISION: 5/7/2012
!  DESCRIPTION: File IO
!  VARIABLES USED:
!     NAME:           TYPE:     COMMENT:
!     ierror          INTEGER   Checks the return status of opening the input and output files
!     status          INTEGER   Checks the return status of reading a line of input from the input file
!     sec             REAL      The first column of input and output from the input file and the output file
!     data            REAL      The second column of input and output from the input file and the output file
!
!
!---------------------------------------------------------------------------

PROGRAM From_Here_to_There

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables and initialize.
INTEGER:: ierror, status
REAL:: sec, data

! Format for the write statements
100 FORMAT (F4.2, F10.4)

! Code here

! Open the input file
OPEN(UNIT=8, FILE='inData.dat', STATUS='OLD', ACTION='READ', IOSTAT=ierror)
! Check for any errors opening the input file
readfile: IF (ierror == 0 ) THEN
  ! Open the output file
  OPEN(UNIT=25, FILE='outData.dat', STATUS='REPLACE', ACTION='WRITE', IOSTAT=ierror)
  ! Check for errors opening the output file
  outfile: IF(ierror == 0) THEN
    ! Read the information from the input file and write the adjusted value to the output file
    DO
      READ(8,*, IOSTAT=status) sec, data
      IF (status /= 0 ) EXIT    ! Exit if something went wrong reading the line of input
      data = data + (data * .054)
      WRITE(25,100) sec, data
    END DO
  ELSE    ! Error opening the output file
    WRITE(*,*) "Error opening outData.dat"
  END IF outfile
ELSE  ! Error opening the input file
  WRITE(*,*) "Error opening inData.dat"
END IF readfile

! Close the input and output files
CLOSE(UNIT=8)
CLOSE(UNIT=25)


! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)

END PROGRAM
