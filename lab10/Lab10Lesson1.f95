!--------------------------------------------------------------------------
!  TITLE: CSCI260 Lab10 Lesson 1
!  AUTHOR: Jerel Miller
!  CLASS: CSCI260A
!  DATE WRITTEN: 4/11/2012
!  LAST REVISION: 4/11/2012
!  DESCRIPTION: 2D arrays
!  VARIABLES USED:
!    NAME:              TYPE:     COMMENT:
!     m,n,p,q           INTEGER   Variables to hold the number of rows and columns of both matrices
!     i,j,k             INTEGER   Variables used for counting loops
!     current_input     INTEGER   Used to get the input from the user for the value they want to input into a matrix
!     sum               INTEGER   Used for summing while doing the matrix multiplication
!     matrix1, matrix2  INTEGER   The user-inputted matrices that will be multiplied together
!     result            INTEGER   The result matrix after multipling matrices matrix1 and matrix2
!
!---------------------------------------------------------------------------

PROGRAM two_d_array_fun
IMPLICIT NONE  !Must explicitly declare all variables

! Declare variables
INTEGER:: m, n, p, q, i, j, k, current_input, sum = 0
INTEGER, DIMENSION(:,:), allocatable:: matrix1, matrix2, result

! Prompt for the dimensions of the two matrices and read in the values
WRITE(*,*) 'Please enter the number of rows matrix 1 will contain: '
READ(*,*) m
WRITE(*,*) 'Please enter the number of columns matrix 1 will contain: '
READ(*,*) n
WRITE(*,*) 'Please enter the number of rows matrix 2 will contain: '
READ(*,*) p
WRITE(*,*) 'Please enter the number of columns matrix 2 will contain: '
READ(*,*) q

! If the number of columns of matrix 1 don't match the number of columns of matrix 2, prompt the user again and display an error
DO
  IF (n == p) EXIT
  WRITE(*,*) 'Sorry. The number of columns of matrix 1 must match the number of rows of matrix 2'
  WRITE(*,*) 'Please enter the number of columns matrix 1 will contain: '
  READ(*,*) n
  WRITE(*,*) 'Please enter the number of rows matrix 2 will contain: '
  READ(*,*) p
END DO

! allocate memory for the 3 arrays
ALLOCATE(matrix1(m,n))
ALLOCATE(matrix2(p,q))
ALLOCATE(result(m,q))

! Initialize each matrix
matrix1 = 0
matrix2 = 0
result = 0

! Prompt the user for inputs for matrix 1
WRITE(*,*)
WRITE(*,*) 'We will now input values for matrix 1:'

! Read in values for matrix 1
DO i = 1, m
  DO j = 1, n
    WRITE(*,*) 'Please input a value for row', i, 'and column', j
    READ(*,*) current_input
    matrix1(i,j) = current_input
  END DO
END DO

! Prompt the user for inputs for matrix 2
WRITE(*,*)
WRITE(*,*) 'We will now input values for matrix 2:'

! Read in values for matrix 2
DO i = 1, p
  DO j = 1, q
    WRITE(*,*) 'Please input a value for row', i, 'and column', j
    READ(*,*) current_input
    matrix2(i,j) = current_input
  END DO
END DO

! Calculate the corresponding multiplication for the result matrix
DO i = 1, m
  DO j = 1, q
    sum = 0
    DO k = 1, n
      sum = sum + matrix1(i,k)*matrix2(k,j)
    END DO
    result(i,j) = sum
  END DO
END DO

! Show the user the result matrix
WRITE(*,*)
WRITE(*,*) 'Here is the resulting matrix multiplying matrix 1 and matrix 2 together: '

! Output the results from the result matrix
DO i = 1, m
  WRITE(*,"(A1)",advance='no') '|'
  DO j = 1, q
    WRITE(*,"(1X,I4,1X)",advance='no') result(i,j)
  END DO
  WRITE(*,*) '|'
END DO

! deallocate the memory for the matrices
DEALLOCATE(matrix1)
DEALLOCATE(matrix2)
DEALLOCATE(result)


END PROGRAM
