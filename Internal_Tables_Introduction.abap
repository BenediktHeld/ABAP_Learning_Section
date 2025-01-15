REPORT ZINTERNALTABELS_EXAMPLE.

* Definition einer Struktur für die Zeilen der internen Tabelle
TYPES: BEGIN OF line_typ,  " Beginn der Definition des Zeilentyp
         surname TYPE string,  " Feld für Nachnamen (Typ String)
         qnumber TYPE i,  " Feld für die Frage-Nummer (Typ Integer)
       END OF line_typ.  " Ende der Definition des Zeilentyp

* Definition eines Tabellentyps basierend auf dem Zeilentyp
TYPES: itab_type TYPE STANDARD TABLE OF line_typ.  " Standardtabelle vom Typ line_typ

* Deklaration der internen Tabelle und der Arbeitsbereiche
DATA: itab TYPE itab_type,  " Interne Tabelle itab vom Typ itab_type
      wa_line TYPE line_typ.  " Arbeitsbereich wa_line vom Typ line_typ

* Beispiel-Daten in die interne Tabelle einfügen
wa_line-surname = 'Müller'.  " Nachnamen setzen
wa_line-qnumber = 1.  " Frage-Nummer setzen
APPEND wa_line TO itab.  " Zeile zur internen Tabelle hinzufügen

wa_line-surname = 'Schmidt'.  " Nachnamen setzen
wa_line-qnumber = 2.  " Frage-Nummer setzen
APPEND wa_line TO itab.  " Zeile zur internen Tabelle hinzufügen

wa_line-surname = 'Meier'.  " Nachnamen setzen
wa_line-qnumber = 3.  " Frage-Nummer setzen
APPEND wa_line TO itab.  " Zeile zur internen Tabelle hinzufügen

* Ausgabe der Daten aus der internen Tabelle
LOOP AT itab INTO wa_line.  " Schleife über die interne Tabelle
  WRITE: / 'Nachname:', wa_line-surname, 'Frage-Nummer:', wa_line-qnumber.  " Ausgabe der Daten
ENDLOOP.  " Ende der Schleife
