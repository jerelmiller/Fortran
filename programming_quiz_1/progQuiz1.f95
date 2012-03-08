!--------------------------------------------------------------------------
!  TITLE: CSCI260 Programming Quiz
!  AUTHOR: Jerel Miller
!  CLASS:  CSCI290A
!  DATE WRITTEN: 2/24/12
!  LAST REVISION: 2/24/12
!  DESCRIPTION: Programming Quiz 1
!  VARIABLES USED:
!     NAME:               TYPE:     COMMENT:
!     income              REAL      Variable used to hold the income that the user inputs
!     medicare_tax        REAL      The total medicare tax calculated
!     income_tax          REAL      The total income tax calculated
!     total_tax           REAL      The total tax calculated from the income and medicare taxes
!     remaining_income    REAL      The income remaining after tax has been paid
!     MEDICARE_TAXRATE    REAL      A constant to hold the medicare tax rate
!
!
!---------------------------------------------------------------------------

Program the_price_of_certainty

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.

REAL:: income, medicare_tax, income_tax, total_tax, remaining_income
REAL:: MEDICARE_TAXRATE = .015

! Code the Problem Here
WRITE(*,*) "Please enter your income for the financial calculator to figure out the taxes you owe: "
READ(*,*) income

! Calculate the medicare tax
medicare_tax = MEDICARE_TAXRATE * income

! Calculate the income tax
IF (income >= 0 .AND. income <= 6000) THEN
  income_tax = 0.0
ELSE IF (income > 6000 .AND. income <= 20000) THEN
  income_tax = income * .17
ELSE IF (income > 20000 .AND. income <= 50000) THEN
  income_tax = (income * .30) + 2380
ELSE IF (income > 50000 .AND. income <= 60000) THEN
  income_tax = (income * .42) + 11380
ELSE IF (income > 60000) THEN
  income_tax = (income * .47) + 15580
ELSE
  ! Invalid income entry
  WRITE(*,*) "Error. Invalid income amount."
END IF

! Calculate the total tax and the remaining income
total_tax = income_tax + medicare_tax
remaining_income = income - total_tax

! Write to the screen the calculated amounts
WRITE(*,*) "The amount of tax you owe is $", total_tax, "and your remaining income is $", remaining_income


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program
