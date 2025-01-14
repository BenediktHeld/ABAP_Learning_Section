REPORT Z_SCREENS_1.

* Definition der Tabelle zemail_recipient
TABLES: zemail_recipient.

* Deklaration einer Arbeitsbereichsvariable für den Vornamen
DATA: wa_Forname LIKE zemail_recipient-Forname.

*This is a comment in the selection field
selection-screen comment /40(20) text-001.
* Definition der Parameter für die Eingabe
PARAMETERS: my_fn LIKE zemail_recipient-forname DEFAULT 'Bene' OBLIGATORY,  " Vorname, Standardwert 'Bene', Pflichtfeld
            my_sn LIKE zemail_recipient-surname DEFAULT 'Held',          " Nachname, Standardwert 'Held'
            my_box1 AS CHECKBOX,                                        " Checkbox für zusätzliche Optionen
            wa_green RADIOBUTTON GROUP grp1,                            " Radiobutton für grüne Auswahl
            wa_blue RADIOBUTTON GROUP grp1,                             " Radiobutton für blaue Auswahl
            wa_red   RADIOBUTTON GROUP grp1.                            " Radiobutton für rote Auswahl

* Definition der Auswahloptionen für die Abfrage
SELECT-OPTIONS: my_qn FOR zemail_recipient-q_number.                  " Auswahloptionen für die Frage-Nummer

* Initialisierung

* Abfrage der Tabelle zemail_recipient
SELECT * FROM zemail_recipient.
  wa_Forname = zemail_recipient-forname.  " Zuweisung des Vornamens aus der Tabelle
ENDSELECT.

* Ereignisbehandlung beim Auswahlbildschirm für den Vornamen
AT SELECTION-SCREEN ON my_fn.
* Überprüfung, ob der eingegebene Vorname größer ist als der zuletzt in der Tabelle gefundene Vorname
  IF my_fn > wa_forname.
* Anzeige einer Nachricht, wenn die Bedingung erfüllt ist
    " Hier könnte eine Nachricht angezeigt werden, z.B.:
    " MESSAGE 'Der eingegebene Vorname ist größer als der letzte Vorname.' TYPE 'I'.
  ENDIF.
