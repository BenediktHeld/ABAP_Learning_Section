REPORT ZBENEDIKT.

********************INSERT************************
*import the table
tables: zemail_recipient.

*create the data field / Work area
Data wa_zemail_recipient like zemail_recipient.

*values
wa_zemail_recipient-email = 'alexandra@email.com'.
wa_zemail_recipient-q_number = 'qte5555'.
wa_zemail_recipient-Forname = 'Alexandra'.
wa_zemail_recipient-Surname = 'Held'.

*Insert into the table
insert zemail_recipient from wa_zemail_recipient.

*Look if the insert has worked correctly / Validation Check
if sy-subrc = 0.
    write: 'Record Inserted Correctly'.
else.
    write: 'We have a return code', sy-subrc.
endif.

********************UPDATE************************
*values
wa_zemail_recipient-email = 'alexandra@email.com'.
wa_zemail_recipient-q_number = 'qte5555'.
wa_zemail_recipient-Forname = 'Franz'.
wa_zemail_recipient-Surname = 'maier'.

update zemail_recipient from wa_zemail_recipient.

*Look if the insert has worked correctly / Validation Check
if sy-subrc = 0.
    write: / 'Record Updated Correctly'.
else.
    write:/  'We have a return code', sy-subrc.
endif.


********************MODIFY************************
*values
wa_zemail_recipient-email = 'alexandra@email.com'.
wa_zemail_recipient-q_number = 'qte5555'.
wa_zemail_recipient-Forname = 'Franz Huber'.
wa_zemail_recipient-Surname = 'maier'.

update zemail_recipient from wa_zemail_recipient.

*Look if the insert has worked correctly / Validation Check
if sy-subrc = 0.
    write: / 'Record Modified Correctly'.
else.
    write:/  'We have a return code', sy-subrc.
endif.

********************DELETE************************
*For the delete statement we only need the primary key 
*values

wa_zemail_recipient-email = 'alexandra@email.com'.
wa_zemail_recipient-q_number = 'qte5555'.

delete zemail_recipient from wa_zemail_recipient. 

*Look if the insert has worked correctly / Validation Check
if sy-subrc = 0.
    write: / 'Record Deleted Correctly'.
else.
    write:/  'We have a return code', sy-subrc.
endif.

********************CLEAR************************
clear wa_zemail_recipient. 
