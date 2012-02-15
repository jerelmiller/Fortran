!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 4 Lesson 2
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI260A
!  DATE WRITTEN: 1/8/2012
!  LAST REVISION: 1/8/2012
!  DESCRIPTION: This program demonstrates the use of nested IF THEN ELSE 
!               Statments.
!  VARIABLES USED:
!       NAME: unit_price                TYPE: REAL       COMMENT: unit price entered by user
!       NAME: total_full_cost           TYPE: REAL       COMMENT: calculated full cost of the order without a discount applied
!       NAME: total_discount            TYPE: REAL       COMMENT: calculated total discount of the order
!       NAME: total_discounted_cost     TYPE: REAL       COMMENT: calculated total cost of the order with the discount applied
!       NAME: quantity                  TYPE: INTEGER    COMMENT: unit quantity entered by user
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab4Lesson2

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
REAL:: unit_price = 0.0
REAL:: total_full_cost = 0.0
REAL:: total_discount = 0.0
REAL:: total_discounted_cost = 0.0
INTEGER:: quantity = 0


! Begin your code on the next line
WRITE(*,*) "Please enter the number of units purchased: "
READ(*,*) quantity

WRITE(*,*) "Please enter the unit price: (no $)"
READ(*,*) unit_price

total_full_cost = unit_price * quantity

IF (quantity < 0) THEN
  WRITE(*,*) "Cannot have a negative quantity"
ELSE IF (quantity >= 1 .AND. quantity <= 9) THEN
  IF (unit_price < 0) THEN
    WRITE(*,*) "Cannot have a negative unit price"
  ELSE IF(unit_price >= 0. .AND. unit_price <= 10.0) THEN
    total_discount = unit_price * quantity * 0
  ELSE IF (unit_price <= 100.0) THEN
    total_discount = unit_price * quantity * 0.02
  ELSE IF (unit_price >= 100.01) THEN
    total_discount = unit_price * quantity * 0.05
  ELSE
    WRITE(*,*) "Not a valid unit price"
  END IF
ELSE IF (quantity <= 19) THEN
  IF (unit_price < 0) THEN
    WRITE(*,*) "Cannot have a negative unit price"
  ELSE IF(unit_price >= 0. .AND. unit_price <= 10.0) THEN
    total_discount = unit_price * quantity * 0.05
  ELSE IF (unit_price <= 100.0) THEN
    total_discount = unit_price * quantity * 0.07
  ELSE IF (unit_price >= 100.01) THEN
    total_discount = unit_price * quantity * 0.09
  ELSE
    WRITE(*,*) "Not a valid unit price"
  END IF

ELSE IF (quantity <= 49) THEN
  IF (unit_price < 0) THEN
    WRITE(*,*) "Cannot have a negative unit price"
  ELSE IF(unit_price >= 0. .AND. unit_price <= 10.0) THEN
    total_discount = unit_price * quantity * 0.09
  ELSE IF (unit_price <= 100.0) THEN
    total_discount = unit_price * quantity * 0.15
  ELSE IF (unit_price >= 100.01) THEN
    total_discount = unit_price * quantity * 0.21
  ELSE
    WRITE(*,*) "Not a valid unit price"
  END IF

ELSE IF (quantity <= 99) THEN
  IF (unit_price < 0) THEN
    WRITE(*,*) "Cannot have a negative unit price"
  ELSE IF(unit_price >= 0. .AND. unit_price <= 10.0) THEN
    total_discount = unit_price * quantity * 0.14
  ELSE IF (unit_price <= 100.0) THEN
    total_discount = unit_price * quantity * 0.23
  ELSE IF (unit_price >= 100.01) THEN
    total_discount = unit_price * quantity * 0.32
  ELSE
    WRITE(*,*) "Not a valid unit price"
  END IF

ELSE IF (quantity >= 100) THEN
  IF (unit_price < 0) THEN
    WRITE(*,*) "Cannot have a negative unit price"
  ELSE IF(unit_price >= 0. .AND. unit_price <= 10.0) THEN
    total_discount = unit_price * quantity * 0.21
  ELSE IF (unit_price <= 100.0) THEN
    total_discount = unit_price * quantity * 0.32
  ELSE IF (unit_price >= 100.01) THEN
    total_discount = unit_price * quantity * 0.43
  ELSE
    WRITE(*,*) "Not a valid unit price"
  END IF

ELSE
  WRITE(*,*) "Not a valid quantity"
END IF

total_discounted_cost = total_full_cost - total_discount

IF (quantity >=0 .AND. unit_price >= 0) THEN
  WRITE(*,*) "The total full cost is $", total_full_cost
  WRITE(*,*) "The total discount is $", total_discount
  WRITE(*,*) "The total discounted price is $", total_discounted_cost
ELSE
  WRITE(*,*) "Not a valid cost. Cannot be negative"
END IF

! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab4Lesson2
