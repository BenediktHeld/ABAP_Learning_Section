REPORT ZINTERNALTABELS2.

TABLES: zemail_recipient.  " Deklaration der Datenbanktabelle zemail_recipient

* Definition eines Zeilentypen für die interne Tabelle
TYPES: BEGIN OF line_type1,  " Beginn der Definition des Zeilentyp
         email LIKE zemail_recipient-email,  " Feld für die E-Mail-Adresse
         q_number LIKE zemail_recipient-q_number,  " Feld für die Frage-Nummer
         forname LIKE zemail_recipient-forname,  " Feld für den Vornamen
         surname LIKE zemail_recipient-surname,  " Feld für den Nachnamen
       END OF line_type1.  " Ende der Definition des Zeilentyp

* Definition eines Tabellentyps basierend auf dem Zeilentyp
TYPES: itab_type1 TYPE STANDARD TABLE OF line_type1.  " Standardtabelle vom Typ line_type1

* Deklaration der internen Tabelle und des Arbeitsbereichs
DATA: itab TYPE itab_type1,  " Interne Tabelle itab vom Typ itab_type1
      wa_line TYPE line_type1.  " Arbeitsbereich wa_line vom Typ line_type1

* Daten aus der Tabelle zemail_recipient in die interne Tabelle itab einfügen
SELECT * FROM zemail_recipient INTO TABLE itab where Q_NUMBER = 'QTE8283'.  " Alle Datensätze in die interne Tabelle itab einfügen

* Überprüfen, ob die interne Tabelle Daten enthält
IF sy-subrc = 0.  " sy-subrc = 0 bedeutet, dass die Auswahl erfolgreich war
  " Ausgabe der Daten aus der internen Tabelle
  LOOP AT itab INTO wa_line.  " Schleife über die interne Tabelle itab
    WRITE: / 'E-Mail:', wa_line-email,  " Ausgabe der E-Mail-Adresse
           'Q-Nummer:', wa_line-q_number,  " Ausgabe der Frage-Nummer
           'Vorname:', wa_line-forname,  " Ausgabe des Vornamens
           'Nachname:', wa_line-surname.  " Ausgabe des Nachnamens
  ENDLOOP.  " Ende der Schleife
ELSE.
  WRITE: / 'Keine Daten gefunden.'." Ausgabe, wenn keine Daten vorhanden sind
ENDIF.
