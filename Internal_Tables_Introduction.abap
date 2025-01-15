REPORT ZINTERNALTABELS.

* Define an internal table with a header line
DATA: BEGIN OF itab01 OCCURS 0,  " Start of internal table itab01 with header line
        surname LIKE zemail_recipient-surname,  " Field for surname
        qnumber LIKE zemail_recipient-q_number,  " Field for question number
      END OF itab01.  " End of internal table itab01

* New way of defining internal tables
* Define a line type for the internal table
TYPES: BEGIN OF line01_typ,  " Start of line type definition
         surname LIKE zemail_recipient-surname,  " Field for surname
         qnumber LIKE zemail_recipient-q_number,  " Field for question number
       END OF line01_typ.  " End of line type definition

* Define a table type based on the line type
TYPES: itab02_typ TYPE STANDARD TABLE OF line01_typ.  " Table type for standard table of line01_typ

* Declare the internal tables based on the defined table type
DATA: itab02 TYPE itab02_typ,  " Internal table itab02 of type itab02_typ
      itab03 TYPE itab02_typ.  " Internal table itab03 of type itab02_typ

* Declare a work area to use with our internal table
DATA: wa_itab02 TYPE line01_typ.  " Work area wa_itab02 of type line01_typ
