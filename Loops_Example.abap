REPORT ZBENEDIKT.

********************IF************************
*import the table
tables: zemail_recipient.

data: surname(15) type c.
data: forname(15) type c.

select * from zemail_recipient where forname = 'BENE'.
  forname = zemail_recipient-forname.
  surname = zemail_recipient-surname.
endselect.
write: / 'Output IF Statement: '.


*If Statement
if forname = 'BENE'.
  if surname = 'HELD'.
    write 'Bene Held'.
  else.
    write 'Bene'.
  endif.
else.
  write 'Jurgen'.
endif.

********************CASE************************
write / 'Output CASE Statement: '.

case surname.
  when 'HELD'.
    write 'Held'.
  when 'Schmid'.
    write 'Schmid'.
endcase.

********************DO***************************
data: a type i value 0.

write: /'Do Loop'.
do 15 times.
  a = a + 1.
  write: / a.
enddo.

********************WHILE************************
write: /'While Loop'.
While a > 0.
  a = a - 1.
  write: / a.
endwhile.

************TERMINATION*CONTINUE******************
data: b type i value 0.

write: /'Do Loop with continue'.
do 5 times.
  b = b + 1. 
  if b = 3. 
    continue. 
  else. 
    write: / b. 
  endif.
enddo.
