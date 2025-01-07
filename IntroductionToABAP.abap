*&---------------------------------------------------------------------*
*& Report  ZBENEDIKT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZBENEDIKT.

* Declaration of the table zemail_recipient
TABLES: zemail_recipient.

* Select all records from the table zemail_recipient
SELECT * FROM zemail_recipient.

  WRITE: zemail_recipient.

ENDSELECT.  " End of the SELECT loop


write / '-----------------------------------------------------------------'. 
"Basic Calculation Example with a Addition of two Integers 
data z1 type i value 10.
data z2 type i value 20.
data result like z1.

result = z1 + z2.
write / 'Result 1:'. 
write result. 

"Basic Calculation Example with Addition of two decimal numbers
data d1 type p decimals 2 value '3.33'. 
data d2 type p decimals 2 value '5.55'.
data result2 like d1. 

result2 = d1 + d2. 
write / 'Result 2:'.
write result2. 
